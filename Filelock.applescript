(*
Filelock: to lock and unlock files in Mac OS X with 3 simple questions
Author: Jason Campisi
Version 0.5.1 
Date: 02/01/12-12/5/15 released under the gpl 2 or higher
History: Created so that I could give it away to IT Consulting clients.
Note: This program is merely a front-end to theÊchflags command.
*)

property lockORunlock : "Unlock"
property adminYesOrNo : "No"
property fileList : {}

on open these_items --droplet code
	-- This droplet processes files dropped onto the applet 
	-- NOTE that the variable these_items is a file reference in alias format
	-- http://www.macosxautomation.com/applescript/sbrt/sbrt-10.html
	resetList()
	copy these_items to fileList --move the dropped list_of_files and folders onto the global file list
	run
end open

on resetList()
	set fileList to {} --empty listÉ. stops bug from keeping that info in memory for a while after the program exits
end resetList

on run
	if threeSimpleQuestions() is null then --to lock or unlock?
		--		try
		--			display dialog "Good bye." with title "Closing Filelock!" with icon alias ((path to me) & getIconLock() as string) buttons {"Cancel", "OK"} default button 2
		--		on error StrError -- cancel selected, so do not shutdown program and keep using it
		--			run
		--		end try
		resetList()
		return
	end if
	changeFileState() --lock or unlock locations gathered
	resetList()
end run

on getIconLock()
	if lockORunlock is "Unlock" then
		return "Contents:Resources:unlock.icns"
	else
		return "Contents:Resources:lock.icns"
	end if
end getIconLock

on getIconWarning()
	if lockORunlock is "Unlock" then
		return "Contents:Resources:unlock_warning.icns"
	else
		return "Contents:Resources:lock_warning.icns"
	end if
end getIconWarning

on threeSimpleQuestions()
	--Question 1
	set dialogMsg to "Would you like to lock or unlock files?"
	set buttonChoices to {"Exit", "Lock", "Unlock"}
	try
		set lockORunlock to button returned of (display dialog dialogMsg with icon alias ((path to me) & "Contents:Resources:lock.icns" as string) buttons buttonChoices default button "Unlock" cancel button "Exit" with title "Lock/Unlock Files")
	on error StrError -- error: -128 --exit selected
		return null
	end try
	
	set chgState to "unlock:"
	if lockORunlock is "Lock" then
		set chgState to "lock:"
	end if
	--Question 2	
	set dialogMsg to "Use administrator privileges to " & lockORunlock & " these files?"
	set buttonChoices to {"Yes", "No"}
	set adminYesOrNo to button returned of (display dialog dialogMsg with icon alias ((path to me) & getIconWarning() as string) buttons buttonChoices default button "No" with title lockORunlock & " files...")
	
	if ((count of fileList) > 0) then --if list is not empty then droplet does not need question 3
		return 1
	end if
	--msg("yay list is empty")
	
	--Question 3
	set dialogMsg to "Choose a folder or select which files to " & chgState
	set buttonChoices to {"Cancel", "Folder", "Files"}
	try
		set openChoice to button returned of (display dialog dialogMsg with icon alias ((path to me) & getIconLock() as string) buttons buttonChoices default button "Files" with title lockORunlock & " files...")
	on error StrError --cancel selected
		return null
	end try
	--gather files or folder location(s)
	--below code will offer hidden files/folders to select
	
	if openChoice is "Files" then
		try
			set chooseFileDialog to "Choose the file(s) you want to " & chgState
			set fileList to choose file default location (path to desktop) with prompt chooseFileDialog with multiple selections allowed and invisibles
		on error StrError --cancel selected
			return null
		end try
		--display dialog "dropped files: " & fileList
		--return
	else if openChoice is "Folder" then
		try
			--			set oneFolder to choose folder with prompt "Choose the folder whose files you want to " & chgState
			--			copy {oneFolder} to fileList
			copy {choose folder with prompt "Choose the folder whose files you want to " & chgState with invisibles} to fileList
		on error StrError --cancel selected
			return null
		end try
	else -- base case exit cleanly if this part is every reached
		return null
	end if
	return 1
end threeSimpleQuestions

on msg(s)
	try
		display dialog s
	on error
		return false
	end try
	return true
end msg

on changeFileState() --fileList, lockORunlock, adminYesOrNo)	
	(*Set the flag to either lock or unlock
	-unlock a file: chflags -R nouchg ./*
	-lock    a file: chflags -R uchg ./*  *)
	--set cmdflag to "nouchg"
	
	if lockORunlock is "Lock" then
		set cmdflag to "uchg"
	else if lockORunlock is "Unlock" then
		set cmdflag to "nouchg"
	else
		return
	end if
	--msg(lockORunlock & "==" & cmdflag)
	--display dialog "fileLIST: " & fileList
	repeat with oneItem in fileList -- cycle through the gathered list of files/folders
		--msg("what is oneItem: " & POSIX path of (oneItem as string))
		try
			set shellCommand to "chflags -R" & space & cmdflag & space & quoted form of POSIX path of (oneItem as string) & " >/dev/null 2>&1 &"
			--msg(shellCommand)
			if adminYesOrNo is "Yes" then
				try
					do shell script shellCommand with administrator privileges
				on error StrError
					try
						display dialog "Failed to " & lockORunlock & " file(s)É Closing Filelock! " with icon alias ((path to me) & getIconWarming() as string) with title StrError & "..."
					on error StrError -- cancel selected, so don't shutdown
						changeFileState()
					end try
				end try
			else
				do shell script shellCommand
			end if
			--*)
		end try
	end repeat
end changeFileState --(fileList, lockORunlock, adminYesOrNo)
