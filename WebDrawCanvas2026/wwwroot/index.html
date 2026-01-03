const container = document.getElementById('canvas-container');
const layerList = document.getElementById('layer-list');
let layers = [];
let activeLayerIndex = -1;
let isDrawing = false;

// Configurazione pennello
const brush = {
    color: '#000000',
    size: 5
};

document.getElementById('colorPicker').onchange = (e) => brush.color = e.target.value;
document.getElementById('brushSize').oninput = (e) => brush.size = e.target.value;

function addNewLayer() {
    const id = Date.now();
    const canvas = document.createElement('canvas');
    canvas.width = container.clientWidth;
    canvas.height = container.clientHeight;
    canvas.id = `layer-${id}`;
    
    const layer = {
        id: id,
        canvas: canvas,
        ctx: canvas.getContext('2d'),
        opacity: 1,
        blendMode: 'normal',
        visible: true
    };

    layers.push(layer);
    container.appendChild(canvas);
    selectLayer(layers.length - 1);
    renderLayerList();
}

function selectLayer(index) {
    activeLayerIndex = index;
    layers.forEach((l, i) => {
        l.canvas.classList.toggle('active', i === index);
    });
    renderLayerList();
}

function updateLayerProperties(index, props) {
    const layer = layers[index];
    if (props.opacity !== undefined) {
        layer.opacity = props.opacity;
        layer.canvas.style.opacity = props.opacity;
    }
    if (props.blendMode !== undefined) {
        layer.blendMode = props.blendMode;
        layer.canvas.style.mixBlendMode = props.blendMode; // Utilizziamo CSS blend mode per semplicità
    }
    if (props.visible !== undefined) {
        layer.visible = props.visible;
        layer.canvas.style.display = props.visible ? 'block' : 'none';
    }
}

function renderLayerList() {
    layerList.innerHTML = '';
    layers.slice().reverse().forEach((layer, revIndex) => {
        const index = layers.length - 1 - revIndex;
        const div = document.createElement('div');
        div.className = `layer-item ${index === activeLayerIndex ? 'selected' : ''}`;
        div.onclick = () => selectLayer(index);

        div.innerHTML = `
            <span>Layer ${index + 1}</span>
            <div class="layer-controls">
                <select onchange="updateLayerProperties(${index}, {blendMode: this.value})">
                    <option value="normal">Normale</option>
                    <option value="multiply">Multiply</option>
                    <option value="screen">Screen</option>
                    <option value="overlay">Overlay</option>
                    <option value="color-dodge">Dodge</option>
                    <option value="color-burn">Burn</option>
                </select>
                <input type="checkbox" ${layer.visible ? 'checked' : ''} 
                    onchange="updateLayerProperties(${index}, {visible: this.checked})">
            </div>
            <input type="range" min="0" max="1" step="0.1" value="${layer.opacity}" 
                oninput="updateLayerProperties(${index}, {opacity: this.value})">
        `;
        layerList.appendChild(div);
    });
}

// Logica di disegno
container.onmousedown = (e) => {
    if (activeLayerIndex === -1) return;
    isDrawing = true;
    const ctx = layers[activeLayerIndex].ctx;
    ctx.beginPath();
    ctx.moveTo(e.offsetX, e.offsetY);
};

container.onmousemove = (e) => {
    if (!isDrawing) return;
    const ctx = layers[activeLayerIndex].ctx;
    ctx.lineTo(e.offsetX, e.offsetY);
    ctx.strokeStyle = brush.color;
    ctx.lineWidth = brush.size;
    ctx.lineCap = 'round';
    ctx.stroke();
};

window.onmouseup = () => isDrawing = false;

// Inizializza con un layer
addNewLayer();