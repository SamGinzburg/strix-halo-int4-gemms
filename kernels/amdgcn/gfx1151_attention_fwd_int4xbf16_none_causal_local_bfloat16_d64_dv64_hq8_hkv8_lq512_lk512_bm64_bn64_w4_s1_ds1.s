	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s5, s[0:1], 0x88
	s_load_b32 s79, s[0:1], 0x60
.Ltmp0:
	.loc	1 584 86 prologue_end           ; attention.py:584:86
	v_lshlrev_b32_e32 v35, 4, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v6, 1, v0
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x0
	s_load_b64 s[6:7], s[0:1], 0x80
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s9, s2, 6
	.loc	1 584 86                        ; attention.py:584:86
	v_and_b32_e32 v1, 16, v35
	.loc	1 583 26                        ; attention.py:583:26
	s_lshl_b32 s92, s3, 9
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, s9, v6
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s8, s9, s92
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 570 31                        ; attention.py:570:31
	v_bfe_u32 v113, v0, 4, 1
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v4
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v36, 1, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v111, 16, v0
	v_and_b32_e32 v34, 15, v0
	.loc	1 616 17                        ; attention.py:616:17
	s_waitcnt lgkmcnt(0)
	s_add_i32 s10, s5, s9
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[100:101], null, s79, v6, v[1:2]
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s4, s79, v1
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s13, s13, 0xffff
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s10, s10, 64
	.loc	1 585 26                        ; attention.py:585:26
	v_cmp_eq_u32_e64 s3, 0, v111
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s11, s10, s7
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[2:3], null, s79, s8, v[100:101]
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s11, s11, 0x200
	.loc	1 621 25                        ; attention.py:621:25
	s_min_i32 s10, s10, 0x200
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s11, s11, 63
	.loc	1 622 35                        ; attention.py:622:35
	s_add_i32 s10, s10, 63
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	buffer_load_b128 v[2:5], v1, s[12:15], 0 offen
	.loc	1 570 31                        ; attention.py:570:31
	v_and_or_b32 v1, v6, 48, v34
	.loc	1 585 26                        ; attention.py:585:26
	v_and_or_b32 v6, v36, 30, v113
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s12, s11, 31
	.loc	1 622 34                        ; attention.py:622:34
	s_ashr_i32 s13, s10, 31
	.loc	1 619 34                        ; attention.py:619:34
	s_lshr_b32 s12, s12, 26
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v37, s9, v1
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v6, 2, v6
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s9, s9, s6
	.loc	1 622 34                        ; attention.py:622:34
	s_lshr_b32 s13, s13, 26
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s9, s9, s5
	.loc	1 619 34                        ; attention.py:619:34
	s_add_i32 s11, s11, s12
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v7, 4, v6
	.loc	1 622 34                        ; attention.py:622:34
	s_add_i32 s10, s10, s13
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s9, s9, 0
	.loc	1 619 33                        ; attention.py:619:33
	s_and_not1_b32 s11, s11, 63
	.loc	1 622 33                        ; attention.py:622:33
	s_and_not1_b32 s10, s10, 63
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 0x200, v37
	v_or_b32_e32 v114, s8, v1
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s93, s9, 0x7fffffc0
	.loc	1 622 18                        ; attention.py:622:18
	s_min_i32 s94, s11, s10
	s_mov_b32 s9, 0
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s93, s94
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v38, v6, v2
	ds_bpermute_b32 v39, v6, v3
	ds_bpermute_b32 v40, v6, v4
	ds_bpermute_b32 v42, v6, v5
	ds_bpermute_b32 v41, v7, v2
	ds_bpermute_b32 v43, v7, v3
	ds_bpermute_b32 v44, v7, v4
	ds_bpermute_b32 v45, v7, v5
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b32_e32 v2, 0x5410
	v_mov_b32_e32 v3, 0x7632
	.loc	1 843 24                        ; attention.py:843:24
	v_or_b32_e32 v33, s8, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v2, 0x1054, v2, s3
	v_cndmask_b32_e64 v3, 0x3276, v3, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v2, v2, 8, v2
	v_lshl_or_b32 v3, v3, 8, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v2, 0x540054, v2
	v_and_b32_e32 v3, 0x760076, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v3, v3, 4, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v110, 0x5040504, v2
	v_and_b32_e32 v112, 0x7060706, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s9, -1
                                        ; implicit-def: $vgpr110
                                        ; implicit-def: $vgpr112
                                        ; implicit-def: $vgpr33
