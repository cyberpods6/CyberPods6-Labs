[8/11/2024 5:01 PM]
# linux-cron-job

## Cron Job Scheduling
A cron job is scheduled using a cron expression, which is a string that consists of five or six fields separated by white space. Each field represents a specific unit of time and determines when the cron job will execute. Here's a breakdown of the fields in a typical cron expression:
```
|—---- minute (0 - 59)
|  |------hour (0 - 23)
|  |  |------day of the month (1 - 31)
|  |  |  |------ month (1 - 12)
|  |  |  |  |------day of the week (0 - 6) (Sun to Sat;
|  |  |  |  |          7 is also Sunday on some systems)
|  |  |  |  |
*  *  *  *  *  command to execute
```
1. **Minute**: 
   - **Range**: 0-59
   - **Description**: Specifies the minute of the hour when the job should run.
2. **Hour**: 
   - **Range**: 0-23
   - **Description**: Specifies the hour of the day when the job should run.
3. **Day of the Month**: 
   - **Range**: 1-31
   - **Description**: Specifies the day of the month when the job should run.
4. **Month**: 
   - **Range**: 1-12 or JAN-DEC
   - **Description**: Specifies the month when the job should run.
5. **Day of the Week**: 
   - **Range**: 0-6 or SUN-SAT (0 or 7 typically represents Sunday)
   - **Description**: Specifies the day of the week when the job should run.
6. **Year** (optional in some implementations):
   - **Range**: 1970-2099
   - **Description**: Specifies the year when the job should run.

Special characters like `*`, `,`, `-`, `/`, `?`, `L`, `W`, and `#` can be used in these fields to create more complex schedules. For example, `*` denotes all possible values for a field, allowing the job to run every minute, hour, etc.[1][2][3][5].

## References:
1. L., L. (2023, September 1). What is a Cron job: Understanding Cron syntax and how to configure Cron jobs. Hostinger Tutorials. https://www.hostinger.com/tutorials/cron-job
2. Understanding Cron syntax in the job scheduler - Cloud manager administrator reference. (n.d.). Microfocus NetIQ. https://www.netiq.com/documentation/cloud-manager-2-5/ncm-reference/data/bexyssf.html
3. Cron job format and time zone. (n.d.). Google Cloud. https://cloud.google.com/scheduler/docs/configuring/cron-job-schedules
4. CronJob. (2024, January 19). Kubernetes. https://kubernetes.io/docs/concepts/workloads/controllers/cron-jobs/
5. Cron. (2004, February 19). Wikipedia, the free encyclopedia. Retrieved August 11, 2024, from https://en.wikipedia.org/wiki/Cron
