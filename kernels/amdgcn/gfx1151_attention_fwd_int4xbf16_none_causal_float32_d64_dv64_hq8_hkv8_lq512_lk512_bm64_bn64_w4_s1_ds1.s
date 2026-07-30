	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s39, s[0:1], 0x60
	s_load_b32 s12, s[0:1], 0x88
	s_load_b64 s[8:9], s[0:1], 0x0
.Ltmp0:
	.loc	1 584 86 prologue_end           ; attention.py:584:86
	v_lshlrev_b32_e32 v43, 4, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v5, 1, v0
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s2, s2, 6
	.loc	1 583 26                        ; attention.py:583:26
	s_lshl_b32 s50, s3, 9
	s_mov_b32 s11, 0x31027000
	.loc	1 584 86                        ; attention.py:584:86
	v_and_b32_e32 v1, 16, v43
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, s2, v5
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s5, s2, s50
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 570 31                        ; attention.py:570:31
	v_bfe_u32 v114, v0, 4, 1
	v_and_b32_e32 v42, 15, v0
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v4
	s_mov_b32 s4, 0
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v44, 1, v0
	.loc	1 584 26                        ; attention.py:584:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[83:84], null, s39, v5, v[1:2]
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s3, s39, v1
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 621 48                        ; attention.py:621:48
	s_add_i32 s13, s2, s12
	.loc	1 585 26                        ; attention.py:585:26
	v_and_or_b32 v6, v44, 30, v114
	.loc	1 621 48                        ; attention.py:621:48
	s_add_i32 s13, s13, 64
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[2:3], null, s39, s5, v[83:84]
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_gt_i32 s13, 0
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v6, 2, v6
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v7, 4, v6
	buffer_load_b128 v[1:4], v1, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v34, v6, v1
	ds_bpermute_b32 v35, v6, v2
	ds_bpermute_b32 v37, v6, v3
	ds_bpermute_b32 v39, v6, v4
	ds_bpermute_b32 v36, v7, v1
	ds_bpermute_b32 v38, v7, v2
	ds_bpermute_b32 v40, v7, v3
	ds_bpermute_b32 v41, v7, v4
	.loc	1 570 31                        ; attention.py:570:31
	v_and_or_b32 v2, v5, 48, v42
	v_lshrrev_b32_e32 v1, 4, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 570 21 is_stmt 0              ; attention.py:570:21
	v_or_b32_e32 v45, s2, v2
	v_or_b32_e32 v126, s5, v2
	.loc	1 587 23 is_stmt 1              ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 0x200, v45
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 843 24                        ; attention.py:843:24
	v_or_b32_e32 v33, s5, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 24 is_stmt 0                ; attention.py:0:24
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr33
.LBB0_3:                                ; %Flow325
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x38
	s_load_b32 s38, s[0:1], 0x64
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v125, 2, v114
	v_or_b32_e32 v124, 4, v114
	v_or_b32_e32 v123, 6, v114
	v_or_b32_e32 v122, 8, v114
	v_or_b32_e32 v121, 10, v114
	v_or_b32_e32 v120, 12, v114
	v_or_b32_e32 v119, 14, v114
	v_or_b32_e32 v118, 16, v114
	v_or_b32_e32 v117, 18, v114
	v_or_b32_e32 v116, 20, v114
	v_or_b32_e32 v115, 22, v114
	v_or_b32_e32 v113, 24, v114
	v_or_b32_e32 v112, 26, v114
	v_or_b32_e32 v111, 28, v114
	v_or_b32_e32 v110, 30, v114
	v_or_b32_e32 v109, 32, v114
	v_or_b32_e32 v108, 34, v114
	v_or_b32_e32 v107, 36, v114
	v_or_b32_e32 v106, 38, v114
	v_or_b32_e32 v105, 40, v114
	v_or_b32_e32 v104, 42, v114
	v_or_b32_e32 v103, 44, v114
	v_or_b32_e32 v102, 46, v114
	v_or_b32_e32 v101, 48, v114
	v_or_b32_e32 v100, 50, v114
	v_or_b32_e32 v99, 52, v114
	v_or_b32_e32 v96, 54, v114
	v_or_b32_e32 v94, 56, v114
	v_or_b32_e32 v98, 58, v114
	v_or_b32_e32 v97, 60, v114
	v_or_b32_e32 v95, 62, v1
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v93, v8
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 590 31 is_stmt 1              ; attention.py:590:31
	v_lshlrev_b32_e32 v1, 1, v126
	v_dual_mov_b32 v51, 0xff800000 :: v_dual_and_b32 v4, 24, v44
	v_mov_b32_e32 v44, 0x7632
	s_mov_b32 s55, 0x31027000
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_mov_b32 s54, 0x7ffffffe
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v128, 0x7f0, v43
	v_and_b32_e32 v3, 24, v0
	s_load_b32 s1, s[0:1], 0x68
	.loc	1 621 25                        ; attention.py:621:25
	s_min_i32 s0, s13, 0x200
	v_dual_mov_b32 v43, 0x5410 :: v_dual_lshlrev_b32 v2, 3, v0
	v_mov_b32_e32 v22, v17
	v_xor_b32_e32 v137, v128, v3
	v_dual_mov_b32 v20, v17 :: v_dual_add_nc_u32 v127, s12, v45
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v45, 3, v0
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s53, s9, 0xffff
	s_mov_b32 s52, s8
	.loc	1 622 35                        ; attention.py:622:35
	s_add_i32 s8, s0, 63
	.loc	1 590 31                        ; attention.py:590:31
	buffer_load_u16 v46, v1, s[52:55], 0 offen
	v_dual_mov_b32 v18, v17 :: v_dual_and_b32 v1, 16, v0
	v_dual_mov_b32 v24, v17 :: v_dual_and_b32 v33, 56, v2
	v_lshl_or_b32 v138, v42, 5, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 585 26                        ; attention.py:585:26
	v_cmp_eq_u32_e64 s0, 0, v1
	v_mov_b32_e32 v32, v17
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e32 vcc_lo, s38, v33
	.loc	1 622 34                        ; attention.py:622:34
	s_ashr_i32 s9, s8, 31
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s69, s1, 0x3fb8aa3b
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v84, v37, v40, s0
	v_cndmask_b32_e64 v86, v40, v37, s0
	v_cndmask_b32_e64 v89, v35, v38, s0
	v_cndmask_b32_e64 v88, v34, v36, s0
	v_cndmask_b32_e64 v91, v38, v35, s0
	v_cndmask_b32_e64 v90, v36, v34, s0
	v_xor_b32_e32 v34, 8, v137
	v_cndmask_b32_e64 v37, 0x1054, v43, s0
	v_cndmask_b32_e64 v38, 0x3276, v44, s0
	v_mov_b32_e32 v26, v17
	v_xor_b32_e32 v35, 8, v138
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[92:93], null, s38, v45, v[33:34]
	v_xor_b32_e32 v33, 24, v138
	v_lshl_or_b32 v37, v37, 8, v37
	v_lshl_or_b32 v38, v38, 8, v38
	v_mov_b32_e32 v21, v17
	v_mov_b32_e32 v23, v17
	v_dual_mov_b32 v30, v17 :: v_dual_add_nc_u32 v139, 0, v34
	v_add_nc_u32_e32 v142, 0, v33
	v_and_b32_e32 v33, 0x540054, v37
	v_and_b32_e32 v34, 0x760076, v38
	v_xor_b32_e32 v36, 16, v138
	.loc	1 622 34                        ; attention.py:622:34
	s_lshr_b32 s9, s9, 26
	v_lshl_add_u32 v0, v42, 1, 0
	v_lshl_or_b32 v33, v33, 4, v33
	v_lshl_or_b32 v34, v34, 4, v34
	v_or_b32_e32 v129, s50, v102
	v_or_b32_e32 v130, s50, v101
	v_or_b32_e32 v131, s50, v100
	v_or_b32_e32 v132, s50, v99
	v_or_b32_e32 v133, s50, v96
	v_or_b32_e32 v134, s50, v94
	v_or_b32_e32 v135, s50, v98
	v_or_b32_e32 v136, s50, v97
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v85, v39, v41, s0
	v_dual_mov_b32 v19, v17 :: v_dual_add_nc_u32 v140, 0, v35
	v_dual_mov_b32 v25, v17 :: v_dual_and_b32 v144, 0x5040504, v33
	v_dual_mov_b32 v28, v17 :: v_dual_add_nc_u32 v141, 0, v36
	v_mov_b32_e32 v31, v17
	v_mov_b32_e32 v9, v17
	v_dual_mov_b32 v10, v17 :: v_dual_and_b32 v145, 0x7060706, v34
	v_mov_b32_e32 v11, v17
	v_mov_b32_e32 v13, v17
	v_mov_b32_e32 v14, v17
	v_mov_b32_e32 v15, v17
	v_mov_b32_e32 v16, v17
	v_mov_b32_e32 v1, v17
	v_mov_b32_e32 v2, v17
	v_mov_b32_e32 v3, v17
	v_mov_b32_e32 v4, v17
	v_mov_b32_e32 v5, v17
	v_mov_b32_e32 v6, v17
	v_mov_b32_e32 v7, v17
	v_mov_b32_e32 v8, v17
	v_cndmask_b32_e64 v87, v41, v39, s0
	v_mov_b32_e32 v93, v17
	v_mov_b16_e64 v149.h, 0
	s_mov_b32 s40, 0
	.loc	1 622 34                        ; attention.py:622:34
	s_add_i32 s68, s8, s9
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s51, s38, 4
	s_lshl_b32 s64, s38, 5
	s_mul_i32 s65, s38, 48
	s_mov_b32 s66, 0x76543210
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	s_mov_b32 s62, s54
	s_mov_b32 s63, s55
	s_mov_b32 s67, s40
	.loc	1 622 33 is_stmt 0              ; attention.py:622:33
	s_and_not1_b32 s68, s68, 63
	s_and_b32 s61, s7, 0xffff
	s_mov_b32 s56, s10
	s_mov_b32 s60, s6
	s_mov_b32 s52, s4
	s_mov_b32 s53, s5
	s_mov_b32 s57, s11
	.loc	1 664 17 is_stmt 1              ; attention.py:664:17
	s_mov_b32 s70, s69
	s_mov_b32 s71, s69
	s_mov_b32 s72, s69
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v143, 16, v46
	v_mov_b32_e32 v27, v17
	v_mov_b32_e32 v29, v17
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v12, v17 :: v_dual_mov_b32 v147, v143
	.loc	1 654 30                        ; attention.py:654:30
	v_mov_b32_e32 v146, v143
	v_mov_b32_e32 v148, v143
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 633 32                        ; attention.py:633:32
	s_add_i32 s0, s67, s50
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v150, s67, v99
	.loc	1 633 32                        ; attention.py:633:32
	v_mad_u64_u32 v[43:44], null, s0, s39, v[83:84]
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v151, s67, v100
	v_or_b32_e32 v152, s67, v101
	v_or_b32_e32 v153, s67, v102
	v_mad_u64_u32 v[41:42], null, s0, s38, v[92:93]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v42, s0, v95, 1
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e64 v43, 0x80000000, v43, s3
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s33, v150, v127
	v_cmp_le_i32_e64 s0, v151, v127
	v_cmp_le_i32_e64 s34, v152, v127
	v_cmp_le_i32_e64 s31, v153, v127
	.loc	1 634 32                        ; attention.py:634:32
	buffer_load_b128 v[150:153], v43, s[52:55], 0 offen
	v_add_nc_u32_e32 v45, 0, v137
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v33, s40 :: v_dual_add_nc_u32 v46, 0, v138
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v164, s67, v113
	v_or_b32_e32 v165, s67, v115
	v_or_b32_e32 v166, s67, v116
	v_or_b32_e32 v167, s67, v117
	v_or_b32_e32 v180, s67, v94
	v_or_b32_e32 v181, s67, v96
	.loc	1 639 33                        ; attention.py:639:33
	v_mov_b32_e32 v34, s41
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s21, v164, v127
	v_cmp_le_i32_e64 s20, v165, v127
	v_cmp_le_i32_e64 s18, v166, v127
	v_cmp_le_i32_e64 s16, v167, v127
	v_cmp_le_i32_e64 s8, v180, v127
	v_cmp_le_i32_e64 s5, v181, v127
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v154, s67, v103
	v_or_b32_e32 v155, s67, v104
	v_or_b32_e32 v156, s67, v105
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v35, s42 :: v_dual_mov_b32 v36, s43
	v_dual_mov_b32 v37, s44 :: v_dual_mov_b32 v38, s45
	v_dual_mov_b32 v39, s46 :: v_dual_mov_b32 v40, s47
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v157, s67, v106
	v_or_b32_e32 v158, s67, v107
	v_or_b32_e32 v159, s67, v108
	v_or_b32_e32 v160, s67, v109
	v_or_b32_e32 v161, s67, v110
	v_or_b32_e32 v162, s67, v111
	v_or_b32_e32 v163, s67, v112
	v_or_b32_e32 v168, s67, v118
	v_or_b32_e32 v169, s67, v119
	v_or_b32_e32 v170, s67, v120
	v_or_b32_e32 v171, s67, v121
	v_or_b32_e32 v172, s67, v122
	v_or_b32_e32 v173, s67, v123
	v_or_b32_e32 v174, s67, v124
	v_or_b32_e32 v175, s67, v125
	v_or_b32_e32 v176, s67, v114
	v_or_b32_e32 v177, s67, v95
	v_or_b32_e32 v178, s67, v97
	v_or_b32_e32 v179, s67, v98
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s30, v154, v127
	v_cmp_le_i32_e64 s29, v155, v127
	v_cmp_le_i32_e64 s28, v156, v127
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v155, v41, s51, 1
	v_add_lshl_u32 v156, v41, s64, 1
	v_lshlrev_b32_e32 v154, 1, v41
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s27, v157, v127
	v_cmp_le_i32_e64 s26, v158, v127
	v_cmp_le_i32_e64 s25, v159, v127
	v_cmp_le_i32_e64 s24, v160, v127
	v_cmp_le_i32_e64 s22, v161, v127
	v_cmp_le_i32_e64 s12, v162, v127
	v_cmp_le_i32_e64 s23, v163, v127
	v_cmp_le_i32_e64 s4, v168, v127
	v_cmp_le_i32_e64 s7, v169, v127
	v_cmp_le_i32_e64 s6, v170, v127
	v_cmp_le_i32_e64 s11, v171, v127
	v_cmp_le_i32_e64 s19, v172, v127
	v_cmp_le_i32_e64 s17, v173, v127
	v_cmp_le_i32_e64 s15, v174, v127
	v_cmp_le_i32_e64 s14, v175, v127
	v_cmp_le_i32_e64 s13, v176, v127
	v_cmp_le_i32_e64 s9, v177, v127
	v_cmp_le_i32_e64 s1, v178, v127
	v_cmp_le_i32_e64 s10, v179, v127
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v41, v41, s65, 1
	v_dual_cndmask_b32 v192, 0x80000000, v155 :: v_dual_cndmask_b32 v193, 0x80000000, v156
	v_dual_cndmask_b32 v43, 0x80000000, v154 :: v_dual_add_nc_u32 v56, 0, v128
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	v_or_b32_e32 v57, s50, v114
	v_or_b32_e32 v58, s50, v125
	v_or_b32_e32 v64, s50, v121
	v_or_b32_e32 v65, s50, v120
	v_or_b32_e32 v68, s50, v117
	v_or_b32_e32 v74, s50, v111
	v_or_b32_e32 v78, s50, v107
	v_or_b32_e32 v81, s50, v104
	v_or_b32_e32 v60, s50, v123
	v_or_b32_e32 v67, s50, v118
	v_or_b32_e32 v70, s50, v115
	v_or_b32_e32 v77, s50, v108
	v_or_b32_e32 v82, s50, v103
	v_or_b32_e32 v59, s50, v124
	v_or_b32_e32 v61, s50, v122
	v_or_b32_e32 v66, s50, v119
	v_or_b32_e32 v69, s50, v116
	v_or_b32_e32 v71, s50, v113
	v_or_b32_e32 v73, s50, v112
	v_or_b32_e32 v75, s50, v110
	v_or_b32_e32 v76, s50, v109
	v_or_b32_e32 v79, s50, v106
	v_or_b32_e32 v80, s50, v105
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v44, v57, s67, 1
	v_add_lshl_u32 v57, v58, s67, 1
	v_add_lshl_u32 v58, v64, s67, 1
	v_add_lshl_u32 v64, v65, s67, 1
	v_add_lshl_u32 v65, v68, s67, 1
	v_add_lshl_u32 v68, v74, s67, 1
	v_add_lshl_u32 v74, v78, s67, 1
	v_add_lshl_u32 v78, v81, s67, 1
	v_add_lshl_u32 v63, v60, s67, 1
	v_add_lshl_u32 v60, v67, s67, 1
	v_add_lshl_u32 v67, v70, s67, 1
	v_add_lshl_u32 v70, v77, s67, 1
	v_add_lshl_u32 v77, v82, s67, 1
	v_add_lshl_u32 v50, v129, s67, 1
	v_add_lshl_u32 v52, v130, s67, 1
	v_add_lshl_u32 v54, v131, s67, 1
	v_add_lshl_u32 v55, v132, s67, 1
	v_add_lshl_u32 v53, v133, s67, 1
	v_add_lshl_u32 v47, v134, s67, 1
	v_add_lshl_u32 v48, v135, s67, 1
	v_add_lshl_u32 v49, v136, s67, 1
	v_add_lshl_u32 v62, v59, s67, 1
	v_add_lshl_u32 v61, v61, s67, 1
	v_add_lshl_u32 v59, v66, s67, 1
	v_add_lshl_u32 v66, v69, s67, 1
	v_add_lshl_u32 v72, v71, s67, 1
	v_add_lshl_u32 v71, v73, s67, 1
	v_add_lshl_u32 v73, v75, s67, 1
	v_add_lshl_u32 v69, v76, s67, 1
	v_add_lshl_u32 v75, v79, s67, 1
	v_add_lshl_u32 v76, v80, s67, 1
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v81.h, v149.h
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s33, s2, s33
	s_and_b32 s34, s2, s34
	s_and_b32 s31, s2, s31
	s_and_b32 s30, s2, s30
	s_and_b32 s27, s2, s27
	s_and_b32 s26, s2, s26
	s_and_b32 s25, s2, s25
	s_and_b32 s24, s2, s24
	s_and_b32 s22, s2, s22
	s_and_b32 s23, s2, s23
	s_and_b32 s21, s2, s21
	s_and_b32 s20, s2, s20
	s_and_b32 s18, s2, s18
	s_and_b32 s16, s2, s16
	s_and_b32 s12, s2, s12
	s_and_b32 s19, s2, s19
	s_and_b32 s17, s2, s17
	s_and_b32 s35, s2, s14
	s_and_b32 s36, s2, s13
	s_and_b32 s14, s2, s11
	s_and_b32 s13, s2, s7
	s_and_b32 s7, s2, s8
	s_and_b32 s5, s2, s5
	s_and_b32 s1, s2, s1
	s_and_b32 s0, s2, s0
	s_and_b32 s29, s2, s29
	s_and_b32 s28, s2, s28
	s_and_b32 s15, s2, s15
	s_and_b32 s37, s2, s6
	s_and_b32 s11, s2, s4
	s_and_b32 s4, s2, s9
	s_and_b32 s6, s2, s10
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v80.h, v149.h
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s8, 0xff800000, v51
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v79.h, v149.h
	v_mov_b16_e64 v82.h, v149.h
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s67, s67, 64
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v45, v[150:151]
	ds_store_b64 v139, v[152:153]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[164:167], v46 offset1:1
	ds_load_2addr_stride64_b64 v[180:183], v46 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[184:187], v140 offset1:1
	ds_load_2addr_stride64_b64 v[188:191], v140 offset0:2 offset1:3
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s67, s68
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[150:157], v[164:165], v[90:91], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[158:165], v[166:167], v[90:91], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[166:173], v[180:181], v[90:91], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[174:181], v[182:183], v[90:91], v[33:40] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[33:36], v141 offset1:1
	ds_load_2addr_stride64_b64 v[37:40], v141 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[150:157], v[184:185], v[86:87], v[150:157] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[182:185], v142 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[158:165], v[186:187], v[86:87], v[158:165] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[166:173], v[188:189], v[86:87], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[174:181], v[190:191], v[86:87], v[174:181] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[150:157], v[33:34], v[88:89], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[158:165], v[35:36], v[88:89], v[158:165] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[166:173], v[37:38], v[88:89], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[174:181], v[39:40], v[88:89], v[174:181] neg_lo:[1,1,0]
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[37:40], v43, s[60:63], 0 offen
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[33:36], v142 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[150:157], v[182:183], v[84:85], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[158:165], v[184:185], v[84:85], v[158:165] neg_lo:[1,1,0]
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[182:185], v192, s[60:63], 0 offen
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v43, v152
	v_cvt_f32_i32_e32 v45, v153
	v_cvt_f32_i32_e32 v46, v151
	v_cvt_f32_i32_e32 v186, v150
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v163, v163
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v161, v147, v161 :: v_dual_mul_f32 v160, v146, v160
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[166:173], v[33:34], v[84:85], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[174:181], v[35:36], v[84:85], v[174:181] neg_lo:[1,1,0]
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x1
	buffer_load_b128 v[33:36], v193, s[60:63], 0 offen
	buffer_load_b128 v[150:153], v41, s[60:63], 0 offen
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x1f
	buffer_load_u16 v41, v78, s[56:59], 0 offen
	buffer_load_u16 v77, v77, s[56:59], 0 offen
	buffer_load_u16 v76, v76, s[56:59], 0 offen
	buffer_load_u16 v75, v75, s[56:59], 0 offen
	buffer_load_u16 v74, v74, s[56:59], 0 offen
	buffer_load_u16 v54, v54, s[56:59], 0 offen
	buffer_load_u16 v55, v55, s[56:59], 0 offen
	buffer_load_u16 v53, v53, s[56:59], 0 offen
	buffer_load_u16 v52, v52, s[56:59], 0 offen
	buffer_load_u16 v50, v50, s[56:59], 0 offen
	buffer_load_u16 v72, v72, s[56:59], 0 offen
	buffer_load_u16 v73, v73, s[56:59], 0 offen
	buffer_load_u16 v71, v71, s[56:59], 0 offen
	buffer_load_u16 v67, v67, s[56:59], 0 offen
	buffer_load_u16 v66, v66, s[56:59], 0 offen
	buffer_load_u16 v65, v65, s[56:59], 0 offen
	buffer_load_u16 v68, v68, s[56:59], 0 offen
	buffer_load_u16 v69, v69, s[56:59], 0 offen
	buffer_load_u16 v70, v70, s[56:59], 0 offen
	buffer_load_u16 v62, v62, s[56:59], 0 offen
	buffer_load_u16 v63, v63, s[56:59], 0 offen
	buffer_load_u16 v64, v64, s[56:59], 0 offen
	buffer_load_u16 v61, v61, s[56:59], 0 offen
	buffer_load_u16 v57, v57, s[56:59], 0 offen
	buffer_load_u16 v44, v44, s[56:59], 0 offen
	buffer_load_u16 v58, v58, s[56:59], 0 offen
	buffer_load_u16 v59, v59, s[56:59], 0 offen
	buffer_load_u16 v60, v60, s[56:59], 0 offen
	buffer_load_u16 v48, v48, s[56:59], 0 offen
	buffer_load_u16 v49, v49, s[56:59], 0 offen
	buffer_load_u16 v42, v42, s[56:59], 0 offen
	buffer_load_u16 v47, v47, s[56:59], 0 offen
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v175, v175
	v_cvt_f32_i32_e32 v174, v174
	v_dual_mul_f32 v78, v148, v171 :: v_dual_mul_f32 v169, v146, v169
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v170, v147, v170 :: v_dual_mul_f32 v171, v148, v175
	v_mul_f32_e32 v156, v147, v156
	v_mul_f32_e32 v158, v143, v158
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v176, v176
	v_dual_mul_f32 v168, v143, v168 :: v_dual_mul_f32 v173, v146, v173
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v174, v147, v174 :: v_dual_mul_f32 v167, v146, v167
	v_dual_mul_f32 v172, v143, v172 :: v_dual_mul_f32 v187, v148, v45
	v_dual_mul_f32 v175, v147, v176 :: v_dual_mul_f32 v162, v148, v162
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v166, v166
	v_dual_mul_f32 v159, v143, v159 :: v_dual_mul_f32 v164, v146, v164
	v_mul_f32_e32 v163, v143, v163
	v_cvt_f32_i32_e32 v155, v155
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v166, v148, v166 :: v_dual_mul_f32 v165, v147, v165
	v_mul_f32_e32 v188, v146, v46
	v_cvt_f32_i32_e32 v157, v157
	v_dual_mul_f32 v186, v143, v186 :: v_dual_mul_f32 v155, v146, v155
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v179, v179
	v_cvt_f32_i32_e32 v180, v180
	v_cvt_f32_i32_e32 v178, v178
	v_cvt_f32_i32_e32 v177, v177
	v_cvt_f32_i32_e32 v181, v181
	v_dual_mul_f32 v176, v147, v43 :: v_dual_mul_f32 v157, v148, v157
	v_mul_f32_e32 v154, v143, v154
	v_dual_mul_f32 v179, v147, v179 :: v_dual_mul_f32 v180, v148, v180
	v_dual_mul_f32 v178, v146, v178 :: v_dual_mul_f32 v177, v143, v177
	v_mul_f32_e32 v181, v148, v181
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(35)
	ds_store_b128 v56, v[37:40]
	s_waitcnt vmcnt(34)
	ds_store_b128 v56, v[182:185] offset:2048
	s_waitcnt vmcnt(33)
	ds_store_b128 v56, v[33:36] offset:4096
	s_waitcnt vmcnt(32)
	ds_store_b128 v56, v[150:153] offset:6144
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v33, 16, v41
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v35, 16, v76
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v37, 16, v74
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v38, 16, v54
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v78, v78, v33
	v_dual_mul_f32 v37, v168, v37 :: v_dual_lshlrev_b32 v36, 16, v75
	v_mul_f32_e32 v35, v170, v35
	s_waitcnt vmcnt(23)
	v_dual_mul_f32 v38, v171, v38 :: v_dual_lshlrev_b32 v39, 16, v52
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v40, 16, v50
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v36, v169, v36 :: v_dual_lshlrev_b32 v41, 16, v77
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v52, 16, v55
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v39, v174, v39
	s_waitcnt vmcnt(18)
	v_dual_mul_f32 v40, v173, v40 :: v_dual_lshlrev_b32 v55, 16, v67
	v_dual_mul_f32 v41, v172, v41 :: v_dual_lshlrev_b32 v54, 16, v72
	s_waitcnt vmcnt(16)
	v_dual_mul_f32 v52, v175, v52 :: v_dual_lshlrev_b32 v65, 16, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v55, v161, v55 :: v_dual_lshlrev_b32 v56, 16, v66
	v_dual_mul_f32 v54, v162, v54 :: v_dual_lshlrev_b32 v75, 16, v71
	s_waitcnt vmcnt(15)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v65, v159, v65 :: v_dual_lshlrev_b32 v66, 16, v68
	v_dual_mul_f32 v56, v160, v56 :: v_dual_lshlrev_b32 v77, 16, v73
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v75, v163, v75 :: v_dual_lshlrev_b32 v150, 16, v70
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v66, v164, v66 :: v_dual_lshlrev_b32 v63, 16, v63
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v76, 16, v69
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v77, v165, v77
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v150, v167, v150 :: v_dual_lshlrev_b32 v151, 16, v44
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v63, v187, v63 :: v_dual_lshlrev_b32 v58, 16, v58
	v_dual_mul_f32 v76, v166, v76 :: v_dual_lshlrev_b32 v57, 16, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v151, v186, v151 :: v_dual_lshlrev_b32 v62, 16, v62
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v58, v155, v58 :: v_dual_lshlrev_b32 v153, 16, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v57, v188, v57 :: v_dual_lshlrev_b32 v64, 16, v64
	v_dual_mul_f32 v62, v176, v62 :: v_dual_lshlrev_b32 v59, 16, v59
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v152, 16, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v153, v158, v153
	v_dual_mul_f32 v64, v156, v64 :: v_dual_lshlrev_b32 v53, 16, v53
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v184, 16, v47
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v59, v157, v59
	v_dual_mul_f32 v152, v154, v152 :: v_dual_lshlrev_b32 v183, 16, v49
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v182, 16, v48
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v39, s71, v39 :: v_dual_lshlrev_b32 v42, 16, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v155, v180, v183
	v_dual_mul_f32 v53, v177, v53 :: v_dual_mul_f32 v156, v178, v184
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v35, s71, v35 :: v_dual_mul_f32 v154, v179, v182
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v41, s69, v41 :: v_dual_mul_f32 v42, v181, v42
	v_dual_mul_f32 v37, s69, v37 :: v_dual_mul_f32 v52, s71, v52
	v_dual_mul_f32 v77, s71, v77 :: v_dual_mul_f32 v40, s70, v40
	v_dual_mul_f32 v75, s69, v75 :: v_dual_mul_f32 v78, s72, v78
	v_dual_mul_f32 v55, s71, v55 :: v_dual_mul_f32 v36, s70, v36
	v_dual_mul_f32 v65, s69, v65 :: v_dual_mul_f32 v150, s70, v150
	v_mul_f32_e32 v163, s69, v152
	v_dual_mul_f32 v76, s72, v76 :: v_dual_mul_f32 v63, s72, v63
	v_dual_mul_f32 v54, s72, v54 :: v_dual_mul_f32 v57, s70, v57
	v_dual_mul_f32 v56, s70, v56 :: v_dual_mul_f32 v151, s69, v151
	v_dual_mul_f32 v66, s70, v66 :: v_dual_mul_f32 v59, s72, v59
	v_dual_mul_f32 v62, s71, v62 :: v_dual_mul_f32 v165, s70, v156
	v_dual_mul_f32 v58, s70, v58 :: v_dual_mul_f32 v53, s69, v53
	v_dual_mul_f32 v64, s71, v64 :: v_dual_mul_f32 v167, s72, v155
	v_mul_f32_e32 v38, s72, v38
	v_mul_f32_e32 v164, s69, v153
	v_mul_f32_e32 v166, s71, v154
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v153, 0xff800000, v39, s34
	v_cndmask_b32_e64 v154, 0xff800000, v40, s31
	v_cndmask_b32_e64 v152, 0xff800000, v38, s0
	v_cndmask_b32_e64 v155, 0xff800000, v41, s30
	v_cndmask_b32_e64 v159, 0xff800000, v36, s27
	v_cndmask_b32_e64 v160, 0xff800000, v37, s26
	v_cndmask_b32_e64 v156, 0xff800000, v52, s33
	v_cndmask_b32_e64 v41, 0xff800000, v66, s12
	v_cndmask_b32_e64 v52, 0xff800000, v75, s23
	v_cndmask_b32_e64 v161, 0xff800000, v76, s24
	v_cndmask_b32_e64 v184, 0xff800000, v77, s22
	v_cndmask_b32_e64 v162, 0xff800000, v150, s25
	v_cndmask_b32_e64 v55, 0xff800000, v55, s20
	v_cndmask_b32_e64 v56, 0xff800000, v56, s18
	v_cndmask_b32_e64 v185, 0xff800000, v65, s16
	v_cndmask_b32_e64 v54, 0xff800000, v54, s21
	v_cndmask_b32_e64 v36, 0xff800000, v58, s14
	v_cndmask_b32_e64 v37, 0xff800000, v163, s19
	v_cndmask_b32_e64 v38, 0xff800000, v57, s35
	v_cndmask_b32_e64 v39, 0xff800000, v151, s36
	v_cndmask_b32_e64 v40, 0xff800000, v63, s17
	v_cndmask_b32_e64 v163, 0xff800000, v167, s1
	v_cndmask_b32_e64 v165, 0xff800000, v165, s7
	v_cndmask_b32_e64 v167, 0xff800000, v53, s5
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v42, s72, v42
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v157, 0xff800000, v35, s28
	v_cndmask_b32_e64 v158, 0xff800000, v78, s29
	v_cndmask_b32_e64 v57, 0xff800000, v62, s15
	v_cndmask_b32_e64 v186, 0xff800000, v164, s11
	v_cndmask_b32_e64 v58, 0xff800000, v59, s13
	v_cndmask_b32_e64 v66, 0xff800000, v64, s37
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v75, v184, v161, v162
	v_max3_f32 v77, v185, v56, v55
	v_max3_f32 v78, v54, v52, v41
	v_max_f32_e32 v150, v39, v38
	v_max3_f32 v151, v40, v37, v36
	v_max_f32_e32 v169, v167, v165