.LBB0_3:                                ; %Flow326
	s_clause 0x1
	s_load_b64 s[76:77], s[0:1], 0x38
	s_load_b32 s78, s[0:1], 0x64
	v_mov_b32_e32 v8, 0
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_delay_alu instid0(VALU_DEP_1)
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
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v150, v8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	v_dual_mov_b32 v4, 0x5410 :: v_dual_lshlrev_b32 v1, 1, v114
	s_mov_b32 s83, 0x31027000
	s_mov_b32 s82, 0x7ffffffe
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v146, 0x7f0, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 590 31 is_stmt 1              ; attention.py:590:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v5, 0x7632 :: v_dual_and_b32 v2, 24, v0
	v_dual_mov_b32 v28, v25 :: v_dual_and_b32 v3, 24, v36
	s_load_b32 s0, s[0:1], 0x68
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v103, v38, v41, s3
	v_cndmask_b32_e64 v107, v41, v38, s3
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v38, 3, v0
	v_lshl_or_b32 v149, v34, 5, v3
	v_cndmask_b32_e64 v36, 0x3276, v5, s3
	v_dual_mov_b32 v56, 0xff800000 :: v_dual_add_nc_u32 v37, s5, v37
	.loc	1 590 31                        ; attention.py:590:31
	s_and_b32 s81, s13, 0xffff
	s_mov_b32 s80, s12
	v_mov_b32_e32 v26, v25
	buffer_load_u16 v46, v1, s[80:83], 0 offen
	.loc	1 693 86                        ; attention.py:693:86
	v_lshlrev_b32_e32 v1, 3, v0
	v_lshl_add_u32 v0, v34, 1, 0
	v_cndmask_b32_e64 v34, 0x1054, v4, s3
	v_dual_mov_b32 v32, v25 :: v_dual_add_nc_u32 v35, s7, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v33, 56, v1
	v_xor_b32_e32 v148, v146, v2
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v129, 30, v113
	v_or_b32_e32 v130, 32, v113
	v_or_b32_e32 v131, 34, v113
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e32 vcc_lo, s78, v33
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[109:110], null, s78, v38, v[33:34]
	v_lshl_or_b32 v33, v34, 8, v34
	v_lshl_or_b32 v34, v36, 8, v36
	v_mov_b32_e32 v27, v25
	v_mov_b32_e32 v18, v25
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v132, 36, v113
	v_and_b32_e32 v33, 0x540054, v33
	v_and_b32_e32 v34, 0x760076, v34
	v_or_b32_e32 v133, 38, v113
	v_or_b32_e32 v134, 40, v113
	v_or_b32_e32 v135, 42, v113
	v_or_b32_e32 v136, 44, v113
	v_or_b32_e32 v137, 46, v113
	v_or_b32_e32 v138, 48, v113
	v_or_b32_e32 v139, 50, v113
	v_or_b32_e32 v140, 52, v113
	v_or_b32_e32 v141, 54, v113
	v_or_b32_e32 v142, 56, v113
	v_or_b32_e32 v143, 58, v113
	v_or_b32_e32 v144, 60, v113
	v_or_b32_e32 v145, 62, v113
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v101, v40, v44, s3
	v_cndmask_b32_e64 v104, v39, v43, s3
	v_cndmask_b32_e64 v105, v44, v40, s3
	v_cndmask_b32_e64 v108, v43, v39, s3
	v_mov_b32_e32 v24, v25
	v_xor_b32_e32 v39, 8, v148
	v_xor_b32_e32 v40, 8, v149
	v_xor_b32_e32 v36, 16, v149
	v_min_i32_e32 v168, v37, v35
	v_xor_b32_e32 v35, 24, v149
	v_lshl_or_b32 v33, v33, 4, v33
	v_lshl_or_b32 v34, v34, 4, v34
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s99, s0, 0x3fb8aa3b
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v115, 2, v113
	v_or_b32_e32 v116, 4, v113
	v_or_b32_e32 v117, 6, v113
	v_or_b32_e32 v118, 8, v113
	v_or_b32_e32 v119, 10, v113
	v_or_b32_e32 v120, 12, v113
	v_or_b32_e32 v121, 14, v113
	v_or_b32_e32 v122, 16, v113
	v_or_b32_e32 v123, 18, v113
	v_or_b32_e32 v124, 20, v113
	v_or_b32_e32 v125, 22, v113
	v_or_b32_e32 v126, 24, v113
	v_or_b32_e32 v127, 26, v113
	v_or_b32_e32 v128, 28, v113
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v102, v42, v45, s3
	v_cndmask_b32_e64 v106, v45, v42, s3
	.loc	1 670 47                        ; attention.py:670:47
	v_subrev_nc_u32_e32 v147, s6, v37
	v_dual_mov_b32 v29, v25 :: v_dual_add_nc_u32 v170, 0, v40
	v_dual_mov_b32 v31, v25 :: v_dual_add_nc_u32 v172, 0, v35
	v_dual_mov_b32 v17, v25 :: v_dual_and_b32 v110, 0x5040504, v33
	v_dual_mov_b32 v19, v25 :: v_dual_and_b32 v112, 0x7060706, v34
	v_dual_mov_b32 v20, v25 :: v_dual_add_nc_u32 v169, 0, v39
	v_mov_b32_e32 v21, v25
	v_dual_mov_b32 v22, v25 :: v_dual_add_nc_u32 v171, 0, v36
	v_mov_b32_e32 v23, v25
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
	v_or_b32_e32 v151, s92, v129
	v_or_b32_e32 v152, s92, v130
	v_or_b32_e32 v153, s92, v131
	v_or_b32_e32 v154, s92, v132
	v_or_b32_e32 v155, s92, v133
	v_or_b32_e32 v156, s92, v134
	v_or_b32_e32 v157, s92, v135
	v_or_b32_e32 v158, s92, v136
	v_or_b32_e32 v159, s92, v137
	v_or_b32_e32 v160, s92, v138
	v_or_b32_e32 v161, s92, v139
	v_or_b32_e32 v162, s92, v140
	v_or_b32_e32 v163, s92, v141
	v_or_b32_e32 v164, s92, v142
	v_or_b32_e32 v165, s92, v143
	v_or_b32_e32 v166, s92, v144
	v_or_b32_e32 v167, s92, v145
	v_mov_b32_e32 v150, v25
	s_mov_b32 s68, 0
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s95, s78, 4
	s_lshl_b32 s96, s78, 5
	s_mul_i32 s97, s78, 48
	s_mov_b32 s98, 0x76543210
	s_mov_b32 s69, s68
	s_mov_b32 s70, s68
	s_mov_b32 s71, s68
	s_mov_b32 s72, s68
	s_mov_b32 s73, s68
	s_mov_b32 s74, s68
	s_mov_b32 s75, s68
	s_mov_b32 s86, s82
	s_mov_b32 s87, s83
	s_mov_b32 s90, s82
	s_mov_b32 s91, s83
	s_and_b32 s89, s11, 0xffff
	s_mov_b32 s84, s14
	s_mov_b32 s88, s10
	s_mov_b32 s80, s8
	s_mov_b32 s81, s9
	s_mov_b32 s85, s15
	.loc	1 664 17                        ; attention.py:664:17
	s_mov_b32 s100, s99
	s_mov_b32 s101, s99
	s_mov_b32 s102, s99
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v173, 16, v46
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 654 30                        ; attention.py:654:30
	v_mov_b32_e32 v174, v173
	v_mov_b32_e32 v175, v173
	v_mov_b32_e32 v176, v173
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 633 32                        ; attention.py:633:32
	s_add_i32 s0, s93, s92
	v_or_b32_e32 v43, s92, v113
	v_mad_u64_u32 v[44:45], null, s0, s79, v[100:101]
	v_mad_u64_u32 v[45:46], null, s0, s78, v[109:110]
	v_or_b32_e32 v47, s92, v115
	v_or_b32_e32 v48, s92, v116
	v_or_b32_e32 v49, s92, v117
	v_or_b32_e32 v50, s92, v118
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v207, v43, s93, 1
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e64 v43, 0x80000000, v44, s4
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v208, v47, s93, 1
	v_add_lshl_u32 v209, v48, s93, 1
	v_add_lshl_u32 v210, v49, s93, 1
	v_add_lshl_u32 v211, v50, s93, 1
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v48, v45, s95, 1
	v_add_lshl_u32 v49, v45, s96, 1
	v_add_lshl_u32 v50, v45, s97, 1
	v_lshlrev_b32_e32 v47, 1, v45
	.loc	1 634 32                        ; attention.py:634:32
	buffer_load_b128 v[43:46], v43, s[80:83], 0 offen
	v_add_nc_u32_e32 v41, 0, v148
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v33, s68 :: v_dual_add_nc_u32 v42, 0, v149
	v_or_b32_e32 v51, s92, v119
	v_or_b32_e32 v52, s92, v120
	v_or_b32_e32 v57, s92, v124
	v_or_b32_e32 v58, s92, v125
	v_or_b32_e32 v59, s92, v126
	v_or_b32_e32 v60, s92, v127
	v_or_b32_e32 v61, s92, v128
	v_mov_b32_e32 v34, s69
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v212, v51, s93, 1
	v_add_lshl_u32 v213, v52, s93, 1
	v_add_lshl_u32 v216, v57, s93, 1
	v_add_lshl_u32 v217, v58, s93, 1
	v_add_lshl_u32 v218, v59, s93, 1
	v_add_lshl_u32 v219, v60, s93, 1
	v_add_lshl_u32 v220, v61, s93, 1
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 694 30                        ; attention.py:694:30
	v_dual_cndmask_b32 v221, 0x80000000, v49 :: v_dual_cndmask_b32 v222, 0x80000000, v50
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v35, s70 :: v_dual_mov_b32 v36, s71
	v_dual_mov_b32 v37, s72 :: v_dual_mov_b32 v38, s73
	v_dual_mov_b32 v39, s74 :: v_dual_mov_b32 v40, s75
	v_or_b32_e32 v54, s92, v122
	v_or_b32_e32 v55, s92, v123
	v_or_b32_e32 v53, s92, v121
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v94, v151, s93, 1
	v_add_lshl_u32 v177, v152, s93, 1
	v_add_lshl_u32 v214, v54, s93, 1
	v_add_lshl_u32 v215, v55, s93, 1
	.loc	1 694 30                        ; attention.py:694:30
	v_dual_cndmask_b32 v54, 0x80000000, v47 :: v_dual_cndmask_b32 v55, 0x80000000, v48
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v53, v53, s93, 1
	v_add_lshl_u32 v192, v153, s93, 1
	v_add_lshl_u32 v193, v154, s93, 1
	v_add_lshl_u32 v194, v155, s93, 1
	v_add_lshl_u32 v195, v156, s93, 1
	v_add_lshl_u32 v196, v157, s93, 1
	v_add_lshl_u32 v197, v158, s93, 1
	v_add_lshl_u32 v198, v159, s93, 1
	v_add_lshl_u32 v199, v160, s93, 1
	v_add_lshl_u32 v200, v161, s93, 1
	v_add_lshl_u32 v201, v162, s93, 1
	v_add_lshl_u32 v202, v163, s93, 1
	v_add_lshl_u32 v203, v164, s93, 1
	v_add_lshl_u32 v204, v165, s93, 1
	v_add_lshl_u32 v205, v166, s93, 1
	v_add_lshl_u32 v206, v167, s93, 1
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v41, v[43:44]
	ds_store_b64 v169, v[45:46]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[49:52], v42 offset1:1
	ds_load_2addr_stride64_b64 v[57:60], v42 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[61:64], v170 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[49:50], v[107:108], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[70:77], v[51:52], v[107:108], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[78:85], v[57:58], v[107:108], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[86:93], v[59:60], v[107:108], v[33:40] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[33:36], v170 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[37:40], v171 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[61:62], v[105:106], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[70:77], v[63:64], v[105:106], v[70:77] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[78:85], v[33:34], v[105:106], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[86:93], v[35:36], v[105:106], v[86:93] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[33:36], v171 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[37:38], v[103:104], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[70:77], v[39:40], v[103:104], v[70:77] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[37:40], v172 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[78:85], v[33:34], v[103:104], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[86:93], v[35:36], v[103:104], v[86:93] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[33:36], v172 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[37:38], v[101:102], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[70:77], v[39:40], v[101:102], v[70:77] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v95, v43
	v_cvt_f32_i32_e32 v63, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v64, v42
	v_cvt_f32_i32_e32 v65, v41
	v_cvt_f32_i32_e32 v66, v46
	v_cvt_f32_i32_e32 v67, v45
	v_cvt_f32_i32_e32 v68, v48
	v_cvt_f32_i32_e32 v69, v47
	v_cvt_f32_i32_e32 v97, v74
	v_cvt_f32_i32_e32 v98, v73
	v_cvt_f32_i32_e32 v99, v72
	v_cvt_f32_i32_e32 v178, v71
	v_cvt_f32_i32_e32 v179, v76
	v_cvt_f32_i32_e32 v180, v75
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[78:85], v[33:34], v[101:102], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[86:93], v[35:36], v[101:102], v[86:93] neg_lo:[1,1,0]
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v96, v77
	v_cvt_f32_i32_e32 v71, v70
	v_mul_f32_e32 v98, v175, v98
	v_cvt_f32_i32_e32 v181, v78
	v_cvt_f32_i32_e32 v185, v83
	v_cvt_f32_i32_e32 v186, v82
	v_cvt_f32_i32_e32 v187, v81
	v_cvt_f32_i32_e32 v188, v80
	v_cvt_f32_i32_e32 v183, v85
	v_cvt_f32_i32_e32 v184, v84
	v_cvt_f32_i32_e32 v182, v79
	v_cvt_f32_i32_e32 v189, v87
	v_cvt_f32_i32_e32 v190, v86
	v_cvt_f32_i32_e32 v72, v91
	v_cvt_f32_i32_e32 v73, v92
	v_cvt_f32_i32_e32 v74, v90
	v_cvt_f32_i32_e32 v75, v89
	v_cvt_f32_i32_e32 v191, v88
	v_cvt_f32_i32_e32 v77, v93
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x2
	buffer_load_b128 v[41:44], v54, s[88:91], 0 offen
	buffer_load_b128 v[45:48], v55, s[88:91], 0 offen
	buffer_load_b128 v[37:40], v221, s[88:91], 0 offen
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x1f
	buffer_load_u16 v49, v207, s[84:87], 0 offen
	buffer_load_u16 v50, v208, s[84:87], 0 offen
	buffer_load_u16 v70, v209, s[84:87], 0 offen
	buffer_load_u16 v57, v210, s[84:87], 0 offen
	buffer_load_u16 v51, v211, s[84:87], 0 offen
	buffer_load_u16 v54, v212, s[84:87], 0 offen
	buffer_load_u16 v52, v213, s[84:87], 0 offen
	buffer_load_u16 v55, v53, s[84:87], 0 offen
	buffer_load_u16 v53, v214, s[84:87], 0 offen
	buffer_load_u16 v76, v215, s[84:87], 0 offen
	buffer_load_u16 v78, v216, s[84:87], 0 offen
	buffer_load_u16 v82, v217, s[84:87], 0 offen
	buffer_load_u16 v85, v218, s[84:87], 0 offen
	buffer_load_u16 v79, v219, s[84:87], 0 offen
	buffer_load_u16 v83, v220, s[84:87], 0 offen
	buffer_load_u16 v80, v94, s[84:87], 0 offen
	buffer_load_u16 v84, v177, s[84:87], 0 offen
	buffer_load_u16 v81, v192, s[84:87], 0 offen
	buffer_load_u16 v86, v193, s[84:87], 0 offen
	buffer_load_u16 v88, v194, s[84:87], 0 offen
	buffer_load_u16 v91, v195, s[84:87], 0 offen
	buffer_load_u16 v93, v196, s[84:87], 0 offen
	buffer_load_u16 v87, v197, s[84:87], 0 offen
	buffer_load_u16 v89, v198, s[84:87], 0 offen
	buffer_load_u16 v92, v199, s[84:87], 0 offen
	buffer_load_u16 v94, v200, s[84:87], 0 offen
	buffer_load_u16 v90, v201, s[84:87], 0 offen
	buffer_load_u16 v58, v202, s[84:87], 0 offen
	buffer_load_u16 v59, v203, s[84:87], 0 offen
	buffer_load_u16 v61, v204, s[84:87], 0 offen
	buffer_load_u16 v62, v205, s[84:87], 0 offen
	buffer_load_u16 v60, v206, s[84:87], 0 offen
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[33:36], v222, s[88:91], 0 offen
	v_add_nc_u32_e32 v192, 0, v146
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v67, v173, v67 :: v_dual_mul_f32 v72, v175, v72
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v177.h, 0
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(35)
	ds_store_b128 v192, v[41:44]
	s_waitcnt vmcnt(34)
	ds_store_b128 v192, v[45:48] offset:2048
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v43, s93, v138
	v_or_b32_e32 v44, s93, v137
	v_or_b32_e32 v41, s93, v140
	v_or_b32_e32 v42, s93, v139
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(33)
	ds_store_b128 v192, v[37:40] offset:4096
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s7, v43, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s8, v168, v43
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v43, s93, v134
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s9, v44, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s10, v168, v44
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v44, s93, v133
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v47, v176, v189 :: v_dual_mul_f32 v48, v175, v190
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s29, v43, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s30, v168, v43
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v43, s93, v130
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s31, v44, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s33, v168, v44
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v44, s93, v129
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v46, v173, v178 :: v_dual_mul_f32 v179, v174, v179
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s19, v43, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s20, v168, v43
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v43, s93, v126
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s21, v44, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s22, v168, v44
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v44, s93, v125
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v178, v173, v180
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s27, v43, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s28, v168, v43
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v43, s93, v122
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s34, v44, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s35, v168, v44
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v44, s93, v121
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v37, v175, v95 :: v_dual_mul_f32 v64, v174, v64
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s39, v43, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s41, v168, v43
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v43, s93, v118
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s42, v44, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s43, v168, v44
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v44, s93, v117
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v95, v176, v63
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s48, v43, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s49, v168, v43
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v43, s93, v113
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s50, v44, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s51, v168, v44
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v44, s93, v145
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v63, v173, v65
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s56, v43, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s57, v168, v43
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v43, s93, v142
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s58, v44, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s59, v168, v44
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v44, s93, v141
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v65, v175, v69 :: v_dual_mul_f32 v180, v173, v71
	v_mul_f32_e32 v71, v176, v73
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v73, v176, v77 :: v_dual_lshlrev_b32 v94, 16, v94
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v92, 16, v92
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s0, v41, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s1, v168, v41
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v41, s93, v136
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s5, v42, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s6, v168, v42
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v42, s93, v135
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s63, v43, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s65, v168, v43
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s66, v44, v147
	.loc	1 670 21                        ; attention.py:670:21
	v_cmp_ge_i32_e64 s67, v168, v44
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_dual_mul_f32 v39, v176, v185 :: v_dual_mul_f32 v40, v175, v186
	v_dual_mul_f32 v43, v174, v187 :: v_dual_mul_f32 v44, v173, v188
	v_dual_mul_f32 v185, v174, v183 :: v_dual_mul_f32 v186, v173, v184
	v_dual_mul_f32 v184, v175, v191 :: v_dual_mul_f32 v183, v176, v97
	v_mul_f32_e32 v97, v174, v99
	v_dual_mul_f32 v99, v176, v181 :: v_dual_mul_f32 v38, v175, v96
	v_mul_f32_e32 v45, v174, v182
	v_mul_f32_e32 v96, v174, v66
	v_dual_mul_f32 v66, v176, v68 :: v_dual_mul_f32 v69, v174, v74
	v_mul_f32_e32 v68, v173, v75
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(0)
	ds_store_b128 v192, v[33:36] offset:6144
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v36, 16, v93
	v_lshlrev_b32_e32 v182, 16, v89
	v_lshlrev_b32_e32 v89, 16, v83
	v_lshlrev_b32_e32 v83, 16, v84
	v_lshlrev_b32_e32 v75, 16, v81
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v81, v47, v94
	v_dual_mul_f32 v84, v48, v92 :: v_dual_lshlrev_b32 v181, 16, v86
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v187, 16, v87
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s11, v41, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s12, v168, v41
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v41, s93, v132
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s13, v42, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s14, v168, v42
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v42, s93, v131
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v74, 16, v80
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v80, v44, v181
	v_dual_mul_f32 v92, v186, v187 :: v_dual_lshlrev_b32 v87, 16, v85
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v90, 16, v90
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s15, v41, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s16, v168, v41
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v41, s93, v128
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s17, v42, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s18, v168, v42
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v42, s93, v127
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v93, 16, v88
	v_lshlrev_b32_e32 v91, 16, v91
	v_lshlrev_b32_e32 v33, 16, v70
	v_lshlrev_b32_e32 v88, 16, v79
	v_lshlrev_b32_e32 v52, 16, v52
	v_lshlrev_b32_e32 v77, 16, v54
	v_lshlrev_b32_e32 v54, 16, v55
	v_lshlrev_b32_e32 v79, 16, v53
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v87, v183, v87 :: v_dual_mul_f32 v90, v184, v90
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v85, 16, v78
	v_lshlrev_b32_e32 v86, 16, v82
	v_lshlrev_b32_e32 v78, 16, v61
	v_lshlrev_b32_e32 v55, 16, v59
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v59, v39, v36
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v82, 16, v76
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s23, v41, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s24, v168, v41
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v41, s93, v124
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s25, v42, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s26, v168, v42
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v42, s93, v123
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v61, 16, v62
	v_lshlrev_b32_e32 v53, 16, v58
	v_lshlrev_b32_e32 v58, 16, v60
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v62, v43, v93
	v_dual_mul_f32 v60, v40, v91 :: v_dual_mul_f32 v91, v185, v182
	v_mul_f32_e32 v46, v46, v82
	v_dual_mul_f32 v45, v45, v75 :: v_dual_lshlrev_b32 v70, 16, v57
	v_mul_f32_e32 v82, v179, v89
	v_dual_mul_f32 v85, v97, v85 :: v_dual_mul_f32 v86, v98, v86
	v_mul_f32_e32 v83, v99, v83
	v_dual_mul_f32 v38, v38, v74 :: v_dual_lshlrev_b32 v49, 16, v49
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s36, v41, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s37, v168, v41
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v41, s93, v120
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s38, v42, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s40, v168, v42
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v42, s93, v119
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v33, v37, v33 :: v_dual_lshlrev_b32 v76, 16, v51
	v_mul_f32_e32 v37, v95, v70
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v57, 16, v50
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v49, v63, v49
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s44, v41, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s45, v168, v41
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v41, s93, v116
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s46, v42, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s47, v168, v42
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v42, s93, v115
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v88, v178, v88 :: v_dual_mul_f32 v57, v64, v57
	v_mul_f32_e32 v64, v67, v76
	v_dual_mul_f32 v52, v65, v52 :: v_dual_mul_f32 v63, v96, v77
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v45, s100, v45 :: v_dual_mul_f32 v46, s99, v46
	v_mul_f32_e32 v49, s99, v49
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s52, v41, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s53, v168, v41
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v41, s93, v144
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s54, v42, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s55, v168, v42
	.loc	1 671 21 is_stmt 1              ; attention.py:671:21
	s_and_b32 s0, s1, s0
	s_and_b32 s103, s6, s5
	s_and_b32 s1, s8, s7
	s_and_b32 s6, s12, s11
	s_and_b32 s8, s30, s29
	s_and_b32 s11, s18, s17
	s_and_b32 s30, s57, s56
	s_and_b32 s12, s20, s19
	s_and_b32 s19, s22, s21
	s_and_b32 s22, s24, s23
	s_and_b32 s23, s35, s34
	s_and_b32 s11, s2, s11
	s_and_b32 s35, s2, s30
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v42, s93, v143
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v54, v66, v54 :: v_dual_mul_f32 v65, v180, v79
	v_dual_mul_f32 v66, v72, v78 :: v_dual_mul_f32 v55, v69, v55
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v60, s101, v60
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v58, v73, v58
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v67, s101, v90 :: v_dual_mul_f32 v72, s102, v83
	v_dual_mul_f32 v69, s100, v91 :: v_dual_mul_f32 v38, s101, v38
	v_dual_mul_f32 v70, s99, v92 :: v_dual_mul_f32 v53, v68, v53
	v_mul_f32_e32 v62, s100, v62
	v_dual_mul_f32 v68, s101, v84 :: v_dual_mul_f32 v61, v71, v61
	v_dual_mul_f32 v59, s102, v59 :: v_dual_mul_f32 v76, s100, v85
	v_dual_mul_f32 v71, s99, v80 :: v_dual_mul_f32 v74, s102, v87
	v_dual_mul_f32 v73, s99, v88 :: v_dual_mul_f32 v54, s102, v54
	v_dual_mul_f32 v75, s101, v86 :: v_dual_mul_f32 v64, s99, v64
	v_dual_mul_f32 v77, s100, v82 :: v_dual_mul_f32 v52, s101, v52
	v_dual_mul_f32 v37, s102, v37 :: v_dual_mul_f32 v58, s102, v58
	v_dual_mul_f32 v63, s100, v63 :: v_dual_mul_f32 v78, s102, v81
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v195, 0xff800000, v45, s11
	v_cndmask_b32_e64 v45, 0xff800000, v49, s35
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v57, s100, v57
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s60, v41, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s61, v168, v41
	.loc	1 671 21 is_stmt 1              ; attention.py:671:21
	s_and_b32 s5, s10, s9
	s_and_b32 s7, s14, s13
	s_and_b32 s9, s33, s31
	s_and_b32 s20, s26, s25
	s_and_b32 s21, s28, s27
	s_and_b32 s24, s37, s36
	s_and_b32 s25, s40, s38
	s_and_b32 s14, s47, s46
	s_and_b32 s28, s49, s48
	s_and_b32 s27, s51, s50
	s_and_b32 s31, s55, s54
	s_and_b32 s13, s41, s39
	s_and_b32 s26, s45, s44
	s_and_b32 s18, s59, s58
	s_and_b32 s9, s2, s9
	s_and_b32 s12, s2, s12
	s_and_b32 s19, s2, s19
	s_and_b32 s20, s2, s20
	s_and_b32 s21, s2, s21
	s_and_b32 s23, s2, s23
	s_and_b32 s24, s2, s24
	s_and_b32 s25, s2, s25
	s_and_b32 s22, s2, s22
	s_and_b32 s28, s2, s28
	s_and_b32 s27, s2, s27
	s_and_b32 s34, s2, s31
	s_and_b32 s30, s2, s14
	s_and_b32 s31, s2, s26
	s_and_b32 s26, s2, s13
	s_and_b32 s13, s2, s18
	s_and_b32 s18, s2, s103
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s62, v42, v147
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s64, v168, v42
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v42.h, v177.h
	v_mov_b16_e64 v200.h, v177.h
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v33, s101, v33 :: v_dual_mul_f32 v66, s101, v66
	v_mul_f32_e32 v65, s99, v65
	v_mul_f32_e32 v61, s102, v61
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v179, 0xff800000, v78, s18
	v_cndmask_b32_e64 v192, 0xff800000, v62, s9
	v_cndmask_b32_e64 v77, 0xff800000, v77, s22
	v_cndmask_b32_e64 v78, 0xff800000, v73, s20
	v_cndmask_b32_e64 v194, 0xff800000, v72, s12
	v_cndmask_b32_e64 v79, 0xff800000, v38, s19
	v_cndmask_b32_e64 v81, 0xff800000, v75, s23
	v_cndmask_b32_e64 v82, 0xff800000, v76, s24
	v_cndmask_b32_e64 v83, 0xff800000, v46, s25
	v_cndmask_b32_e64 v80, 0xff800000, v74, s21
	v_cndmask_b32_e64 v62, 0xff800000, v63, s30
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v55, s100, v55
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v63, 0xff800000, v64, s28
	v_cndmask_b32_e64 v38, 0xff800000, v57, s34
	v_cndmask_b32_e64 v37, 0xff800000, v37, s27
	v_cndmask_b32_e64 v64, 0xff800000, v52, s31
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v53, s99, v53
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s10, s16, s15
	s_and_b32 s33, s53, s52
	s_and_b32 s29, s43, s42
	s_and_b32 s16, s61, s60
	s_and_b32 s15, s65, s63
	s_and_b32 s17, s67, s66
	s_and_b32 s0, s2, s0
	s_and_b32 s1, s2, s1
	s_and_b32 s5, s2, s5
	s_and_b32 s6, s2, s6
	s_and_b32 s7, s2, s7
	s_and_b32 s8, s2, s8
	s_and_b32 s10, s2, s10
	s_and_b32 s33, s2, s33
	s_and_b32 s29, s2, s29
	s_and_b32 s15, s2, s15
	s_and_b32 s17, s2, s17
	s_and_b32 s16, s2, s16
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v180, 0xff800000, v68, s1
	v_cndmask_b32_e64 v188, 0xff800000, v69, s5
	v_cndmask_b32_e64 v189, 0xff800000, v70, s6
	v_cndmask_b32_e64 v190, 0xff800000, v60, s8
	v_cndmask_b32_e64 v193, 0xff800000, v71, s10
	v_cndmask_b32_e64 v191, 0xff800000, v59, s7
	v_cndmask_b32_e64 v181, 0xff800000, v67, s0
	v_cndmask_b32_e64 v33, 0xff800000, v33, s33
	v_cndmask_b32_e64 v85, 0xff800000, v65, s26
	v_cndmask_b32_e64 v57, 0xff800000, v54, s29
	v_cndmask_b32_e64 v182, 0xff800000, v61, s16
	v_cndmask_b32_e64 v184, 0xff800000, v55, s15
	v_cndmask_b32_e64 v186, 0xff800000, v53, s17
	v_cndmask_b32_e64 v183, 0xff800000, v58, s13
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v53, v79, v194, v195
	v_max3_f32 v54, v83, v82, v81
	v_max3_f32 v55, v80, v78, v77
	v_max_f32_e32 v58, v45, v38
	v_max3_f32 v59, v37, v63, v62
