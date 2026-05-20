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
    res.render('index', { title: 'Solanki Pipes — HDPE Pipe Manufacturer, Haryana' });
});
// Route for the about page
app.get('/about', (req, res) => {
    res.render('about', { title: 'About Solanki Industries' });
});

// Route for HDPE page
app.get('/hdpe', (req, res) => {
    res.render('hdpe', { title: 'HDPE Pipes (IS 4984) — Solanki Pipes' });
});

app.get('/hdpe-water', (req, res) => {
    res.render('hdpe', { title: 'HDPE Water Pipe — Solanki Pipes' });
});

app.get('/hdpe-sewerage', (req, res) => {
    res.render('hdpe-sewerage', { title: 'HDPE Sewerage Pipe — Solanki Pipes' });
});

app.get('/dwc-pipe', (req, res) => {
    res.render('dwc-pipe', { title: 'DWC Pipe — Solanki Pipes' });
});

app.get('/pvc-pipe', (req, res) => {
    res.render('pvc-pipe', { title: 'PVC Pipe — Solanki Pipes' });
});

// Route for the quality page
app.get('/quality', (req, res) => {
    res.render('quality', { title: 'Quality Assurance — Solanki Industries' });
});

// Route for the projects page
app.get('/projects', (req, res) => {
    res.render('projects', { title: 'Projects & Case Studies — Solanki Industries' });
});

// Route for the Farmers' Fair CSR Event page
app.get('/farmers-fair', (req, res) => {
    res.render('farmers-fair', { title: 'Farmers’ Fair & Agricultural Exhibition Sponsorship — Solanki Pipes' });
});

// Route for the contact page
app.get('/contact', (req, res) => {
    res.render('contact', { title: 'Contact Solanki Industries' });
});

// New Pages
app.get('/downloads', (req, res) => {
    res.render('downloads', { title: 'Downloads — Solanki Industries' });
});

app.get('/vendor-empanelment', (req, res) => {
    res.render('vendor-empanelment', { title: 'Vendor Empanelment — Solanki Industries' });
});

app.get('/privacy', (req, res) => {
    res.render('privacy', { title: 'Privacy Policy — Solanki Industries' });
});

app.get('/terms', (req, res) => {
    res.render('terms', { title: 'Terms & Conditions — Solanki Industries' });
});

const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Server is running at http://localhost:${PORT}`);
});