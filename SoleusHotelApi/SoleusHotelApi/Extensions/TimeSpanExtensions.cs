namespace SoleusHotelApi.Extensions
{
    public static class TimeSpanExtensions
    {
        public static long Mean(this ICollection<TimeSpan> source)
        {
            if (source == null)
                throw new ArgumentNullException(nameof(source));

            var ticks = source.Select(item => item.Ticks);
            var meanTicks = (long)ticks.Average();
            TimeSpan meanTime = TimeSpan.FromTicks(meanTicks);
            return (long)Math.Truncate(meanTime.TotalMilliseconds);

        }
    }
}