.Ltmp2:
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s36, s64, s62
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v46, v193, v192, v190
.Ltmp4:
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s14, s2, s36
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v49, v191, v189, v188
.Ltmp6:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v185, 0xff800000, v66, s14
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v52, v180, v179, v181
	v_max3_f32 v60, v64, v57, v85
	v_max_f32_e32 v61, v186, v184
	v_max_f32_e32 v65, v182, v183
	v_max3_f32 v53, v54, v55, v53
	v_max3_f32 v54, v58, v33, v59
	v_max3_f32 v46, v46, v49, v52
.Ltmp8:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v41.h, v177.h
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v49, v61, v185, v65
.Ltmp10:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v52, v54, v60, v53
.Ltmp12:
	.loc	1 694 30                        ; attention.py:694:30
	s_barrier
	ds_load_u16_d16 v34, v0 offset:256
	ds_load_u16_d16 v35, v0 offset:512
	ds_load_u16_d16 v43, v0 offset:576
	ds_load_u16_d16 v36, v0 offset:768
	ds_load_u16_d16 v44, v0 offset:832
	ds_load_u16_d16 v39, v0 offset:1536
	ds_load_u16_d16 v47, v0 offset:1600
	ds_load_u16_d16 v40, v0 offset:1792
	ds_load_u16_d16 v48, v0 offset:1856
	ds_load_u16_d16 v51, v0 offset:608
	ds_load_u16_d16 v50, v0 offset:352
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v46, v52, v46, v49
.Ltmp14:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v201.h, v177.h
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v76, v0 offset:2080
	ds_load_u16_d16 v84, v0 offset:2144
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s93, s93, 64
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v49, v46, s98, 0xfedcba98 op_sel:[1,0]
.Ltmp16:
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s93, s94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v178, v56, v46, v49
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v38, v38, v178
	v_sub_f32_e32 v33, v33, v178
	v_sub_f32_e32 v37, v37, v178
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v65, v56, v178
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v62, v62, v178
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v37, v37
	.loc	1 689 61 is_stmt 1              ; attention.py:689:61
	v_exp_f32_e32 v67, v65
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v62, v62
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v64, v64, v178
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v197, 0, v38, s34
	v_cndmask_b32_e64 v198, 0, v33, s33
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v199, 0, v37, s27
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v64, v64
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v203, 0, v62, s30
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v177.l, v197.h
	v_cmp_o_f32_e64 s27, v197, v197
	v_mov_b16_e64 v42.l, v198.h
	v_cmp_o_f32_e64 s34, v199, v199
	v_and_b32_e32 v33, 1, v177
	v_mov_b16_e64 v177.l, v199.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v38, 1, v42
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v204, 0, v64, s31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v33, v197, v33, 0x7fff
	v_add3_u32 v38, v198, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v201.l, v204.h
	v_cmp_o_f32_e64 s31, v204, v204
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s27
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s27, 0xff800000, v56
	v_cndmask_b32_e64 v187, 0, v67, s27
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v45, v45, v178
	v_sub_f32_e32 v63, v63, v178
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v57, v57, v178 :: v_dual_mul_f32 v24, v24, v187
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v26, v26, v187
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v45, v45
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v22, v22, v187
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v63, v63
	v_exp_f32_e32 v57, v57
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v18, v18, v187
	v_mul_f32_e32 v20, v20, v187
	v_mul_f32_e32 v12, v12, v187
	v_mul_f32_e32 v25, v25, v187
	v_mul_f32_e32 v27, v27, v187
	v_mul_f32_e32 v28, v28, v187
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v196, 0, v45, s35
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s35, v198, v198
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v202, 0, v63, s28
	v_cndmask_b32_e64 v205, 0, v57, s29
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s28, v203, v203
	v_mov_b16_e64 v41.l, v196.h
	v_cmp_o_f32_e64 s33, v196, v196
	v_mov_b16_e64 v200.l, v202.h
	v_cmp_o_f32_e64 s29, v202, v202
	v_and_b32_e32 v57, 1, v201
	v_and_b32_e32 v37, 1, v41
	v_and_b32_e32 v41, 1, v177
	v_mov_b16_e64 v177.l, v203.h
	v_and_b32_e32 v56, 1, v200
	v_cmp_o_f32_e64 s30, v205, v205
	v_add3_u32 v37, v196, v37, 0x7fff
	v_add3_u32 v41, v199, v41, 0x7fff
	v_and_b32_e32 v62, 1, v177
	v_add3_u32 v56, v202, v56, 0x7fff
	v_mov_b16_e64 v177.l, v205.h
	v_cndmask_b16 v33.l, 0x7fff, v37.h, s33
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s35
	v_add3_u32 v62, v203, v62, 0x7fff
	v_cndmask_b16 v37.h, 0x7fff, v41.h, s34
	v_cndmask_b16 v56.l, 0x7fff, v56.h, s29
	v_permlanex16_b32 v38, v33, s98, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v57, v204, v57, 0x7fff
	v_cndmask_b16 v56.h, 0x7fff, v62.h, s28
	v_and_b32_e32 v62, 1, v177
	v_permlanex16_b32 v41, v37, s98, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v58, v38, v33, v110
	v_perm_b32 v59, v38, v33, v112
	v_cndmask_b16 v57.l, 0x7fff, v57.h, s31
	v_add3_u32 v62, v205, v62, 0x7fff
	v_perm_b32 v60, v41, v37, v110
	v_perm_b32 v61, v41, v37, v112
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v69, v0 offset:288
	ds_load_u16_d16 v37, v0 offset:1024
	ds_load_u16_d16 v45, v0 offset:1088
	ds_load_u16_d16 v38, v0 offset:1280
	ds_load_u16_d16 v46, v0 offset:1344
	ds_load_u16_d16 v33, v0
	ds_load_u16_d16 v68, v0 offset:32
	ds_load_u16_d16 v41, v0 offset:64
	ds_load_u16_d16 v42, v0 offset:320
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v50, v0 offset:480
	ds_load_u16_d16 v49, v0 offset:96
	ds_load_u16_d16_hi v34, v0 offset:384
	ds_load_u16_d16_hi v35, v0 offset:640
	ds_load_u16_d16_hi v43, v0 offset:704
	ds_load_u16_d16 v70, v0 offset:544
	ds_load_u16_d16_hi v47, v0 offset:1728
	ds_load_u16_d16_hi v40, v0 offset:1920
	ds_load_u16_d16_hi v48, v0 offset:1984
	ds_load_u16_d16_hi v36, v0 offset:896
	ds_load_u16_d16_hi v44, v0 offset:960
	ds_load_u16_d16 v52, v0 offset:864
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v63, v56, s98, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v57.h, 0x7fff, v62.h, s30
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v37, v0 offset:1152
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v45, v0 offset:1216
	ds_load_u16_d16 v53, v0 offset:1120
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v38, v0 offset:1408
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v46, v0 offset:1472
	ds_load_u16_d16 v54, v0 offset:1376
	ds_load_u16_d16_hi v39, v0 offset:1664
	ds_load_u16_d16 v55, v0 offset:1632
	ds_load_u16_d16 v71, v0 offset:800
	ds_load_u16_d16 v72, v0 offset:1056
	ds_load_u16_d16 v73, v0 offset:1312
	ds_load_u16_d16 v74, v0 offset:1568
	ds_load_u16_d16 v75, v0 offset:1824
	ds_load_u16_d16 v67, v0 offset:2368
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v70, v0 offset:672
	ds_load_u16_d16_hi v51, v0 offset:736
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v62, v63, v56, v110
	v_perm_b32 v63, v63, v56, v112
	v_permlanex16_b32 v56, v57, s98, 0xfedcba98 op_sel:[1,0]
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v29, v29, v187
	v_mul_f32_e32 v30, v30, v187
	v_mul_f32_e32 v31, v31, v187
	v_mul_f32_e32 v32, v32, v187
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v64, v56, v57, v110
	v_perm_b32 v65, v56, v57, v112
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v57, v0 offset:2048
	ds_load_u16_d16 v66, v0 offset:2112
	ds_load_u16_d16 v56, v0 offset:1888
	ds_load_u16_d16_hi v33, v0 offset:128
	ds_load_u16_d16_hi v68, v0 offset:160
	ds_load_u16_d16_hi v41, v0 offset:192
	ds_load_u16_d16_hi v49, v0 offset:224
	ds_load_u16_d16_hi v69, v0 offset:416
	ds_load_u16_d16_hi v42, v0 offset:448
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v71, v0 offset:928
	ds_load_u16_d16_hi v52, v0 offset:992
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v72, v0 offset:1184
	ds_load_u16_d16_hi v53, v0 offset:1248
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v73, v0 offset:1440
	ds_load_u16_d16_hi v54, v0 offset:1504
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v74, v0 offset:1696
	ds_load_u16_d16_hi v55, v0 offset:1760
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v75, v0 offset:1952
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v56, v0 offset:2016
	ds_load_u16_d16_hi v66, v0 offset:2240
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[33:40], v[58:65], v[25:32]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v36, v83, v178
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v14, v14, v187 :: v_dual_sub_f32 v35, v85, v178
	v_dual_mul_f32 v17, v17, v187 :: v_dual_sub_f32 v38, v79, v178
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v36, v36
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v19, v19, v187
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v21, v21, v187
	v_mul_f32_e32 v9, v9, v187
	v_mul_f32_e32 v10, v10, v187
	v_mul_f32_e32 v11, v11, v187
	v_mul_f32_e32 v13, v13, v187
	v_mul_f32_e32 v15, v15, v187
	v_mul_f32_e32 v1, v1, v187
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v208, 0, v36, s25
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v23, v23, v187
	v_mul_f32_e32 v3, v3, v187
	v_mul_f32_e32 v4, v4, v187
	v_mul_f32_e32 v5, v5, v187
	v_mul_f32_e32 v6, v6, v187
	v_mul_f32_e32 v7, v7, v187
	v_dual_mul_f32 v8, v8, v187 :: v_dual_sub_f32 v37, v77, v178
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v33.h, v177.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v16, v16, v187
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v177.l, v208.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v2, v2, v187
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[68:75], v[58:65], v[17:24]
	.loc	1 700 30 is_stmt 0              ; attention.py:700:30
	v_cmp_o_f32_e64 s25, v208, v208
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[41:48], v[58:65], v[9:16]
	.loc	1 690 62 is_stmt 1              ; attention.py:690:62
	v_sub_f32_e32 v36, v81, v178
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[49:56], v[58:65], v[1:8]
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v35, s26
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v35, 1, v177
	v_mov_b16_e64 v34.h, v177.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v37, v37
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v33.l, v65.h
	v_cmp_o_f32_e64 s26, v65, v65
	v_add3_u32 v35, v208, v35, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v38, v38
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v72, v0 offset:3648
	ds_load_u16_d16 v64, v0 offset:3840
	ds_load_u16_d16 v73, v0 offset:3904
	ds_load_u16_d16 v58, v0 offset:2304
	ds_load_u16_d16 v59, v0 offset:2560
	ds_load_u16_d16 v68, v0 offset:2624
	ds_load_u16_d16 v60, v0 offset:2816
	ds_load_u16_d16 v69, v0 offset:2880
	ds_load_u16_d16 v61, v0 offset:3072
	ds_load_u16_d16 v70, v0 offset:3136
	ds_load_u16_d16 v62, v0 offset:3328
	ds_load_u16_d16 v71, v0 offset:3392
	ds_load_u16_d16 v63, v0 offset:3584
	ds_load_u16_d16_hi v57, v0 offset:2176
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v33, 1, v33
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v72, v0 offset:3776
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v64, v0 offset:3968
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v73, v0 offset:4032
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v58, v0 offset:2432
	ds_load_u16_d16_hi v67, v0 offset:2496
	ds_load_u16_d16 v85, v0 offset:2400
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v59, v0 offset:2688
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v68, v0 offset:2752
	ds_load_u16_d16 v86, v0 offset:2656
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v60, v0 offset:2944
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v69, v0 offset:3008
	ds_load_u16_d16 v87, v0 offset:2912
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v61, v0 offset:3200
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v70, v0 offset:3264
	ds_load_u16_d16 v88, v0 offset:3168
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v62, v0 offset:3456
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v71, v0 offset:3520
	ds_load_u16_d16 v89, v0 offset:3424
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v63, v0 offset:3712
	ds_load_u16_d16 v90, v0 offset:3680
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v33, v65, v33, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v75, 0, v36, s23
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v36, v78, v178
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v206, 0, v37, s22
	v_cndmask_b32_e64 v207, 0, v38, s19
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s26
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s25
	v_mov_b16_e64 v177.l, v75.h
	v_cmp_o_f32_e64 s23, v75, v75
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v36, v36
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s22, v206, v206
	v_permlanex16_b32 v35, v33, s98, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_perm_b32 v92, v35, v33, v110
	v_perm_b32 v93, v35, v33, v112
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v35, v82, v178
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v201, 0, v36, s20
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v33.h, v177.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s19, v201, v201
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v74, 0, v35, s24
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v35, 1, v177
	v_mov_b16_e64 v177.l, v201.h
	v_mov_b16_e32 v34.l, v74.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s24, v74, v74
	v_add3_u32 v35, v75, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v34, v74, v34, 0x7fff
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v74, v74, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s24
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s23
	v_permlanex16_b32 v35, v34, s98, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_perm_b32 v94, v35, v34, v110
	v_perm_b32 v95, v35, v34, v112
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v35, v80, v178
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v34.h, v177.h
	v_mov_b16_e64 v34.l, v206.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v34, v206, v34, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v200, 0, v35, s21
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v35, 1, v177
	v_mov_b16_e64 v177.l, v207.h
	v_cmp_o_f32_e64 s21, v207, v207
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s22
	v_mov_b16_e64 v33.l, v200.h
	v_cmp_o_f32_e64 s20, v200, v200
	v_add3_u32 v35, v201, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v33, 1, v33
	v_add3_u32 v33, v200, v33, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s20
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s19
	v_and_b32_e32 v35, 1, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v207, v35, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v35, v33, s98, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v96, v35, v33, v110
	v_perm_b32 v97, v35, v33, v112
	s_delay_alu instid0(VALU_DEP_4)
	v_permlanex16_b32 v33, v34, s98, 0xfedcba98 op_sel:[1,0]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v50, v0 offset:4352
	ds_load_u16_d16 v48, v0 offset:5920
	ds_load_u16_d16 v51, v0 offset:4608
	ds_load_u16_d16 v42, v0 offset:4384
	ds_load_u16_d16 v35, v0 offset:4672
	ds_load_u16_d16 v52, v0 offset:4864
	ds_load_u16_d16 v43, v0 offset:4640
	ds_load_u16_d16 v36, v0 offset:4928
	ds_load_u16_d16 v53, v0 offset:5120
	ds_load_u16_d16 v44, v0 offset:4896
	ds_load_u16_d16 v37, v0 offset:5184
	ds_load_u16_d16 v54, v0 offset:5376
	ds_load_u16_d16 v45, v0 offset:5152
	ds_load_u16_d16 v38, v0 offset:5440
	ds_load_u16_d16 v55, v0 offset:5632
	ds_load_u16_d16 v46, v0 offset:5408
	ds_load_u16_d16 v39, v0 offset:5696
	ds_load_u16_d16 v56, v0 offset:5888
	ds_load_u16_d16 v47, v0 offset:5664
	ds_load_u16_d16 v40, v0 offset:5952
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v98, v33, v34, v110
	v_perm_b32 v99, v33, v34, v112
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v49, v0 offset:4096
	ds_load_u16_d16 v33, v0 offset:4160
	ds_load_u16_d16 v91, v0 offset:3936
	ds_load_u16_d16 v77, v0 offset:2336
	ds_load_u16_d16 v78, v0 offset:2592
	ds_load_u16_d16 v79, v0 offset:2848
	ds_load_u16_d16 v80, v0 offset:3104
	ds_load_u16_d16 v81, v0 offset:3360
	ds_load_u16_d16 v82, v0 offset:3616
	ds_load_u16_d16 v83, v0 offset:3872
	ds_load_u16_d16 v34, v0 offset:4416
	ds_load_u16_d16_hi v76, v0 offset:2208
	ds_load_u16_d16_hi v84, v0 offset:2272
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(34)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[57:64], v[92:99], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v77, v0 offset:2464
	ds_load_u16_d16_hi v85, v0 offset:2528
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v78, v0 offset:2720
	ds_load_u16_d16_hi v86, v0 offset:2784
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v79, v0 offset:2976
	ds_load_u16_d16_hi v87, v0 offset:3040
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v80, v0 offset:3232
	ds_load_u16_d16_hi v88, v0 offset:3296
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v81, v0 offset:3488
	ds_load_u16_d16_hi v89, v0 offset:3552
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v82, v0 offset:3744
	ds_load_u16_d16_hi v90, v0 offset:3808
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v83, v0 offset:4000
	ds_load_u16_d16_hi v91, v0 offset:4064
	ds_load_u16_d16_hi v33, v0 offset:4288
	ds_load_u16_d16 v41, v0 offset:4128
	ds_load_u16_d16 v57, v0 offset:4192
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v60.h, v177.h
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[66:73], v[92:99], v[9:16]
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v63.h, v177.h
	v_mov_b16_e64 v62.h, v177.h
	v_mov_b16_e64 v58.h, v177.h
