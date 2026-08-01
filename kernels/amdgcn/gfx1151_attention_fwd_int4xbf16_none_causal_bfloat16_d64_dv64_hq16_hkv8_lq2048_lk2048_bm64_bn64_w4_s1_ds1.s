	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s42, s[0:1], 0x60
	s_load_b32 s5, s[0:1], 0x88
	s_load_b64 s[12:13], s[0:1], 0x0
.Ltmp0:
	.loc	1 773 86 prologue_end           ; attention.py:773:86
	v_lshlrev_b32_e32 v35, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v5, 1, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	s_mov_b32 s15, 0x31027000
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 16, v35
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s6, v5
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s8, s6, s2
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v113, v0, 4, 1
	v_and_b32_e32 v34, 15, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v110, 16, v0
	s_mov_b32 s7, 0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v36, 1, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[99:100], null, s42, v5, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s42, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s13, s13, 0xffff
	v_cmp_eq_u32_e64 s40, 0, v110
	v_and_or_b32 v6, v36, 30, v113
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s42, s8, v[99:100]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v6, 2, v6
	v_xor_b32_e32 v7, 4, v6
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	buffer_load_b128 v[1:4], v1, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v37, v6, v1
	ds_bpermute_b32 v38, v6, v2
	ds_bpermute_b32 v39, v6, v3
	ds_bpermute_b32 v41, v6, v4
	ds_bpermute_b32 v40, v7, v1
	ds_bpermute_b32 v42, v7, v2
	ds_bpermute_b32 v43, v7, v3
	ds_bpermute_b32 v44, v7, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v1, v5, 48, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v45, s6, v1
	.loc	1 810 48 is_stmt 1              ; attention.py:810:48
	s_add_i32 s6, s6, s5
	v_or_b32_e32 v112, s8, v1
	s_add_i32 s6, s6, 64
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v45
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_gt_i32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b32_e32 v2, 0x5410
	v_mov_b32_e32 v3, 0x7632
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v33, s8, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v2, 0x1054, v2, s40
	v_cndmask_b32_e64 v3, 0x3276, v3, s40
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
	v_and_b32_e32 v109, 0x5040504, v2
	v_and_b32_e32 v111, 0x7060706, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s7, -1
                                        ; implicit-def: $vgpr109
                                        ; implicit-def: $vgpr111
                                        ; implicit-def: $vgpr33
