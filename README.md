# Heyflow Loader

**Custom Tag Template for Google Tag Manager**

Loads HeyFlow script from static.heyflow.app.   

![Template Status](https://img.shields.io/badge/Community%20Template%20Gallery%20Status-submitted-orange) ![Repo Size](https://img.shields.io/github/repo-size/mbaersch/heyflow-loader-tag) ![License](https://img.shields.io/github/license/mbaersch/heyflow-loader-tag)

This template serves as a way to load the basic Heyflow script in a GTM container without access to Custom HTML tags (restricted tag types).  

## Usage 
Add the template to your container, create a new *Heyflow Loader* tag and trigger it when there is consent to load external resources. The tag will then load the following script: 

```
https://static.heyflow.app/widget/latest/iframe.js
```

You will see a message like this in the browser´s console if loading was successful: `Heyflow widget v3.0.8 loaded`. You can check the network tab and filter for requests to heyflow.app, too. 