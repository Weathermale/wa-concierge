#!/bin/bash
# Seed the property profile after server starts
# Usage: ./seed.sh [server_url]
# Example: ./seed.sh https://your-app.up.railway.app

SERVER_URL="${1:-http://localhost:3000}"

curl -s -X POST "$SERVER_URL/seed" \
  -H "Content-Type: application/json" \
  -d '{
  "profileId": "tromso-cabin",
  "name": "Moderne Byleilighet Tromsø",
  "locale": "no",
  "content": "PROPERTY: Moderne Byleilighet (Modern City Apartment)\nLocation: Strandkanten, Tromsø, Norway\nApartment number: H0502, 5th floor corner apartment\nType: Brand new apartment completed November 2024\nCapacity: Up to 3 guests\nFeatures: Private balcony, cozy furnishings, Northern Lights visible from apartment\nNearby: 15 min walk to Tromsø city center, 3 grocery stores within 5 min walk\n\nCHECK-IN / CHECK-OUT:\n- Check-in: From 15:00 (3 pm)\n- Check-out: By 12:00 (noon)\n\nCHECK-IN INSTRUCTIONS:\n1. Find the key box on the north side of the building, attached to the railing. This is the side facing Tromsø city center and the Tromsø bridge (you can also see the Arctic Cathedral from this side).\n2. Key box code: 1945\n3. Open the key box and take out the key. Leave and lock the key box in the same location.\n4. This is the main key - it opens the main entrance, back entrance, and the apartment door. Only one key is provided.\n5. After picking up the key, the easiest way to enter is through the back entrance (door number 2) on the side of the building where the key box is placed.\n6. Go straight forward through a white door. Take the elevator to the 5th floor.\n7. On the 5th floor, go to the left. The apartment is the corner apartment with number H0502.\n8. Use the same key to enter the apartment.\n\nCHECK-OUT: By 12:00 (noon). Return the key to the key box and lock it.\n\nHOUSE RULES:\n- Smoking: NOT allowed indoors or on the balcony. Fine of 5000 NOK for smoking.\n- Shoes: Remove shoes indoors. Remove spikes from shoes when entering the building.\n- Quiet hours: No excessive noise between 22:00 (10 pm) and 07:00 (7 am).\n- Trash: Sort your trash and use the garbage chutes outside the building.\n- Leave apartment in decent condition: take out trash, put dishes in dishwasher.\n- Excessive cleaning fine: 500 NOK.\n- Use the fan while cooking.\n- Fire alarm: Follow fire alarm instructions. False alarm fine: 8000 NOK if procedures not followed.\n- Broken/stolen items: Fined at replacement cost.\n- Lock all doors and windows when leaving. Make sure building entrance doors close properly.\n\nWIFI:\n- Network name: Another Day Another Slay\n- Password: Finansavis7Plankehytte2\n\nPARKING: Street parking available nearby. No dedicated parking spot.\n\nCONTACT:\n- Jacob: +47 95 82 76 49\n- Vilde: +47 91 68 80 65\n- Contact via your booking system for assistance.\n\nNEARBY ATTRACTIONS & ACTIVITIES:\n- Northern Lights: Visible from mountains, fjords, or even from the apartment on clear nights. Guided tours recommended.\n- Dog sledding adventures in the Arctic wilderness\n- Hiking: Fløya mountain, Fjellheisen cable car for spectacular views\n- Polaria aquarium and experience center\n- Arctic Cathedral (Ishavskatedralen)\n- Arctic bathing: Dip in the icy sea followed by sauna (Norwegian tradition)\n- Tromsø city center: Restaurants, shops, nightlife, museums\n- Tromsø Bridge: Walking distance, iconic landmark"
}'

echo ""
echo "Done! Profile seeded."