.LBB0_3:                                ; %Flow326
	s_clause 0x1
	s_load_b64 s[52:53], s[0:1], 0x38
	s_load_b32 s41, s[0:1], 0x64
	v_mov_b32_e32 v8, 0
	s_and_not1_b32 vcc_lo, exec_lo, s7
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
	v_mov_b32_e32 v147, v8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	v_dual_mov_b32 v4, 0x5410 :: v_dual_lshlrev_b32 v1, 1, v112
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	s_load_b32 s0, s[0:1], 0x68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v146, 0x7f0, v35
	v_dual_mov_b32 v5, 0x7632 :: v_dual_and_b32 v2, 24, v0
	v_and_b32_e32 v3, 24, v36
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s1, s3, 31
	v_dual_mov_b32 v26, v25 :: v_dual_add_nc_u32 v145, s5, v45
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s5, s6, 0x800
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s1, s1, 28
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v102, v37, v40, s40
	v_cndmask_b32_e64 v106, v40, v37, s40
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v37, 3, v0
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s57, s13, 0xffff
	s_mov_b32 s56, s12
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s5, s5, 63
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v46, v1, s[56:59], 0 offen
	v_dual_mov_b32 v28, v25 :: v_dual_lshlrev_b32 v1, 3, v0
	v_lshl_add_u32 v0, v34, 1, 0
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s1, s3, s1
	v_cndmask_b32_e64 v35, 0x3276, v5, s40
	v_mov_b32_e32 v30, v25
	v_lshl_or_b32 v149, v34, 5, v3
	v_cndmask_b32_e64 v34, 0x1054, v4, s40
	.loc	1 811 34                        ; attention.py:811:34
	s_ashr_i32 s6, s5, 31
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s7, s1, 0xfff0
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s6, s6, 26
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s7
	v_dual_mov_b32 v18, v25 :: v_dual_and_b32 v33, 56, v1
	v_lshl_or_b32 v34, v34, 8, v34
	v_lshl_or_b32 v35, v35, 8, v35
	.loc	1 811 34                        ; attention.py:811:34
	s_add_i32 s70, s5, s6
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s5, s3, 0x10007
	v_xor_b32_e32 v148, v146, v2
	s_add_i32 s3, s3, s5
	v_mov_b32_e32 v27, v25
	v_mov_b32_e32 v20, v25
	v_mov_b32_e32 v10, v25
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e32 vcc_lo, s41, v33
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[108:109], null, s41, v37, v[33:34]
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s3, s3, 0x80000
	v_and_b32_e32 v33, 0x540054, v34
	v_and_b32_e32 v34, 0x760076, v35
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s0, s0, 0x3fb8aa3b
	.loc	1 758 19                        ; attention.py:758:19
	s_sext_i32_i16 s3, s3
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s1, s1, 10
	s_lshl_b32 s3, s3, 10
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v127, 28, v113
	v_or_b32_e32 v128, 30, v113
	v_or_b32_e32 v129, 32, v113
	v_or_b32_e32 v130, 34, v113
	v_or_b32_e32 v131, 36, v113
	v_or_b32_e32 v132, 38, v113
	v_or_b32_e32 v133, 40, v113
	v_or_b32_e32 v134, 42, v113
	v_or_b32_e32 v135, 44, v113
	v_or_b32_e32 v136, 46, v113
	v_or_b32_e32 v137, 48, v113
	v_or_b32_e32 v138, 50, v113
	v_or_b32_e32 v139, 52, v113
	v_or_b32_e32 v140, 54, v113
	v_or_b32_e32 v141, 56, v113
	v_or_b32_e32 v142, 58, v113
	v_or_b32_e32 v143, 60, v113
	v_or_b32_e32 v144, 62, v113
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v100, v39, v43, s40
	v_cndmask_b32_e64 v103, v38, v42, s40
	v_cndmask_b32_e64 v104, v43, v39, s40
	v_cndmask_b32_e64 v107, v42, v38, s40
	v_xor_b32_e32 v36, 8, v148
	v_xor_b32_e32 v38, 8, v149
	v_xor_b32_e32 v39, 16, v149
	v_xor_b32_e32 v40, 24, v149
	v_lshl_or_b32 v33, v33, 4, v33
	v_lshl_or_b32 v34, v34, 4, v34
	.loc	1 821 32                        ; attention.py:821:32
	s_and_b32 s1, s1, 0xffffc000
	s_and_b32 s71, s3, 0xfffff800
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v114, 2, v113
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s71, s71, s1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v115, 4, v113
	v_or_b32_e32 v116, 6, v113
	v_or_b32_e32 v117, 8, v113
	v_or_b32_e32 v118, 10, v113
	v_or_b32_e32 v119, 12, v113
	v_or_b32_e32 v120, 14, v113
	v_or_b32_e32 v121, 16, v113
	v_or_b32_e32 v122, 18, v113
	v_or_b32_e32 v123, 20, v113
	v_or_b32_e32 v124, 22, v113
	v_or_b32_e32 v125, 24, v113
	v_or_b32_e32 v126, 26, v113
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v101, v41, v44, s40
	v_cndmask_b32_e64 v105, v44, v41, s40
	v_dual_mov_b32 v73, 0xff800000 :: v_dual_mov_b32 v32, v25
	v_dual_mov_b32 v29, v25 :: v_dual_add_nc_u32 v150, 0, v36
	v_dual_mov_b32 v31, v25 :: v_dual_add_nc_u32 v152, 0, v39
	v_mov_b32_e32 v21, v25
	v_dual_mov_b32 v22, v25 :: v_dual_add_nc_u32 v151, 0, v38
	v_mov_b32_e32 v23, v25
	v_dual_mov_b32 v24, v25 :: v_dual_add_nc_u32 v153, 0, v40
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v11, v25
	v_dual_mov_b32 v12, v25 :: v_dual_and_b32 v109, 0x5040504, v33
	v_mov_b32_e32 v13, v25
	v_dual_mov_b32 v14, v25 :: v_dual_and_b32 v111, 0x7060706, v34
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
	v_or_b32_e32 v154, s71, v127
	v_or_b32_e32 v155, s71, v128
	v_or_b32_e32 v156, s71, v129
	v_or_b32_e32 v157, s71, v130
	v_or_b32_e32 v158, s71, v131
	v_or_b32_e32 v159, s71, v132
	v_or_b32_e32 v160, s71, v133
	v_or_b32_e32 v161, s71, v134
	v_or_b32_e32 v162, s71, v135
	v_or_b32_e32 v163, s71, v136
	v_or_b32_e32 v164, s71, v137
	v_or_b32_e32 v165, s71, v138
	v_or_b32_e32 v166, s71, v139
	v_or_b32_e32 v167, s71, v140
	v_or_b32_e32 v168, s71, v141
	v_or_b32_e32 v169, s71, v142
	v_or_b32_e32 v171, s71, v143
	v_or_b32_e32 v172, s71, v144
	v_mov_b32_e32 v147, v25
	s_mov_b32 s44, 0
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s43, s41, 4
	s_lshl_b32 s54, s41, 5
	s_mul_i32 s55, s41, 48
	s_mov_b32 s68, 0x76543210
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	s_mov_b32 s66, s58
	s_mov_b32 s67, s59
	s_mov_b32 s69, s44
	.loc	1 811 33                        ; attention.py:811:33
	s_and_not1_b32 s70, s70, 63
	s_and_b32 s65, s11, 0xffff
	s_mov_b32 s60, s14
	s_mov_b32 s64, s10
	s_mov_b32 s56, s8
	s_mov_b32 s57, s9
	s_mov_b32 s61, s15
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v35, 16, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v17, v25 :: v_dual_mul_f32 v170, s0, v35
	v_mov_b32_e32 v19, v25
	v_mov_b32_e32 v16, v25
	v_dual_mov_b32 v2, v25 :: v_dual_mov_b32 v175, v170
	.loc	1 847 25                        ; attention.py:847:25
	v_mov_b32_e32 v173, v170
	v_mov_b32_e32 v174, v170
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s0, s69, s71
	v_or_b32_e32 v43, s71, v113
	v_mad_u64_u32 v[44:45], null, s0, s42, v[99:100]
	v_mad_u64_u32 v[45:46], null, s0, s41, v[108:109]
	v_or_b32_e32 v47, s71, v114
	v_or_b32_e32 v48, s71, v115
	v_or_b32_e32 v49, s71, v116
	v_or_b32_e32 v50, s71, v117
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v205, v43, s69, 1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v43, 0x80000000, v44, s4
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v206, v47, s69, 1
	v_add_lshl_u32 v207, v48, s69, 1
	v_add_lshl_u32 v208, v49, s69, 1
	v_add_lshl_u32 v209, v50, s69, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v48, v45, s43, 1
	v_lshlrev_b32_e32 v47, 1, v45
	v_add_lshl_u32 v49, v45, s54, 1
	v_add_lshl_u32 v50, v45, s55, 1
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[43:46], v43, s[56:59], 0 offen
	v_add_nc_u32_e32 v41, 0, v148
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v33, s44 :: v_dual_add_nc_u32 v42, 0, v149
	v_or_b32_e32 v55, s71, v122
	v_or_b32_e32 v56, s71, v123
	v_or_b32_e32 v57, s71, v124
	v_or_b32_e32 v58, s71, v125
	v_or_b32_e32 v59, s71, v126
	v_mov_b32_e32 v34, s45
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v214, v55, s69, 1
	v_add_lshl_u32 v215, v56, s69, 1
	v_add_lshl_u32 v216, v57, s69, 1
	v_add_lshl_u32 v217, v58, s69, 1
	v_add_lshl_u32 v218, v59, s69, 1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v35, s46 :: v_dual_mov_b32 v36, s47
	v_dual_mov_b32 v37, s48 :: v_dual_mov_b32 v38, s49
	v_dual_mov_b32 v39, s50 :: v_dual_mov_b32 v40, s51
	v_or_b32_e32 v51, s71, v118
	v_or_b32_e32 v52, s71, v119
	v_or_b32_e32 v53, s71, v120
	v_or_b32_e32 v54, s71, v121
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v220, 0x80000000, v48, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v210, v51, s69, 1
	v_add_lshl_u32 v211, v52, s69, 1
	v_add_lshl_u32 v212, v53, s69, 1
	v_add_lshl_u32 v213, v54, s69, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_cndmask_b32 v219, 0x80000000, v47 :: v_dual_cndmask_b32 v222, 0x80000000, v50
	v_cndmask_b32_e32 v221, 0x80000000, v49, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v91, v154, s69, 1
	v_add_lshl_u32 v92, v155, s69, 1
	v_add_lshl_u32 v93, v156, s69, 1
	v_add_lshl_u32 v94, v157, s69, 1
	v_add_lshl_u32 v176, v158, s69, 1
	v_add_lshl_u32 v192, v159, s69, 1
	v_add_lshl_u32 v193, v160, s69, 1
	v_add_lshl_u32 v194, v161, s69, 1
	v_add_lshl_u32 v195, v162, s69, 1
	v_add_lshl_u32 v196, v163, s69, 1
	v_add_lshl_u32 v197, v164, s69, 1
	v_add_lshl_u32 v198, v165, s69, 1
	v_add_lshl_u32 v199, v166, s69, 1
	v_add_lshl_u32 v200, v167, s69, 1
	v_add_lshl_u32 v201, v168, s69, 1
	v_add_lshl_u32 v202, v169, s69, 1
	v_add_lshl_u32 v203, v171, s69, 1
	v_add_lshl_u32 v204, v172, s69, 1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v41, v[43:44]
	ds_store_b64 v150, v[45:46]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[55:58], v42 offset1:1
	ds_load_2addr_stride64_b64 v[59:62], v42 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[63:66], v151 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[55:56], v[106:107], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[61:62], v[106:107], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[75:82], v[59:60], v[106:107], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[83:90], v[57:58], v[106:107], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v151 offset1:1
	ds_load_2addr_stride64_b64 v[37:40], v152 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[65:66], v[104:105], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[75:82], v[63:64], v[104:105], v[75:82] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[33:34], v[104:105], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[83:90], v[35:36], v[104:105], v[83:90] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v152 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[39:40], v[102:103], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[75:82], v[37:38], v[102:103], v[75:82] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[37:40], v153 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[33:34], v[102:103], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[83:90], v[35:36], v[102:103], v[83:90] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v153 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[37:38], v[100:101], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[83:90], v[39:40], v[100:101], v[83:90] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v95, v41
	v_cvt_f32_i32_e32 v62, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v63, v44
	v_cvt_f32_i32_e32 v64, v43
	v_cvt_f32_i32_e32 v65, v47
	v_cvt_f32_i32_e32 v66, v48
	v_cvt_f32_i32_e32 v67, v45
	v_cvt_f32_i32_e32 v68, v46
	v_cvt_f32_i32_e32 v182, v84
	v_cvt_f32_i32_e32 v183, v85
	v_cvt_f32_i32_e32 v184, v86
	v_cvt_f32_i32_e32 v185, v87
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[35:36], v[100:101], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[75:82], v[33:34], v[100:101], v[75:82] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v178, v90
	v_cvt_f32_i32_e32 v177, v88
	v_cvt_f32_i32_e32 v98, v89
	v_cvt_f32_i32_e32 v179, v49
	v_cvt_f32_i32_e32 v180, v50
	v_cvt_f32_i32_e32 v69, v52
	v_cvt_f32_i32_e32 v70, v53
	v_cvt_f32_i32_e32 v71, v55
	v_cvt_f32_i32_e32 v72, v54
	v_cvt_f32_i32_e32 v74, v56
	v_cvt_f32_i32_e32 v181, v51
	v_cvt_f32_i32_e32 v97, v75
	v_cvt_f32_i32_e32 v186, v77
	v_cvt_f32_i32_e32 v187, v78
	v_cvt_f32_i32_e32 v188, v79
	v_cvt_f32_i32_e32 v189, v80
	v_cvt_f32_i32_e32 v190, v81
	v_cvt_f32_i32_e32 v191, v82
	v_cvt_f32_i32_e32 v96, v76
	v_cvt_f32_i32_e32 v85, v83
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x2
	buffer_load_b128 v[41:44], v219, s[64:67], 0 offen
	buffer_load_b128 v[45:48], v220, s[64:67], 0 offen
	buffer_load_b128 v[37:40], v221, s[64:67], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1f
	buffer_load_u16 v75, v205, s[60:63], 0 offen
	buffer_load_u16 v52, v206, s[60:63], 0 offen
	buffer_load_u16 v51, v207, s[60:63], 0 offen
	buffer_load_u16 v54, v208, s[60:63], 0 offen
	buffer_load_u16 v49, v209, s[60:63], 0 offen
	buffer_load_u16 v50, v210, s[60:63], 0 offen
	buffer_load_u16 v55, v211, s[60:63], 0 offen
	buffer_load_u16 v56, v212, s[60:63], 0 offen
	buffer_load_u16 v53, v213, s[60:63], 0 offen
	buffer_load_u16 v78, v214, s[60:63], 0 offen
	buffer_load_u16 v79, v215, s[60:63], 0 offen
	buffer_load_u16 v80, v216, s[60:63], 0 offen
	buffer_load_u16 v81, v217, s[60:63], 0 offen
	buffer_load_u16 v76, v218, s[60:63], 0 offen
	buffer_load_u16 v77, v91, s[60:63], 0 offen
	buffer_load_u16 v83, v92, s[60:63], 0 offen
	buffer_load_u16 v84, v93, s[60:63], 0 offen
	buffer_load_u16 v82, v94, s[60:63], 0 offen
	buffer_load_u16 v86, v176, s[60:63], 0 offen
	buffer_load_u16 v87, v192, s[60:63], 0 offen
	buffer_load_u16 v88, v193, s[60:63], 0 offen
	buffer_load_u16 v89, v194, s[60:63], 0 offen
	buffer_load_u16 v90, v195, s[60:63], 0 offen
	buffer_load_u16 v91, v196, s[60:63], 0 offen
	buffer_load_u16 v92, v197, s[60:63], 0 offen
	buffer_load_u16 v93, v198, s[60:63], 0 offen
	buffer_load_u16 v94, v199, s[60:63], 0 offen
	buffer_load_u16 v58, v200, s[60:63], 0 offen
	buffer_load_u16 v59, v201, s[60:63], 0 offen
	buffer_load_u16 v57, v202, s[60:63], 0 offen
	buffer_load_u16 v61, v203, s[60:63], 0 offen
	buffer_load_u16 v60, v204, s[60:63], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[33:36], v222, s[64:67], 0 offen
	v_add_nc_u32_e32 v192, 0, v146
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v178, v174, v178
	v_mul_f32_e32 v177, v170, v177
	v_mul_f32_e32 v95, v170, v95
	v_mul_f32_e32 v65, v174, v65
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v176.h, 0
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(35)
	ds_store_b128 v192, v[41:44]
	s_waitcnt vmcnt(34)
	ds_store_b128 v192, v[45:48] offset:2048
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v43, s69, v137
	v_or_b32_e32 v44, s69, v136
	v_or_b32_e32 v41, s69, v139
	v_or_b32_e32 v42, s69, v138
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(33)
	ds_store_b128 v192, v[37:40] offset:4096
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s5, v43, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v43, s69, v133
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s6, v44, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v44, s69, v132
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s1, v41, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v41, s69, v135
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s9, v43, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v43, s69, v129
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s10, v44, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v44, s69, v128
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s0, v42, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v42, s69, v134
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s13, v43, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v43, s69, v125
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s15, v44, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v44, s69, v124
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s7, v41, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v41, s69, v131
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s17, v43, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v43, s69, v121
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s19, v44, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v44, s69, v120
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s8, v42, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v42, s69, v130
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s18, v43, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v43, s69, v117
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s20, v44, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v44, s69, v116
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s11, v41, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v41, s69, v127
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s25, v43, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v43, s69, v113
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s26, v44, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v44, s69, v144
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s12, v42, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v42, s69, v126
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s31, v43, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v43, s69, v141
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s28, v44, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v44, s69, v140
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s14, v41, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v41, s69, v123
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s16, v42, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v42, s69, v122
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s34, v43, v145
	v_cmp_le_i32_e64 s33, v44, v145
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v39, v170, v186 :: v_dual_mul_f32 v40, v173, v187
	v_dual_mul_f32 v43, v174, v188 :: v_dual_mul_f32 v44, v175, v189
	v_dual_mul_f32 v47, v170, v190 :: v_dual_mul_f32 v48, v173, v191
	v_dual_mul_f32 v186, v174, v179 :: v_dual_mul_f32 v187, v175, v180
	v_dual_mul_f32 v38, v174, v184 :: v_dual_mul_f32 v37, v175, v185
	v_dual_mul_f32 v180, v175, v97 :: v_dual_mul_f32 v97, v173, v98
	v_mul_f32_e32 v184, v175, v63
	v_dual_mul_f32 v98, v175, v66 :: v_dual_mul_f32 v185, v170, v67
	v_mul_f32_e32 v67, v170, v85
	v_mul_f32_e32 v63, v170, v69
	v_mul_f32_e32 v66, v174, v72
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_store_b128 v192, v[33:36] offset:6144
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v36, 16, v86
	v_lshlrev_b32_e32 v85, 16, v87
	v_lshlrev_b32_e32 v86, 16, v88
	v_lshlrev_b32_e32 v87, 16, v89
	v_lshlrev_b32_e32 v88, 16, v90
	v_lshlrev_b32_e32 v89, 16, v91
	v_lshlrev_b32_e32 v90, 16, v92
	v_lshlrev_b32_e32 v91, 16, v93
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s22, v41, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v41, s69, v119
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s23, v42, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v42, s69, v118
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v179, v174, v181 :: v_dual_mul_f32 v96, v173, v96
	v_dual_mul_f32 v46, v170, v182 :: v_dual_mul_f32 v45, v173, v183
	v_dual_mul_f32 v181, v173, v62 :: v_dual_mul_f32 v62, v175, v71
	v_dual_mul_f32 v183, v174, v64 :: v_dual_mul_f32 v64, v173, v70
	v_mul_f32_e32 v182, v173, v68
	v_mul_f32_e32 v68, v175, v74
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v92, 16, v94
	v_lshlrev_b32_e32 v80, 16, v80
	v_lshlrev_b32_e32 v72, 16, v82
	v_lshlrev_b32_e32 v69, 16, v52
	v_lshlrev_b32_e32 v33, 16, v61
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v61, v44, v87
	v_mul_f32_e32 v87, v186, v90
	v_dual_mul_f32 v38, v38, v80 :: v_dual_lshlrev_b32 v71, 16, v77
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v77, 16, v51
	v_lshlrev_b32_e32 v70, 16, v75
	v_lshlrev_b32_e32 v75, 16, v54
	v_lshlrev_b32_e32 v54, 16, v55
	v_lshlrev_b32_e32 v55, 16, v53
	v_lshlrev_b32_e32 v53, 16, v57
	v_lshlrev_b32_e32 v57, 16, v60
	v_lshlrev_b32_e32 v52, 16, v59
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v59, v40, v85 :: v_dual_mul_f32 v60, v43, v86
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v81, 16, v81
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v85, v47, v88
	v_mul_f32_e32 v88, v187, v91
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v76, 16, v76
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s21, v41, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v41, s69, v115
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s24, v42, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v42, s69, v114
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v71, v97, v71 :: v_dual_lshlrev_b32 v56, 16, v56
	v_mul_f32_e32 v37, v37, v81
	v_mul_f32_e32 v76, v177, v76
	v_dual_mul_f32 v75, v184, v75 :: v_dual_lshlrev_b32 v82, 16, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v56, v98, v56 :: v_dual_lshlrev_b32 v49, 16, v58
	v_dual_mul_f32 v58, v39, v36 :: v_dual_lshlrev_b32 v79, 16, v79
	v_mul_f32_e32 v86, v48, v89
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v84, 16, v84
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s29, v41, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v41, s69, v143
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s30, v42, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v42, s69, v142
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v89, v179, v92 :: v_dual_lshlrev_b32 v78, 16, v78
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v83, 16, v83
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v45, v45, v79
	v_mul_f32_e32 v79, v180, v84
	v_dual_mul_f32 v72, v96, v72 :: v_dual_mul_f32 v77, v183, v77
	v_mul_f32_e32 v70, v95, v70
	v_dual_mul_f32 v55, v67, v55 :: v_dual_lshlrev_b32 v74, 16, v50
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s27, v41, v145
	v_cmp_le_i32_e64 s35, v42, v145
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v42.h, v176.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v46, v46, v78
	v_mul_f32_e32 v78, v178, v83
	v_mul_f32_e32 v80, v185, v82
	v_dual_mul_f32 v69, v181, v69 :: v_dual_mul_f32 v74, v182, v74
	v_dual_mul_f32 v54, v65, v54 :: v_dual_mul_f32 v57, v68, v57
	v_mul_f32_e32 v33, v62, v33
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s5, s2, s5
	s_and_b32 s6, s2, s6
	s_and_b32 s7, s2, s7
	s_and_b32 s9, s2, s9
	s_and_b32 s10, s2, s10
	s_and_b32 s11, s2, s11
	s_and_b32 s12, s2, s12
	s_and_b32 s13, s2, s13
	s_and_b32 s36, s2, s15
	s_and_b32 s37, s2, s16
	s_and_b32 s38, s2, s17
	s_and_b32 s39, s2, s19
	s_and_b32 s22, s2, s22
	s_and_b32 s23, s2, s23
	s_and_b32 s19, s2, s14
	s_and_b32 s25, s2, s25
	s_and_b32 s3, s2, s26
	s_and_b32 s30, s2, s30
	s_and_b32 s31, s2, s31
	s_and_b32 s26, s2, s24
	s_and_b32 s14, s2, s28
	s_and_b32 s17, s2, s27
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v53, v66, v53 :: v_dual_mul_f32 v52, v64, v52
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v179, 0xff800000, v87, s5
	v_cndmask_b32_e64 v187, 0xff800000, v86, s6
	v_cndmask_b32_e64 v188, 0xff800000, v85, s7
	v_cndmask_b32_e64 v189, 0xff800000, v60, s9
	v_cndmask_b32_e64 v191, 0xff800000, v59, s10
	v_cndmask_b32_e64 v192, 0xff800000, v58, s11
	v_cndmask_b32_e64 v84, 0xff800000, v71, s19
	v_cndmask_b32_e64 v85, 0xff800000, v76, s37
	v_cndmask_b32_e64 v193, 0xff800000, v79, s13
	v_cndmask_b32_e64 v86, 0xff800000, v78, s36
	v_cndmask_b32_e64 v194, 0xff800000, v72, s12
	v_cndmask_b32_e64 v58, 0xff800000, v38, s39
	v_cndmask_b32_e64 v59, 0xff800000, v45, s22
	v_cndmask_b32_e64 v60, 0xff800000, v46, s23
	v_cndmask_b32_e64 v87, 0xff800000, v37, s38
	v_cndmask_b32_e64 v62, 0xff800000, v74, s26
	v_cndmask_b32_e64 v37, 0xff800000, v69, s30
	v_cndmask_b32_e64 v38, 0xff800000, v70, s31
	v_cndmask_b32_e64 v45, 0xff800000, v75, s3
	v_cndmask_b32_e64 v181, 0xff800000, v33, s17
	v_cndmask_b32_e64 v182, 0xff800000, v57, s14
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v49, v63, v49
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v63, 0xff800000, v80, s25
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s1, s2, s1
	s_and_b32 s8, s2, s8
	s_and_b32 s29, s2, s29
	s_and_b32 s24, s2, s20
	s_and_b32 s21, s2, s21
	s_and_b32 s20, s2, s18
	s_and_b32 s15, s2, s35
	s_and_b32 s16, s2, s34
	s_and_b32 s18, s2, s33
	s_and_b32 s0, s2, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v203.h, v176.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v178, 0xff800000, v88, s0
	v_cndmask_b32_e64 v190, 0xff800000, v61, s8
	v_cndmask_b32_e64 v180, 0xff800000, v89, s1
	v_cndmask_b32_e64 v46, 0xff800000, v77, s29
	v_cndmask_b32_e64 v61, 0xff800000, v55, s20
	v_cndmask_b32_e64 v56, 0xff800000, v56, s24
	v_cndmask_b32_e64 v64, 0xff800000, v54, s21
	v_cndmask_b32_e64 v183, 0xff800000, v52, s16
	v_cndmask_b32_e64 v184, 0xff800000, v53, s15
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v53, v86, v193, v194
	v_max3_f32 v54, v60, v59, v58
	v_max3_f32 v55, v87, v85, v84
	v_max_f32_e32 v57, v38, v37
	v_max3_f32 v65, v45, v63, v62
	v_max_f32_e32 v68, v181, v182
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v185, 0xff800000, v49, s18
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v192, v191, v189
	v_max3_f32 v49, v190, v188, v187
	v_max3_f32 v52, v179, v178, v180
	v_max3_f32 v66, v64, v56, v61
	v_max_f32_e32 v67, v185, v183
	v_max3_f32 v53, v54, v55, v53
	v_max3_f32 v54, v57, v46, v65
	v_max3_f32 v33, v33, v49, v52
