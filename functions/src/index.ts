import * as functions from 'firebase-functions';
import * as admin from 'firebase-admin';
admin.initializeApp()

// const db = admin.firestore();
const fcm = admin.messaging();

export const sendToTopic = functions.firestore
    .document('recipes/{recipyId}')
    .onCreate(async snapshot => {
        // const recipe = snapshot.data();
        const payload : admin.messaging.MessagingPayload = {
            notification: {
                title: 'new recipe added, check it out',
                body: 'Make it and eat it'
            }
        };

        return fcm.sendToTopic('recipes', payload);
    });


// // Start writing Firebase Functions
// // https://firebase.google.com/docs/functions/typescript
//
// export const helloWorld = functions.https.onRequest((request, response) => {
//  response.send("Hello from Firebase!");
// });
