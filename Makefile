deps:
				 pip install -r requirements.txt

test_browser:
				 robot --outputdir Outputs Test/test.robot

test_headless:
				 robot --outputdir Outputs -v BROWSER:headlessfirefox Test/test.robot