.Ltmp4:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v204.h, v176.h
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v49, v67, v184, v68
.Ltmp6:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v41.h, v176.h
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v52, v54, v66, v53
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
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
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v52, v33, v49
.Ltmp10:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v51, v0 offset:608
	ds_load_u16_d16 v50, v0 offset:352
	ds_load_u16_d16 v83, v0 offset:2080
	ds_load_u16_d16 v91, v0 offset:2144
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s69, s69, 64
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v49, v33, s68, 0xfedcba98 op_sel:[1,0]
.Ltmp12:
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s69, s70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v177, v73, v33, v49
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v37, v177
	v_sub_f32_e32 v33, v38, v177
	v_sub_f32_e32 v45, v45, v177
	v_sub_f32_e32 v57, v63, v177
	v_sub_f32_e32 v63, v64, v177
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v45, v45
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_sub_f32_e32 v64, v73, v177
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v62, v62, v177
	v_sub_f32_e32 v38, v46, v177
	v_sub_f32_e32 v56, v56, v177
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v64, v64
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v62, v62
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v196, 0, v37, s30
	v_cndmask_b32_e64 v195, 0, v33, s31
	s_delay_alu instid0(TRANS32_DEP_3)
	v_cndmask_b32_e64 v198, 0, v45, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v56, v56
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v176.l, v196.h
	v_cmp_o_f32_e64 s3, v196, v196
	v_mov_b16_e64 v41.l, v195.h
	v_cmp_o_f32_e64 s27, v195, v195
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v200, 0, v62, s26
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v33, 1, v176
	v_mov_b16_e64 v176.l, v198.h
	v_cmp_o_f32_e64 s28, v198, v198
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v197, 0, v38, s29
	v_cndmask_b32_e64 v202, 0, v56, s24
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v33, v196, v33, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v42.l, v197.h
	v_cmp_o_f32_e64 s29, v197, v197
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v73
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v38, 1, v42
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v186, 0, v64, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v37, 1, v41
	v_and_b32_e32 v41, 1, v176
	v_mov_b16_e64 v176.l, v200.h
	v_add3_u32 v38, v197, v38, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v30, v30, v186
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v57, v57
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v186
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v63, v63
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v62, 1, v176
	v_add3_u32 v41, v198, v41, 0x7fff
	v_mov_b16_e64 v176.l, v202.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v186
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v37, v195, v37, 0x7fff
	v_add3_u32 v62, v200, v62, 0x7fff
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s29
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v199, 0, v57, s25
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s25, v202, v202
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v201, 0, v63, s21
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v200, v200
	v_cndmask_b16 v33.l, 0x7fff, v37.h, s27
	v_mov_b16_e64 v203.l, v199.h
	v_cmp_o_f32_e64 s24, v199, v199
	v_mov_b16_e64 v204.l, v201.h
	v_cndmask_b16 v37.h, 0x7fff, v41.h, s28
	v_permlanex16_b32 v38, v33, s68, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v56, 1, v203
	v_cmp_o_f32_e64 s26, v201, v201
	v_and_b32_e32 v57, 1, v204
	v_permlanex16_b32 v41, v37, s68, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v38, v33, v109
	v_add3_u32 v56, v199, v56, 0x7fff
	v_perm_b32 v68, v38, v33, v111
	v_add3_u32 v57, v201, v57, 0x7fff
	v_perm_b32 v69, v41, v37, v109
	v_perm_b32 v70, v41, v37, v111
	v_cndmask_b16 v56.l, 0x7fff, v56.h, s24
	v_cndmask_b16 v56.h, 0x7fff, v62.h, s21
	v_and_b32_e32 v62, 1, v176
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v76, v0 offset:288
	ds_load_u16_d16 v37, v0 offset:1024
	ds_load_u16_d16 v45, v0 offset:1088
	ds_load_u16_d16 v38, v0 offset:1280
	ds_load_u16_d16 v46, v0 offset:1344
	ds_load_u16_d16 v33, v0
	ds_load_u16_d16 v75, v0 offset:32
	ds_load_u16_d16 v41, v0 offset:64
	ds_load_u16_d16 v42, v0 offset:320
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v50, v0 offset:480
	ds_load_u16_d16 v49, v0 offset:96
	ds_load_u16_d16_hi v34, v0 offset:384
	ds_load_u16_d16_hi v35, v0 offset:640
	ds_load_u16_d16_hi v43, v0 offset:704
	ds_load_u16_d16 v77, v0 offset:544
	ds_load_u16_d16_hi v47, v0 offset:1728
	ds_load_u16_d16_hi v40, v0 offset:1920
	ds_load_u16_d16_hi v48, v0 offset:1984
	ds_load_u16_d16_hi v36, v0 offset:896
	ds_load_u16_d16_hi v44, v0 offset:960
	ds_load_u16_d16 v52, v0 offset:864
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v57.l, 0x7fff, v57.h, s26
	.loc	1 890 30                        ; attention.py:890:30
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
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v62, v202, v62, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v186
	v_mul_f32_e32 v26, v26, v186
	v_mul_f32_e32 v27, v27, v186
	v_mul_f32_e32 v29, v29, v186
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v57.h, 0x7fff, v62.h, s25
	v_permlanex16_b32 v62, v56, s68, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v31, v31, v186
	v_mul_f32_e32 v32, v32, v186
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v78, v0 offset:800
	ds_load_u16_d16 v79, v0 offset:1056
	ds_load_u16_d16 v80, v0 offset:1312
	ds_load_u16_d16 v81, v0 offset:1568
	ds_load_u16_d16 v82, v0 offset:1824
	ds_load_u16_d16 v66, v0 offset:2368
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v77, v0 offset:672
	ds_load_u16_d16_hi v51, v0 offset:736
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v186
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v71, v62, v56, v109
	v_perm_b32 v72, v62, v56, v111
	v_permlanex16_b32 v56, v57, s68, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v19, v19, v186
	v_mul_f32_e32 v21, v21, v186
	v_mul_f32_e32 v23, v23, v186
	v_mul_f32_e32 v24, v24, v186
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v73, v56, v57, v109
	v_perm_b32 v74, v56, v57, v111
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v57, v0 offset:2048
	ds_load_u16_d16 v65, v0 offset:2112
	ds_load_u16_d16 v56, v0 offset:1888
	ds_load_u16_d16_hi v33, v0 offset:128
	ds_load_u16_d16_hi v75, v0 offset:160
	ds_load_u16_d16_hi v41, v0 offset:192
	ds_load_u16_d16_hi v49, v0 offset:224
	ds_load_u16_d16_hi v76, v0 offset:416
	ds_load_u16_d16_hi v42, v0 offset:448
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v78, v0 offset:928
	ds_load_u16_d16_hi v52, v0 offset:992
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v79, v0 offset:1184
	ds_load_u16_d16_hi v53, v0 offset:1248
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v80, v0 offset:1440
	ds_load_u16_d16_hi v54, v0 offset:1504
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v81, v0 offset:1696
	ds_load_u16_d16_hi v55, v0 offset:1760
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v82, v0 offset:1952
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v56, v0 offset:2016
	ds_load_u16_d16_hi v65, v0 offset:2240
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[33:40], v[67:74], v[25:32]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v60, v177
	v_sub_f32_e32 v35, v61, v177
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v33.h, v176.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v11, v11, v186
	v_mul_f32_e32 v12, v12, v186
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v35, v35
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v13, v13, v186
	v_dual_mul_f32 v14, v14, v186 :: v_dual_sub_f32 v37, v84, v177
	v_mul_f32_e32 v15, v15, v186
	v_mul_f32_e32 v16, v16, v186
	v_mul_f32_e32 v1, v1, v186
	v_mul_f32_e32 v2, v2, v186
	v_mul_f32_e32 v3, v3, v186
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v208, 0, v36, s23
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v36, v58, v177
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v207, 0, v35, s20
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v186
	v_mul_f32_e32 v4, v4, v186
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v176.l, v208.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v22, v22, v186
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v33.l, v207.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v20, v20, v186 :: v_dual_and_b32 v35, 1, v176
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v208, v208
	v_cmp_o_f32_e64 s20, v207, v207
	v_and_b32_e32 v33, 1, v33
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[75:82], v[67:74], v[17:24]
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v35, v208, v35, 0x7fff
	.loc	1 886 33 is_stmt 1              ; attention.py:886:33
	v_cndmask_b32_e64 v82, 0, v36, s39
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v36, v85, v177
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v33, v207, v33, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v186
	v_mul_f32_e32 v7, v7, v186
	v_mul_f32_e32 v8, v8, v186
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s20
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s3
	v_mov_b16_e64 v176.l, v82.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v186
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v34.h, v176.h
	v_cmp_o_f32_e64 s3, v82, v82
	v_permlanex16_b32 v35, v33, s68, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v86, v177
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[41:48], v[67:74], v[9:16]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v204, 0, v36, s37
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v186
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v38, v38
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[49:56], v[67:74], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_perm_b32 v73, v35, v33, v109
	v_perm_b32 v74, v35, v33, v111
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v35, v59, v177
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v33.h, v176.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v71, v0 offset:3648
	ds_load_u16_d16 v64, v0 offset:3840
	ds_load_u16_d16 v72, v0 offset:3904
	ds_load_u16_d16 v58, v0 offset:2304
	ds_load_u16_d16 v59, v0 offset:2560
	ds_load_u16_d16 v67, v0 offset:2624
	ds_load_u16_d16 v60, v0 offset:2816
	ds_load_u16_d16 v68, v0 offset:2880
	ds_load_u16_d16 v61, v0 offset:3072
	ds_load_u16_d16 v69, v0 offset:3136
	ds_load_u16_d16 v62, v0 offset:3328
	ds_load_u16_d16 v70, v0 offset:3392
	ds_load_u16_d16 v63, v0 offset:3584
	ds_load_u16_d16_hi v57, v0 offset:2176
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v205, 0, v37, s19
	v_cndmask_b32_e64 v206, 0, v38, s36
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v71, v0 offset:3776
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v64, v0 offset:3968
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v72, v0 offset:4032
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v58, v0 offset:2432
	ds_load_u16_d16_hi v66, v0 offset:2496
	ds_load_u16_d16 v92, v0 offset:2400
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v59, v0 offset:2688
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v67, v0 offset:2752
	ds_load_u16_d16 v93, v0 offset:2656
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v60, v0 offset:2944
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v68, v0 offset:3008
	ds_load_u16_d16 v94, v0 offset:2912
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v61, v0 offset:3200
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v69, v0 offset:3264
	ds_load_u16_d16 v95, v0 offset:3168
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v62, v0 offset:3456
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v70, v0 offset:3520
	ds_load_u16_d16 v96, v0 offset:3424
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v63, v0 offset:3712
	ds_load_u16_d16 v97, v0 offset:3680
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v81, 0, v35, s22
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v35, 1, v176
	v_mov_b16_e64 v176.l, v204.h
	v_cmp_o_f32_e64 s21, v205, v205
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v34.l, v81.h
	v_cmp_o_f32_e64 s20, v81, v81
	v_add3_u32 v35, v82, v35, 0x7fff
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v34, v81, v34, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s3
	v_cmp_o_f32_e64 s3, v204, v204
	v_cmp_o_f32_e64 s20, v206, v206
	v_permlanex16_b32 v35, v34, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_perm_b32 v75, v35, v34, v109
	v_perm_b32 v76, v35, v34, v111
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v87, v177
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v34.h, v176.h
	v_mov_b16_e64 v34.l, v205.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v34, v205, v34, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v203, 0, v35, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v35, 1, v176
	v_mov_b16_e64 v176.l, v206.h
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v33.l, v203.h
	v_cmp_o_f32_e64 s19, v203, v203
	v_add3_u32 v35, v204, v35, 0x7fff
	v_and_b32_e32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v33, v203, v33, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s3
	v_and_b32_e32 v35, 1, v176
	v_add3_u32 v35, v206, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s20
	v_permlanex16_b32 v35, v33, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_perm_b32 v77, v35, v33, v109
	v_perm_b32 v78, v35, v33, v111
	v_permlanex16_b32 v33, v34, s68, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v42, v0 offset:4352
	ds_load_u16_d16 v56, v0 offset:5920
	ds_load_u16_d16 v43, v0 offset:4608
	ds_load_u16_d16 v50, v0 offset:4384
	ds_load_u16_d16 v35, v0 offset:4672
	ds_load_u16_d16 v44, v0 offset:4864
	ds_load_u16_d16 v51, v0 offset:4640
	ds_load_u16_d16 v36, v0 offset:4928
	ds_load_u16_d16 v45, v0 offset:5120
	ds_load_u16_d16 v52, v0 offset:4896
	ds_load_u16_d16 v37, v0 offset:5184
	ds_load_u16_d16 v46, v0 offset:5376
	ds_load_u16_d16 v53, v0 offset:5152
	ds_load_u16_d16 v38, v0 offset:5440
	ds_load_u16_d16 v47, v0 offset:5632
	ds_load_u16_d16 v54, v0 offset:5408
	ds_load_u16_d16 v39, v0 offset:5696
	ds_load_u16_d16 v48, v0 offset:5888
	ds_load_u16_d16 v55, v0 offset:5664
	ds_load_u16_d16 v40, v0 offset:5952
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v79, v33, v34, v109
	v_perm_b32 v80, v33, v34, v111
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v41, v0 offset:4096
	ds_load_u16_d16 v33, v0 offset:4160
	ds_load_u16_d16 v98, v0 offset:3936
	ds_load_u16_d16 v84, v0 offset:2336
	ds_load_u16_d16 v85, v0 offset:2592
	ds_load_u16_d16 v86, v0 offset:2848
	ds_load_u16_d16 v87, v0 offset:3104
	ds_load_u16_d16 v88, v0 offset:3360
	ds_load_u16_d16 v89, v0 offset:3616
	ds_load_u16_d16 v90, v0 offset:3872
	ds_load_u16_d16 v34, v0 offset:4416
	ds_load_u16_d16_hi v83, v0 offset:2208
	ds_load_u16_d16_hi v91, v0 offset:2272
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(34)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[57:64], v[73:80], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v84, v0 offset:2464
	ds_load_u16_d16_hi v92, v0 offset:2528
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v85, v0 offset:2720
	ds_load_u16_d16_hi v93, v0 offset:2784
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v86, v0 offset:2976
	ds_load_u16_d16_hi v94, v0 offset:3040
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v87, v0 offset:3232
	ds_load_u16_d16_hi v95, v0 offset:3296
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v88, v0 offset:3488
	ds_load_u16_d16_hi v96, v0 offset:3552
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v89, v0 offset:3744
	ds_load_u16_d16_hi v97, v0 offset:3808
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v90, v0 offset:4000
	ds_load_u16_d16_hi v98, v0 offset:4064
	ds_load_u16_d16_hi v33, v0 offset:4288
	ds_load_u16_d16 v49, v0 offset:4128
	ds_load_u16_d16 v57, v0 offset:4192
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[65:72], v[73:80], v[9:16]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_mov_b16_e64 v58.h, v176.h
	v_mov_b16_e64 v60.h, v176.h
	v_mov_b16_e64 v63.h, v176.h
	v_mov_b16_e64 v62.h, v176.h
