//As new quals become available, this will need to be updated.
//- include new tests in "tests"
//- Add new questions to tag lists in qtags
//- change qtags


var t = ['alg','ana'];
var testyrs = ['2009S','2009F','2010S','2010F','2011S','2011F','2012S','2012F','2013S','2013F','2014S','2014F','2015S','2015F','2016S','2016F','2017S','2017F','2018S','2018F','2019S','2019F'];

var qtags = {alg:[{tag:"Ho", questions:["alg2010SM5","alg2010FA4","alg2011SA3","alg2011FM5","alg2012SM5","alg2013SM2","alg2014SM2","alg2014FM4","alg2015SM2","alg2015SA3","alg2015FM2","alg2016SA2","alg2016FA2","alg2017SM4","alg2017FM5","alg2017FA5","alg2018SA2","alg2018FA5","alg2019SM3","alg2019FA2"], name: "Homological Algebra"},
	{tag:"Ga", questions:["alg2009SM3","alg2009SA4","alg2009FM3","alg2010SM4","alg2010SA1","alg2010FM4","alg2011SM2","alg2011FM2","alg2011FA5","alg2012SM3","alg2012SA4","alg2012FA2","alg2013SM4","alg2013FA4","alg2014SA3","alg2014FM2","alg2015FM3","alg2015FA2","alg2016SM5","alg2016FA3","alg2017SA1","alg2018FA2","alg2019SM1","alg2019SA3"], name: "Galois Theory"},
	{tag:"Gr", questions:["alg2009SM4","alg2009SA2","alg2009FM4","alg2010SM1","alg2010FM1","alg2010FM5","alg2010FA1","alg2011SM1","alg2011SA2","alg2011FM1","alg2011FA2","alg2012SA5","alg2012FM2","alg2012FA5","alg2013SM3","alg2013FA1","alg2014SM3","alg2014SA4","alg2014FM1","alg2014FA1","alg2015SA2","alg2015FM1","alg2016SM1","alg2016SA3","alg2016FM1","alg2017SM1","alg2017FM3","alg2018SM1","alg2018FM3","alg2019SM5","alg2019SA1","alg2019FM1"], name: "Finite Groups"},
	{tag:"CF", questions:["alg2009SA3","alg2010SM2","alg2011SM3","alg2011SA1","alg2014SA5","alg2014FA4","alg2015SM5","alg2015SA5","alg2016SA1","alg2016FA5","alg2017SA2","alg2017FA1","alg2018SA4","alg2018FM2"], name: "Canonical Forms"},
	{tag:"CA", questions:["alg2009SM1","alg2009SA5","alg2010SM3","alg2010SA2","alg2010SA4","alg2010FM3","alg2011SM4","alg2011FM3","alg2011FA1","alg2012SM2","alg2012SA1","alg2012FM4","alg2012FA1","alg2012FA3","alg2013SM1","alg2013SA1","alg2013SA5","alg2013FM3","alg2013FM4","alg2014FM3","alg2015SM4","alg2015FM4","alg2016SA4","alg2016FA4","alg2017SM3","alg2017SA5","alg2017FM2","alg2018SM2","alg2018SA1","alg2018FM1","alg2018FA4","alg2019SA5","alg2019FM4","alg2019FM5"], name: "Commutative Algebra"},
	{tag:"AG", questions:["alg2009SM5","alg2009FM2","alg2010SA5","alg2012SA3","alg2013SA4","alg2013FA3","alg2013FA5","alg2014SM4","alg2014SA1","alg2014FA5","alg2015SA1","alg2015FA5","alg2016FM5","alg2017SM2","alg2017FA3","alg2018SA5","alg2019FA4"], name: "Algebraic Geometry"},
	{tag:"Re", questions:["alg2009FM5","alg2009FA2","alg2010SA3","alg2010FM2","alg2010FA2","alg2011FM4","alg2012SM4","alg2012FA4","alg2013SA3","alg2013FM1","alg2014SM1","alg2014FA3","alg2015SM1","alg2015FA4","alg2016SM3","alg2016FM4","alg2017SM5","alg2017SA4","alg2017FM4","alg2018SM5","alg2018FM5","alg2019SM2","alg2019FA5"], name: "Representation Theory"},
	{tag:"Bi", questions:["alg2009FA1","alg2009FA3","alg2009FA5","alg2010FA5","alg2011SA5","alg2012FM3","alg2013SM5","alg2013FM5","alg2014SM5","alg2015FM5","alg2016FM3","alg2017FM1","alg2018SM3","alg2018FA1","alg2019SA4","alg2019FM2"], name: "Bilinear Forms"},
	{tag:"LA", questions:["alg2009FM1","alg2012FM1","alg2013FM2","alg2013FA2","alg2015SA4","alg2015FA1","alg2016SM2","alg2019SM4","alg2019FM3","alg2019FA3"], name: "Linear Algebra (other)"},
	{tag:"FT", questions:["alg2009SA1","alg2009SM2","alg2009FA4","alg2010FA3","alg2011SM5","alg2011SA4","alg2011FA3","alg2012FM5","alg2013SA2","alg2014SA2","alg2014FM5","alg2014FA2","alg2015SM3","alg2015FA3","alg2016SA5","alg2016FM2","alg2016FA1","alg2017SA3","alg2017FA2","alg2017FA4","alg2018SM4","alg2018SA3","alg2018FM4","alg2018FA3","alg2019SA2","alg2019FA1"], name: "Field Theory (other)"},
	{tag:"Al", questions:["alg2011FA4","alg2012SM1","alg2012SA2","alg2016SM4"], name: "Finitely Generated Algebras"}
],
ana:[{tag:"measure",questions:["ana2015SM1","ana2014FA3","ana2012SM1","ana2011FA1"],name:"Measure Theory"},
	{tag:"w1other",questions:["ana2010FA3","ana2013FM2","ana2010SA1","ana2010SA4","ana2015SA1","ana2013SA4"],name:"Other Week 1"},
	{tag:"205a",questions:["ana2012FM1","ana2012FA1","ana2012SA2","ana2011SM2"],name:"205A Homework"},
	{tag:"lp",questions:["ana2012FA2","ana2009SM1"],name:"L^p Spaces"},
	{tag:"torusfour",questions:["ana2015SA3","ana2012FM2","ana2011FM1"],name:"Fourier Analaysis on the Torus"},
	{tag:"w2other",questions:["ana2014FM1","ana2014FA1","ana2013SM2","ana2012SM4","ana2010FA2"],name:"Other Week 2"},
	{tag:"funcanal",questions:["ana2013FA1","ana2013FA2","ana2013SM1","ana2012SM3","ana2012SA1","ana2011SA1","ana2010FM1","ana2010FA4","ana2010SA5","ana2009SM5"],name:"Abstract Functional Analysis"},
	{tag:"compop",questions:["ana2015SM2","ana2015SM5","ana2014FM2","ana2014FA2","ana2013FM1","ana2013FM5","ana2011FM3","ana2011SM1","ana2009FM1"],name:"Compact Operators"},
	{tag:"ana2014sreview",questions:["ana2014SM1","ana2014SM2","ana2014SM3","ana2014SM4","ana2014SM5","ana2014SA2","ana2014SA3","ana2014SA4"],name:"Spring 2014 Review"},
	{tag:"ana2012freview",questions:["ana2012FM5","ana2012FA4"],name:"Fall 2012 Review"},
	{tag:"weak",questions:["ana2014FM3","ana2014SA1","ana2013SA2","ana2011FA3"],name:"Weak Convergence"},
	{tag:"bounded",questions:["ana2015SA4","ana2013SM5","ana2012FA3","ana2012SM5","ana2011SM5"],name:"Bounded Operators"},
	{tag:"fourier",questions:["ana2015SM3","ana2014FM4","ana2012SA5"],name:"Fourier Analysis"},
	{tag:"w7other",questions:["ana2016SM5","ana2016SA5","ana2013FA4"],name:"Other Week 7"},
	{tag:"fourdecay",questions:["ana2015SA5","ana2013FM3"],name:"Decay of Fourier Transform"},
	{tag:"dist",questions:["ana2016SA4","ana2014SA5","ana2013SM4","ana2013SA5","ana2012SM2","ana2010SM5"],name:"Distributions"}
]};

