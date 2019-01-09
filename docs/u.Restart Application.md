## Restart Application

Restarting the application is simply a matter of calling the `restartApplication()` method:

```as3
RestartApp.service.restartApplication();
```

Calling this function will terminate and schedule an immediate restart of the current application.


To check if restarting the application is supported on the current device platform and version you can check the `canRestartApplication` flag:


```as3
if (RestartApp.service.canRestartApplication)
{
    RestartApp.service.restartApplication();
}
else 
{
    // Not supported on this device / platform
}
```

