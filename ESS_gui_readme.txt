ESS_gui is a Graphical User Interface (GUI) written in Matlab and developed at University of Oldenburg to run Data Level 1 (EEG raw data) containerization by using the EEG Study Schema (ESS) toolbox.

The ESS toolbox (version 2.0.1) is included in the ESS-master folder or available on GitHub (https://github.com/BigEEGConsortium/ESS). ESS and related tools is a packaging schema and convention for sending around EEG studies and processed files. ESS is an XML-based specification to hold all the information necessary to analyze an EEG study (e.g. task and paradigm description, recording parameters, sensor locations, subject information) in a format that is both human- and machine-readable (meaning the XML file may be readily formatted into a readable description of the EEG study). See http://www.eegstudy.org for more information. ESS tools and schemas are released under the MIT license.

The ESS_gui folder contains all Matlab files associated with the GUI. Running the GUI requires the ESS toolbox. The ESS_gui is meant to enhance acceptance and user friendliness when entering the EEG study description for containerization. Writing or customizing an XML-based specification file is not required. ESS_gui is released under the GNU GPL.  

Getting started:
  
Create a new study description
1. Add ESS folder and subfolders to MATLAB path 
2. Start ESS_gui by running ess_start.m
3. Click on: Create new study description
4. Rename Study title 
5. Click on: Save -> your study description is saved as a .mat file in your CURRENT folder, do this every time you added information to your study description

Load your study description
1. Add ESS folder and subfolders to MATLAB path 
2. Start ESS_gui by running ess_start.m
3. Click on: Load .mat study description
4. Continue describing your data 
5. Click on: Save -> your study description is saved as a .mat file in your CURRENT folder, do this every time you added information to your study description

IMPORTANT: CLICK THE INFO-BUTTON'S TO DISPLAY A DETAILED DESCRIPTION OF THE ENTRY FIELDS!

ESS-Containerization
1. After finishing describing your data, you can validate your study description in the Summary Information Window. Click on the button: Validate study. 
2. The button color indicates the validation result. Red: ESS detected failures in the study schema, which needs to be corrected. See text box for more details. Green: ESS successfully validated the study and containerization is ready to start.
3. If ESS successfully validated the study a new field appears in which you have to choose a study container path. ESS creates a study Level 1 container with folder name: studytitle_Level_1 in the selected folder.  
4. Start containerization by clicking on Create container.

IMPORTANT: ESS TOOLBOX AND THE ESS_GUI IS USING EEGLAB FUNCTIONS. MAKE SURE THAT YOU ADDED EEGLAB TO YOUR MATLAB PATH AND THAT NECESSARY EEGLAB PLUGINS FOR LOADING YOUR EEG DATA ARE INSTALLED. 

You are welcome to report issues regarding the GUI to Manuela Jaeger M.Sc., manuela.jaeger@uni-oldenburg.de, Neuropsychology Lab, University of Oldenburg, Germany. 