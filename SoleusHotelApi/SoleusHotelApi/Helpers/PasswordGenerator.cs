using Microsoft.AspNetCore.Identity;
using IdentityModel;

namespace SoleusHotelApi.Helpers
{
    public class PasswordGenerator
    {
        public static string GeneratePassword()
        {
            var passwordOptions = new PasswordOptions()
            {
                RequiredLength = 8,
                RequiredUniqueChars = 4,
                RequireDigit = true,
                RequireLowercase = true,
                RequireNonAlphanumeric = true,
                RequireUppercase = true
            };

            string[] randomChars = new[] {
            "ABCDEFGHJKLMNPQRSTUVWXYZ",    
            "abcdefghijkmnpqrstuvwxyz",    
            "123456789",                   
            "!@$?+="                       
            };

            var rand = new CryptoRandom(Environment.TickCount);

            List<char> chars = new List<char>();

            for (int i = 0; i <=3; i++)
            {
                chars.Insert(rand.Next(0, chars.Count()),
                randomChars[i][rand.Next(0, randomChars[i].Length)]);
            }
            
            for (int i = chars.Count; i < passwordOptions.RequiredLength
                || chars.Distinct().Count() < passwordOptions.RequiredUniqueChars; i++)
            {
                string rcs = randomChars[rand.Next(0, randomChars.Length)];
                chars.Insert(rand.Next(0, chars.Count),
                    rcs[rand.Next(0, rcs.Length)]);
            }

            return new string(chars.ToArray());
        }

    }
}
