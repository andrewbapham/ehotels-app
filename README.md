# ehotels-app
EHotels Web App for CSI2132 Final Project

Web app built with React.js for frontend, Node.js with Express for the backend, and MySQL for DB. 

Planning on dockerizing for consistency across devices. 

## Dev Instructions
#### Note: Make sure to have node.js and MySQL installed.

### Frontend
After cloning the repo, in your command line interface, navigate to the `/frontend` directory. Then, run the command
`npm i`
To install all necessary node modules. Then, run
`npm run dev`
To start and preview the front-end application. The application will update as you edit and save the files in the project.
To stop the application, enter `CTRL+C` in the terminal window.

### Database
#### IMPORTANT: In order for the backend to work as is, without changing user and password configurations, you will need to create a MySQL user that has access to the database with credentials:
User: ehotels_access
Password: csi2132
Open MySQL workbench and execute the `unified_script.sql` script.

### Backend

Once you've created the user, in another terminal window, navigate to the `/backend` directoy. Then run 
`npm run i`
To install required dependencies. Then, run
`node app.js`
To start the backend server. 
To quit the server, enter `CTRL+C` in the terminal window.

Optional: 
Run `npm i -g nodemon` to install Nodemon, an extension that allows for auto updating node apps as you change them. If not, you will need to stop and restart your node terminal everytime you make changes to see the effects.