.Ltmp13:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v72, v207, v208
.Ltmp14:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v64.h, v176.h
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v199, v200
	v_add_f32_e32 v67, v195, v196
.Ltmp16:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v68.h, v176.h
	v_mov_b16_e64 v59.h, v176.h
	v_mov_b16_e64 v61.h, v176.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v65, v0 offset:6208
	ds_load_u16_d16 v66, v0 offset:6464
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[83:90], v[73:80], v[17:24]
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[91:98], v[73:80], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v73, v193, v177
	v_sub_f32_e32 v77, v191, v177
	v_sub_f32_e32 v78, v189, v177
	v_sub_f32_e32 v75, v194, v177
	v_sub_f32_e32 v88, v183, v177
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v73, v73
	v_exp_f32_e32 v77, v77
	v_exp_f32_e32 v78, v78
	v_exp_f32_e32 v75, v75
	v_exp_f32_e32 v88, v88
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v80, v188, v177
	v_sub_f32_e32 v84, v179, v177
	v_sub_f32_e32 v86, v180, v177
	v_sub_f32_e32 v90, v181, v177
	v_sub_f32_e32 v76, v192, v177
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v73, 0, v73, s13
	v_cndmask_b32_e64 v92, 0, v77, s10
	v_cndmask_b32_e64 v77, 0, v78, s9
	v_cndmask_b32_e64 v75, 0, v75, s12
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v79, v190, v177
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v58.l, v73.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v85, v178, v177
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v60.l, v77.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v87, v185, v177
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v79, v79
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v58, 1, v58
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v85, v85
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v60, 1, v60
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v87, v87
	v_exp_f32_e32 v80, v80
	v_exp_f32_e32 v84, v84
	v_exp_f32_e32 v86, v86
	v_exp_f32_e32 v90, v90
	v_exp_f32_e32 v76, v76
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v78, 0, v79, s8
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v176.l, v75.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v178, 0, v85, s0
	v_cndmask_b32_e64 v85, 0, v88, s16
	v_cndmask_b32_e64 v179, 0, v87, s18
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v87, v205, v206
	v_add_f32_e32 v88, v73, v75
	v_dual_add_f32 v81, v81, v82 :: v_dual_add_f32 v82, v203, v204
