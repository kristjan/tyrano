!SLIDE bullets

- Kristján Pétursson
- k@apartmentlist.com
- ![](images/octocat.png)
  kristjan

!SLIDE center

<img src="images/trex.png" width="100%" />

# How T-Rex Rules the Dynos

!SLIDE incremental

# We import data

## Lots of it

!SLIDE center

<img src="images/dashboard.png" width="130%" style="margin: -50px" />

!SLIDE incremental

# Worker Dynos

- Constantly up, mostly idle
- Don't know which picked up the task
- Deploy restarts them
- Heroku restarts them

!SLIDE incremental

# Heroku Run API

```
$ heroku run rake do:something
```

- Dynos runs its task, then exits
- Known process ID
- Don't restart on deploy

!SLIDE center

<img src="images/wild_example.png" width="100%" />

!SLIDE incremental

# Victory

- Saved 70% of our Heroku bill
- Debugging
- Deploy whenever we want


!SLIDE code large

## [https://github.com/kristjan/tyrano](https://github.com/kristjan/tyrano)
