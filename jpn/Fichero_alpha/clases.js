class Ficha{
	constructor(d, e, j, i){
		this._ide = d;
		this._esp = e;
		this._jap = j;
		this._img = i;
		this._next = null;
	}
	get ide(){return this._ide;}
	get esp(){return this._esp;}
	get jap(){return this._jap;}
	get img(){return this._img;}
	get next(){return this._next;}
	set next(n){this._next = n;}
}

class Cola{
	constructor(m){
		this._max = m;
		this._first = null;
	}
	get first(){return this._first;}
	set first(n){this._first = n;}
	get max(){return this._max;}

	last(){
		var a = this.first;
		while(a.next){
			a = a.next;
		}
		return a;
	}
	length(){
		var s = 0;
		var a = this.first;
		while(a){
			a = a.next;
			s++;
		}
		return s;
	}
	isFull(){return this.length() == this.max;}
	push(obj){
		if (this.max > this.length()) {
			if(this.first){
				this.last().next = obj;
			}else{
				this.first = obj;
			}
		}else{
			return null;
		}
	}
	pop(){
		if (this.first) {
			var a = this.first;
			this.first = this.first.next;
			a.next = null;
			return a;
		}else{
			return null;
		}
	}
	text(){
		var a = this.first;
		var s = "";
		while(a){
			s += a.esp + "->";
			a = a.next;
		}
		console.log(s);
	}
}