.Ltmp2:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v164, 0xff800000, v42, s4
	v_cndmask_b32_e64 v166, 0xff800000, v166, s6
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v42, v160, v159, v157
	v_max3_f32 v53, v158, v155, v154
	v_max3_f32 v76, v153, v152, v156
	v_max3_f32 v168, v66, v58, v186
	v_max_f32_e32 v170, v163, v164
	v_max3_f32 v77, v77, v78, v75
	v_max3_f32 v78, v150, v57, v151
	v_max3_f32 v42, v42, v53, v76
.Ltmp4:
	.loc	1 694 30                        ; attention.py:694:30
	s_barrier
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v53, v169, v166, v170
.Ltmp6:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v61, v0 offset:608
	ds_load_u16_d16 v60, v0 offset:352
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v76, v78, v168, v77
.Ltmp8:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v46, v0 offset:768
	ds_load_u16_d16 v45, v0 offset:512
	ds_load_u16_d16 v34, v0 offset:288
	ds_load_u16_d16 v70, v0 offset:832
	ds_load_u16_d16 v47, v0 offset:1024
	ds_load_u16_d16 v71, v0 offset:1088
	ds_load_u16_d16 v48, v0 offset:1280
	ds_load_u16_d16 v72, v0 offset:1344
	ds_load_u16_d16 v49, v0 offset:1536
	ds_load_u16_d16 v73, v0 offset:1600
	ds_load_u16_d16 v50, v0 offset:1792
	ds_load_u16_d16 v74, v0 offset:1856
	ds_load_u16_d16 v44, v0 offset:256
	ds_load_u16_d16 v43, v0
	ds_load_u16_d16 v33, v0 offset:32
	ds_load_u16_d16 v69, v0 offset:576
	ds_load_u16_d16 v67, v0 offset:64
	ds_load_u16_d16 v68, v0 offset:320
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v60, v0 offset:480
	ds_load_u16_d16 v59, v0 offset:96
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v44, v0 offset:384
	ds_load_u16_d16_hi v45, v0 offset:640
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v69, v0 offset:704
	ds_load_u16_d16 v35, v0 offset:544
	ds_load_u16_d16_hi v46, v0 offset:896
	ds_load_u16_d16_hi v70, v0 offset:960
	ds_load_u16_d16 v62, v0 offset:864
	ds_load_u16_d16_hi v47, v0 offset:1152
	ds_load_u16_d16_hi v71, v0 offset:1216
	ds_load_u16_d16 v63, v0 offset:1120
	ds_load_u16_d16_hi v48, v0 offset:1408
	ds_load_u16_d16_hi v72, v0 offset:1472
	ds_load_u16_d16 v64, v0 offset:1376
	ds_load_u16_d16_hi v49, v0 offset:1664
	ds_load_u16_d16_hi v73, v0 offset:1728
	ds_load_u16_d16 v65, v0 offset:1632
	ds_load_u16_d16_hi v50, v0 offset:1920
	ds_load_u16_d16_hi v74, v0 offset:1984
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v42, v76, v42, v53
.Ltmp10:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v75, v0 offset:2048
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v53, v42, s66, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v150, v51, v42, v53
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v42, v57, v150
	v_sub_f32_e32 v57, v58, v150
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v58, v51, v150
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v39, v39, v150
	v_sub_f32_e32 v37, v37, v150
	v_sub_f32_e32 v52, v52, v150
	v_sub_f32_e32 v51, v55, v150
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v58, v58
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v37, v37
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v41, v41, v150
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v51, v51
	v_exp_f32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_exp_f32_e32 v41, v41
	.loc	1 689 25 is_stmt 1              ; attention.py:689:25
	v_cndmask_b32_e64 v151, 0, v58, s8
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v38, v38, v150
	v_sub_f32_e32 v36, v36, v150
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v171, 0, v39, s36
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v40, v40, v150 :: v_dual_mul_f32 v21, v21, v151
	.loc	1 699 23 is_stmt 1              ; attention.py:699:23
	v_mul_f32_e32 v17, v17, v151
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v38, v38
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v19, v19, v151
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v42, v42
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v23, v23, v151
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v36, v36
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v79.l, v171.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v53, v66, v150
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v40, v40
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v174, 0, v37, s19
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s10, v171, v171
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v170, 0, v38, s35
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v27, v27, v151
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v172, 0, v42, s15
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v81.l, v174.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v175, 0, v36, s14
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v149.l, v170.h
	v_and_b32_e32 v36, 1, v79
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v53, v53
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s9, v170, v170
	v_mov_b16_e64 v80.l, v172.h
	v_and_b32_e32 v37, 1, v149
	v_add3_u32 v36, v171, v36, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v173, 0, v40, s17
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v39, 1, v81
	v_and_b32_e32 v38, 1, v80
	v_add3_u32 v37, v170, v37, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v57, v57
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v168, 0, v53, s37
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v37.l, 0x7fff, v36.h, s10
	v_mov_b16_e64 v149.l, v173.h
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s9
	v_cmp_o_f32_e64 s14, v172, v172
	v_mov_b16_e64 v82.l, v168.h
	v_cmp_o_f32_e64 s35, v168, v168
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v29, v29, v151
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v36, v37, s66, 0xfedcba98 op_sel:[1,0]
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v169, 0, v57, s13
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v40, 1, v82
	v_cmp_o_f32_e64 s13, v173, v173
	v_cmp_o_f32_e64 s15, v175, v175
	v_perm_b32 v176, v36, v37, v144
	v_perm_b32 v177, v36, v37, v145
	v_and_b32_e32 v36, 1, v149
	v_mov_b16_e64 v149.l, v175.h
	v_add3_u32 v37, v172, v38, 0x7fff
	v_add3_u32 v38, v174, v39, 0x7fff
	v_add3_u32 v39, v168, v40, 0x7fff
	v_add3_u32 v36, v173, v36, 0x7fff
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v31, v31, v151 :: v_dual_and_b32 v40, 1, v149
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v149.l, v169.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s35
	v_cmp_o_f32_e64 s17, v174, v174
	v_cmp_o_f32_e64 s19, v169, v169
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s14
	v_and_b32_e32 v39, 1, v149
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s13
	v_add3_u32 v40, v175, v40, 0x7fff
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s17
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v42, v0 offset:2112
	ds_load_u16_d16 v66, v0 offset:1888
	ds_load_u16_d16_hi v43, v0 offset:128
	ds_load_u16_d16_hi v33, v0 offset:160
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v67, v0 offset:192
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v59, v0 offset:224
	ds_load_u16_d16_hi v34, v0 offset:416
	ds_load_u16_d16_hi v68, v0 offset:448
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v39, v169, v39, 0x7fff
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v25, v25, v151
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v37.h, 0x7fff, v40.h, s15
	v_permlanex16_b32 v40, v36, s66, 0xfedcba98 op_sel:[1,0]
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v26, v26, v151
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v38.h, 0x7fff, v39.h, s19
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v28, v28, v151
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v39, v37, s66, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v178, v40, v36, v144
	v_perm_b32 v179, v40, v36, v145
	v_permlanex16_b32 v36, v38, s66, 0xfedcba98 op_sel:[1,0]
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v30, v30, v151
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v180, v39, v37, v144
	v_perm_b32 v181, v39, v37, v145
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v42, v0 offset:2240
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v182, v36, v38, v144
	v_perm_b32 v183, v36, v38, v145
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v36, v0 offset:800
	ds_load_u16_d16 v37, v0 offset:1056
	ds_load_u16_d16 v38, v0 offset:1312
	ds_load_u16_d16 v39, v0 offset:1568
	ds_load_u16_d16 v40, v0 offset:1824
	ds_load_u16_d16_hi v35, v0 offset:672
	ds_load_u16_d16_hi v61, v0 offset:736
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v36, v0 offset:928
	ds_load_u16_d16_hi v62, v0 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v37, v0 offset:1184
	ds_load_u16_d16_hi v63, v0 offset:1248
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v38, v0 offset:1440
	ds_load_u16_d16_hi v64, v0 offset:1504
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v39, v0 offset:1696
	ds_load_u16_d16_hi v65, v0 offset:1760
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v40, v0 offset:1952
	ds_load_u16_d16_hi v66, v0 offset:2016
	ds_load_u16_d16 v76, v0 offset:2304
	ds_load_u16_d16_hi v75, v0 offset:2176
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v32, v32, v151
	v_mul_f32_e32 v9, v9, v151
	v_mul_f32_e32 v18, v18, v151
	v_mul_f32_e32 v10, v10, v151
	v_mul_f32_e32 v11, v11, v151
	v_mul_f32_e32 v12, v12, v151
	v_mul_f32_e32 v13, v13, v151
	v_mul_f32_e32 v14, v14, v151
	v_mul_f32_e32 v15, v15, v151
	v_mul_f32_e32 v16, v16, v151
	v_dual_mul_f32 v24, v24, v151 :: v_dual_sub_f32 v53, v54, v150
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v54, v184, v150
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v20, v20, v151
	v_mul_f32_e32 v22, v22, v151
	v_mul_f32_e32 v2, v2, v151
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[33:40], v[176:183], v[25:32]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v38, v186, v150
	v_sub_f32_e32 v39, v185, v150
	v_sub_f32_e32 v40, v56, v150
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[67:74], v[176:183], v[9:16]
	.loc	1 700 30 is_stmt 0              ; attention.py:700:30
	v_mov_b16_e64 v34.h, v149.h
	.loc	1 690 49 is_stmt 1              ; attention.py:690:49
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v39, v39
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v36.h, v149.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v3, v3, v151
	v_mul_f32_e32 v4, v4, v151
	v_mul_f32_e32 v5, v5, v151
	v_mul_f32_e32 v6, v6, v151
	v_mul_f32_e32 v7, v7, v151
	v_mul_f32_e32 v8, v8, v151
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[43:50], v[176:183], v[17:24]
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v74, 0, v38, s11
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v54, v54
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v35.h, v149.h
	v_mov_b16_e32 v34.l, v74.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v1, v1, v151
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s9, v74, v74
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v48, v0 offset:3648
	ds_load_u16_d16 v82, v0 offset:3840
	ds_load_u16_d16 v49, v0 offset:3904
	ds_load_u16_d16 v43, v0 offset:2368
	ds_load_u16_d16 v77, v0 offset:2560
	ds_load_u16_d16 v44, v0 offset:2624
	ds_load_u16_d16 v78, v0 offset:2816
	ds_load_u16_d16 v45, v0 offset:2880
	ds_load_u16_d16 v79, v0 offset:3072
	ds_load_u16_d16 v46, v0 offset:3136
	ds_load_u16_d16 v80, v0 offset:3328
	ds_load_u16_d16 v47, v0 offset:3392
	ds_load_u16_d16 v81, v0 offset:3584
	ds_load_u16_d16 v58, v0 offset:2080
	ds_load_u16_d16 v50, v0 offset:2144
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v34, 1, v34
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(17)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[59:66], v[176:183], v[1:8]
	.loc	1 690 33 is_stmt 1              ; attention.py:690:33
	v_cndmask_b32_e64 v176, 0, v39, s16
	v_cndmask_b32_e64 v177, 0, v40, s18
	v_cndmask_b32_e64 v178, 0, v51, s20
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v34, v74, v34, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v179, 0, v53, s21
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v149.l, v176.h
	v_cmp_o_f32_e64 s8, v176, v176
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v180, 0, v52, s23
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s9
	v_mov_b16_e64 v35.l, v177.h
	v_and_b32_e32 v38, 1, v149
	v_mov_b16_e64 v149.l, v178.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v181, 0, v41, s12
	v_cndmask_b32_e64 v182, 0, v54, s22
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v36.l, v179.h
	v_add3_u32 v38, v176, v38, 0x7fff
	v_and_b32_e32 v35, 1, v35
	v_mov_b16_e64 v37.h, v149.h
	v_cmp_o_f32_e64 s10, v178, v178
	v_cmp_o_f32_e64 s11, v177, v177
	v_cndmask_b16 v34.h, 0x7fff, v38.h, s8
	v_mov_b16_e64 v37.l, v181.h
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v35, v177, v35, 0x7fff
	v_cmp_o_f32_e64 s12, v180, v180
	v_permlanex16_b32 v38, v34, s66, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s13, v179, v179
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v36, v179, v36, 0x7fff
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s11
	v_perm_b32 v66, v38, v34, v144
	v_perm_b32 v67, v38, v34, v145
	v_and_b32_e32 v34, 1, v149
	v_mov_b16_e64 v149.l, v180.h
	v_cmp_o_f32_e64 s14, v182, v182
	v_cmp_o_f32_e64 s15, v181, v181
	v_add3_u32 v37, v181, v37, 0x7fff
	v_add3_u32 v34, v178, v34, 0x7fff
	v_and_b32_e32 v38, 1, v149
	v_mov_b16_e64 v149.l, v182.h
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s13
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s15
	v_cndmask_b16 v35.h, 0x7fff, v34.h, s10
	v_add3_u32 v38, v180, v38, 0x7fff
	v_and_b32_e32 v34, 1, v149
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v41, v0 offset:4160
	ds_load_u16_d16 v57, v0 offset:3936
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v43, v0 offset:2496
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v77, v0 offset:2688
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v44, v0 offset:2752
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v78, v0 offset:2944
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v45, v0 offset:3008
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v79, v0 offset:3200
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v46, v0 offset:3264
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v80, v0 offset:3456
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v47, v0 offset:3520
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v81, v0 offset:3712
	ds_load_u16_d16_hi v76, v0 offset:2432
	ds_load_u16_d16 v51, v0 offset:2400
	ds_load_u16_d16 v52, v0 offset:2656
	ds_load_u16_d16 v53, v0 offset:2912
	ds_load_u16_d16 v54, v0 offset:3168
	ds_load_u16_d16 v55, v0 offset:3424
	ds_load_u16_d16 v56, v0 offset:3680
	ds_load_u16_d16_hi v48, v0 offset:3776
	ds_load_u16_d16_hi v82, v0 offset:3968
	ds_load_u16_d16_hi v49, v0 offset:4032
	ds_load_u16_d16 v33, v0 offset:4096
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s12
	v_add3_u32 v34, v182, v34, 0x7fff
	v_permlanex16_b32 v38, v35, s66, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v184.h, v149.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v37.h, 0x7fff, v34.h, s14
	v_permlanex16_b32 v34, v36, s66, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_perm_b32 v68, v38, v35, v144
	v_perm_b32 v69, v38, v35, v145
	v_permlanex16_b32 v35, v37, s66, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v70, v34, v36, v144
	v_perm_b32 v71, v34, v36, v145
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v65, v0 offset:3872
	ds_load_u16_d16 v34, v0 offset:4352
	ds_load_u16_d16 v59, v0 offset:2336
	ds_load_u16_d16 v60, v0 offset:2592
	ds_load_u16_d16 v61, v0 offset:2848
	ds_load_u16_d16 v62, v0 offset:3104
	ds_load_u16_d16 v63, v0 offset:3360
	ds_load_u16_d16 v64, v0 offset:3616
	s_waitcnt lgkmcnt(32)
	ds_load_u16_d16_hi v58, v0 offset:2208
	s_waitcnt lgkmcnt(32)
	ds_load_u16_d16_hi v50, v0 offset:2272
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v72, v35, v37, v144
	v_perm_b32 v73, v35, v37, v145
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(12)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[75:82], v[66:73], v[17:24]
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v59, v0 offset:2464
	ds_load_u16_d16_hi v51, v0 offset:2528
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v60, v0 offset:2720
	ds_load_u16_d16_hi v52, v0 offset:2784
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v61, v0 offset:2976
	ds_load_u16_d16_hi v53, v0 offset:3040
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v62, v0 offset:3232
	ds_load_u16_d16_hi v54, v0 offset:3296
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v63, v0 offset:3488
	ds_load_u16_d16_hi v55, v0 offset:3552
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v64, v0 offset:3744
	ds_load_u16_d16_hi v56, v0 offset:3808
	ds_load_u16_d16_hi v65, v0 offset:4000
	ds_load_u16_d16_hi v57, v0 offset:4064
	ds_load_u16_d16_hi v33, v0 offset:4224
	ds_load_u16_d16 v75, v0 offset:4128
	ds_load_u16_d16 v183, v0 offset:4192
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[42:49], v[66:73], v[9:16]
	v_mov_b32_e32 v49, v93
	.loc	1 700 30 is_stmt 0              ; attention.py:700:30
	v_mov_b16_e64 v93.h, v149.h
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[58:65], v[66:73], v[25:32]
	.loc	1 690 62 is_stmt 1              ; attention.py:690:62
	v_sub_f32_e32 v61, v162, v150
	v_sub_f32_e32 v63, v160, v150
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v59.h, v149.h
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[50:57], v[66:73], v[1:8]
	.loc	1 690 62 is_stmt 1              ; attention.py:690:62
	v_sub_f32_e32 v73, v167, v150
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v61, v61
	v_exp_f32_e32 v63, v63
