﻿using System;
using System.Collections.Generic;
using System.Xml;

namespace ExtractArtistsFromCatalog
{
    class ExtractArtists
    {
        static void Main()
        {
            XmlDocument doc = new XmlDocument();
            doc.Load("../../../catalogue.xml");

            XmlElement catalogue = doc.DocumentElement;

            var artists = PrintListOfArtists(catalogue);

            Console.Write("List of all artists in current catalague: " + string.Join(", ", artists));
            Console.Write(".\n\n");

            var albumsCount = ExtractNumberOfAlbumsPerArtist(catalogue);

            foreach (var album in albumsCount)
            {
                Console.WriteLine("{0}: {1} album/s", album.Key, album.Value);
            }
        }

        private static IDictionary<string, int> ExtractNumberOfAlbumsPerArtist(XmlElement catalogue)
        {
            var counter = new Dictionary<string, int>();

            var albums = catalogue.GetElementsByTagName("album");

            foreach (XmlElement album in albums)
            {
                var artist = album["artist"].InnerText;

                if (!counter.ContainsKey(artist))
                {
                    counter[artist] = 0;
                }

                counter[artist]++;
            }

            return counter;
        }

        private static ICollection<string> PrintListOfArtists(XmlElement catalogue)
        {
            var artists = new HashSet<string>();
            
            foreach (XmlElement album in catalogue.ChildNodes)
            {
                var artist = album["artist"];
                //Console.WriteLine(artist.InnerText);

                artists.Add(artist.InnerText);
            }

            return artists;
        }
    }
}