.Ltmp19:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v70, v202, v203
	v_add_f32_e32 v72, v65, v208
.Ltmp20:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v64.h, v177.h
	v_mov_b16_e64 v68.h, v177.h
	v_mov_b16_e64 v59.h, v177.h
	v_mov_b16_e64 v61.h, v177.h
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v72, v72, v74
.Ltmp22:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v65, v0 offset:6208
	ds_load_u16_d16 v66, v0 offset:6464
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[76:83], v[92:99], v[17:24]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v80, v190, v178
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[84:91], v[92:99], v[1:8]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v85, v179, v178
	v_sub_f32_e32 v86, v181, v178
	v_sub_f32_e32 v76, v194, v178
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v80, v80
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v78, v193, v178
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v85, v85
	v_exp_f32_e32 v86, v86
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v84, v180, v178
	v_sub_f32_e32 v89, v185, v178
	v_sub_f32_e32 v90, v182, v178
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v76, v76
	v_exp_f32_e32 v78, v78
	v_exp_f32_e32 v84, v84
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v80, 0, v80, s8
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v88, v184, v178
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v98, 0, v85, s18
	v_cndmask_b32_e64 v85, 0, v86, s0
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v91, v183, v178
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v60.l, v80.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v77, v195, v178
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v89, v89
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v63.l, v85.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v79, v192, v178 :: v_dual_and_b32 v60, 1, v60
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v77, v77
	v_exp_f32_e32 v90, v90
	v_exp_f32_e32 v88, v88
	s_delay_alu instid0(VALU_DEP_1)
	v_exp_f32_e32 v79, v79
	v_exp_f32_e32 v91, v91
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v76, 0, v76, s12
	v_cndmask_b32_e64 v78, 0, v78, s10
	v_cndmask_b32_e64 v84, 0, v84, s1
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v82, v189, v178
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v60, v80, v60, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v77, 0, v77, s11
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v58.l, v76.h
	v_mov_b16_e32 v62.l, v84.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v79, 0, v79, s9
	v_cndmask_b32_e64 v86, 0, v88, s15
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v177.l, v77.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v87, v186, v178
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v186, 0, v89, s14
.Ltmp23:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v89, v76, v77 :: v_dual_and_b32 v62, 1, v62
	v_add_f32_e32 v71, v204, v205
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp24:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v87, v87
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v75, v200, v201 :: v_dual_and_b32 v58, 1, v58
	v_add_f32_e32 v88, v206, v207