.Ltmp13:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v52, v171, v170 :: v_dual_add_f32 v55, v172, v173
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp14:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v73, v73
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v71, v152, v150
	v_sub_f32_e32 v152, v166, v150
	v_dual_sub_f32 v69, v154, v150 :: v_dual_add_f32 v166, v52, v55
	v_sub_f32_e32 v154, v164, v150
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v160, 0, v61, s25
	v_cndmask_b32_e64 v61, 0, v63, s26
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v152, v152
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v73, 0, v73, s5
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v67, v155, v150
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v59.l, v61.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v72, v156, v150
	v_sub_f32_e32 v57, v161, v150
	v_sub_f32_e32 v65, v157, v150
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v67, v67
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v59, 1, v59
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v72, v72
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v191, 0, v152, s6
	v_cndmask_b32_e64 v71, 0, v71, s0
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v51.h, v149.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v57, v57
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v50.h, v149.h
	v_mov_b16_e64 v149.l, v160.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v42, v0 offset:4416
	ds_load_u16_d16 v35, v0 offset:4608
	ds_load_u16_d16 v76, v0 offset:4384
	ds_load_u16_d16 v43, v0 offset:4672
	ds_load_u16_d16 v36, v0 offset:4864
	ds_load_u16_d16 v77, v0 offset:4640
	ds_load_u16_d16 v44, v0 offset:4928
	ds_load_u16_d16 v37, v0 offset:5120
	ds_load_u16_d16 v78, v0 offset:4896
	ds_load_u16_d16 v45, v0 offset:5184
	ds_load_u16_d16 v38, v0 offset:5376
	ds_load_u16_d16 v79, v0 offset:5152
	ds_load_u16_d16 v46, v0 offset:5440
	ds_load_u16_d16 v39, v0 offset:5632
	ds_load_u16_d16 v80, v0 offset:5408
	ds_load_u16_d16 v47, v0 offset:5696
	ds_load_u16_d16 v40, v0 offset:5888
	ds_load_u16_d16 v81, v0 offset:5664
	ds_load_u16_d16 v48, v0 offset:5952
	ds_load_u16_d16 v53, v0 offset:6464
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v72, 0, v72, s33
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v62, v0 offset:6656
	ds_load_u16_d16 v54, v0 offset:6720
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v58.h, v149.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v63, 0, v65, s28
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v65, v74, v176 :: v_dual_add_f32 v52, v72, v73
.Ltmp16:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v82, v165, v150
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v50.l, v72.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v57, 0, v57, s24
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s10, v72, v72
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s31
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v82, v82
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v50, 1, v50
	v_mov_b16_e64 v60.h, v149.h
	v_mov_b16_e32 v58.l, v57.h
	v_mov_b16_e32 v60.l, v63.h
	v_cmp_o_f32_e64 s0, v57, v57
	v_add3_u32 v50, v72, v50, 0x7fff
	v_mov_b16_e64 v68.h, v149.h
	v_cmp_o_f32_e64 s5, v160, v160
	v_and_b32_e32 v60, 1, v60
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v164, 0, v82, s7
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v70, v153, v150
	v_sub_f32_e32 v153, v163, v150
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v163, 0, v67, s30
.Ltmp17:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v67, v179, v180
	v_add_f32_e32 v55, v164, v191
