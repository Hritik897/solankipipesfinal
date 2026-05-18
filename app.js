    const express = require('express');
    const app = express();
    const path = require('path');

    // Set EJS as the template engine
    app.set('view engine', 'ejs');

    // Serve static files (images, custom css) from the "public" folder
    app.use(express.static(path.join(__dirname, 'public')));
    app.use(express.static(__dirname)); // Also serve from root for image folder
    app.set('views', path.join(__dirname, 'views'));


    // Route for the home page
    app.get('/', (req, res) => {
        res.render('index', { title: 'Solanki Industries' });
    });
    // Route for the about  page
 app.get('/about', (req, res) => {
    res.render('about', { title: 'Solanki Industries' }); 
});

  // Route for the business vertical page
 app.get('/hdpe', (req, res) => {
    res.render('hdpe', { title: 'Solanki Industries' }); 
});

 // Route for the business vertical page
 app.get('/plb', (req, res) => {
    res.render('plb', { title: 'Solanki Industries' }); 
});

 // Route for the business vertical page
 app.get('/mdpe', (req, res) => {
    res.render('mdpe', { title: 'Solanki Industries' }); 
});

// Route for the business vertical page
 app.get('/mdpe_gas', (req, res) => {
    res.render('mdpe_gas', { title: 'Solanki Industries' }); 
});

 app.get('/pprPipes', (req, res) => {
    res.render('pprPipes', { title: 'Solanki Industries' }); 
});
//  // Route for the industries page
//  app.get('/industries', (req, res) => {
//     res.render('industries', { title: 'Solanki Industries' }); 
// });

//  // Route for the career page
//  app.get('/career', (req, res) => {
//     res.render('career', { title: 'Solanki Industries' }); 
// });



// // Route for the pps_1 page
//  app.get('/pps_1', (req, res) => {
//     res.render('pps_1', { title: 'Solanki Industries' }); 
// });
// Route for the gallery page
 app.get('/quality', (req, res) => {
    res.render('quality', { title: 'Solanki Industries' }); 
});


 // Route for the contact page
 app.get('/contact', (req, res) => {
    res.render('contact', { title: 'Solanki Industries' }); 
});
// // Route for the stp_casestudy page
//  app.get('/stp_casestudy', (req, res) => {
//     res.render('stp_casestudy', { title: 'Solanki Industries' }); 
// });

// // Route for the stp_casestudy page
//  app.get('/lift_irrigation', (req, res) => {
//     res.render('lift_irrigation', { title: 'Solanki Industries' }); 
// });


// // Route for the stp_casestudy page
//  app.get('/water_infra', (req, res) => {
//     res.render('water_infra', { title: 'Solanki Industries' }); 
// });


    const PORT = 3000;
    app.listen(PORT, () => {
        console.log(`Server is running at http://localhost:${PORT}`);
    });