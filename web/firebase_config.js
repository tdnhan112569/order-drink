import "dart:js" as js;
js.context['gapi'].callMethod('client', ['init', {
'apiKey': 'AIzaSyASBOiqWYBpuB5K3-_01xuP1aukhvrm3QE',
'discoveryDocs': ['https://www.googleapis.com/discovery/v1/apis/drive/v3/rest'], // Replace with your desired API
}]);

 // Import the functions you need from the SDKs you need
import { initializeApp } from "https://www.gstatic.com/firebasejs/11.1.0/firebase-app.js";
import { getAnalytics } from "https://www.gstatic.com/firebasejs/11.1.0/firebase-analytics.js";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
  apiKey: "AIzaSyASBOiqWYBpuB5K3-_01xuP1aukhvrm3QE",
  authDomain: "order-drink-7664e.firebaseapp.com",
  projectId: "order-drink-7664e",
  storageBucket: "order-drink-7664e.firebasestorage.app",
  messagingSenderId: "612885850231",
  appId: "1:612885850231:web:a887b0c6d5e62ae7527e72",
  measurementId: "G-DYE878FG7Z"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);