.Ltmp18:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v153, v153
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v93.l, v163.h
	v_mov_b16_e64 v51.l, v164.h
	v_cmp_o_f32_e64 s8, v163, v163
	v_cmp_o_f32_e64 s11, v164, v164
	v_cmp_o_f32_e64 s13, v69, v69
	v_and_b32_e32 v93, 1, v93
	v_and_b32_e32 v51, 1, v51
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v70, s34
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v64, v159, v150
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v165, 0, v153, s1
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v72, v164, v51, 0x7fff
	v_cmp_o_f32_e64 s1, v61, v61
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v155, v70, v71
.Ltmp20:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v64, v64
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v184.l, v70.h
	v_mov_b16_e64 v68.l, v165.h
	v_cmp_o_f32_e64 s12, v165, v165
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v171, v155, v52
.Ltmp22:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s9, v70, v70
	v_and_b32_e32 v173, 1, v184
	v_and_b32_e32 v68, 1, v68
	v_cndmask_b16 v72.l, 0x7fff, v72.h, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v161, 0, v64, s27
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v64, v168, v169
.Ltmp24:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v66, v158, v150
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v68, v165, v68, 0x7fff
	v_add3_u32 v70, v70, v173, 0x7fff
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v152, v61, v161
.Ltmp26:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s6, v161, v161
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v70.l, 0x7fff, v50.h, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v162, 0, v66, s29
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v56, v174, v175
	v_add_f32_e32 v66, v177, v178
