# rescuetime-highlights

Post rescuetime highlights to slack

# Configuration

You need to set these environment variables:

```
export SLACK_ACCESSTOKEN=xxxyyy
export RESCUETIME_API_KEY=zznnn
export SLACK_STANDUP_CHANNEL=pt-sre-standup
```

if you want to run testing / debug you should also set

```
export DEBUG_RT_HIGHLIGHTS=any-value
```

## Cron example

This assumes you have:

* created a file containing the environment variables
* used perlbrew, and installed 5.30.2
* cloned the repo into `$HOME/development/`

```
  55  21  *   *  mon-fri   . $HOME/.shellrc.d/_agnostic/zoopla-standup.exports; $HOME/perl5/perlbrew/perls/perl-5.30.2/bin/perl $HOME/development/rescuetime-highlights-to-slack/rescuetime-highlights today >>$HOME/cron.out 2>&1
```
