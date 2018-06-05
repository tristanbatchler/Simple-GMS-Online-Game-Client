# Simple GMS Online Game Client
A simple game made in Game Maker Studio using asynch functions to communicate with a nodejs server.

# Installation
You must have at least Game Maker Studio 1.4 installed (GMS2 untested), as well as Node.js if you plan on hosting your own server.

1. Clone this repository as well as the server (located https://github.com/tristanbatchler/Simple-Node-Game-Server).
2. Follow the instructions in the readme on the server repository to get the server up and running.
3. Open the "Online Game.gmx" project inside of Game Maker Studio. Go to Resources > Macros (or Shift+Ctrl+N) and verify that the "NETWORK_URL" field is the IP address that all clients can access the server with. For testing purposes, the default localhost is fine, but if you plan on porting your game to the internet, you will need to change this.
4. Run the game.

# Environments
By default, the release environment is running through port 8081. You can change this in the server-side code, and the "SERVER_PORT" macro in GMS. It is also possible to run a testing environment on a seperate port. See the server-side code for more information.
