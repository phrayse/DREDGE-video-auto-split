startup
{
  refreshRate = 15;
  timer.CurrentTimingMethod = TimingMethod.GameTime;
}

init
{
  vars.cooldown = TimeSpan.Zero;
  vars.keyLock = false;
}

start
{
  if (features["start"].current > 90 && features["load"].current > 90)
  {
    vars.cooldown = TimeSpan.Zero;
    vars.keyLock = false;
    return true;
  }
}

split
{
  if (vars.cooldown >= timer.CurrentTime.RealTime.Value)
  {
    return false;
  }

  if (!vars.keyLock && features["key"].current > 94)
  {
    vars.cooldown = timer.CurrentTime.RealTime.Value.Add(new TimeSpan(0,1,0));
    vars.keyLock = true;
    return true;
  }

  if (features["box"].current > 93 || features["necklace"].current > 93 || features["ring"].current > 93)
  {
    vars.cooldown = timer.CurrentTime.RealTime.Value.Add(new TimeSpan(0,1,0));
    return true;
  }

  return ((features["final1"].old(150) > 93 && features["final1"].current < 91) || (features["final2"].old(150) > 94 && features["final2"].current < 92));
}

isLoading
{
  return features["load"].current > 92;
}