.Ltmp18:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v83, v187, v177
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v79, 0, v80, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp19:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v71, v201, v202 :: v_dual_add_f32 v72, v72, v81
	v_add_f32_e32 v82, v82, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp20:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v83, v83
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v64.l, v85.h
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v69, v197, v198 :: v_dual_add_f32 v70, v70, v71
.Ltmp22:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v76, 0, v76, s11
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v61.l, v79.h
	v_add3_u32 v58, v73, v58, 0x7fff
	v_cmp_o_f32_e64 s7, v75, v75
	v_add3_u32 v60, v77, v60, 0x7fff
	v_mov_b16_e32 v59.l, v76.h
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v80, 0, v83, s6
	v_cndmask_b32_e64 v83, 0, v84, s5
	v_cndmask_b32_e64 v84, 0, v86, s1
	v_cndmask_b32_e64 v86, 0, v90, s17
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v90, v77, v78
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v73, v73
	v_mov_b16_e32 v62.l, v83.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v91, v182, v177
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v63.l, v84.h
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v71, v83, v178
.Ltmp26:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v68.l, v86.h
	v_and_b32_e32 v62, 1, v62
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v91, v91
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v67, v69
	v_add_f32_e32 v67, v79, v80
.Ltmp28:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v89, v184, v177
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v59, 1, v59
	v_cmp_o_f32_e64 s3, v76, v76
	v_cmp_o_f32_e64 s5, v77, v77
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v90, v90, v67
.Ltmp30:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v89, v89
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v61, 1, v61
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v181, 0, v91, s14
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v91, v83, v62, 0x7fff
	v_and_b32_e32 v62, 1, v63
	v_and_b32_e32 v63, 1, v64
	v_and_b32_e32 v64, 1, v68
	v_add3_u32 v59, v76, v59, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v77, v0 offset:6656
	ds_load_u16_d16 v67, v0 offset:6720
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v93, v84, v62, 0x7fff
	v_and_b32_e32 v62, 1, v176
	v_mov_b16_e64 v176.l, v92.h
	v_add3_u32 v94, v85, v63, 0x7fff
	v_add3_u32 v95, v86, v64, 0x7fff
	v_cmp_o_f32_e64 s8, v92, v92
	v_add3_u32 v62, v75, v62, 0x7fff
	v_and_b32_e32 v63, 1, v176
	v_mov_b16_e64 v176.l, v78.h
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v81, v84, v179
.Ltmp32:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v58.l, 0x7fff, v58.h, s1
	v_cndmask_b16 v58.h, 0x7fff, v62.h, s7
	v_add3_u32 v62, v92, v63, 0x7fff
	v_and_b32_e32 v64, 1, v176
	v_mov_b16_e64 v176.l, v80.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v180, 0, v89, s15
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v89, v76, v92 :: v_dual_add_f32 v68, v69, v70
.Ltmp34:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v79, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v63, 1, v176
	v_add3_u32 v61, v79, v61, 0x7fff
	v_cmp_o_f32_e64 s9, v78, v78
	v_cmp_o_f32_e64 s10, v80, v80
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v72, v82
.Ltmp36:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v59.l, 0x7fff, v59.h, s3
	v_add3_u32 v64, v78, v64, 0x7fff
	v_cndmask_b16 v59.h, 0x7fff, v62.h, s8
	v_add3_u32 v62, v80, v63, 0x7fff
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v88, v88, v89
	v_add_f32_e32 v89, v86, v181
	v_add_f32_e32 v71, v71, v81
	v_add_f32_e32 v87, v85, v180
