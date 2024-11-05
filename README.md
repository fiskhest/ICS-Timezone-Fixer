# ICS Timezone Fixer

A simple PHP script designed to solve a common issue when publishing `.ics` calendar files from Microsoft Exchange calendars to Google Calendar. When people subscribe to an Exchange calendar using Google Calendar, some timezones may be missing, which causes Google Calendar to default to UTC (00:00) for those events, leading to incorrect event times.

This script allows you to modify the `.ics` file to append any missing timezones, ensuring that all event times appear correctly in Google Calendar or any other calendar app that may face this issue.

## How It Works

The script:
1. Takes the URL of an `.ics` file as input (from the `ics_url` query parameter).
2. Inserts any missing timezone definitions.
3. Outputs the modified `.ics` file, ready for use.

## Quick Start

To use this tool directly, you can leverage the hosted version:

```plaintext
https://ics-changer.great-site.net/?ics_url=<original-link-to-calendar.ics>
```

Simply replace `<original-link-to-calendar.ics>` with your actual ICS file URL.

### Adding to Google Calendar

To add the modified `.ics` subscription calendar to Google Calendar:
1. Open Google Calendar.
2. In the left panel, find **Other calendars**.
3. Click the **+** button next to **Other calendars**, then select **From URL**.
4. Enter your modified ICS URL (e.g., `https://ics-changer.great-site.net/?ics_url=https://mysite.com/calendar.ics`).
5. Click **Add Calendar** to subscribe to the modified calendar.

## Contributing

We welcome contributions to enhance timezone support and overall functionality! You can contribute by:

- Adding new timezone definitions to the `missing_timezones` file.
- Opening an issue to report bugs or request new features.
- Submitting a pull request (PR) with your improvements.

**How to Contribute Timezones:**
1. Add your timezone definitions in the `missing_timezones` file, following the VTIMEZONE format.
2. Submit a pull request with a clear description of the timezone additions.

### Example VTIMEZONE Format
Here's an example of how to add a timezone definition to `missing_timezones`:

```plaintext
BEGIN:VTIMEZONE
TZID:Asia/Tokyo
BEGIN:STANDARD
DTSTART:19700101T000000
TZOFFSETFROM:+0900
TZOFFSETTO:+0900
END:STANDARD
END:VTIMEZONE
```

## License
This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.

## Credits
Special thanks to everyone who contributes to ensuring that all timezones are accurately represented and compatible with Google Calendar!

With this tool, you can ensure your Exchange calendar events display correctly in Google Calendar and avoid timezone issues. We hope this project helps you, and we appreciate all contributions to make it even better!