.Ltmp26:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v64.l, v86.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v82, v82
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v59.l, v78.h
	v_add3_u32 v58, v76, v58, 0x7fff
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v75, v75, v88 :: v_dual_add_f32 v88, v86, v186
	s_delay_alu instid0(TRANS32_DEP_2)
.Ltmp28:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v99, 0, v87, s17
	v_cndmask_b32_e64 v87, 0, v90, s16
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v90, v78, v79
	v_mov_b32_e32 v73, v150
	v_dual_add_f32 v67, v196, v197 :: v_dual_add_f32 v70, v70, v71
	v_add_f32_e32 v71, v84, v98
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v89, v89, v90
.Ltmp30:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v83, v188, v178
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v188, 0, v91, s13
.Ltmp31:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v69, v198, v199
	v_add_f32_e32 v74, v85, v99
.Ltmp32:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v68.l, v87.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v81, v191, v178
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v90, v87, v188
.Ltmp34:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v83, v83
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v69, v67, v69
	v_add_f32_e32 v71, v71, v74
.Ltmp36:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v82, 0, v82, s6
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v74, v88, v90
.Ltmp38:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v90, v84, v62, 0x7fff
	v_and_b32_e32 v62, 1, v63
	v_and_b32_e32 v63, 1, v64
	v_and_b32_e32 v64, 1, v68
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v81, v81
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v83, 0, v83, s5
.Ltmp39:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v68, v69, v70
.Ltmp40:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v92, v86, v63, 0x7fff
	v_mov_b16_e32 v61.l, v82.h
	v_and_b32_e32 v59, 1, v59
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v67, v82, v83
.Ltmp42:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s11, v77, v77
	v_add3_u32 v93, v87, v64, 0x7fff
	v_cmp_o_f32_e64 s8, v78, v78
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v81, 0, v81, s7
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s7, v76, v76
	v_and_b32_e32 v61, 1, v61
	v_add3_u32 v59, v78, v59, 0x7fff
	v_cmp_o_f32_e64 s12, v79, v79
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v91, v80, v81
.Ltmp44:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v58.l, 0x7fff, v58.h, s7
	v_cmp_o_f32_e64 s9, v80, v80
	v_cmp_o_f32_e64 s10, v82, v82
	v_add3_u32 v61, v82, v61, 0x7fff
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v91, v91, v67
.Ltmp46:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v76, v0 offset:6656
	ds_load_u16_d16 v67, v0 offset:6720
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s13, v81, v81
	v_cmp_o_f32_e64 s14, v83, v83
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v69, v72, v75
	v_add_f32_e32 v150, v89, v91