.Ltmp38:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v60.l, 0x7fff, v60.h, s5
	v_cndmask_b16 v61.l, 0x7fff, v61.h, s6
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v183, v68, v69
.Ltmp40:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v68, v58, s68, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v60.h, 0x7fff, v64.h, s9
	v_permlanex16_b32 v63, v59, s68, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v61.h, 0x7fff, v62.h, s10
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v81, v87, v89
.Ltmp42:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s0, v83, v83
	v_cmp_o_f32_e64 s11, v84, v84
	v_cmp_o_f32_e64 s12, v85, v85
	v_cmp_o_f32_e64 s13, v86, v86
	v_perm_b32 v83, v68, v58, v109
	v_perm_b32 v84, v68, v58, v111
	v_permlanex16_b32 v58, v60, s68, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v85, v63, v59, v109
	v_perm_b32 v86, v63, v59, v111
	v_permlanex16_b32 v59, v61, s68, 0xfedcba98 op_sel:[1,0]
	v_dual_mov_b32 v74, v147 :: v_dual_add_f32 v147, v88, v90
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v182, v71, v81
.Ltmp44:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v87, v58, v60, v109
	v_perm_b32 v88, v58, v60, v111
	v_perm_b32 v89, v59, v61, v109
	v_perm_b32 v90, v59, v61, v111
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v91, v0 offset:6240
	ds_load_u16_d16 v76, v0 offset:6400
	ds_load_u16_d16 v78, v0 offset:6912
	ds_load_u16_d16 v68, v0 offset:6976
	ds_load_u16_d16 v93, v0 offset:6752
	ds_load_u16_d16 v79, v0 offset:7168
	ds_load_u16_d16 v69, v0 offset:7232
	ds_load_u16_d16 v94, v0 offset:7008
	ds_load_u16_d16 v80, v0 offset:7424
	ds_load_u16_d16 v70, v0 offset:7488
	ds_load_u16_d16 v95, v0 offset:7264
	ds_load_u16_d16 v81, v0 offset:7680
	ds_load_u16_d16 v71, v0 offset:7744
	ds_load_u16_d16 v96, v0 offset:7520
	ds_load_u16_d16 v82, v0 offset:7936
	ds_load_u16_d16 v72, v0 offset:8000
	ds_load_u16_d16 v97, v0 offset:7776
	ds_load_u16_d16 v98, v0 offset:8032
	ds_load_u16_d16 v92, v0 offset:6496
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v66, v0 offset:6592
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v77, v0 offset:6784
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v67, v0 offset:6848
	ds_load_u16_d16_hi v41, v0 offset:4224
	ds_load_u16_d16_hi v34, v0 offset:4544
	ds_load_u16_d16_hi v43, v0 offset:4736
	ds_load_u16_d16_hi v35, v0 offset:4800
	ds_load_u16_d16_hi v44, v0 offset:4992
	ds_load_u16_d16_hi v36, v0 offset:5056
	ds_load_u16_d16_hi v45, v0 offset:5248
	ds_load_u16_d16_hi v37, v0 offset:5312
	ds_load_u16_d16_hi v46, v0 offset:5504
	ds_load_u16_d16_hi v38, v0 offset:5568
	ds_load_u16_d16_hi v47, v0 offset:5760
	ds_load_u16_d16_hi v39, v0 offset:5824
	ds_load_u16_d16_hi v48, v0 offset:6016
	ds_load_u16_d16_hi v42, v0 offset:4480
	ds_load_u16_d16 v58, v0 offset:4448
	ds_load_u16_d16 v59, v0 offset:4704
	ds_load_u16_d16 v60, v0 offset:4960
	ds_load_u16_d16 v61, v0 offset:5216
	ds_load_u16_d16 v62, v0 offset:5472
	ds_load_u16_d16 v63, v0 offset:5728
	ds_load_u16_d16_hi v40, v0 offset:6080
	ds_load_u16_d16 v75, v0 offset:6144
	ds_load_u16_d16 v64, v0 offset:5984
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v147, v147, v182
.Ltmp46:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v176.l, v178.h
	v_cmp_o_f32_e64 s1, v178, v178
	v_mov_b32_e32 v73, v177
	v_cmp_o_f32_e64 s3, v179, v179
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v147, v183, v147
.Ltmp48:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v180, v180
	v_cmp_o_f32_e64 s6, v181, v181
	s_waitcnt lgkmcnt(44)
	v_cndmask_b16 v177.l, 0x7fff, v91.h, s0
	s_waitcnt lgkmcnt(40)
	v_cndmask_b16 v182.l, 0x7fff, v93.h, s11
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v183, v147, s68, 0xfedcba98 op_sel:[1,0]
.Ltmp50:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(9)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[41:48], v[83:90], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v43, v0 offset:6688
	ds_load_u16_d16_hi v78, v0 offset:7040
	ds_load_u16_d16_hi v68, v0 offset:7104
	ds_load_u16_d16 v44, v0 offset:6944
	ds_load_u16_d16_hi v79, v0 offset:7296
	ds_load_u16_d16_hi v69, v0 offset:7360
	ds_load_u16_d16 v45, v0 offset:7200
	ds_load_u16_d16_hi v80, v0 offset:7552
	ds_load_u16_d16_hi v70, v0 offset:7616
	ds_load_u16_d16 v46, v0 offset:7456
	ds_load_u16_d16_hi v81, v0 offset:7808
	ds_load_u16_d16_hi v71, v0 offset:7872
	ds_load_u16_d16 v47, v0 offset:7712
	ds_load_u16_d16_hi v82, v0 offset:8064
	ds_load_u16_d16_hi v72, v0 offset:8128
	ds_load_u16_d16 v48, v0 offset:7968
	ds_load_u16_d16_hi v65, v0 offset:6336
	ds_load_u16_d16_hi v76, v0 offset:6528
	ds_load_u16_d16 v42, v0 offset:6432
	ds_load_u16_d16_hi v49, v0 offset:4256
	ds_load_u16_d16_hi v57, v0 offset:4320
	ds_load_u16_d16_hi v50, v0 offset:4512
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v58, v0 offset:4576
	ds_load_u16_d16_hi v51, v0 offset:4768
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v59, v0 offset:4832
	ds_load_u16_d16_hi v52, v0 offset:5024
	s_waitcnt lgkmcnt(32)
	ds_load_u16_d16_hi v60, v0 offset:5088
	ds_load_u16_d16_hi v53, v0 offset:5280
	s_waitcnt lgkmcnt(33)
	ds_load_u16_d16_hi v61, v0 offset:5344
	ds_load_u16_d16_hi v54, v0 offset:5536
	s_waitcnt lgkmcnt(34)
	ds_load_u16_d16_hi v62, v0 offset:5600
	s_waitcnt lgkmcnt(32)
	ds_load_u16_d16_hi v75, v0 offset:6272
	ds_load_u16_d16 v41, v0 offset:6176
	ds_load_u16_d16_hi v55, v0 offset:5792
	ds_load_u16_d16_hi v63, v0 offset:5856
	ds_load_u16_d16_hi v56, v0 offset:6048
	s_waitcnt lgkmcnt(36)
	ds_load_u16_d16_hi v64, v0 offset:6112
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v147, v147, v183
.Ltmp52:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v183, 1, v176
	v_mov_b16_e64 v176.l, v179.h
	v_cndmask_b16 v184.l, 0x7fff, v94.h, s12
	v_cndmask_b16 v185.l, 0x7fff, v95.h, s13
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v41, v0 offset:6304
	ds_load_u16_d16_hi v91, v0 offset:6368
	ds_load_u16_d16_hi v42, v0 offset:6560
	ds_load_u16_d16_hi v92, v0 offset:6624
	ds_load_u16_d16_hi v43, v0 offset:6816
	ds_load_u16_d16_hi v93, v0 offset:6880
	ds_load_u16_d16_hi v44, v0 offset:7072
	ds_load_u16_d16_hi v94, v0 offset:7136
	ds_load_u16_d16_hi v45, v0 offset:7328
	ds_load_u16_d16_hi v95, v0 offset:7392
	ds_load_u16_d16_hi v46, v0 offset:7584
	ds_load_u16_d16_hi v96, v0 offset:7648
	ds_load_u16_d16_hi v47, v0 offset:7840
	ds_load_u16_d16_hi v97, v0 offset:7904
	ds_load_u16_d16_hi v48, v0 offset:8096
	ds_load_u16_d16_hi v98, v0 offset:8160
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v187, 1, v176
	v_mov_b16_e64 v176.l, v180.h
	v_add3_u32 v178, v178, v183, 0x7fff
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[83:90], v[9:16]
	s_waitcnt lgkmcnt(17)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[49:56], v[83:90], v[17:24]
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[57:64], v[83:90], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v183, 1, v176
	v_mov_b16_e64 v176.l, v181.h
	v_cndmask_b16 v177.h, 0x7fff, v178.h, s1
	v_add3_u32 v178, v179, v187, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v147, v74, v186 :: v_dual_and_b32 v176, 1, v176
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v179, v177, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v182.h, 0x7fff, v178.h, s3
	v_add3_u32 v178, v180, v183, 0x7fff
	v_add3_u32 v35, v181, v176, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_perm_b32 v33, v179, v177, v109
	v_permlanex16_b32 v36, v182, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v184.h, 0x7fff, v178.h, s5
	v_perm_b32 v34, v179, v177, v111
	v_cndmask_b16 v185.h, 0x7fff, v35.h, s6
	v_perm_b32 v35, v36, v182, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v38, v184, s68, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v36, v36, v182, v111
	v_permlanex16_b32 v40, v185, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_perm_b32 v37, v38, v184, v109
	v_perm_b32 v38, v38, v184, v111
	v_perm_b32 v39, v40, v185, v109
	v_perm_b32 v40, v40, v185, v111
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[75:82], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[41:48], v[33:40], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[65:72], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[91:98], v[33:40], v[1:8]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v33, v112
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v0, null, v147, v147, v25
	v_div_scale_f32 v34, null, v147, v147, v26
	v_div_scale_f32 v35, null, v147, v147, v27
	v_rcp_f32_e32 v36, v0
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, vcc_lo, v25, v147, v25
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v40, s0, v26, v147, v26
	v_div_scale_f32 v43, null, v147, v147, v28
	v_div_scale_f32 v49, s3, v28, v147, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v0, v36, 1.0
	v_fma_f32 v42, -v34, v37, 1.0
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v33, s41, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v35, v38, 1.0
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s53, s53, 0xffff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v36, v41, v36 :: v_dual_fmac_f32 v37, v42, v37
	v_rcp_f32_e32 v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v41, s1, v27, v147, v27
	v_dual_mul_f32 v44, v39, v36 :: v_dual_mul_f32 v45, v40, v37
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v0, v44, v39
	v_fma_f32 v48, -v34, v45, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v43, v42, 1.0
	v_dual_fmac_f32 v44, v47, v36 :: v_dual_fmac_f32 v45, v48, v37
	v_div_scale_f32 v47, null, v147, v147, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v50, v42
	v_fma_f32 v0, -v0, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v45, v40
	v_rcp_f32_e32 v39, v47
	v_div_scale_f32 v40, null, v147, v147, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v36, v44
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v36, v49, v42
	v_div_fmas_f32 v34, v34, v37, v45
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v0, v147, v25
	v_rcp_f32_e32 v44, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v39, 1.0
	v_div_fixup_f32 v25, v34, v147, v26
	v_div_scale_f32 v34, s4, v29, v147, v29
	v_fma_f32 v37, -v43, v36, v49
	v_fmac_f32_e32 v39, v45, v39
	v_mul_f32_e32 v46, v41, v38
	v_div_scale_f32 v45, null, v147, v147, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v37, v42
	v_div_scale_f32 v37, null, v147, v147, v31
	v_fma_f32 v51, -v35, v46, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v45
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v147
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v51, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s0
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v26, -v35, v46, v41
	v_mul_f32_e32 v41, v34, v39
	v_fma_f32 v35, -v40, v44, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v26, v26, v38, v46
	v_fma_f32 v38, -v43, v36, v49
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v43, s1, v30, v147, v30
	v_div_fixup_f32 v26, v26, v147, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v38, v42, v36
	v_fma_f32 v38, -v47, v41, v34
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v36, v147, v28
	v_fmac_f32_e32 v41, v38, v39
	v_div_scale_f32 v38, null, v147, v147, v17
	v_div_scale_f32 v36, s3, v31, v147, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v47, v41, v34
	v_rcp_f32_e32 v49, v38
	v_fmac_f32_e32 v44, v35, v44
	v_rcp_f32_e32 v35, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v26, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
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
	v_div_scale_f32 v46, s5, v32, v147, v32
	v_div_scale_f32 v43, null, v147, v147, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v37, v47, v36
	v_mul_f32_e32 v40, v46, v48
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v49, v41, v49
	v_div_fmas_f32 v34, v34, v44, v42
	v_fmac_f32_e32 v47, v39, v35
	v_rcp_f32_e32 v39, v43
	v_fma_f32 v42, -v45, v40, v46
	v_div_scale_f32 v41, s1, v17, v147, v17
	v_div_fixup_f32 v28, v28, v147, v29
	v_div_fixup_f32 v29, v34, v147, v30
	v_fma_f32 v30, -v37, v47, v36
	v_fmac_f32_e32 v40, v42, v48
	v_div_scale_f32 v37, null, v147, v147, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v43, v39, 1.0
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v34, v41, v49
	v_div_fmas_f32 v30, v30, v35, v47
	v_fma_f32 v35, -v45, v40, v46
	v_fmac_f32_e32 v39, v36, v39
	v_rcp_f32_e32 v36, v37
	v_div_scale_f32 v45, null, v147, v147, v20
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v42, -v38, v34, v41
	v_div_scale_f32 v44, s3, v18, v147, v18
	v_div_fmas_f32 v35, v35, v48, v40
	v_rcp_f32_e32 v40, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v42, v49
	v_mul_f32_e32 v42, v44, v39
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v37, v36, 1.0
	v_div_fixup_f32 v30, v30, v147, v31
	v_div_fixup_f32 v31, v35, v147, v32
	v_fma_f32 v32, -v38, v34, v41
	v_fma_f32 v35, -v43, v42, v44
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v38, s4, v19, v147, v19
	v_fma_f32 v41, -v45, v40, 1.0
	v_div_scale_f32 v46, null, v147, v147, v21
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v42, v35, v39
	v_div_fmas_f32 v32, v32, v49, v34
	v_mul_f32_e32 v34, v38, v36
	v_fmac_f32_e32 v40, v41, v40
	v_rcp_f32_e32 v35, v46
	v_div_scale_f32 v41, s1, v20, v147, v20
	v_div_scale_f32 v47, null, v147, v147, v22
	v_div_fixup_f32 v17, v32, v147, v17
	v_fma_f32 v32, -v43, v42, v44
	v_fma_f32 v43, -v37, v34, v38
	v_mul_f32_e32 v44, v41, v40
	v_rcp_f32_e32 v48, v47
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v49, -v46, v35, 1.0
	v_div_fmas_f32 v32, v32, v39, v42
	v_fmac_f32_e32 v34, v43, v36
	v_fma_f32 v39, -v45, v44, v41
	v_div_scale_f32 v42, s3, v21, v147, v21
	v_fmac_f32_e32 v35, v49, v35
	v_div_fixup_f32 v18, v32, v147, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v47, v48, 1.0
	v_fma_f32 v32, -v37, v34, v38
	v_fmac_f32_e32 v44, v39, v40
	v_div_scale_f32 v39, null, v147, v147, v23
	s_mov_b32 vcc_lo, s4
	v_dual_mul_f32 v37, v42, v35 :: v_dual_fmac_f32 v48, v43, v48
	v_div_scale_f32 v38, s5, v22, v147, v22
	v_div_fmas_f32 v32, v32, v36, v34
	v_fma_f32 v34, -v45, v44, v41
	v_rcp_f32_e32 v41, v39
	v_fma_f32 v36, -v46, v37, v42
	v_mul_f32_e32 v43, v38, v48
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v147, v147, v24
	v_div_fmas_f32 v34, v34, v40, v44
	v_fmac_f32_e32 v37, v36, v35
	v_fma_f32 v40, -v47, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v36, v45
	v_fma_f32 v44, -v39, v41, 1.0
	v_div_fixup_f32 v19, v32, v147, v19
	v_div_fixup_f32 v20, v34, v147, v20
	v_fma_f32 v32, -v46, v37, v42
	v_fmac_f32_e32 v43, v40, v48
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v34, s1, v23, v147, v23
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v45, v36, 1.0
	v_div_fmas_f32 v32, v32, v35, v37
	v_fma_f32 v35, -v47, v43, v38
	v_mul_f32_e32 v37, v34, v41
	v_div_scale_f32 v38, null, v147, v147, v9
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v36, v40, v36
	v_div_fmas_f32 v35, v35, v48, v43
	v_rcp_f32_e32 v42, v38
	v_fma_f32 v43, -v39, v37, v34
	v_div_scale_f32 v40, s3, v24, v147, v24
	v_div_scale_f32 v46, null, v147, v147, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v37, v43, v41 :: v_dual_mul_f32 v44, v40, v36
	v_div_fixup_f32 v22, v35, v147, v22
	v_rcp_f32_e32 v35, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v38, v42, 1.0
	v_fma_f32 v34, -v39, v37, v34
	v_div_scale_f32 v39, null, v147, v147, v11
	v_div_fixup_f32 v21, v32, v147, v21
	v_fma_f32 v32, -v45, v44, v40
	v_fmac_f32_e32 v42, v43, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v43, v39
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v47, -v46, v35, 1.0
	v_fmac_f32_e32 v44, v32, v36
	v_div_fmas_f32 v34, v34, v41, v37
	v_div_scale_f32 v41, s1, v10, v147, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v47, v35
	v_fma_f32 v37, -v45, v44, v40
	v_div_scale_f32 v32, s4, v9, v147, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v39, v43, 1.0
	v_div_scale_f32 v48, null, v147, v147, v12
	v_dual_mul_f32 v49, v41, v35 :: v_dual_mul_f32 v40, v32, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, s5, v11, v147, v11
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	v_div_fmas_f32 v36, v37, v36, v44
	v_fma_f32 v37, -v46, v49, v41
	v_mul_f32_e32 v44, v45, v43
	v_fma_f32 v47, -v38, v40, v32
	v_div_fixup_f32 v23, v34, v147, v23
	v_div_fixup_f32 v24, v36, v147, v24
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v39, v44, v45
	v_div_scale_f32 v37, null, v147, v147, v13
	v_fmac_f32_e32 v40, v47, v42
	v_fma_f32 v36, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v32, -v38, v40, v32
	v_fma_f32 v38, -v46, v49, v41
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s3, v12, v147, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v32, v32, v42, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, null, v147, v147, v14
	v_div_fmas_f32 v35, v38, v35, v49
	v_fma_f32 v38, -v39, v44, v45
	v_mul_f32_e32 v39, v36, v50
	v_fma_f32 v41, -v37, v34, 1.0
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v42, v40
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v43, -v48, v39, v36
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s1, v13, v147, v13
	v_div_fixup_f32 v9, v32, v147, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v43, v50
	v_div_fixup_f32 v10, v35, v147, v10
	v_mul_f32_e32 v32, v41, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v48, v39, v36
	v_div_fixup_f32 v11, v38, v147, v11
	v_fma_f32 v43, -v37, v32, v41
	v_div_scale_f32 v38, null, v147, v147, v15
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s4, v14, v147, v14
	v_div_fmas_f32 v36, v36, v50, v39
	v_fmac_f32_e32 v32, v43, v34
	v_rcp_f32_e32 v44, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v39, v35, v42
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v36, v147, v12
	v_fma_f32 v36, -v37, v32, v41
	v_div_scale_f32 v43, null, v147, v147, v16
	v_fma_f32 v37, -v40, v39, v35
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v36, v34, v32
	v_div_scale_f32 v34, null, v147, v147, v1
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v36, s1, v15, v147, v15
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v147, v147, v2
	v_div_fixup_f32 v13, v32, v147, v13
	v_fma_f32 v35, -v40, v39, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v34, v37, 1.0
	v_mul_f32_e32 v40, v36, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v32, v45
	v_div_scale_f32 v32, s3, v16, v147, v16
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v147, v147, v3
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v32, v45
	v_div_scale_f32 v48, s4, v1, v147, v1
	v_fma_f32 v49, -v41, v47, 1.0
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v32
	v_mul_f32_e32 v51, v48, v37
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v2, v147, v2
	v_div_fixup_f32 v14, v35, v147, v14
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
	v_div_scale_f32 v39, s1, v3, v147, v3
	v_div_fmas_f32 v35, v35, v44, v40
	v_div_scale_f32 v40, null, v147, v147, v4
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	v_div_fmas_f32 v32, v32, v45, v42
	v_rcp_f32_e32 v42, v40
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v35, v147, v15
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v16, v32, v147, v16
	v_div_fixup_f32 v1, v34, v147, v1
	v_div_scale_f32 v34, null, v147, v147, v5
	v_fmac_f32_e32 v36, v41, v50
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fmas_f32 v37, v37, v47, v38
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v44, null, v147, v147, v8
	v_fma_f32 v32, -v46, v36, v39
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v147, v147, v6
	v_div_fixup_f32 v2, v37, v147, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v32, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v37, null, v147, v147, v7
	v_rcp_f32_e32 v39, v35
	v_div_scale_f32 v38, vcc_lo, v4, v147, v4
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v3, v32, v147, v3
	v_rcp_f32_e32 v46, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v32, -v34, v36, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v47, -v40, v43, v38
	v_fmac_f32_e32 v36, v32, v36
	v_div_scale_f32 v32, s1, v5, v147, v5
	v_fma_f32 v48, -v37, v41, 1.0
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v147, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v49, v32, v36
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v147, v7
	v_fma_f32 v50, -v44, v46, 1.0
	v_fmac_f32_e32 v43, v47, v42
	v_mul_f32_e32 v51, v45, v39
	v_fma_f32 v47, -v34, v49, v32
	v_mul_f32_e32 v52, v48, v41
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s5, v8, v147, v8
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
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v34, -v37, v52, v48
	v_div_fmas_f32 v35, v35, v39, v51
	v_div_fixup_f32 v4, v38, v147, v4
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v37, v0, 16, 1
	v_bfe_u32 v38, v25, 16, 1
	v_bfe_u32 v39, v26, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s4
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s4, v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v37, v0, v37, 0x7fff
	v_add3_u32 v0, v25, v38, 0x7fff
	v_cmp_o_f32_e64 s5, v25, v25
	v_add3_u32 v25, v26, v39, 0x7fff
	v_bfe_u32 v26, v27, 16, 1
	v_cndmask_b16 v0.l, 0x7fff, v37.h, s4
	v_bfe_u32 v37, v28, 16, 1
	v_bfe_u32 v38, v29, 16, 1
	v_cmp_o_f32_e64 s4, v27, v27
	v_add3_u32 v26, v27, v26, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s5
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s6
	v_add3_u32 v27, v28, v37, 0x7fff
	v_cmp_o_f32_e64 s5, v28, v28
	v_add3_u32 v28, v29, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v29, v29
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s4
	v_bfe_u32 v26, v30, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s5
	v_bfe_u32 v29, v31, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s6
	v_bfe_u32 v28, v17, 16, 1
	v_add3_u32 v26, v30, v26, 0x7fff
	v_cmp_o_f32_e64 s4, v30, v30
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v31, v29, 0x7fff
	v_cmp_o_f32_e64 s5, v31, v31
	v_add3_u32 v28, v17, v28, 0x7fff
	v_cmp_o_f32_e64 s6, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v26.h, s4
	v_bfe_u32 v26, v18, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.h, 0x7fff, v29.h, s5
	v_bfe_u32 v29, v19, 16, 1
	v_bfe_u32 v30, v20, 16, 1
	v_add3_u32 v26, v18, v26, 0x7fff
	v_cmp_o_f32_e64 s4, v18, v18
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s6
	v_add3_u32 v18, v19, v29, 0x7fff
	v_cmp_o_f32_e64 s5, v19, v19
	v_add3_u32 v19, v20, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v20, v20
	v_cndmask_b16 v28.h, 0x7fff, v26.h, s4
	v_bfe_u32 v20, v21, 16, 1
	v_bfe_u32 v26, v22, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s5
	v_add3_u32 v20, v21, v20, 0x7fff
	v_cmp_o_f32_e64 s4, v21, v21
	v_add3_u32 v21, v22, v26, 0x7fff
	v_cmp_o_f32_e64 s5, v22, v22
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s6
	v_bfe_u32 v19, v23, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s4
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s5
	v_bfe_u32 v21, v9, 16, 1
	v_bfe_u32 v22, v24, 16, 1
	v_add3_u32 v19, v23, v19, 0x7fff
	v_cmp_o_f32_e64 s6, v23, v23
	v_bfe_u32 v23, v10, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v21, v9, v21, 0x7fff
	v_cmp_o_f32_e64 s5, v9, v9
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v22, v24, v22, 0x7fff
	v_cmp_o_f32_e64 s4, v24, v24
	v_add3_u32 v9, v10, v23, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s6
	v_cmp_o_f32_e64 s6, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s5
	v_bfe_u32 v21, v12, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s4
	v_bfe_u32 v22, v13, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s4, v11, v11
	v_add3_u32 v11, v12, v21, 0x7fff
	v_cmp_o_f32_e64 s5, v12, v12
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s6
	v_add3_u32 v12, v13, v22, 0x7fff
	v_cmp_o_f32_e64 s6, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s4
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s5
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v21, v16, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v44, v53, v50
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v14, v14
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s6
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s5, v15, v15
	v_add3_u32 v14, v16, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v16, v16
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v46, v53
	v_div_fixup_f32 v5, v32, v147, v5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s4
	v_bfe_u32 v13, v1, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v35, v147, v6
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s5
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s6
	v_bfe_u32 v14, v3, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v147, v7
	v_div_fixup_f32 v8, v36, v147, v8
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v1, v1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v1, v2, v15, 0x7fff
	v_cmp_o_f32_e64 s5, v2, v2
	v_add3_u32 v2, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s6, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v1.l, 0x7fff, v13.h, s4
	v_bfe_u32 v13, v5, 16, 1
	v_add3_u32 v3, v4, v3, 0x7fff
	v_cmp_o_f32_e64 s4, v4, v4
	v_bfe_u32 v4, v6, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s5
	v_add3_u32 v13, v5, v13, 0x7fff
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s5, v5, v5
	v_bfe_u32 v5, v8, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s6
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s6, v6, v6
	v_add3_u32 v6, v7, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v7, v7
	v_add3_u32 v5, v8, v5, 0x7fff
	v_cmp_o_f32_e64 s8, v8, v8
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s4
	v_cndmask_b16 v3.l, 0x7fff, v13.h, s5
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s6
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s7
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s8
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v32, 1, v110
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v5, v27, v0, s40
	v_cndmask_b32_e64 v0, v0, v27, s40
	v_cndmask_b32_e64 v6, v17, v25, s40
	v_cndmask_b32_e64 v7, v25, v17, s40
	v_cndmask_b32_e64 v13, v28, v20, s40
	v_cndmask_b32_e64 v15, v18, v19, s40
	v_cndmask_b32_e64 v16, v12, v9, s40
	v_cndmask_b32_e64 v9, v9, v12, s40
	v_cndmask_b32_e64 v12, v11, v10, s40
	v_cndmask_b32_e64 v10, v10, v11, s40
	v_cndmask_b32_e64 v17, v3, v1, s40
	v_cndmask_b32_e64 v1, v1, v3, s40
	v_cndmask_b32_e64 v14, v19, v18, s40
	v_cndmask_b32_e64 v18, v4, v2, s40
	v_cndmask_b32_e64 v2, v2, v4, s40
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 16, v32
	s_mov_b32 s4, 0x76543210
	v_or_b32_e32 v35, 32, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v8, v20, v28, s40
	v_permlanex16_b32 v3, v0, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v7, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v13, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v15, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v10, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s4, 0xfedcba98 op_sel:[1,0]
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 48, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_permlanex16_b32 v19, v2, s4, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s41, v34
	v_cmp_gt_i32_e64 s3, s41, v32
	v_cmp_gt_i32_e64 s0, s41, v35
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v3, v5, v109
	v_perm_b32 v1, v3, v5, v111
	v_perm_b32 v2, v4, v6, v109
	v_perm_b32 v3, v4, v6, v111
	v_perm_b32 v4, v7, v8, v109
	v_perm_b32 v5, v7, v8, v111
	v_perm_b32 v6, v11, v14, v109
	v_perm_b32 v7, v11, v14, v111
	v_perm_b32 v10, v13, v12, v109
	v_perm_b32 v11, v13, v12, v111
	v_perm_b32 v12, v15, v17, v109
	v_perm_b32 v13, v15, v17, v111
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v33, v34, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v8, v9, v16, v109
	v_perm_b32 v9, v9, v16, v111
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v33, v32, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s41, v36
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v14, v19, v18, v109
	v_perm_b32 v15, v19, v18, v111
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v18, v33, v35, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	s_and_b32 s3, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v33, v36, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[52:55], 0 offen
	buffer_store_b128 v[4:7], v17, s[52:55], 0 offen
	buffer_store_b128 v[8:11], v18, s[52:55], 0 offen
	buffer_store_b128 v[12:15], v19, s[52:55], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp53:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_sgpr 72
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 223
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 72
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14216
; TotalNumSgprs: 74
; NumVgprs: 223
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 74
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
	.short	883                             ; DW_AT_call_line
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
	.short	887                             ; DW_AT_call_line
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
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     74
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
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
