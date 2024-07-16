# React + Vite

docker build -t tt-react-app .
docker run -p 3000:3000 --name tt-ra-container tt-react-app

npm run dev
or
npm run build

npm run preview
or
npm install serve -g
serve -s dist

# deploy

az acr login --name swttpoc1acr001

docker build -t tt-react-app .
docker tag tt-react-app swttpoc1acr001.azurecr.io/tt-react-app:0.0.1
docker push swttpoc1acr001.azurecr.io/tt-react-app:0.0.1