.Ltmp48:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v91, v85, v62, 0x7fff
	v_and_b32_e32 v62, 1, v177
	v_mov_b16_e64 v177.l, v79.h
	v_cndmask_b16 v59.l, 0x7fff, v59.h, s8
	v_cndmask_b16 v60.l, 0x7fff, v60.h, s9
	v_cndmask_b16 v61.l, 0x7fff, v61.h, s10
	v_add3_u32 v62, v77, v62, 0x7fff
	v_and_b32_e32 v63, 1, v177
	v_mov_b16_e64 v177.l, v81.h
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v190, v68, v69
.Ltmp50:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s0, v84, v84
	v_cndmask_b16 v58.h, 0x7fff, v62.h, s11
	v_add3_u32 v62, v79, v63, 0x7fff
	v_and_b32_e32 v64, 1, v177
	v_mov_b16_e64 v177.l, v83.h
	v_cmp_o_f32_e64 s1, v85, v85
	v_permlanex16_b32 v68, v58, s98, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v59.h, 0x7fff, v62.h, s12
	v_add3_u32 v62, v81, v64, 0x7fff
	v_and_b32_e32 v63, 1, v177
	v_cmp_o_f32_e64 s5, v86, v86
	v_perm_b32 v82, v68, v58, v110
	v_permlanex16_b32 v64, v59, s98, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v60.h, 0x7fff, v62.h, s13
	v_add3_u32 v63, v83, v63, 0x7fff
	v_perm_b32 v83, v68, v58, v112
	v_cmp_o_f32_e64 s6, v87, v87
	v_perm_b32 v84, v64, v59, v110
	v_permlanex16_b32 v58, v60, s98, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v61.h, 0x7fff, v63.h, s14
	v_perm_b32 v85, v64, v59, v112
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v189, v71, v74
.Ltmp52:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v177.l, v98.h
	v_perm_b32 v86, v58, v60, v110
	v_permlanex16_b32 v59, v61, s98, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v87, v58, v60, v112
	v_cmp_o_f32_e64 s7, v98, v98
	v_cmp_o_f32_e64 s8, v99, v99
	v_cmp_o_f32_e64 s9, v186, v186
	v_perm_b32 v88, v59, v61, v110
	v_perm_b32 v89, v59, v61, v112
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v90, v0 offset:6240
	ds_load_u16_d16 v75, v0 offset:6400
	ds_load_u16_d16 v77, v0 offset:6912
	ds_load_u16_d16 v68, v0 offset:6976
	ds_load_u16_d16 v92, v0 offset:6752
	ds_load_u16_d16 v78, v0 offset:7168
	ds_load_u16_d16 v69, v0 offset:7232
	ds_load_u16_d16 v93, v0 offset:7008
	ds_load_u16_d16 v79, v0 offset:7424
	ds_load_u16_d16 v70, v0 offset:7488
	ds_load_u16_d16 v94, v0 offset:7264
	ds_load_u16_d16 v80, v0 offset:7680
	ds_load_u16_d16 v71, v0 offset:7744
	ds_load_u16_d16 v95, v0 offset:7520
	ds_load_u16_d16 v81, v0 offset:7936
	ds_load_u16_d16 v72, v0 offset:8000
	ds_load_u16_d16 v96, v0 offset:7776
	ds_load_u16_d16 v97, v0 offset:8032
	ds_load_u16_d16 v91, v0 offset:6496
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v66, v0 offset:6592
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v76, v0 offset:6784
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v67, v0 offset:6848
	ds_load_u16_d16_hi v49, v0 offset:4224
	ds_load_u16_d16_hi v34, v0 offset:4544
	ds_load_u16_d16_hi v51, v0 offset:4736
	ds_load_u16_d16_hi v35, v0 offset:4800
	ds_load_u16_d16_hi v52, v0 offset:4992
	ds_load_u16_d16_hi v36, v0 offset:5056
	ds_load_u16_d16_hi v53, v0 offset:5248
	ds_load_u16_d16_hi v37, v0 offset:5312
	ds_load_u16_d16_hi v54, v0 offset:5504
	ds_load_u16_d16_hi v38, v0 offset:5568
	ds_load_u16_d16_hi v55, v0 offset:5760
	ds_load_u16_d16_hi v39, v0 offset:5824
	ds_load_u16_d16_hi v56, v0 offset:6016
	ds_load_u16_d16_hi v50, v0 offset:4480
	ds_load_u16_d16 v58, v0 offset:4448
	ds_load_u16_d16 v59, v0 offset:4704
	ds_load_u16_d16 v60, v0 offset:4960
	ds_load_u16_d16 v61, v0 offset:5216
	ds_load_u16_d16 v62, v0 offset:5472
	ds_load_u16_d16 v63, v0 offset:5728
	ds_load_u16_d16_hi v40, v0 offset:6080
	ds_load_u16_d16 v74, v0 offset:6144
	ds_load_u16_d16 v64, v0 offset:5984
	ds_load_u16_d16 v180, v0 offset:6688
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v77, v0 offset:7040
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v68, v0 offset:7104
	ds_load_u16_d16 v181, v0 offset:6944
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v78, v0 offset:7296
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v69, v0 offset:7360
	ds_load_u16_d16 v182, v0 offset:7200
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v79, v0 offset:7552
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v70, v0 offset:7616
	ds_load_u16_d16 v183, v0 offset:7456
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v80, v0 offset:7808
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v71, v0 offset:7872
	ds_load_u16_d16 v184, v0 offset:7712
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v81, v0 offset:8064
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v72, v0 offset:8128
	ds_load_u16_d16 v185, v0 offset:7968
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s10, v188, v188
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(25)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[49:56], v[82:89], v[25:32]
.Ltmp53:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v49, v150, v189
	v_mov_b32_e32 v56, v178