.Ltmp28:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v174, v163, v93, 0x7fff
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v153, v63, v162
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v167, v56, v64 :: v_dual_add_f32 v74, v181, v182
	v_add_f32_e32 v168, v65, v66
.Ltmp30:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s7, v162, v162
	v_cndmask_b16 v68.l, 0x7fff, v174.h, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v93, v166, v167 :: v_dual_add_f32 v74, v67, v74
	v_add_f32_e32 v74, v168, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v51, v93, v74
	v_add_f32_e32 v82, v57, v160
	v_add_f32_e32 v169, v82, v152
.Ltmp32:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v154, v154
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v82, v63, v60, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v192, 0, v154, s4
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v154, v163, v69
.Ltmp34:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s4, v63, v63
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v56, v165, v192
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v170, v153, v154
.Ltmp36:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v50.l, 0x7fff, v82.h, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v172, v55, v56 :: v_dual_add_f32 v163, v169, v170
.Ltmp38:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v55, v61, v59, 0x7fff
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v166, v171, v172
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp40:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v164.l, 0x7fff, v55.h, s1
	v_cmp_o_f32_e64 s1, v73, v73
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v74, v163, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v51, v51, v74
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v74, v51, s66, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v93, v51, v74
.Ltmp44:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v58, 1, v58
	v_and_b32_e32 v51, 1, v149
	v_mov_b16_e64 v149.l, v161.h
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v93, v49, v151
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v52, v57, v58, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v152, v0 offset:6240
	ds_load_u16_d16 v61, v0 offset:6400
	ds_load_u16_d16 v63, v0 offset:6912
	ds_load_u16_d16 v55, v0 offset:6976
	ds_load_u16_d16 v154, v0 offset:6752
	ds_load_u16_d16 v64, v0 offset:7168
	ds_load_u16_d16 v56, v0 offset:7232
	ds_load_u16_d16 v155, v0 offset:7008
	ds_load_u16_d16 v65, v0 offset:7424
	ds_load_u16_d16 v57, v0 offset:7488
	ds_load_u16_d16 v156, v0 offset:7264
	ds_load_u16_d16 v66, v0 offset:7680
	ds_load_u16_d16 v58, v0 offset:7744
	ds_load_u16_d16 v157, v0 offset:7520
	ds_load_u16_d16 v67, v0 offset:7936
	ds_load_u16_d16 v59, v0 offset:8000
	ds_load_u16_d16 v158, v0 offset:7776
	ds_load_u16_d16 v159, v0 offset:8032
	ds_load_u16_d16 v82, v0 offset:5920
	ds_load_u16_d16 v52, v0 offset:6208
	ds_load_u16_d16 v60, v0 offset:6144
	ds_load_u16_d16 v153, v0 offset:6496
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v53, v0 offset:6592
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v62, v0 offset:6784
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v54, v0 offset:6848
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v74, 1, v149
	v_add3_u32 v51, v160, v51, 0x7fff
	v_mov_b16_e64 v149.l, v162.h
	s_waitcnt lgkmcnt(5)
	v_cndmask_b16 v163.l, 0x7fff, v52.h, s0
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v34, v0 offset:4480
	ds_load_u16_d16_hi v42, v0 offset:4544
	ds_load_u16_d16 v184, v0 offset:4448
	ds_load_u16_d16_hi v35, v0 offset:4736
	ds_load_u16_d16_hi v43, v0 offset:4800
	ds_load_u16_d16 v185, v0 offset:4704
	ds_load_u16_d16_hi v36, v0 offset:4992
	ds_load_u16_d16_hi v44, v0 offset:5056
	ds_load_u16_d16 v186, v0 offset:4960
	ds_load_u16_d16_hi v37, v0 offset:5248
	ds_load_u16_d16_hi v45, v0 offset:5312
	ds_load_u16_d16 v187, v0 offset:5216
	ds_load_u16_d16_hi v38, v0 offset:5504
	ds_load_u16_d16_hi v46, v0 offset:5568
	ds_load_u16_d16 v188, v0 offset:5472
	ds_load_u16_d16_hi v39, v0 offset:5760
	ds_load_u16_d16_hi v47, v0 offset:5824
	ds_load_u16_d16 v189, v0 offset:5728
	ds_load_u16_d16_hi v40, v0 offset:6016
	ds_load_u16_d16_hi v48, v0 offset:6080
	ds_load_u16_d16 v190, v0 offset:5984
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v60, v0 offset:6272
	ds_load_u16_d16 v168, v0 offset:6176
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v163.h, 0x7fff, v51.h, s5
	v_and_b32_e32 v51, 1, v149
	v_mov_b16_e64 v149.l, v69.h
	v_add3_u32 v74, v161, v74, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v170, v0 offset:6688
	ds_load_u16_d16_hi v63, v0 offset:7040
	ds_load_u16_d16_hi v55, v0 offset:7104
	ds_load_u16_d16 v171, v0 offset:6944
	ds_load_u16_d16_hi v64, v0 offset:7296
	ds_load_u16_d16_hi v56, v0 offset:7360
	ds_load_u16_d16 v172, v0 offset:7200
	ds_load_u16_d16_hi v65, v0 offset:7552
	ds_load_u16_d16_hi v57, v0 offset:7616
	ds_load_u16_d16 v173, v0 offset:7456
	ds_load_u16_d16_hi v66, v0 offset:7808
	ds_load_u16_d16_hi v58, v0 offset:7872
	ds_load_u16_d16 v174, v0 offset:7712
	ds_load_u16_d16_hi v67, v0 offset:8064
	ds_load_u16_d16_hi v59, v0 offset:8128
	ds_load_u16_d16 v175, v0 offset:7968
	ds_load_u16_d16_hi v52, v0 offset:6336
	ds_load_u16_d16_hi v61, v0 offset:6528
	ds_load_u16_d16 v169, v0 offset:6432
	ds_load_u16_d16_hi v41, v0 offset:4288
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s0, v71, v71
	v_add3_u32 v165, v162, v51, 0x7fff
	v_and_b32_e32 v51, 1, v149
	v_mov_b16_e64 v149.l, v71.h
	v_cndmask_b16 v164.h, 0x7fff, v74.h, s6
	v_permlanex16_b32 v74, v163, s66, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v50.h, 0x7fff, v165.h, s7
	v_add3_u32 v69, v69, v51, 0x7fff
	v_dual_mov_b32 v51, v150 :: v_dual_and_b32 v150, 1, v149
	v_mov_b16_e64 v149.l, v73.h
	v_permlanex16_b32 v166, v164, s66, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v160, v74, v163, v144
	v_perm_b32 v161, v74, v163, v145
	v_cndmask_b16 v74.l, 0x7fff, v68.h, s12
	v_cndmask_b16 v68.h, 0x7fff, v69.h, s13
	v_permlanex16_b32 v165, v50, s66, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v71, v71, v150, 0x7fff
	v_and_b32_e32 v150, 1, v149
	v_mov_b16_e64 v149.l, v191.h
	v_perm_b32 v162, v166, v164, v144
	v_perm_b32 v163, v166, v164, v145
	v_perm_b32 v164, v165, v50, v144
	v_perm_b32 v165, v165, v50, v145
	v_permlanex16_b32 v50, v68, s66, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v176, 1, v149
	v_mov_b16_e64 v149.l, v192.h
	v_cndmask_b16 v69.h, 0x7fff, v71.h, s0
	v_add3_u32 v71, v73, v150, 0x7fff
	v_perm_b32 v166, v50, v68, v144
	v_perm_b32 v167, v50, v68, v145
	v_and_b32_e32 v50, 1, v149
	v_cmp_o_f32_e64 s5, v191, v191
	v_cmp_o_f32_e64 s6, v192, v192
	v_cndmask_b16 v69.l, 0x7fff, v70.h, s9
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v75, v0 offset:4256
	ds_load_u16_d16_hi v183, v0 offset:4320
	ds_load_u16_d16_hi v76, v0 offset:4512
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v184, v0 offset:4576
	ds_load_u16_d16_hi v77, v0 offset:4768
	s_waitcnt lgkmcnt(42)
	ds_load_u16_d16_hi v185, v0 offset:4832
	ds_load_u16_d16_hi v78, v0 offset:5024
	s_waitcnt lgkmcnt(41)
	ds_load_u16_d16_hi v186, v0 offset:5088
	ds_load_u16_d16_hi v79, v0 offset:5280
	s_waitcnt lgkmcnt(40)
	ds_load_u16_d16_hi v187, v0 offset:5344
	ds_load_u16_d16_hi v80, v0 offset:5536
	s_waitcnt lgkmcnt(39)
	ds_load_u16_d16_hi v188, v0 offset:5600
	ds_load_u16_d16_hi v81, v0 offset:5792
	s_waitcnt lgkmcnt(38)
	ds_load_u16_d16_hi v189, v0 offset:5856
	ds_load_u16_d16_hi v82, v0 offset:6048
	s_waitcnt lgkmcnt(37)
	ds_load_u16_d16_hi v190, v0 offset:6112
	s_waitcnt lgkmcnt(36)
	ds_load_u16_d16_hi v168, v0 offset:6304
	ds_load_u16_d16_hi v152, v0 offset:6368
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v169, v0 offset:6560
	ds_load_u16_d16_hi v153, v0 offset:6624
	ds_load_u16_d16_hi v170, v0 offset:6816
	ds_load_u16_d16_hi v154, v0 offset:6880
	ds_load_u16_d16_hi v171, v0 offset:7072
	ds_load_u16_d16_hi v155, v0 offset:7136
	ds_load_u16_d16_hi v172, v0 offset:7328
	ds_load_u16_d16_hi v156, v0 offset:7392
	ds_load_u16_d16_hi v173, v0 offset:7584
	ds_load_u16_d16_hi v157, v0 offset:7648
	ds_load_u16_d16_hi v174, v0 offset:7840
	ds_load_u16_d16_hi v158, v0 offset:7904
	ds_load_u16_d16_hi v175, v0 offset:8096
	ds_load_u16_d16_hi v159, v0 offset:8160
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v70.h, 0x7fff, v71.h, s1
	v_add3_u32 v71, v191, v176, 0x7fff
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[33:40], v[160:167], v[17:24]
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v35, v192, v50, 0x7fff
	v_permlanex16_b32 v68, v69, s66, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v70, s66, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v72.h, 0x7fff, v71.h, s5
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(17)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[75:82], v[160:167], v[25:32]
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v74.h, 0x7fff, v35.h, s6
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[41:48], v[160:167], v[9:16]
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[183:190], v[160:167], v[1:8]
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v38, v72, s66, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v68, v69, v144
	v_permlanex16_b32 v40, v74, s66, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v34, v68, v69, v145
	v_perm_b32 v35, v36, v70, v144
	v_perm_b32 v36, v36, v70, v145
	v_perm_b32 v37, v38, v72, v144
	v_perm_b32 v38, v38, v72, v145
	v_perm_b32 v39, v40, v74, v144
	v_perm_b32 v40, v40, v74, v145
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[60:67], v[33:40], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[168:175], v[33:40], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[52:59], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[152:159], v[33:40], v[1:8]
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v33, v126
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 841 48 is_stmt 1              ; attention.py:841:48
	v_div_scale_f32 v0, null, v93, v93, v17
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v34, null, v93, v93, v18
	v_div_scale_f32 v35, null, v93, v93, v19
	v_rcp_f32_e32 v36, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, vcc_lo, v17, v93, v17
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v40, s0, v18, v93, v18
	v_div_scale_f32 v43, null, v93, v93, v20
	v_div_scale_f32 v49, s3, v20, v93, v20
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v0, v36, 1.0
	v_fma_f32 v42, -v34, v37, 1.0
	.loc	1 848 17                        ; attention.py:848:17
	s_and_b32 s49, s49, 0xffff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v44, -v35, v38, 1.0
	s_mov_b32 s51, 0x31027000
	v_dual_fmac_f32 v36, v41, v36 :: v_dual_fmac_f32 v37, v42, v37
	v_rcp_f32_e32 v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v41, s1, v19, v93, v19
	v_dual_mul_f32 v44, v39, v36 :: v_dual_mul_f32 v45, v40, v37
	s_mov_b32 s50, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v0, v44, v39
	v_fma_f32 v48, -v34, v45, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v43, v42, 1.0
	v_dual_fmac_f32 v44, v47, v36 :: v_dual_fmac_f32 v45, v48, v37
	v_div_scale_f32 v47, null, v93, v93, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v50, v42
	v_fma_f32 v0, -v0, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v45, v40
	v_rcp_f32_e32 v39, v47
	v_div_scale_f32 v40, null, v93, v93, v22
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v36, v44
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v36, v49, v42
	v_div_fmas_f32 v34, v34, v37, v45
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v0, v93, v17
	v_rcp_f32_e32 v44, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v39, 1.0
	v_div_fixup_f32 v17, v34, v93, v18
	v_div_scale_f32 v34, s4, v21, v93, v21
	v_fma_f32 v37, -v43, v36, v49
	v_fmac_f32_e32 v39, v45, v39
	v_mul_f32_e32 v46, v41, v38
	v_div_scale_f32 v45, null, v93, v93, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v37, v42
	v_div_scale_f32 v37, null, v93, v93, v23
	v_fma_f32 v51, -v35, v46, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v45
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s0, 0, v93
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v46, v51, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v0, 0, v0, s0
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v18, -v35, v46, v41
	v_mul_f32_e32 v41, v34, v39
	v_fma_f32 v35, -v40, v44, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v18, v18, v38, v46
	v_fma_f32 v38, -v43, v36, v49
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v43, s1, v22, v93, v22
	v_div_fixup_f32 v18, v18, v93, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v38, v42, v36
	v_fma_f32 v38, -v47, v41, v34
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v19, v36, v93, v20
	v_fmac_f32_e32 v41, v38, v39
	v_div_scale_f32 v38, null, v93, v93, v25
	v_div_scale_f32 v36, s3, v23, v93, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v47, v41, v34
	v_rcp_f32_e32 v49, v38
	v_fmac_f32_e32 v44, v35, v44
	v_rcp_f32_e32 v35, v37
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v42, v43, v44
	v_fma_f32 v20, -v40, v42, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v37, v35, 1.0
	v_dual_fmac_f32 v42, v20, v44 :: v_dual_fmac_f32 v35, v46, v35
	v_fma_f32 v46, -v45, v48, 1.0
	v_div_fmas_f32 v20, v34, v39, v41
	v_fma_f32 v41, -v38, v49, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v40, v42, v43
	v_dual_mul_f32 v47, v36, v35 :: v_dual_fmac_f32 v48, v46, v48
	v_div_scale_f32 v46, s5, v24, v93, v24
	v_div_scale_f32 v43, null, v93, v93, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v37, v47, v36
	v_mul_f32_e32 v40, v46, v48
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v49, v41, v49
	v_div_fmas_f32 v34, v34, v44, v42
	v_fmac_f32_e32 v47, v39, v35
	v_rcp_f32_e32 v39, v43
	v_fma_f32 v42, -v45, v40, v46
	v_div_scale_f32 v41, s1, v25, v93, v25
	v_div_fixup_f32 v20, v20, v93, v21
	v_div_fixup_f32 v21, v34, v93, v22
	v_fma_f32 v22, -v37, v47, v36
	v_fmac_f32_e32 v40, v42, v48
	v_div_scale_f32 v37, null, v93, v93, v27
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v43, v39, 1.0
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v34, v41, v49
	v_div_fmas_f32 v22, v22, v35, v47
	v_fma_f32 v35, -v45, v40, v46
	v_fmac_f32_e32 v39, v36, v39
	v_rcp_f32_e32 v36, v37
	v_div_scale_f32 v45, null, v93, v93, v28
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v42, -v38, v34, v41
	v_div_scale_f32 v44, s3, v26, v93, v26
	v_div_fmas_f32 v35, v35, v48, v40
	v_rcp_f32_e32 v40, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v42, v49
	v_mul_f32_e32 v42, v44, v39
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v37, v36, 1.0
	v_div_fixup_f32 v22, v22, v93, v23
	v_div_fixup_f32 v23, v35, v93, v24
	v_fma_f32 v24, -v38, v34, v41
	v_fma_f32 v35, -v43, v42, v44
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v38, s4, v27, v93, v27
	v_fma_f32 v41, -v45, v40, 1.0
	v_div_scale_f32 v46, null, v93, v93, v29
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v42, v35, v39
	v_div_fmas_f32 v24, v24, v49, v34
	v_mul_f32_e32 v34, v38, v36
	v_fmac_f32_e32 v40, v41, v40
	v_rcp_f32_e32 v35, v46
	v_div_scale_f32 v41, s1, v28, v93, v28
	v_div_scale_f32 v47, null, v93, v93, v30
	v_div_fixup_f32 v24, v24, v93, v25
	v_fma_f32 v25, -v43, v42, v44
	v_fma_f32 v43, -v37, v34, v38
	v_mul_f32_e32 v44, v41, v40
	v_rcp_f32_e32 v48, v47
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v49, -v46, v35, 1.0
	v_div_fmas_f32 v25, v25, v39, v42
	v_fmac_f32_e32 v34, v43, v36
	v_fma_f32 v39, -v45, v44, v41
	v_div_scale_f32 v42, s3, v29, v93, v29
	v_fmac_f32_e32 v35, v49, v35
	v_div_fixup_f32 v25, v25, v93, v26
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v47, v48, 1.0
	v_fma_f32 v26, -v37, v34, v38
	v_fmac_f32_e32 v44, v39, v40
	v_div_scale_f32 v39, null, v93, v93, v31
	s_mov_b32 vcc_lo, s4
	v_dual_mul_f32 v37, v42, v35 :: v_dual_fmac_f32 v48, v43, v48
	v_div_scale_f32 v38, s5, v30, v93, v30
	v_div_fmas_f32 v26, v26, v36, v34
	v_fma_f32 v34, -v45, v44, v41
	v_rcp_f32_e32 v41, v39
	v_fma_f32 v36, -v46, v37, v42
	v_mul_f32_e32 v43, v38, v48
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v93, v93, v32
	v_div_fmas_f32 v34, v34, v40, v44
	v_fmac_f32_e32 v37, v36, v35
	v_fma_f32 v40, -v47, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v36, v45
	v_fma_f32 v44, -v39, v41, 1.0
	v_div_fixup_f32 v26, v26, v93, v27
	v_div_fixup_f32 v27, v34, v93, v28
	v_fma_f32 v28, -v46, v37, v42
	v_fmac_f32_e32 v43, v40, v48
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v34, s1, v31, v93, v31
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v45, v36, 1.0
	v_div_fmas_f32 v28, v28, v35, v37
	v_fma_f32 v35, -v47, v43, v38
	v_mul_f32_e32 v37, v34, v41
	v_div_scale_f32 v38, null, v93, v93, v9
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v36, v40, v36
	v_div_fmas_f32 v35, v35, v48, v43
	v_rcp_f32_e32 v42, v38
	v_fma_f32 v43, -v39, v37, v34
	v_div_scale_f32 v40, s3, v32, v93, v32
	v_div_scale_f32 v46, null, v93, v93, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v37, v43, v41 :: v_dual_mul_f32 v44, v40, v36
	v_div_fixup_f32 v28, v28, v93, v29
	v_div_fixup_f32 v29, v35, v93, v30
	v_rcp_f32_e32 v35, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v38, v42, 1.0
	v_fma_f32 v34, -v39, v37, v34
	v_div_scale_f32 v39, null, v93, v93, v11
	v_fma_f32 v30, -v45, v44, v40
	v_fmac_f32_e32 v42, v43, v42
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v43, v39
	v_div_fmas_f32 v34, v34, v41, v37
	v_fmac_f32_e32 v44, v30, v36
	v_fma_f32 v47, -v46, v35, 1.0
	v_div_scale_f32 v41, s1, v10, v93, v10
	v_div_scale_f32 v30, s4, v9, v93, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v45, v44, v40
	v_fmac_f32_e32 v35, v47, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v39, v43, 1.0
	v_div_scale_f32 v48, null, v93, v93, v12
	v_dual_mul_f32 v40, v30, v42 :: v_dual_mul_f32 v49, v41, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, s5, v11, v93, v11
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	v_div_fmas_f32 v36, v37, v36, v44
	v_fma_f32 v37, -v46, v49, v41
	v_mul_f32_e32 v44, v45, v43
	v_fma_f32 v47, -v38, v40, v30
	v_div_fixup_f32 v31, v34, v93, v31
	v_div_fixup_f32 v32, v36, v93, v32
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v39, v44, v45
	v_div_scale_f32 v37, null, v93, v93, v13
	v_fmac_f32_e32 v40, v47, v42
	v_fma_f32 v36, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v30, -v38, v40, v30
	v_fma_f32 v38, -v46, v49, v41
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s3, v12, v93, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v30, v30, v42, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, null, v93, v93, v14
	v_div_fmas_f32 v35, v38, v35, v49
	v_fma_f32 v38, -v39, v44, v45
	v_mul_f32_e32 v39, v36, v50
	v_fma_f32 v41, -v37, v34, 1.0
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v42, v40
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v43, -v48, v39, v36
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s1, v13, v93, v13
	v_div_fixup_f32 v9, v30, v93, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v43, v50
	v_div_fixup_f32 v10, v35, v93, v10
	v_mul_f32_e32 v30, v41, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v48, v39, v36
	v_div_fixup_f32 v11, v38, v93, v11
	v_fma_f32 v43, -v37, v30, v41
	v_div_scale_f32 v38, null, v93, v93, v15
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s4, v14, v93, v14
	v_div_fmas_f32 v36, v36, v50, v39
	v_fmac_f32_e32 v30, v43, v34
	v_rcp_f32_e32 v44, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v39, v35, v42
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v36, v93, v12
	v_fma_f32 v36, -v37, v30, v41
	v_div_scale_f32 v43, null, v93, v93, v16
	v_fma_f32 v37, -v40, v39, v35
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v30, v36, v34, v30
	v_div_scale_f32 v34, null, v93, v93, v1
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v36, s1, v15, v93, v15
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v93, v93, v2
	v_div_fixup_f32 v13, v30, v93, v13
	v_fma_f32 v35, -v40, v39, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v34, v37, 1.0
	v_mul_f32_e32 v40, v36, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v30, v45
	v_div_scale_f32 v30, s3, v16, v93, v16
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v93, v93, v3
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v30, v45
	v_div_scale_f32 v48, s4, v1, v93, v1
	v_fma_f32 v49, -v41, v47, 1.0
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v30
	v_mul_f32_e32 v51, v48, v37
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v2, v93, v2
	v_div_fixup_f32 v14, v35, v93, v14
	v_fma_f32 v35, -v38, v40, v36
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v30, -v43, v42, v30
	v_fmac_f32_e32 v51, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v93, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_div_fmas_f32 v35, v35, v44, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, null, v93, v93, v4
	v_div_fmas_f32 v30, v30, v45, v42
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v35, v93, v15
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v16, v30, v93, v16
	v_div_fixup_f32 v1, v34, v93, v1
	v_div_scale_f32 v34, null, v93, v93, v5
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v44, null, v93, v93, v8
	v_div_fmas_f32 v37, v37, v47, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v30, -v46, v36, v39
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v2, v37, v93, v2
	v_div_fmas_f32 v30, v30, v50, v36
	v_rcp_f32_e32 v36, v34
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v93, v93, v6
	v_div_scale_f32 v37, null, v93, v93, v7
	v_div_scale_f32 v38, vcc_lo, v4, v93, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v35
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v3, v30, v93, v3
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v30, -v34, v36, 1.0
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v50, -v44, v46, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v36, v30, v36
	v_div_scale_f32 v30, s1, v5, v93, v5
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v48, -v37, v41, 1.0
	v_fma_f32 v47, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v49, v30, v36
	v_dual_fmac_f32 v46, v50, v46 :: v_dual_fmac_f32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v93, v6
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v93, v7
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v30
	v_div_scale_f32 v50, s5, v8, v93, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v51, v45, v39 :: v_dual_mul_f32 v52, v48, v41
	v_fmac_f32_e32 v49, v47, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v51, v45
	v_fma_f32 v47, -v37, v52, v48
	v_fma_f32 v30, -v34, v49, v30
	v_fma_f32 v34, -v44, v53, v50
	v_div_fmas_f32 v38, v38, v42, v43
	v_fmac_f32_e32 v51, v40, v39
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v52, v47, v41
	v_div_fmas_f32 v30, v30, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v35, -v35, v51, v45
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v34, -v37, v52, v48
	v_div_fixup_f32 v5, v30, v93, v5
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v30, 0, v31, s0
	v_cndmask_b32_e64 v31, 0, v32, s0
	.loc	1 843 24 is_stmt 1              ; attention.py:843:24
	v_mul_lo_u32 v32, s38, v33
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v36, -v44, v53, v50
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v4, v38, v93, v4
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v35, v93, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s38, v114
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v33, v32, v114, 2
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v34, v93, v7
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v34, v32, v125, 2
	v_add_lshl_u32 v35, v32, v124, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v8, v36, v93, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	s_clause 0x2
	buffer_store_b32 v0, v33, s[48:51], 0 offen
	buffer_store_b32 v17, v34, s[48:51], 0 offen
	buffer_store_b32 v18, v35, s[48:51], 0 offen
	v_add_lshl_u32 v0, v32, v123, 2
	v_add_lshl_u32 v17, v32, v122, 2
	v_add_lshl_u32 v18, v32, v121, 2
	v_add_lshl_u32 v33, v32, v120, 2
	v_add_lshl_u32 v34, v32, v119, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v17, 0x80000000, v17
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	v_cndmask_b32_e64 v24, 0, v24, s0
	v_cndmask_b32_e64 v25, 0, v25, s0
	v_cndmask_b32_e64 v26, 0, v26, s0
	v_cndmask_b32_e64 v27, 0, v27, s0
	v_cndmask_b32_e64 v28, 0, v28, s0
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v9, 0, v9, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	v_cndmask_b32_e64 v11, 0, v11, s0
	v_cndmask_b32_e64 v12, 0, v12, s0
	v_cndmask_b32_e64 v13, 0, v13, s0
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v16, 0, v16, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s0, s38, v118
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	s_clause 0x4
	buffer_store_b32 v19, v0, s[48:51], 0 offen
	buffer_store_b32 v20, v17, s[48:51], 0 offen
	buffer_store_b32 v21, v18, s[48:51], 0 offen
	buffer_store_b32 v22, v33, s[48:51], 0 offen
	buffer_store_b32 v23, v34, s[48:51], 0 offen
	v_add_lshl_u32 v0, v32, v118, 2
	v_add_lshl_u32 v17, v32, v117, 2
	v_add_lshl_u32 v18, v32, v116, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v19, v32, v115, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v17, 0x80000000, v17
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	v_add_lshl_u32 v20, v32, v113, 2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x2
	buffer_store_b32 v24, v0, s[48:51], 0 offen
	buffer_store_b32 v25, v17, s[48:51], 0 offen
	buffer_store_b32 v26, v18, s[48:51], 0 offen
	v_add_lshl_u32 v17, v32, v112, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s38, v109
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e32 v0, 0x80000000, v20, vcc_lo
	buffer_store_b32 v27, v19, s[48:51], 0 offen
	v_add_lshl_u32 v18, v32, v111, 2
	v_add_lshl_u32 v19, v32, v110, 2
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	buffer_store_b32 v28, v0, s[48:51], 0 offen
	v_add_lshl_u32 v0, v32, v109, 2
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 848 17                        ; attention.py:848:17
	buffer_store_b32 v29, v17, s[48:51], 0 offen
	v_add_lshl_u32 v17, v32, v108, 2
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x2
	buffer_store_b32 v30, v18, s[48:51], 0 offen
	buffer_store_b32 v31, v19, s[48:51], 0 offen
	buffer_store_b32 v9, v0, s[48:51], 0 offen
	v_add_lshl_u32 v0, v32, v107, 2
	v_cndmask_b32_e32 v9, 0x80000000, v17, vcc_lo
	v_add_lshl_u32 v17, v32, v106, 2
	v_add_lshl_u32 v18, v32, v105, 2
	v_add_lshl_u32 v19, v32, v104, 2
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b32 v10, v9, s[48:51], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v10, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s3, s38, v101
	.loc	1 848 17                        ; attention.py:848:17
	buffer_store_b32 v11, v0, s[48:51], 0 offen
	v_add_lshl_u32 v0, v32, v103, 2
	s_clause 0x2
	buffer_store_b32 v12, v9, s[48:51], 0 offen
	buffer_store_b32 v13, v10, s[48:51], 0 offen
	buffer_store_b32 v14, v17, s[48:51], 0 offen
	v_add_lshl_u32 v9, v32, v102, 2
	v_add_lshl_u32 v10, v32, v101, 2
	v_add_lshl_u32 v11, v32, v100, 2
	v_add_lshl_u32 v12, v32, v99, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v0, s[48:51], 0 offen
	buffer_store_b32 v16, v9, s[48:51], 0 offen
	buffer_store_b32 v1, v10, s[48:51], 0 offen
	buffer_store_b32 v2, v11, s[48:51], 0 offen
	buffer_store_b32 v3, v12, s[48:51], 0 offen
	v_add_lshl_u32 v0, v32, v96, 2
	v_add_lshl_u32 v1, v32, v94, 2
	v_add_lshl_u32 v2, v32, v98, 2
	v_add_lshl_u32 v3, v32, v97, 2
	v_add_lshl_u32 v9, v32, v95, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v0, s[48:51], 0 offen
	buffer_store_b32 v5, v1, s[48:51], 0 offen
	buffer_store_b32 v6, v2, s[48:51], 0 offen
	buffer_store_b32 v7, v3, s[48:51], 0 offen
	buffer_store_b32 v8, v9, s[48:51], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp45:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 194
		.amdhsa_next_free_sgpr 73
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 63
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_vgpr, 194
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.numbered_sgpr, 73
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13264
; TotalNumSgprs: 75
; NumVgprs: 194
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 75
; NumVGPRsForWavesPerEU: 194
; Occupancy: 7
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	687                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	691                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           1
        .value_kind:     by_value
      - .offset:         125
        .size:           1
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     75
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     194
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
