# inform
3AAC inform project.

1. Basic html & css page, looks generally like JHC inform - Complete
2. Rails app to fill out and send informs to Wksp 2IC and FS Officer - Ongoing

2a. Rails app stores informs.
2b. FS Officer can review informs - requires login account.

3. FSO can respond, user can create account and see responses.
4. User email updates on submitted informs.
5. User can upload supporting documents and photos. (Gem: paperclip)

Rails App - Change log/ToDo.

28 Jan 18: Basic rails app allows anyone to submit to create new inform, edit and delete informs. Header partial looks and feels like inform. Everything else very messy. Need to complete CSS styling to make site look professional. Add menu across the top and use bootstrap to style forms. Need to add authentication (look into rails site security - probably se sorcery as its simple.). Only an authenticated user can view currently submitted informs, edit and delete. Need to created a second rails model 'Respond' to allow FSO to respond to InForm. This will require two types of user 1. Admin: that can see all submitted InForms and respond. 2. User: can submit Informs and see responses.
