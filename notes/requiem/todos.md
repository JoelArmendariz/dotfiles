### Todos

- ✔️ Summary tab “Event” drill in not applying the filter (add date range?)
- Filings view form type filters should include subtypes (8-K and 8-K/A)
- Cofiler filter should be by CIK (Filings table)
- ? Filter “Or” might not be working
  - This is actually a bug. You have to apply a quick filter, and then the filter panel shows up
  - HOLD OFF FOR SCOTT
- ✔️ Document viewer (with Travis)
- Owners and Holding secondary views (slide the table to the side with a back button included)
- Think about data challenge (validation) UI
- ✔️ Location column for search and filers table
  - Two columns, first is city and state, second is country and region
    - _City/State are done_
    - _Country/Region first implementation done_

### New (to me) feature

- New entitytype: Registered fund (Vanguard World Fund)(parent) and Fund (Subfund)

### Doc Viewer Notes

- Track exibit links and replace them to show the exibit on our system
- Need to show filing metadata for each document
- S3 file path --- s3-PREFIX/{accession_number}/{file_name}
