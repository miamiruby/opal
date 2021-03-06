opal_filter "Time" do
  fails "Time.mktime handles microseconds"
  fails "Time.mktime handles fractional microseconds as a Float"
  fails "Time.mktime handles fractional microseconds as a Rational"
  fails "Time.mktime ignores fractional seconds if a passed whole number of microseconds"
  fails "Time.mktime ignores fractional seconds if a passed fractional number of microseconds"

  fails "Time#strftime returns the fractional seconds digits, default is 9 digits (nanosecond) with %N"
  fails "Time#strftime with %N formats the nanoseconds of of the second with %N"
  fails "Time#strftime with %N formats the milliseconds of of the second with %3N"
  fails "Time#strftime with %N formats the microseconds of of the second with %6N"
  fails "Time#strftime with %N formats the nanoseconds of of the second with %9N"
  fails "Time#strftime with %N formats the picoseconds of of the second with %12N"
  fails "Time#strftime with %z formats a UTC time offset as '+0000'"
  fails "Time#strftime with %z formats a time with fixed positive offset as '+HHMM'"
  fails "Time#strftime with %z formats a time with fixed negative offset as '-HHMM'"
  fails "Time#strftime with %z formats a time with fixed offset as '+/-HH:MM' with ':' specifier"
  fails "Time#strftime with %z formats a time with fixed offset as '+/-HH:MM:SS' with '::' specifier"
  fails "Time#strftime with %z rounds fixed offset to the nearest second"
  fails "Time#strftime with %L formats the milliseconds of of the second"
end
