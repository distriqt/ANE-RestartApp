
![](images/hero.png)

# RestartApp

The RestartApp extension gives you the ability to force a restart of your application, terminating the current process and triggering a relaunch of the application. 


### Features

- Restart your running application on the following platforms:
  - Android
- Single API interface - your code works across supported platforms with no modifications
- Sample project code and ASDocs reference



## Documentation

The [wiki](https://github.com/distriqt/ANE-RestartApp/wiki) forms the best source of detailed documentation for the extension along with the [asdocs](https://distriqt.github.io/ANE-RestartApp/asdocs). 

Quick Example: 

```actionscript
if (RestartApp.service.canRestartApplication)
{
    RestartApp.service.restartApplication();
}
```



![](images/promo.png)
