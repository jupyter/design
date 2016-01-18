# Jupyter Notebook UX Survey

This folder contains the results of a 16-question survey about the Jupyter Notebook user experience. The survey ran on [SurveyGizmo](https://www.surveygizmo.com/) from December 21, 2015 until January 15, 2016. Posts on the [Project Jupyter Google Group](https://groups.google.com/forum/#!topic/jupyter/XCzJ02Rzj0Y), on the [Jupyter blog](http://blog.jupyter.org/2015/12/22/jupyter-notebook-user-experience-survey/), and from the [@ProjectJupyter Twitter account](https://twitter.com/ProjectJupyter/status/684096608166776832) were used to share the survey link and solicit responses. The following introductory text appeared on the first screen of the survey:

> “The purpose of computing is insight, not numbers” ~ R. Hamming.

> Project Jupyter’s mission is to create open source tools for interactive scientific computing and data science in research, education and industry, with an emphasis on usability, collaboration and reproducibility.

> We value your time in taking part in a survey about the Project Jupyter Notebook user experience. Your feedback (good and bad) is very important to us in designing a stellar experience for you.

> This questionnaire should take no more than 5-7 mins. By taking this survey, you agree that your responses will be published anonymously and publicly for analysis by the Project Jupyter Community.

> Thank you!

## Response Data

There are 1706 rows and 37 columns in the [20160115235816-SurveyExport.csv](20160115235816-SurveyExport.csv) file. It is a direct export from the survey tool with no preprocessing applied to the response values.

Each row in the CSV represents a single participant survey session, lasting from first visit to the survey URL to either:

1. A click of the submit button at the end of the survey (a *complete* session)
2. Navigation away from the survey without submission (a *partial* session)

There are 927 partial (54%) and 779 complete sessions (46%) in the data set.

The first 3 columns contain metadata about the session.

Column # | Header         | Description
-------- | -------------- | -----------
|0       | Time Started    | The time when the respondant first visited the survey URL in YYYY-MM-DD HH:MM:SS format (GMT-06:00).
|1       | Date Submitted | If the *Status* is `Complete`, the time when the respondant clicked the submit button in YYYY-MM-DD HH:MM:SS format (GMT-06:00). If the *Status* is `Partial`, the value is the same as the *Time Started*.
|2       | Status         | Whether the user submitted the survey on the final screen (value `Complete`) or left the survey before submission (value `Partial`)

The remaining 34 columns capture the responses to the survey questions. Some questions have multiple response fields and, therefore, repeat in multiple columns. Missing values represent a lack of data entry in one or more response fields.

Column # | Type               | Possible values | Question Text
-------- |------------------- | --------------- | -------------
|3       | Choice             | Daily, Weekly, Monthly, Less often than montly |1. How often do you use Jupyter Notebook? 
|4       | Text               | Any             | 2. What, if anything, hinders you from making Jupyter Notebook an even more regular part of your workflow?
|5       | Choice             | Less than one year, One year or more | 3. Roughly how long have you been using Jupyter Notebook?
|6-8     | Text (x3)          | Any             | 4. What tools and applications, if any, would you like to see more tightly integrated with Jupyter Notebook?
|9-10    | Choice w/ write-in |  As a standalone application, Through Jupyter Hub, Other - Write in | 5. How do you run the Jupyter Notebook?
|11-13   | Text (x3)          | Any             | 6. What needs in your workflow does Jupyter Notebook address?
|14-16   | Text (x3)          | Any             | 7. What needs in your workflow does Jupyter Notebook not address?
|17-19   | Text (x3)          | Any             | 8. What aspects of Jupyter Notebook make it pleasant to use in your workflow?
|20-22   | Text (x3)          | Any             | 9. What aspects of Jupyter Notebook make it difficult to use in your workflow?
|23-25   | Text (x3)          | Any             | 10. What new features or changes would you like to see in Jupyter Notebook? (Please list anything that comes to mind that helps you in your workflow, big or small.)
|26-28   | Text (x3)          | Any             | 11. Thinking back to when you first started using Jupyter Notebook, what enhancements would have made your initial experience better?
|29-30   | Multiple selection w/ write-in | (One or more semicolon separated) comfortable, intuitive, convenient, unconfortable, simple, cool, complicated, accessible, confusing, quick, flexible, Other word(s): | 12. Select all the words that best describe Jupyter Notebook.
|31      | Text               | Any             | 13. What is your primary role when using Jupyter Notebook (e.g., student, astrophysicist, financial modeler, business manager, etc.)?
|32      | Choice             | Less than 1 year, 1 year, 2-5 years, 5+ years | 14. How many years have you been in this role?
|33-35   | Text (x3)          | Any             | 15. What industries does your role and analytical work support (e.g., Journalism, IT, etc.)?
|36      | Choice             | Tens, Hundreds, Thousands, Tens of thousands, Hundreds of thousands or more | 16. How many people typically see and/or interact with the results of your work in Jupyter Notebook? (Consider people who view your notebooks on nbviewer, colleagues who rerun your notebooks, developers who star your notebook repos on GitHub, audiences who see your notebooks as slideshows, etc.)

## Credits

Julie Santilli, @parente, @ellisonbg, @fperez, @jasongrout, @minrk, @carreau
