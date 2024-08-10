const messageListContainer = document.querySelector('.message-list-container');
const roomList = messageListContainer.querySelectorAll('li');

const client = new StompJs.Client();
client.brokerURL = 'ws://localhost:8080/chatting';
client.onConnect = function (frame) {
    console.log('서버와 연결이 완료되었습니다');
    for(const room of roomList) {
        console.log(room)
        client.subscribe(`/topic/${room.id}`, response => {
            create_chat_message(response.body);
        });
    }
}
client.activate();


function create_chat_message(message){
    const allMessage = document.getElementsByClassName('message-container');
    const lastMessageContainer =allMessage[allMessage.length - 1];
    lastMessageContainer.insertAdjacentHTML(`beforeend`, `<span>${message}</span>`);
}




/************************************************************************/
const paths = location.pathname.split('/');
const roomId = paths[paths.length - 1];
console.log(roomId);
const chatTextInput = document.getElementById('chat-text-input');
console.log(chatTextInput)
chatTextInput.onkeydown = e => {
    if(e.key === 'Enter'){
        client.publish({
            destination: `/app/${roomId}`, // 메세지를 보내는 목적지 경로
            body: chatTextInput.value // 전달할 메세지 데이터
        })
    }
}