.Ltmp54:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v41, v0 offset:4256
	ds_load_u16_d16_hi v57, v0 offset:4320
	ds_load_u16_d16_hi v42, v0 offset:4512
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v58, v0 offset:4576
	ds_load_u16_d16_hi v43, v0 offset:4768
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v59, v0 offset:4832
	ds_load_u16_d16_hi v44, v0 offset:5024
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v60, v0 offset:5088
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v74, v0 offset:6272
	ds_load_u16_d16 v178, v0 offset:6176
	ds_load_u16_d16_hi v45, v0 offset:5280
	ds_load_u16_d16_hi v61, v0 offset:5344
	ds_load_u16_d16_hi v46, v0 offset:5536
	ds_load_u16_d16_hi v62, v0 offset:5600
	ds_load_u16_d16_hi v47, v0 offset:5792
	ds_load_u16_d16_hi v63, v0 offset:5856
	ds_load_u16_d16_hi v48, v0 offset:6048
	s_waitcnt lgkmcnt(33)
	ds_load_u16_d16_hi v64, v0 offset:6112
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v49, v190, v49
.Ltmp56:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v50.l, 0x7fff, v90.h, s0
	v_cndmask_b16 v51.l, 0x7fff, v91.h, s1
	v_cndmask_b16 v52.l, 0x7fff, v92.h, s5
	v_cndmask_b16 v53.l, 0x7fff, v93.h, s6
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v54, v49, s98, 0xfedcba98 op_sel:[1,0]
.Ltmp58:
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[82:89], v[9:16]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v150, v49, v54 :: v_dual_and_b32 v49, 1, v177
.Ltmp60:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v177.l, v99.h
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v150, v73, v187
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v49, v98, v49, 0x7fff
	v_and_b32_e32 v54, 1, v177
	v_mov_b16_e64 v177.l, v186.h
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[41:48], v[82:89], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[57:64], v[82:89], v[1:8]
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v50.h, 0x7fff, v49.h, s7
	v_add3_u32 v49, v99, v54, 0x7fff
	v_and_b32_e32 v55, 1, v177
	v_mov_b16_e64 v177.l, v188.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v98, v50, s98, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v51.h, 0x7fff, v49.h, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v49, v186, v55, 0x7fff
	v_and_b32_e32 v54, 1, v177
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16_hi v65, v0 offset:6336
	ds_load_u16_d16_hi v75, v0 offset:6528
	ds_load_u16_d16 v179, v0 offset:6432
	ds_load_u16_d16_hi v178, v0 offset:6304
	ds_load_u16_d16_hi v90, v0 offset:6368
	s_waitcnt lgkmcnt(2)
	ds_load_u16_d16_hi v179, v0 offset:6560
	ds_load_u16_d16_hi v91, v0 offset:6624
	ds_load_u16_d16_hi v180, v0 offset:6816
	ds_load_u16_d16_hi v92, v0 offset:6880
	ds_load_u16_d16_hi v181, v0 offset:7072
	ds_load_u16_d16_hi v93, v0 offset:7136
	ds_load_u16_d16_hi v182, v0 offset:7328
	ds_load_u16_d16_hi v94, v0 offset:7392
	ds_load_u16_d16_hi v183, v0 offset:7584
	ds_load_u16_d16_hi v95, v0 offset:7648
	ds_load_u16_d16_hi v184, v0 offset:7840
	ds_load_u16_d16_hi v96, v0 offset:7904
	ds_load_u16_d16_hi v185, v0 offset:8096
	ds_load_u16_d16_hi v97, v0 offset:8160
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v35, v188, v54, 0x7fff
	v_cndmask_b16 v52.h, 0x7fff, v49.h, s9
	v_permlanex16_b32 v36, v51, s98, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v98, v50, v110
	v_perm_b32 v34, v98, v50, v112
	v_cndmask_b16 v53.h, 0x7fff, v35.h, s10
	v_permlanex16_b32 v38, v52, s98, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v36, v51, v110
	v_perm_b32 v36, v36, v51, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v40, v53, s98, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v38, v52, v110
	v_perm_b32 v38, v38, v52, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_perm_b32 v39, v40, v53, v110
	v_perm_b32 v40, v40, v53, v112
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[74:81], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[178:185], v[33:40], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[65:72], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[90:97], v[33:40], v[1:8]
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v33, v114
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 841 48 is_stmt 1              ; attention.py:841:48
	v_div_scale_f32 v0, null, v150, v150, v25
	v_div_scale_f32 v34, null, v150, v150, v26
	v_div_scale_f32 v35, null, v150, v150, v27
	v_rcp_f32_e32 v36, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v37, v34
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v39, vcc_lo, v25, v150, v25
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v40, s0, v26, v150, v26
	v_div_scale_f32 v43, null, v150, v150, v28
	v_div_scale_f32 v49, s4, v28, v150, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v0, v36, 1.0
	v_fma_f32 v42, -v34, v37, 1.0
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v33, s78, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v44, -v35, v38, 1.0
	.loc	1 846 17                        ; attention.py:846:17
	s_and_b32 s77, s77, 0xffff
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_fmac_f32 v36, v41, v36 :: v_dual_fmac_f32 v37, v42, v37
	v_rcp_f32_e32 v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v41, s1, v27, v150, v27
	v_dual_mul_f32 v44, v39, v36 :: v_dual_mul_f32 v45, v40, v37
	s_mov_b32 s79, 0x31027000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v0, v44, v39
	v_fma_f32 v48, -v34, v45, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v43, v42, 1.0
	v_dual_fmac_f32 v44, v47, v36 :: v_dual_fmac_f32 v45, v48, v37
	v_div_scale_f32 v47, null, v150, v150, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v50, v42
	v_fma_f32 v0, -v0, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v45, v40
	v_rcp_f32_e32 v39, v47
	v_div_scale_f32 v40, null, v150, v150, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v36, v44
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v36, v49, v42
	v_div_fmas_f32 v34, v34, v37, v45
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v0, v150, v25
	v_rcp_f32_e32 v44, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v39, 1.0
	v_div_fixup_f32 v25, v34, v150, v26
	v_div_scale_f32 v34, s5, v29, v150, v29
	v_fma_f32 v37, -v43, v36, v49
	v_fmac_f32_e32 v39, v45, v39
	v_mul_f32_e32 v46, v41, v38
	v_div_scale_f32 v45, null, v150, v150, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v37, v42
	v_div_scale_f32 v37, null, v150, v150, v31
	v_fma_f32 v51, -v35, v46, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v45
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s0, 0, v150
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v46, v51, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v0, 0, v0, s0
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v26, -v35, v46, v41
	v_mul_f32_e32 v41, v34, v39
	v_fma_f32 v35, -v40, v44, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v26, v26, v38, v46
	v_fma_f32 v38, -v43, v36, v49
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v43, s1, v30, v150, v30
	v_div_fixup_f32 v26, v26, v150, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v38, v42, v36
	v_fma_f32 v38, -v47, v41, v34
	s_mov_b32 vcc_lo, s5
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v27, v36, v150, v28
	v_fmac_f32_e32 v41, v38, v39
	v_div_scale_f32 v38, null, v150, v150, v17
	v_div_scale_f32 v36, s4, v31, v150, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v47, v41, v34
	v_rcp_f32_e32 v49, v38
	v_fmac_f32_e32 v44, v35, v44
	v_rcp_f32_e32 v35, v37
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cmp_o_f32_e64 s7, v26, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v42, v43, v44
	v_fma_f32 v28, -v40, v42, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v37, v35, 1.0
	v_dual_fmac_f32 v42, v28, v44 :: v_dual_fmac_f32 v35, v46, v35
	v_fma_f32 v46, -v45, v48, 1.0
	v_div_fmas_f32 v28, v34, v39, v41
	v_fma_f32 v41, -v38, v49, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v40, v42, v43
	v_dual_mul_f32 v47, v36, v35 :: v_dual_fmac_f32 v48, v46, v48
	v_div_scale_f32 v46, s6, v32, v150, v32
	v_div_scale_f32 v43, null, v150, v150, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v37, v47, v36
	v_mul_f32_e32 v40, v46, v48
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v49, v41, v49
	v_div_fmas_f32 v34, v34, v44, v42
	v_fmac_f32_e32 v47, v39, v35
	v_rcp_f32_e32 v39, v43
	v_fma_f32 v42, -v45, v40, v46
	v_div_scale_f32 v41, s1, v17, v150, v17
	v_div_fixup_f32 v28, v28, v150, v29
	v_div_fixup_f32 v29, v34, v150, v30
	v_fma_f32 v30, -v37, v47, v36
	v_fmac_f32_e32 v40, v42, v48
	v_div_scale_f32 v37, null, v150, v150, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v43, v39, 1.0
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v34, v41, v49
	v_div_fmas_f32 v30, v30, v35, v47
	v_fma_f32 v35, -v45, v40, v46
	v_fmac_f32_e32 v39, v36, v39
	v_rcp_f32_e32 v36, v37
	v_div_scale_f32 v45, null, v150, v150, v20
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v42, -v38, v34, v41
	v_div_scale_f32 v44, s4, v18, v150, v18
	v_div_fmas_f32 v35, v35, v48, v40
	v_rcp_f32_e32 v40, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v42, v49
	v_mul_f32_e32 v42, v44, v39
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v37, v36, 1.0
	v_div_fixup_f32 v30, v30, v150, v31
	v_div_fixup_f32 v31, v35, v150, v32
	v_fma_f32 v32, -v38, v34, v41
	v_fma_f32 v35, -v43, v42, v44
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v38, s5, v19, v150, v19
	v_fma_f32 v41, -v45, v40, 1.0
	v_div_scale_f32 v46, null, v150, v150, v21
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v42, v35, v39
	v_div_fmas_f32 v32, v32, v49, v34
	v_mul_f32_e32 v34, v38, v36
	v_fmac_f32_e32 v40, v41, v40
	v_rcp_f32_e32 v35, v46
	v_div_scale_f32 v41, s1, v20, v150, v20
	v_div_scale_f32 v47, null, v150, v150, v22
	v_div_fixup_f32 v17, v32, v150, v17
	v_fma_f32 v32, -v43, v42, v44
	v_fma_f32 v43, -v37, v34, v38
	v_mul_f32_e32 v44, v41, v40
	v_rcp_f32_e32 v48, v47
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v49, -v46, v35, 1.0
	v_div_fmas_f32 v32, v32, v39, v42
	v_fmac_f32_e32 v34, v43, v36
	v_fma_f32 v39, -v45, v44, v41
	v_div_scale_f32 v42, s4, v21, v150, v21
	v_fmac_f32_e32 v35, v49, v35
	v_div_fixup_f32 v18, v32, v150, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v47, v48, 1.0
	v_fma_f32 v32, -v37, v34, v38
	v_fmac_f32_e32 v44, v39, v40
	v_div_scale_f32 v39, null, v150, v150, v23
	s_mov_b32 vcc_lo, s5
	v_dual_mul_f32 v37, v42, v35 :: v_dual_fmac_f32 v48, v43, v48
	v_div_scale_f32 v38, s6, v22, v150, v22
	v_div_fmas_f32 v32, v32, v36, v34
	v_fma_f32 v34, -v45, v44, v41
	v_rcp_f32_e32 v41, v39
	v_fma_f32 v36, -v46, v37, v42
	v_mul_f32_e32 v43, v38, v48
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v150, v150, v24
	v_div_fmas_f32 v34, v34, v40, v44
	v_fmac_f32_e32 v37, v36, v35
	v_fma_f32 v40, -v47, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v36, v45
	v_fma_f32 v44, -v39, v41, 1.0
	v_div_fixup_f32 v19, v32, v150, v19
	v_div_fixup_f32 v20, v34, v150, v20
	v_fma_f32 v32, -v46, v37, v42
	v_fmac_f32_e32 v43, v40, v48
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v34, s1, v23, v150, v23
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v45, v36, 1.0
	v_div_fmas_f32 v32, v32, v35, v37
	v_fma_f32 v35, -v47, v43, v38
	v_mul_f32_e32 v37, v34, v41
	v_div_scale_f32 v38, null, v150, v150, v9
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v36, v40, v36
	v_div_fmas_f32 v35, v35, v48, v43
	v_rcp_f32_e32 v42, v38
	v_fma_f32 v43, -v39, v37, v34
	v_div_scale_f32 v40, s4, v24, v150, v24
	v_div_scale_f32 v46, null, v150, v150, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v37, v43, v41 :: v_dual_mul_f32 v44, v40, v36
	v_div_fixup_f32 v22, v35, v150, v22
	v_rcp_f32_e32 v35, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v38, v42, 1.0
	v_fma_f32 v34, -v39, v37, v34
	v_div_scale_f32 v39, null, v150, v150, v11
	v_div_fixup_f32 v21, v32, v150, v21
	v_fma_f32 v32, -v45, v44, v40
	v_fmac_f32_e32 v42, v43, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v43, v39
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v47, -v46, v35, 1.0
	v_fmac_f32_e32 v44, v32, v36
	v_div_fmas_f32 v34, v34, v41, v37
	v_div_scale_f32 v41, s1, v10, v150, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v47, v35
	v_fma_f32 v37, -v45, v44, v40
	v_div_scale_f32 v32, s5, v9, v150, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v39, v43, 1.0
	v_div_scale_f32 v48, null, v150, v150, v12
	v_dual_mul_f32 v49, v41, v35 :: v_dual_mul_f32 v40, v32, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, s6, v11, v150, v11
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v50, v48
	v_div_fmas_f32 v36, v37, v36, v44
	v_fma_f32 v37, -v46, v49, v41
	v_mul_f32_e32 v44, v45, v43
	v_fma_f32 v47, -v38, v40, v32
	v_div_fixup_f32 v23, v34, v150, v23
	v_div_fixup_f32 v24, v36, v150, v24
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v39, v44, v45
	v_div_scale_f32 v37, null, v150, v150, v13
	v_fmac_f32_e32 v40, v47, v42
	v_fma_f32 v36, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v32, -v38, v40, v32
	v_fma_f32 v38, -v46, v49, v41
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s4, v12, v150, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v32, v32, v42, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, null, v150, v150, v14
	v_div_fmas_f32 v35, v38, v35, v49
	v_fma_f32 v38, -v39, v44, v45
	v_mul_f32_e32 v39, v36, v50
	v_fma_f32 v41, -v37, v34, 1.0
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v42, v40
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v43, -v48, v39, v36
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s1, v13, v150, v13
	v_div_fixup_f32 v9, v32, v150, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v43, v50
	v_div_fixup_f32 v10, v35, v150, v10
	v_mul_f32_e32 v32, v41, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v36, -v48, v39, v36
	v_div_fixup_f32 v11, v38, v150, v11
	v_fma_f32 v43, -v37, v32, v41
	v_div_scale_f32 v38, null, v150, v150, v15
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s5, v14, v150, v14
	v_div_fmas_f32 v36, v36, v50, v39
	v_fmac_f32_e32 v32, v43, v34
	v_rcp_f32_e32 v44, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v39, v35, v42
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v36, v150, v12
	v_fma_f32 v36, -v37, v32, v41
	v_div_scale_f32 v43, null, v150, v150, v16
	v_fma_f32 v37, -v40, v39, v35
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v32, v36, v34, v32
	v_div_scale_f32 v34, null, v150, v150, v1
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v36, s1, v15, v150, v15
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v150, v150, v2
	v_div_fixup_f32 v13, v32, v150, v13
	v_fma_f32 v35, -v40, v39, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v34, v37, 1.0
	v_mul_f32_e32 v40, v36, v44
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v45, v32, v45
	v_div_scale_f32 v32, s4, v16, v150, v16
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v150, v150, v3
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v32, v45
	v_div_scale_f32 v48, s5, v1, v150, v1
	v_fma_f32 v49, -v41, v47, 1.0
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v32
	v_mul_f32_e32 v51, v48, v37
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s6, v2, v150, v2
	v_div_fixup_f32 v14, v35, v150, v14
	v_fma_f32 v35, -v38, v40, v36
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v32, -v43, v42, v32
	v_fmac_f32_e32 v51, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v150, v3
	v_div_fmas_f32 v35, v35, v44, v40
	v_div_scale_f32 v40, null, v150, v150, v4
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	v_div_fmas_f32 v32, v32, v45, v42
	v_rcp_f32_e32 v42, v40
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v15, v35, v150, v15
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v16, v32, v150, v16
	v_div_fixup_f32 v1, v34, v150, v1
	v_div_scale_f32 v34, null, v150, v150, v5
	v_fmac_f32_e32 v36, v41, v50
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fmas_f32 v37, v37, v47, v38
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v44, null, v150, v150, v8
	v_fma_f32 v32, -v46, v36, v39
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v150, v150, v6
	v_div_fixup_f32 v2, v37, v150, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v32, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v37, null, v150, v150, v7
	v_rcp_f32_e32 v39, v35
	v_div_scale_f32 v38, vcc_lo, v4, v150, v4
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v3, v32, v150, v3
	v_rcp_f32_e32 v46, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v32, -v34, v36, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v47, -v40, v43, v38
	v_fmac_f32_e32 v36, v32, v36
	v_div_scale_f32 v32, s1, v5, v150, v5
	v_fma_f32 v48, -v37, v41, 1.0
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s4, v6, v150, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v49, v32, v36
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s5, v7, v150, v7
	v_fma_f32 v50, -v44, v46, 1.0
	v_fmac_f32_e32 v43, v47, v42
	v_mul_f32_e32 v51, v45, v39
	v_fma_f32 v47, -v34, v49, v32
	v_mul_f32_e32 v52, v48, v41
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s6, v8, v150, v8
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v51, v45
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v52, v48
	v_mul_f32_e32 v53, v50, v46
	v_div_fmas_f32 v38, v38, v42, v43
	v_fmac_f32_e32 v51, v40, v39
	v_fma_f32 v32, -v34, v49, v32
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v34, -v44, v53, v50
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v35, -v35, v51, v45
	v_div_fmas_f32 v32, v32, v36, v49
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v34, -v37, v52, v48
	v_div_fmas_f32 v35, v35, v39, v51
	v_div_fixup_f32 v4, v38, v150, v4
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_bfe_u32 v37, v0, 16, 1
	v_bfe_u32 v38, v25, 16, 1
	v_bfe_u32 v39, v26, 16, 1
	.loc	1 841 48                        ; attention.py:841:48
	s_mov_b32 vcc_lo, s5
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s5, v0, v0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s6
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v37, v0, v37, 0x7fff
	v_add3_u32 v0, v25, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v25, v25
	v_add3_u32 v25, v26, v39, 0x7fff
	v_bfe_u32 v26, v27, 16, 1
	v_cndmask_b16 v0.l, 0x7fff, v37.h, s5
	v_bfe_u32 v37, v28, 16, 1
	v_bfe_u32 v38, v29, 16, 1
	v_cmp_o_f32_e64 s5, v27, v27
	v_add3_u32 v26, v27, v26, 0x7fff
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s6
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s7
	v_add3_u32 v27, v28, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v28, v28
	v_add3_u32 v28, v29, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v29, v29
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s5
	v_bfe_u32 v26, v30, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s6
	v_bfe_u32 v29, v31, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s7
	v_bfe_u32 v28, v17, 16, 1
	v_add3_u32 v26, v30, v26, 0x7fff
	v_cmp_o_f32_e64 s5, v30, v30
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v29, v31, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v31, v31
	v_add3_u32 v28, v17, v28, 0x7fff
	v_cmp_o_f32_e64 s7, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v26.h, s5
	v_bfe_u32 v26, v18, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v17.h, 0x7fff, v29.h, s6
	v_bfe_u32 v29, v19, 16, 1
	v_bfe_u32 v30, v20, 16, 1
	v_add3_u32 v26, v18, v26, 0x7fff
	v_cmp_o_f32_e64 s5, v18, v18
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s7
	v_add3_u32 v18, v19, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v19, v19
	v_add3_u32 v19, v20, v30, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_cndmask_b16 v28.h, 0x7fff, v26.h, s5
	v_bfe_u32 v20, v21, 16, 1
	v_bfe_u32 v26, v22, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s6
	v_add3_u32 v20, v21, v20, 0x7fff
	v_cmp_o_f32_e64 s5, v21, v21
	v_add3_u32 v21, v22, v26, 0x7fff
	v_cmp_o_f32_e64 s6, v22, v22
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s7
	v_bfe_u32 v19, v23, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s5
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v9, 16, 1
	v_bfe_u32 v22, v24, 16, 1
	v_add3_u32 v19, v23, v19, 0x7fff
	v_cmp_o_f32_e64 s7, v23, v23
	v_bfe_u32 v23, v10, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v21, v9, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v9, v9
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v22, v24, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v24, v24
	v_add3_u32 v9, v10, v23, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s7
	v_cmp_o_f32_e64 s7, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v12, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s5
	v_bfe_u32 v22, v13, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v11, v11
	v_add3_u32 v11, v12, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v12, v12
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	v_add3_u32 v12, v13, v22, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s6
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v21, v16, 16, 1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v36, -v44, v53, v50
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v14, v14
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s7
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v14, v16, v21, 0x7fff
	v_cmp_o_f32_e64 s7, v16, v16
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v36, v36, v46, v53
	v_div_fixup_f32 v5, v32, v150, v5
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v1, 16, 1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v6, v35, v150, v6
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s6
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s7
	v_bfe_u32 v14, v3, 16, 1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v34, v150, v7
	v_div_fixup_f32 v8, v36, v150, v8
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v1, v1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v1, v2, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v2, v2
	v_add3_u32 v2, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v1.l, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v5, 16, 1
	v_add3_u32 v3, v4, v3, 0x7fff
	v_cmp_o_f32_e64 s5, v4, v4
	v_bfe_u32 v4, v6, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s6
	v_add3_u32 v13, v5, v13, 0x7fff
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s6, v5, v5
	v_bfe_u32 v5, v8, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s7
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s7, v6, v6
	v_add3_u32 v6, v7, v14, 0x7fff
	v_cmp_o_f32_e64 s8, v7, v7
	v_add3_u32 v5, v8, v5, 0x7fff
	v_cmp_o_f32_e64 s9, v8, v8
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s5
	v_cndmask_b16 v3.l, 0x7fff, v13.h, s6
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s7
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s8
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s9
	.loc	1 843 74                        ; attention.py:843:74
	v_lshrrev_b32_e32 v32, 1, v111
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v5, v27, v0, s3
	v_cndmask_b32_e64 v0, v0, v27, s3
	v_cndmask_b32_e64 v6, v17, v25, s3
	v_cndmask_b32_e64 v7, v25, v17, s3
	v_cndmask_b32_e64 v13, v28, v20, s3
	v_cndmask_b32_e64 v15, v18, v19, s3
	v_cndmask_b32_e64 v16, v12, v9, s3
	v_cndmask_b32_e64 v9, v9, v12, s3
	v_cndmask_b32_e64 v12, v11, v10, s3
	v_cndmask_b32_e64 v10, v10, v11, s3
	v_cndmask_b32_e64 v17, v3, v1, s3
	v_cndmask_b32_e64 v1, v1, v3, s3
	v_cndmask_b32_e64 v14, v19, v18, s3
	v_cndmask_b32_e64 v18, v4, v2, s3
	v_cndmask_b32_e64 v2, v2, v4, s3
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v34, 16, v32
	s_mov_b32 s5, 0x76543210
	v_or_b32_e32 v35, 32, v32
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v8, v20, v28, s3
	v_permlanex16_b32 v3, v0, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v7, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v13, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v15, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v10, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v36, 48, v32
	.loc	1 846 36                        ; attention.py:846:36
	v_permlanex16_b32 v19, v2, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s78, v34
	v_cmp_gt_i32_e64 s4, s78, v32
	v_cmp_gt_i32_e64 s0, s78, v35
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v0, v3, v5, v110
	v_perm_b32 v1, v3, v5, v112
	v_perm_b32 v2, v4, v6, v110
	v_perm_b32 v3, v4, v6, v112
	v_perm_b32 v4, v7, v8, v110
	v_perm_b32 v5, v7, v8, v112
	v_perm_b32 v6, v11, v14, v110
	v_perm_b32 v7, v11, v14, v112
	v_perm_b32 v10, v13, v12, v110
	v_perm_b32 v11, v13, v12, v112
	v_perm_b32 v12, v15, v17, v110
	v_perm_b32 v13, v15, v17, v112
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v17, v33, v34, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v8, v9, v16, v110
	v_perm_b32 v9, v9, v16, v112
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v16, v33, v32, 1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s78, v36
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v14, v19, v18, v110
	v_perm_b32 v15, v19, v18, v112
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v18, v33, v35, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s2, vcc_lo
	s_and_b32 s3, s2, s4
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v19, v33, v36, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s1
	s_mov_b32 s78, 0x7ffffffe
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[76:79], 0 offen
	buffer_store_b128 v[4:7], v17, s[76:79], 0 offen
	buffer_store_b128 v[8:11], v18, s[76:79], 0 offen
	buffer_store_b128 v[12:15], v19, s[76:79], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp61:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 223
		.amdhsa_next_free_sgpr 104
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_vgpr, 223
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.numbered_sgpr, 104
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14756
; TotalNumSgprs: 106
; NumVgprs: 223
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 106
; NumVGPRsForWavesPerEU: 223
; Occupancy: 6
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
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     106
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     223
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