var allqs = {'alg':[], 'ana':[]};
var qnums = ["M1","M2","M3","M4","M5","A1","A2","A3","A4","A5"];
for (var a1=0; a1 < t.length; a1++) {
	var topic = t[a1];
	for (var a2=0; a2 < testyrs.length; a2++) {
		var date = testyrs[a2];
		for (var a3=0; a3 < qnums.length; a3++) {
			var qnum = qnums[a3];
			allqs[topic].push(topic.concat(date, qnum));
		}
	}
};

var tagged = {'alg':[],'ana':[]};
var untagged = {'alg':[],'ana':[]};
for (var j = 0; j < t.length; j++) {
    //Concatenate all tag lists
    for (var i = 0; i < qtags[t[j]].length; i++) {
	tagged[t[j]] = tagged[t[j]].concat(qtags[t[j]][i].questions);
    };
    //Find all untagged questions
    untagged[t[j]] = allqs[t[j]].filter(function(x) { return tagged[t[j]].indexOf(x) < 0 });
	//Add to "unsorted" category
	if (untagged[t[j]].length != 0) {
		qtags[t[j]].push({tag:"unsorted",questions:untagged[t[j]],name:"Unsorted"});
	};
};





var oldqtags = {alg:[{tag:"canonicalforms",questions:["alg2014FA4","alg2010SM2","alg2011SM3","alg2011SA1","alg2012SA2","alg2014SA5"],name:"Canonical Forms"},
	{tag:"bilinearforms",questions:["alg2010FA5","alg2013FM5","alg2013SM5","alg2014SM5"],name:"Bilinear Forms"},
	{tag:"groupactions",questions:["alg2010FM5","alg2011SM1","alg2013FA1"],name:"Group Actions"},
	{tag:"structuretheorems",questions:["alg2013SM3","alg2012FA5","alg2014SM3","alg2012SA5"],name:"Structure Theorems for Abstract Groups"},
	{tag:"lineargroups",questions:["alg2010SM1","alg2011FM1","alg2013FM2","alg2012FM2"],name:"Finite Linear Groups"},
	{tag:"miscgroup",questions:["alg2010FA1"],name:"Miscellaneous Group Theory"},
	{tag:"splittingfields",questions:["alg2010SM4","alg2011SM2"],name:"Splitting Fields"},
	{tag:"fieldexts",questions:["alg2010FA3","alg2012SM3"],name:"Abstract Field Extensions"},
	{tag:"galois",questions:["alg2010SA1","alg2010FM4","alg2011FA5","alg2012SA4"],name:"Galois Theory"},
	{tag:"fieldgalois",questions:["alg2014SA3","alg2012FM5","alg2012FA2","alg2013FA4"],name:"More Field and Galois Theory"},
	{tag:"ring",questions:["alg2010SA4","alg2010SM3","alg2011FM3","alg2012SM1","alg2013FM3","alg2012SM2"],name:"Basic Ring Theory"},
	{tag:"noetherian",questions:["alg2012SA1","alg2012FM4"],name:"Noetherian Rings"},
	{tag:"alggeo",questions:["alg2010FM3","alg2013SA4","alg2014SA1"],name:"Algebraic Geometry"},
	{tag:"integral",questions:["alg2011FA4","alg2012SA3","alg2013FM4","alg2013SM1","alg2013SA1","alg2014SM4"],name:"Integral Extensions"},
	{tag:"nakayama",questions:["alg2011FA1"],name:"Nakayama's Lemma"},
	{tag:"homological",questions:["alg2010SM5","alg2011FM5","alg2012SM5","alg2013SM2","alg2014SM2"],name:"Homological Algebra"},
	{tag:"flatprojinj",questions:["alg2010FA4","alg2012FM1","alg2013FA3"],name:"Flatness, Projective, Injective"},
	{tag:"multilinear",questions:["alg2012FM3","alg2013SA5"],name:"Multilinear Stuff"},
	{tag:"groupringrep",questions:["alg2010FM2","alg2010FA2"],name:"Group Rings and Representations "},
	{tag:"linalg",questions:["alg2011SA5","alg2012FA4","alg2013FM1"],name:"Linear Algebra"},
	{tag:"repfingrp",questions:["alg2011FA2","alg2013SA3","alg2011FM4","alg2014FA3"],name:"Representations of Finite Groups"},
	{tag:"modrep",questions:["alg2010SA3","alg2011FA3","alg2012SM4","alg2014SM1"],name:"Modular Representations"}],
ana:[{tag:"measure",questions:["ana2015SM1","ana2014FA3","ana2012SM1","ana2011FA1"],name:"Measure Theory"},
	{tag:"w1other",questions:["ana2010FA3","ana2013FM2","ana2010SA1","ana2010SA4","ana2015SA1","ana2013SA4"],name:"Other Week 1"},
	{tag:"205a",questions:["ana2012FM1","ana2012FA1","ana2012SA2","ana2011SM2"],name:"205A Homework"},
	{tag:"lp",questions:["ana2012FA2","ana2009SM1"],name:"L^p Spaces"},
	{tag:"torusfour",questions:["ana2015SA3","ana2012FM2","ana2011FM1"],name:"Fourier Analaysis on the Torus"},
	{tag:"w2other",questions:["ana2014FM1","ana2014FA1","ana2013SM2","ana2012SM4","ana2010FA2"],name:"Other Week 2"},
	{tag:"funcanal",questions:["ana2013FA1","ana2013FA2","ana2013SM1","ana2012SM3","ana2012SA1","ana2011SA1","ana2010FM1","ana2010FA4","ana2010SA5","ana2009SM5"],name:"Abstract Functional Analysis"},
	{tag:"compop",questions:["ana2015SM2","ana2015SM5","ana2014FM2","ana2014FA2","ana2013FM1","ana2013FM5","ana2011FM3","ana2011SM1","ana2009FM1"],name:"Compact Operators"},
	{tag:"ana2014sreview",questions:["ana2014SM1","ana2014SM2","ana2014SM3","ana2014SM4","ana2014SM5","ana2014SA2","ana2014SA3","ana2014SA4"],name:"Spring 2014 Review"},
	{tag:"ana2012freview",questions:["ana2012FM5","ana2012FA4"],name:"Fall 2012 Review"},
	{tag:"weak",questions:["ana2014FM3","ana2014SA1","ana2013SA2","ana2011FA3"],name:"Weak Convergence"},
	{tag:"bounded",questions:["ana2015SA4","ana2013SM5","ana2012FA3","ana2012SM5","ana2011SM5"],name:"Bounded Operators"},
	{tag:"fourier",questions:["ana2015SM3","ana2014FM4","ana2012SA5"],name:"Fourier Analysis"},
	{tag:"w7other",questions:["ana2016SM5","ana2016SA5","ana2013FA4"],name:"Other Week 7"},
	{tag:"fourdecay",questions:["ana2015SA5","ana2013FM3"],name:"Decay of Fourier Transform"},
	{tag:"dist",questions:["ana2016SA4","ana2014SA5","ana2013SM4","ana2013SA5","ana2012SM2","ana2010SM5"],name:"Distributions"}
]};