clave = \drummode {
	\times 4/3 {hh8 hh16}
	\times 4/3 {r8 hh16}
	\times 4/3 {r16 hh8}
	hh4
}

up = {
	\repeat unfold 47 \clave
}

fragment_aa = \drummode {
	\times 4/3 {ssh8 ssh16}
}
fragment_ba = \drummode {
	\times 4/3 {timl8 ssh16}
}
fragment_ca = \drummode {
	timl4
}

fragment_ab = \drummode {
	\times 4/3 {ssh16 timl8}
}
fragment_bb = \drummode {
	\times 4/3 {r16 ssh8}
}

fragment_ac = \drummode {
	\times 4/3 {r16 ssh16 timl16}
}

fragment_bc = \drummode {
	\times 4/3 {r8 ssh16}
}

pattern_a = {
	\repeat unfold 3 {
		\fragment_aa
		\fragment_ba
		\fragment_ba
		\fragment_ca
	}
	\fragment_aa
	\fragment_ba
	\fragment_ca
}

pattern_b = {
	\repeat unfold 3 {
		\fragment_ab
		\fragment_ab
		\fragment_ab
		\fragment_bb
	}
	\fragment_ab
	\fragment_ab
	\fragment_bb
}

pattern_c = {
	\repeat unfold 3 {
		\fragment_ac
		\fragment_ac
		\fragment_ac
		\fragment_bc
	}
	\fragment_ac
	\fragment_ac
	\fragment_bc
}

down = {
	\repeat volta 2 { \repeat unfold 4 \pattern_a }
	r4 r4 r4 \fragment_bb
	\repeat volta 2 { \repeat unfold 4 \pattern_b }
	r4 r4 r4 \fragment_bc
	\repeat volta 2 { \repeat unfold 4 \pattern_c }
}

\new DrumStaff <<
	\new DrumVoice { \voiceOne \up }
	\new DrumVoice \with { drumStyleTable = #timbales-style } { \voiceTwo \down }
>>
