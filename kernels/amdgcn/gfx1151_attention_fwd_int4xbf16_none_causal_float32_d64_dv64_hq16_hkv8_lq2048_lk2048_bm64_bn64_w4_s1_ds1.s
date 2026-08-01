	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s39, s[0:1], 0x60
	s_load_b32 s12, s[0:1], 0x88
	s_load_b64 s[8:9], s[0:1], 0x0
.Ltmp0:
	.loc	1 773 86 prologue_end           ; attention.py:773:86
	v_lshlrev_b32_e32 v43, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v5, 1, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s2, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s4, s3, 11
	s_mov_b32 s11, 0x31027000
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 16, v43
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s2, v5
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s5, s2, s4
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v113, v0, 4, 1
	v_and_b32_e32 v42, 15, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	s_mov_b32 s4, 0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v44, 1, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[82:83], null, s39, v5, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s35, s39, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s13, s2, s12
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v6, v44, 30, v113
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s13, s13, 64
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s35
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s39, s5, v[82:83]
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_gt_i32 s13, 0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v6, 2, v6
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v7, 4, v6
	buffer_load_b128 v[1:4], v1, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v34, v6, v1
	ds_bpermute_b32 v35, v6, v2
	ds_bpermute_b32 v36, v6, v3
	ds_bpermute_b32 v38, v6, v4
	ds_bpermute_b32 v37, v7, v1
	ds_bpermute_b32 v39, v7, v2
	ds_bpermute_b32 v40, v7, v3
	ds_bpermute_b32 v41, v7, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v2, v5, 48, v42
	v_lshrrev_b32_e32 v1, 4, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v45, s2, v2
	v_or_b32_e32 v125, s5, v2
	.loc	1 776 23 is_stmt 1              ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v45
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1046 24                       ; attention.py:1046:24
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
	v_or_b32_e32 v124, 2, v113
	v_or_b32_e32 v123, 4, v113
	v_or_b32_e32 v122, 6, v113
	v_or_b32_e32 v121, 8, v113
	v_or_b32_e32 v120, 10, v113
	v_or_b32_e32 v119, 12, v113
	v_or_b32_e32 v118, 14, v113
	v_or_b32_e32 v117, 16, v113
	v_or_b32_e32 v116, 18, v113
	v_or_b32_e32 v115, 20, v113
	v_or_b32_e32 v114, 22, v113
	v_or_b32_e32 v112, 24, v113
	v_or_b32_e32 v111, 26, v113
	v_or_b32_e32 v110, 28, v113
	v_or_b32_e32 v109, 30, v113
	v_or_b32_e32 v108, 32, v113
	v_or_b32_e32 v107, 34, v113
	v_or_b32_e32 v106, 36, v113
	v_or_b32_e32 v105, 38, v113
	v_or_b32_e32 v104, 40, v113
	v_or_b32_e32 v103, 42, v113
	v_or_b32_e32 v102, 44, v113
	v_or_b32_e32 v101, 46, v113
	v_or_b32_e32 v100, 48, v113
	v_or_b32_e32 v99, 50, v113
	v_or_b32_e32 v98, 52, v113
	v_or_b32_e32 v95, 54, v113
	v_or_b32_e32 v93, 56, v113
	v_or_b32_e32 v97, 58, v113
	v_or_b32_e32 v96, 60, v113
	v_or_b32_e32 v94, 62, v1
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
	v_mov_b32_e32 v92, v8
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_lshlrev_b32_e32 v1, 1, v125
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v4, 24, v44
	v_mov_b32_e32 v44, 0x7632
	s_mov_b32 s55, 0x31027000
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_mov_b32 s54, 0x7ffffffe
	v_dual_mov_b32 v28, v25 :: v_dual_and_b32 v127, 0x7f0, v43
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v3, 24, v0
	s_load_b32 s1, s[0:1], 0x68
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v43, 0x5410 :: v_dual_add_nc_u32 v126, s12, v45
	s_lshr_b32 s0, s0, 28
	v_dual_mov_b32 v49, 0xff800000 :: v_dual_lshlrev_b32 v2, 3, v0
	v_xor_b32_e32 v128, v127, v3
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s53, s9, 0xffff
	s_mov_b32 s52, s8
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s8, s13, 0x800
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v46, v1, s[52:55], 0 offen
	v_dual_mov_b32 v26, v25 :: v_dual_and_b32 v1, 16, v0
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s8, s8, 63
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s9, s3, s0
	.loc	1 811 34                        ; attention.py:811:34
	s_ashr_i32 s12, s8, 31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v1
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s13, s9, 0xfff0
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s12, s12, 26
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s9, s9, 10
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s13
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v45, 3, v0
	v_dual_mov_b32 v32, v25 :: v_dual_and_b32 v33, 56, v2
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v84, v38, v41, s0
	v_lshl_or_b32 v129, v42, 5, v4
	v_cndmask_b32_e64 v86, v35, v39, s0
	v_cndmask_b32_e64 v85, v34, v37, s0
	v_cndmask_b32_e64 v88, v41, v38, s0
	v_cndmask_b32_e64 v90, v39, v35, s0
	v_cndmask_b32_e64 v89, v37, v34, s0
	v_xor_b32_e32 v34, 8, v128
	v_cndmask_b32_e64 v38, 0x1054, v43, s0
	v_cndmask_b32_e64 v39, 0x3276, v44, s0
	.loc	1 811 34                        ; attention.py:811:34
	s_add_i32 s67, s8, s12
	.loc	1 821 32                        ; attention.py:821:32
	s_and_b32 s8, s9, 0xffffc000
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s9, s3, 0x10007
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e32 vcc_lo, s38, v33
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s3, s3, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v83, v36, v40, s0
	v_cndmask_b32_e64 v87, v40, v36, s0
	v_xor_b32_e32 v35, 8, v129
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[91:92], null, s38, v45, v[33:34]
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s0, s3, 0x80000
	v_lshl_or_b32 v33, v38, 8, v38
	v_lshl_or_b32 v38, v39, 8, v39
	s_sext_i32_i16 s0, s0
	v_dual_mov_b32 v27, v25 :: v_dual_add_nc_u32 v130, 0, v34
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s0, s0, 10
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v31, v25 :: v_dual_and_b32 v34, 0x760076, v38
	v_dual_mov_b32 v18, v25 :: v_dual_add_nc_u32 v131, 0, v35
	v_dual_mov_b32 v22, v25 :: v_dual_and_b32 v33, 0x540054, v33
	v_mov_b32_e32 v24, v25
	s_and_b32 s68, s0, 0xfffff800
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s0, s1, 0x3fb8aa3b
	v_xor_b32_e32 v36, 16, v129
	v_xor_b32_e32 v37, 24, v129
	v_lshl_or_b32 v33, v33, 4, v33
	v_lshl_or_b32 v34, v34, 4, v34
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s68, s68, s8
	v_lshl_add_u32 v0, v42, 1, 0
	v_dual_mov_b32 v29, v25 :: v_dual_add_nc_u32 v132, 0, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v19, v25 :: v_dual_and_b32 v144, 0x7060706, v34
	v_dual_mov_b32 v20, v25 :: v_dual_add_nc_u32 v133, 0, v37
	v_mov_b32_e32 v23, v25
	v_mov_b32_e32 v9, v25
	v_dual_mov_b32 v10, v25 :: v_dual_and_b32 v143, 0x5040504, v33
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v13, v25
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
	v_or_b32_e32 v134, s68, v101
	v_or_b32_e32 v135, s68, v100
	v_or_b32_e32 v136, s68, v99
	v_or_b32_e32 v137, s68, v98
	v_or_b32_e32 v138, s68, v95
	v_or_b32_e32 v139, s68, v93
	v_or_b32_e32 v141, s68, v97
	v_or_b32_e32 v142, s68, v96
	v_mov_b32_e32 v92, v25
	s_mov_b32 s40, 0
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s50, s38, 4
	s_lshl_b32 s51, s38, 5
	s_mul_i32 s64, s38, 48
	s_mov_b32 s65, 0x76543210
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
	s_mov_b32 s66, s40
	.loc	1 811 33                        ; attention.py:811:33
	s_and_not1_b32 s67, s67, 63
	s_and_b32 s61, s7, 0xffff
	s_mov_b32 s56, s10
	s_mov_b32 s60, s6
	s_mov_b32 s52, s4
	s_mov_b32 s53, s5
	s_mov_b32 s57, s11
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v35, 16, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v17, v25 :: v_dual_mul_f32 v140, s0, v35
	v_mov_b32_e32 v21, v25
	v_mov_b32_e32 v12, v25
	v_dual_mov_b32 v14, v25 :: v_dual_mov_b32 v147, v140
	.loc	1 847 25                        ; attention.py:847:25
	v_mov_b32_e32 v145, v140
	v_mov_b32_e32 v146, v140
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s0, s66, s68
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s66, v99
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[43:44], null, s0, s39, v[82:83]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v152, s66, v100
	v_or_b32_e32 v153, s66, v101
	v_or_b32_e32 v154, s66, v102
	v_mad_u64_u32 v[41:42], null, s0, s38, v[91:92]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v42, s0, v94, 1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v43, 0x80000000, v43, s35
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s0, v151, v126
	v_cmp_le_i32_e64 s14, v152, v126
	v_cmp_le_i32_e64 s15, v153, v126
	v_cmp_le_i32_e64 s16, v154, v126
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[151:154], v43, s[52:55], 0 offen
	v_add_nc_u32_e32 v45, 0, v128
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v33, s40 :: v_dual_add_nc_u32 v46, 0, v129
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v175, s66, v124
	v_or_b32_e32 v176, s66, v113
	v_or_b32_e32 v177, s66, v94
	v_or_b32_e32 v178, s66, v96
	v_or_b32_e32 v181, s66, v95
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v34, s41
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s24, v175, v126
	v_cmp_le_i32_e64 s25, v176, v126
	v_cmp_le_i32_e64 s9, v177, v126
	v_cmp_le_i32_e64 s1, v178, v126
	v_cmp_le_i32_e64 s6, v181, v126
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or_b32_e32 v57, s68, v113
	v_or_b32_e32 v66, s68, v119
	v_or_b32_e32 v74, s68, v110
	v_or_b32_e32 v78, s68, v106
	v_or_b32_e32 v149, s68, v102
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v155, s66, v103
	v_or_b32_e32 v156, s66, v104
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v35, s42 :: v_dual_mov_b32 v36, s43
	v_dual_mov_b32 v37, s44 :: v_dual_mov_b32 v38, s45
	v_dual_mov_b32 v39, s46 :: v_dual_mov_b32 v40, s47
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v157, s66, v105
	v_or_b32_e32 v158, s66, v106
	v_or_b32_e32 v159, s66, v107
	v_or_b32_e32 v160, s66, v108
	v_or_b32_e32 v161, s66, v109
	v_or_b32_e32 v162, s66, v110
	v_or_b32_e32 v163, s66, v111
	v_or_b32_e32 v164, s66, v112
	v_or_b32_e32 v165, s66, v114
	v_or_b32_e32 v166, s66, v115
	v_or_b32_e32 v167, s66, v116
	v_or_b32_e32 v168, s66, v117
	v_or_b32_e32 v169, s66, v118
	v_or_b32_e32 v170, s66, v119
	v_or_b32_e32 v171, s66, v120
	v_or_b32_e32 v172, s66, v121
	v_or_b32_e32 v173, s66, v122
	v_or_b32_e32 v174, s66, v123
	v_or_b32_e32 v179, s66, v97
	v_or_b32_e32 v180, s66, v93
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v61, v57, s66, 1
	v_add_lshl_u32 v57, v66, s66, 1
	v_add_lshl_u32 v66, v74, s66, 1
	v_add_lshl_u32 v74, v78, s66, 1
	v_add_lshl_u32 v78, v149, s66, 1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s17, v155, v126
	v_cmp_le_i32_e64 s18, v156, v126
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v149, 1, v41
	v_add_lshl_u32 v155, v41, s50, 1
	v_add_lshl_u32 v156, v41, s51, 1
	v_add_nc_u32_e32 v56, 0, v127
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s19, v157, v126
	v_cmp_le_i32_e64 s20, v158, v126
	v_cmp_le_i32_e64 s21, v159, v126
	v_cmp_le_i32_e64 s22, v160, v126
	v_cmp_le_i32_e64 s23, v161, v126
	v_cmp_le_i32_e64 s12, v162, v126
	v_cmp_le_i32_e64 s26, v163, v126
	v_cmp_le_i32_e64 s27, v164, v126
	v_cmp_le_i32_e64 s28, v165, v126
	v_cmp_le_i32_e64 s29, v166, v126
	v_cmp_le_i32_e64 s30, v167, v126
	v_cmp_le_i32_e64 s4, v168, v126
	v_cmp_le_i32_e64 s7, v169, v126
	v_cmp_le_i32_e64 s5, v170, v126
	v_cmp_le_i32_e64 s11, v171, v126
	v_cmp_le_i32_e64 s34, v172, v126
	v_cmp_le_i32_e64 s33, v173, v126
	v_cmp_le_i32_e64 s31, v174, v126
	v_cmp_le_i32_e64 s10, v179, v126
	v_cmp_le_i32_e64 s8, v180, v126
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v43, 0x80000000, v149, vcc_lo
	v_cndmask_b32_e32 v149, 0x80000000, v155, vcc_lo
	v_cndmask_b32_e32 v193, 0x80000000, v156, vcc_lo
	v_add_lshl_u32 v41, v41, s64, 1
	v_or_b32_e32 v59, s68, v123
	v_or_b32_e32 v65, s68, v120
	v_or_b32_e32 v73, s68, v111
	v_or_b32_e32 v75, s68, v109
	v_or_b32_e32 v79, s68, v105
	v_or_b32_e32 v58, s68, v124
	v_or_b32_e32 v60, s68, v122
	v_or_b32_e32 v64, s68, v121
	v_or_b32_e32 v67, s68, v118
	v_or_b32_e32 v68, s68, v117
	v_or_b32_e32 v69, s68, v116
	v_or_b32_e32 v70, s68, v115
	v_or_b32_e32 v71, s68, v114
	v_or_b32_e32 v72, s68, v112
	v_or_b32_e32 v76, s68, v108
	v_or_b32_e32 v77, s68, v107
	v_or_b32_e32 v80, s68, v104
	v_or_b32_e32 v81, s68, v103
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v44, v59, s66, 1
	v_add_lshl_u32 v59, v65, s66, 1
	v_add_lshl_u32 v65, v73, s66, 1
	v_add_lshl_u32 v73, v75, s66, 1
	v_add_lshl_u32 v75, v79, s66, 1
	v_add_lshl_u32 v52, v134, s66, 1
	v_add_lshl_u32 v53, v135, s66, 1
	v_add_lshl_u32 v54, v136, s66, 1
	v_add_lshl_u32 v55, v137, s66, 1
	v_add_lshl_u32 v48, v138, s66, 1
	v_add_lshl_u32 v50, v139, s66, 1
	v_add_lshl_u32 v47, v141, s66, 1
	v_add_lshl_u32 v51, v142, s66, 1
	v_add_lshl_u32 v62, v58, s66, 1
	v_add_lshl_u32 v63, v60, s66, 1
	v_add_lshl_u32 v58, v64, s66, 1
	v_add_lshl_u32 v64, v67, s66, 1
	v_add_lshl_u32 v60, v68, s66, 1
	v_add_lshl_u32 v69, v69, s66, 1
	v_add_lshl_u32 v70, v70, s66, 1
	v_add_lshl_u32 v71, v71, s66, 1
	v_add_lshl_u32 v72, v72, s66, 1
	v_add_lshl_u32 v67, v76, s66, 1
	v_add_lshl_u32 v68, v77, s66, 1
	v_add_lshl_u32 v76, v80, s66, 1
	v_add_lshl_u32 v77, v81, s66, 1
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s15, s2, s15
	s_and_b32 s31, s2, s31
	s_and_b32 s36, s2, s25
	s_and_b32 s14, s2, s14
	s_and_b32 s33, s2, s33
	s_and_b32 s25, s2, s11
	s_and_b32 s11, s2, s4
	s_and_b32 s4, s2, s9
	s_and_b32 s1, s2, s1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v150, s66, v98
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s16, s2, s16
	s_and_b32 s21, s2, s21
	s_and_b32 s27, s2, s27
	s_and_b32 s28, s2, s28
	s_and_b32 s3, s2, s34
	s_and_b32 s34, s2, s24
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s13, v150, v126
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s17, s2, s17
	s_and_b32 s18, s2, s18
	s_and_b32 s22, s2, s22
	s_and_b32 s23, s2, s23
	s_and_b32 s26, s2, s26
	s_and_b32 s29, s2, s29
	s_and_b32 s30, s2, s30
	s_and_b32 s12, s2, s12
	s_and_b32 s0, s2, s0
	s_and_b32 s13, s2, s13
	s_and_b32 s19, s2, s19
	s_and_b32 s20, s2, s20
	s_and_b32 s24, s2, s7
	s_and_b32 s37, s2, s5
	s_and_b32 s5, s2, s10
	s_and_b32 s7, s2, s8
	s_and_b32 s6, s2, s6
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v148.h, 0
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s8, 0xff800000, v49
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s66, s66, 64
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v45, v[151:152]
	ds_store_b64 v130, v[153:154]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[181:184], v46 offset1:1
	ds_load_2addr_stride64_b64 v[175:178], v46 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[185:188], v131 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[189:192], v131 offset1:1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v79.h, v148.h
	v_mov_b16_e64 v80.h, v148.h
	v_mov_b16_e64 v150.h, v148.h
	v_mov_b16_e64 v81.h, v148.h
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s66, s67
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[151:158], v[181:182], v[89:90], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[177:178], v[89:90], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[167:174], v[175:176], v[89:90], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[175:182], v[183:184], v[89:90], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v132 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[37:40], v132 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[167:174], v[185:186], v[87:88], v[167:174] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[183:186], v133 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[159:166], v[187:188], v[87:88], v[159:166] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[151:158], v[189:190], v[87:88], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[175:182], v[191:192], v[87:88], v[175:182] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[35:36], v[85:86], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[167:174], v[33:34], v[85:86], v[167:174] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v133 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[151:158], v[37:38], v[85:86], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[175:182], v[39:40], v[85:86], v[175:182] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[37:40], v43, s[60:63], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[185:186], v[83:84], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[167:174], v[183:184], v[83:84], v[167:174] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[183:186], v149, s[60:63], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v160, v160
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v170, v170
	v_mul_f32_e32 v160, v147, v160
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v165, v165
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[151:158], v[33:34], v[83:84], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[175:182], v[35:36], v[83:84], v[175:182] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v43, v151
	v_cvt_f32_i32_e32 v45, v152
	v_cvt_f32_i32_e32 v46, v154
	v_cvt_f32_i32_e32 v149, v153
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[33:36], v193, s[60:63], 0 offen
	buffer_load_b128 v[151:154], v41, s[60:63], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1f
	buffer_load_u16 v41, v74, s[56:59], 0 offen
	buffer_load_u16 v74, v75, s[56:59], 0 offen
	buffer_load_u16 v75, v76, s[56:59], 0 offen
	buffer_load_u16 v76, v77, s[56:59], 0 offen
	buffer_load_u16 v77, v78, s[56:59], 0 offen
	buffer_load_u16 v52, v52, s[56:59], 0 offen
	buffer_load_u16 v53, v53, s[56:59], 0 offen
	buffer_load_u16 v54, v54, s[56:59], 0 offen
	buffer_load_u16 v55, v55, s[56:59], 0 offen
	buffer_load_u16 v69, v69, s[56:59], 0 offen
	buffer_load_u16 v70, v70, s[56:59], 0 offen
	buffer_load_u16 v71, v71, s[56:59], 0 offen
	buffer_load_u16 v72, v72, s[56:59], 0 offen
	buffer_load_u16 v73, v73, s[56:59], 0 offen
	buffer_load_u16 v65, v65, s[56:59], 0 offen
	buffer_load_u16 v66, v66, s[56:59], 0 offen
	buffer_load_u16 v67, v67, s[56:59], 0 offen
	buffer_load_u16 v68, v68, s[56:59], 0 offen
	buffer_load_u16 v61, v61, s[56:59], 0 offen
	buffer_load_u16 v62, v62, s[56:59], 0 offen
	buffer_load_u16 v63, v63, s[56:59], 0 offen
	buffer_load_u16 v64, v64, s[56:59], 0 offen
	buffer_load_u16 v58, v58, s[56:59], 0 offen
	buffer_load_u16 v59, v59, s[56:59], 0 offen
	buffer_load_u16 v44, v44, s[56:59], 0 offen
	buffer_load_u16 v57, v57, s[56:59], 0 offen
	buffer_load_u16 v60, v60, s[56:59], 0 offen
	buffer_load_u16 v48, v48, s[56:59], 0 offen
	buffer_load_u16 v50, v50, s[56:59], 0 offen
	buffer_load_u16 v51, v51, s[56:59], 0 offen
	buffer_load_u16 v42, v42, s[56:59], 0 offen
	buffer_load_u16 v47, v47, s[56:59], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v175, v175
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v181, v181
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v78, v140, v169 :: v_dual_mul_f32 v169, v145, v170
	v_mul_f32_e32 v170, v146, v171
	v_dual_mul_f32 v159, v146, v159 :: v_dual_mul_f32 v192, v145, v181
	v_mul_f32_e32 v149, v146, v149
	v_mul_f32_e32 v193, v140, v175
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v177, v177
	v_cvt_f32_i32_e32 v178, v178
	v_cvt_f32_i32_e32 v179, v179
	v_cvt_f32_i32_e32 v182, v182
	v_cvt_f32_i32_e32 v180, v180
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v171, v147, v172 :: v_dual_mul_f32 v188, v146, v178
	v_dual_mul_f32 v172, v140, v173 :: v_dual_mul_f32 v173, v145, v174
	v_mul_f32_e32 v164, v146, v164
	v_mul_f32_e32 v174, v140, v176
	v_mul_f32_e32 v155, v140, v155
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v166, v166
	v_dual_mul_f32 v161, v146, v161 :: v_dual_mul_f32 v168, v145, v168
	v_dual_mul_f32 v187, v145, v177 :: v_dual_mul_f32 v190, v146, v182
	v_dual_mul_f32 v189, v147, v179 :: v_dual_mul_f32 v156, v145, v156
	v_dual_mul_f32 v167, v147, v167 :: v_dual_mul_f32 v162, v140, v162
	v_dual_mul_f32 v191, v140, v180 :: v_dual_mul_f32 v46, v147, v46
	v_dual_mul_f32 v43, v140, v43 :: v_dual_mul_f32 v158, v147, v158
	v_mul_f32_e32 v157, v146, v157
	v_mul_f32_e32 v165, v147, v165
	v_dual_mul_f32 v45, v145, v45 :: v_dual_mul_f32 v166, v147, v166
	v_mul_f32_e32 v163, v145, v163
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(35)
	ds_store_b128 v56, v[37:40]
	s_waitcnt vmcnt(34)
	ds_store_b128 v56, v[183:186] offset:2048
	s_waitcnt vmcnt(33)
	ds_store_b128 v56, v[33:36] offset:4096
	s_waitcnt vmcnt(32)
	ds_store_b128 v56, v[151:154] offset:6144
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v36, 16, v75
	v_lshlrev_b32_e32 v33, 16, v41
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v40, 16, v53
	v_lshlrev_b32_e32 v38, 16, v77
	v_lshlrev_b32_e32 v37, 16, v76
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(24)
	v_dual_mul_f32 v36, v170, v36 :: v_dual_lshlrev_b32 v41, 16, v54
	v_dual_mul_f32 v78, v78, v33 :: v_dual_lshlrev_b32 v35, 16, v74
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v66, 16, v66
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v40, v159, v40
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v74, 16, v55
	v_lshlrev_b32_e32 v39, 16, v52
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v35, v169, v35 :: v_dual_lshlrev_b32 v72, 16, v72
	v_dual_mul_f32 v66, v192, v66 :: v_dual_lshlrev_b32 v73, 16, v73
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v41, v160, v41 :: v_dual_lshlrev_b32 v44, 16, v44
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v63, 16, v63
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v73, v190, v73 :: v_dual_lshlrev_b32 v58, 16, v58
	v_mul_f32_e32 v38, v172, v38
	v_dual_mul_f32 v37, v171, v37 :: v_dual_lshlrev_b32 v68, 16, v68
	v_dual_mul_f32 v44, v149, v44 :: v_dual_lshlrev_b32 v67, 16, v67
	v_dual_mul_f32 v46, v46, v63 :: v_dual_lshlrev_b32 v75, 16, v61
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v70, 16, v70
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v72, v189, v72 :: v_dual_lshlrev_b32 v71, 16, v71
	v_dual_mul_f32 v58, v155, v58 :: v_dual_lshlrev_b32 v65, 16, v65
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v71, v188, v71 :: v_dual_lshlrev_b32 v76, 16, v57
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v65, v191, v65 :: v_dual_lshlrev_b32 v152, 16, v51
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v43, v43, v75 :: v_dual_lshlrev_b32 v42, 16, v42
	v_mul_f32_e32 v74, v161, v74
	v_dual_mul_f32 v39, v173, v39 :: v_dual_lshlrev_b32 v62, 16, v62
	v_mul_f32_e32 v68, v168, v68
	v_dual_mul_f32 v67, v167, v67 :: v_dual_lshlrev_b32 v48, 16, v48
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v70, v187, v70 :: v_dual_lshlrev_b32 v69, 16, v69
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v64, 16, v64
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v42, v166, v42 :: v_dual_lshlrev_b32 v77, 16, v60
	v_dual_mul_f32 v48, v162, v48 :: v_dual_lshlrev_b32 v151, 16, v50
	v_mul_f32_e32 v47, v164, v47
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v153, 0xff800000, v39, s15
	v_cndmask_b32_e64 v39, 0xff800000, v43, s36
	v_cndmask_b32_e64 v43, 0xff800000, v44, s31
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v63, v157, v76
	v_dual_mul_f32 v76, v165, v152 :: v_dual_mul_f32 v69, v174, v69
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v59, 16, v59
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v152, 0xff800000, v40, s14
	v_cndmask_b32_e64 v40, 0xff800000, v46, s33
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v162, 0xff800000, v76, s1
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v45, v45, v62 :: v_dual_mul_f32 v62, v158, v64
	v_dual_mul_f32 v64, v193, v77 :: v_dual_mul_f32 v75, v163, v151
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v163, 0xff800000, v42, s4
	v_cndmask_b32_e64 v154, 0xff800000, v38, s16
	v_cndmask_b32_e64 v161, 0xff800000, v68, s21
	v_cndmask_b32_e64 v68, 0xff800000, v71, s28
	v_cndmask_b32_e64 v71, 0xff800000, v72, s27
	v_cndmask_b32_e64 v72, 0xff800000, v64, s11
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v64, v162, v163
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, 0xff800000, v45, s34
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v59, v156, v59
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v151, 0xff800000, v41, s0
	v_cndmask_b32_e64 v156, 0xff800000, v36, s18
	v_cndmask_b32_e64 v157, 0xff800000, v37, s17
	v_cndmask_b32_e64 v41, 0xff800000, v66, s12
	v_cndmask_b32_e64 v191, 0xff800000, v65, s26
	v_cndmask_b32_e64 v160, 0xff800000, v67, s22
	v_cndmask_b32_e64 v67, 0xff800000, v73, s23
	v_cndmask_b32_e64 v70, 0xff800000, v70, s29
	v_cndmask_b32_e64 v69, 0xff800000, v69, s30
	v_cndmask_b32_e64 v36, 0xff800000, v59, s25
	v_cndmask_b32_e64 v37, 0xff800000, v58, s3
	v_cndmask_b32_e64 v158, 0xff800000, v35, s19
	v_cndmask_b32_e64 v159, 0xff800000, v78, s20
	v_cndmask_b32_e64 v155, 0xff800000, v74, s13
	v_cndmask_b32_e64 v44, 0xff800000, v62, s24
	v_cndmask_b32_e64 v45, 0xff800000, v63, s37
	v_cndmask_b32_e64 v164, 0xff800000, v75, s7
	v_cndmask_b32_e64 v166, 0xff800000, v48, s6
	v_cndmask_b32_e64 v165, 0xff800000, v47, s5
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v47, v67, v160, v161
	v_max3_f32 v48, v69, v70, v68
	v_max3_f32 v58, v71, v191, v41
	v_max_f32_e32 v59, v39, v38
	v_max3_f32 v62, v40, v37, v36
	v_max3_f32 v35, v159, v158, v156
	v_max3_f32 v42, v157, v154, v153
	v_max3_f32 v46, v152, v151, v155
	v_max_f32_e32 v63, v166, v164
	v_max3_f32 v66, v45, v44, v72
	v_max3_f32 v47, v48, v58, v47
	v_max3_f32 v48, v59, v43, v62
	v_max3_f32 v42, v35, v42, v46
	v_max3_f32 v46, v63, v165, v64
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v47, v48, v66, v47
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v61, v0 offset:608
	ds_load_u16_d16 v60, v0 offset:352
	ds_load_u16_d16 v53, v0 offset:768
	ds_load_u16_d16 v52, v0 offset:512
	ds_load_u16_d16 v34, v0 offset:288
	ds_load_u16_d16 v178, v0 offset:832
	ds_load_u16_d16 v54, v0 offset:1024
	ds_load_u16_d16 v179, v0 offset:1088
	ds_load_u16_d16 v55, v0 offset:1280
	ds_load_u16_d16 v180, v0 offset:1344
	ds_load_u16_d16 v56, v0 offset:1536
	ds_load_u16_d16 v181, v0 offset:1600
	ds_load_u16_d16 v57, v0 offset:1792
	ds_load_u16_d16 v182, v0 offset:1856
	ds_load_u16_d16 v51, v0 offset:256
	ds_load_u16_d16 v50, v0
	ds_load_u16_d16 v33, v0 offset:32
	ds_load_u16_d16 v177, v0 offset:576
	ds_load_u16_d16 v175, v0 offset:64
	ds_load_u16_d16 v176, v0 offset:320
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v60, v0 offset:480
	ds_load_u16_d16 v59, v0 offset:96
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v51, v0 offset:384
	ds_load_u16_d16_hi v52, v0 offset:640
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v177, v0 offset:704
	ds_load_u16_d16 v35, v0 offset:544
	ds_load_u16_d16_hi v53, v0 offset:896
	ds_load_u16_d16_hi v178, v0 offset:960
	ds_load_u16_d16 v62, v0 offset:864
	ds_load_u16_d16_hi v54, v0 offset:1152
	ds_load_u16_d16_hi v179, v0 offset:1216
	ds_load_u16_d16 v63, v0 offset:1120
	ds_load_u16_d16_hi v55, v0 offset:1408
	ds_load_u16_d16_hi v180, v0 offset:1472
	ds_load_u16_d16 v64, v0 offset:1376
	ds_load_u16_d16_hi v56, v0 offset:1664
	ds_load_u16_d16_hi v181, v0 offset:1728
	ds_load_u16_d16 v65, v0 offset:1632
	ds_load_u16_d16_hi v57, v0 offset:1920
	ds_load_u16_d16_hi v182, v0 offset:1984
	ds_load_u16_d16 v74, v0 offset:2048
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v42, v47, v42, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v46, v42, s65, 0xfedcba98 op_sel:[1,0]
.Ltmp9:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v149, v49, v42, v46
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v42, v43, v149
	v_sub_f32_e32 v38, v38, v149
	v_sub_f32_e32 v39, v39, v149
	v_sub_f32_e32 v36, v36, v149
	v_sub_f32_e32 v40, v40, v149
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v40, v40
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v45, v149
	v_sub_f32_e32 v44, v44, v149
	v_sub_f32_e32 v41, v41, v149
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v171, 0, v42, s31
	v_cndmask_b32_e64 v169, 0, v38, s34
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v170, 0, v39, s36
	v_cndmask_b32_e64 v174, 0, v36, s25
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v80.l, v171.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v37, v149
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v79.l, v170.h
	v_mov_b16_e64 v148.l, v169.h
	v_cmp_o_f32_e64 s9, v170, v170
	v_and_b32_e32 v38, 1, v80
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v36, 1, v79
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v172, 0, v40, s33
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v167, 0, v43, s37
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s25, v174, v174
	v_add3_u32 v36, v170, v36, 0x7fff
	v_cmp_o_f32_e64 s10, v172, v172
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v42, v0 offset:2112
	ds_load_u16_d16 v66, v0 offset:1888
	ds_load_u16_d16_hi v50, v0 offset:128
	ds_load_u16_d16_hi v33, v0 offset:160
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v175, v0 offset:192
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v59, v0 offset:224
	ds_load_u16_d16_hi v34, v0 offset:416
	ds_load_u16_d16_hi v176, v0 offset:448
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v150.l, v167.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v173, 0, v37, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v37, 1, v148
	v_cmp_o_f32_e64 s3, v169, v169
	v_mov_b16_e64 v148.l, v172.h
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v45, v49, v149
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v81.l, v173.h
	v_add3_u32 v37, v169, v37, 0x7fff
	v_cndmask_b16 v37.l, 0x7fff, v36.h, s9
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v168, 0, v44, s24
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v40, 1, v150
	v_cmp_o_f32_e64 s34, v167, v167
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s3
	v_cmp_o_f32_e64 s24, v171, v171
	v_cmp_o_f32_e64 s31, v173, v173
	v_cmp_o_f32_e64 s33, v168, v168
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v36, v37, s65, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v42, v0 offset:2240
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v183, v36, v37, v143
	v_perm_b32 v184, v36, v37, v144
	v_and_b32_e32 v36, 1, v148
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v45, v45
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v148.l, v174.h
	v_add3_u32 v37, v171, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v36, v172, v36, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s10
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v150, 0, v45, s8
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v39, 1, v81
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v48, v0 offset:3648
	ds_load_u16_d16 v81, v0 offset:3840
	ds_load_u16_d16 v49, v0 offset:3904
	ds_load_u16_d16 v43, v0 offset:2368
	ds_load_u16_d16 v76, v0 offset:2560
	ds_load_u16_d16 v44, v0 offset:2624
	ds_load_u16_d16 v77, v0 offset:2816
	ds_load_u16_d16 v45, v0 offset:2880
	ds_load_u16_d16 v78, v0 offset:3072
	ds_load_u16_d16 v46, v0 offset:3136
	ds_load_u16_d16 v79, v0 offset:3328
	ds_load_u16_d16 v47, v0 offset:3392
	ds_load_u16_d16 v80, v0 offset:3584
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v48, v0 offset:3776
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v81, v0 offset:3968
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v49, v0 offset:4032
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v150
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v38, v173, v39, 0x7fff
	v_add3_u32 v39, v167, v40, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v25, v25, v150 :: v_dual_and_b32 v40, 1, v148
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v148.l, v168.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v30, v30, v150
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s34
	v_add3_u32 v40, v174, v40, 0x7fff
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s31
	v_and_b32_e32 v39, 1, v148
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v150
	v_mul_f32_e32 v18, v18, v150
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v37.h, 0x7fff, v40.h, s25
	v_permlanex16_b32 v40, v36, s65, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v39, v168, v39, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v19, v19, v150
	v_mul_f32_e32 v20, v20, v150
	v_mul_f32_e32 v21, v21, v150
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v185, v40, v36, v143
	v_cndmask_b16 v38.h, 0x7fff, v39.h, s33
	v_permlanex16_b32 v39, v37, s65, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v186, v40, v36, v144
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v22, v22, v150
	v_mul_f32_e32 v23, v23, v150
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v36, v38, s65, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v187, v39, v37, v143
	v_perm_b32 v188, v39, v37, v144
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v150
	v_mul_f32_e32 v27, v27, v150
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v189, v36, v38, v143
	v_perm_b32 v190, v36, v38, v144
	.loc	1 890 30                        ; attention.py:890:30
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
	ds_load_u16_d16 v75, v0 offset:2304
	ds_load_u16_d16_hi v74, v0 offset:2176
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v32, v32, v150
	v_mul_f32_e32 v26, v26, v150
	v_mul_f32_e32 v29, v29, v150
	v_mul_f32_e32 v9, v9, v150
	v_mul_f32_e32 v11, v11, v150
	v_mul_f32_e32 v12, v12, v150
	v_mul_f32_e32 v13, v13, v150
	v_mul_f32_e32 v14, v14, v150
	v_mul_f32_e32 v15, v15, v150
	v_mul_f32_e32 v16, v16, v150
	v_mul_f32_e32 v1, v1, v150
	v_mul_f32_e32 v2, v2, v150
	v_mul_f32_e32 v3, v3, v150
	v_mul_f32_e32 v4, v4, v150
	v_mul_f32_e32 v5, v5, v150
	v_mul_f32_e32 v6, v6, v150
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[33:40], v[183:190], v[17:24]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v72, v149
	v_sub_f32_e32 v39, v69, v149
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v36.h, v148.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v31, v31, v150
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v37.h, v148.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v39, v39
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v150
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v70, v149
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[50:57], v[183:190], v[25:32]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v53, v191, v149
	v_mov_b32_e32 v191, v92
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[175:182], v[183:190], v[9:16]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_mov_b16_e64 v34.h, v148.h
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v51, v68, v149
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v175, 0, v38, s11
	v_cndmask_b32_e64 v176, 0, v39, s30
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v52, v71, v149
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v51, v51
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v34.l, v175.h
	v_mov_b16_e64 v148.l, v176.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v54, v67, v149
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v53, v53
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v34, 1, v34
	v_and_b32_e32 v38, 1, v148
	v_cmp_o_f32_e64 s3, v176, v176
	v_cmp_o_f32_e64 s8, v175, v175
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v54, v54
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v34, v175, v34, 0x7fff
	v_add3_u32 v38, v176, v38, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v177, 0, v40, s29
	v_cndmask_b32_e64 v178, 0, v51, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v35.h, v148.h
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s8
	v_cndmask_b16 v34.h, 0x7fff, v38.h, s3
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v7, v7, v150
	v_mul_f32_e32 v8, v8, v150
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v179, 0, v52, s27
	v_cndmask_b32_e64 v180, 0, v53, s26
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v35.l, v177.h
	v_mov_b16_e64 v148.l, v178.h
	v_permlanex16_b32 v38, v34, s65, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[59:66], v[183:190], v[1:8]
	.loc	1 886 33 is_stmt 1              ; attention.py:886:33
	v_cndmask_b32_e64 v181, 0, v41, s12
	v_cndmask_b32_e64 v182, 0, v54, s23
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v36.l, v179.h
	v_and_b32_e32 v35, 1, v35
	v_perm_b32 v66, v38, v34, v143
	v_perm_b32 v67, v38, v34, v144
	v_and_b32_e32 v34, 1, v148
	v_mov_b16_e64 v148.l, v180.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v58, v0 offset:2080
	ds_load_u16_d16 v50, v0 offset:2144
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v178, v178
	v_cmp_o_f32_e64 s10, v177, v177
	v_mov_b16_e64 v37.l, v181.h
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v35, v177, v35, 0x7fff
	v_and_b32_e32 v38, 1, v148
	v_add3_u32 v34, v178, v34, 0x7fff
	v_mov_b16_e64 v148.l, v182.h
	v_cmp_o_f32_e64 s11, v180, v180
	v_cmp_o_f32_e64 s12, v179, v179
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v36, v179, v36, 0x7fff
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s10
	v_cndmask_b16 v35.h, 0x7fff, v34.h, s9
	v_and_b32_e32 v34, 1, v148
	v_add3_u32 v38, v180, v38, 0x7fff
	v_cmp_o_f32_e64 s23, v182, v182
	v_cmp_o_f32_e64 s24, v181, v181
	v_add3_u32 v37, v181, v37, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s12
	v_add3_u32 v34, v182, v34, 0x7fff
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s11
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v41, v0 offset:4160
	ds_load_u16_d16 v57, v0 offset:3936
	ds_load_u16_d16_hi v43, v0 offset:2496
	ds_load_u16_d16_hi v76, v0 offset:2688
	ds_load_u16_d16_hi v44, v0 offset:2752
	ds_load_u16_d16_hi v77, v0 offset:2944
	ds_load_u16_d16_hi v45, v0 offset:3008
	ds_load_u16_d16_hi v78, v0 offset:3200
	ds_load_u16_d16_hi v46, v0 offset:3264
	ds_load_u16_d16_hi v79, v0 offset:3456
	ds_load_u16_d16_hi v47, v0 offset:3520
	ds_load_u16_d16_hi v80, v0 offset:3712
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v75, v0 offset:2432
	ds_load_u16_d16 v51, v0 offset:2400
	ds_load_u16_d16 v52, v0 offset:2656
	ds_load_u16_d16 v53, v0 offset:2912
	ds_load_u16_d16 v54, v0 offset:3168
	ds_load_u16_d16 v55, v0 offset:3424
	ds_load_u16_d16 v56, v0 offset:3680
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s24
	v_permlanex16_b32 v38, v35, s65, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v37.h, 0x7fff, v34.h, s23
	v_permlanex16_b32 v34, v36, s65, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v33, v0 offset:4096
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v92.h, v148.h
	v_perm_b32 v68, v38, v35, v143
	v_perm_b32 v69, v38, v35, v144
	v_perm_b32 v70, v34, v36, v143
	v_perm_b32 v71, v34, v36, v144
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v65, v0 offset:3872
	ds_load_u16_d16 v34, v0 offset:4352
	ds_load_u16_d16 v59, v0 offset:2336
	ds_load_u16_d16 v60, v0 offset:2592
	ds_load_u16_d16 v61, v0 offset:2848
	ds_load_u16_d16 v62, v0 offset:3104
	ds_load_u16_d16 v63, v0 offset:3360
	ds_load_u16_d16 v64, v0 offset:3616
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v58, v0 offset:2208
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v50, v0 offset:2272
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v35, v37, s65, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v187.h, v148.h
	v_mov_b16_e64 v184.h, v148.h
	v_mov_b16_e64 v185.h, v148.h
	v_mov_b16_e64 v186.h, v148.h
	v_perm_b32 v72, v35, v37, v143
	v_perm_b32 v73, v35, v37, v144
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(17)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[74:81], v[66:73], v[25:32]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
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
	ds_load_u16_d16 v74, v0 offset:4128
	ds_load_u16_d16 v183, v0 offset:4192
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[42:49], v[66:73], v[9:16]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_mov_b16_e64 v49.h, v148.h
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[58:65], v[66:73], v[17:24]
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v61, v158, v149
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[50:57], v[66:73], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v162, v149
	v_sub_f32_e32 v56, v161, v149
	v_sub_f32_e32 v57, v159, v149
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v61, v61
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v62, v156, v149
	v_sub_f32_e32 v63, v157, v149
	v_sub_f32_e32 v66, v152, v149
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v56, v56
	v_exp_f32_e32 v57, v57
	v_exp_f32_e32 v62, v62
	v_exp_f32_e32 v63, v63
.Ltmp10:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v54, v173, v174 :: v_dual_sub_f32 v69, v166, v149
.Ltmp11:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v152, 0, v61, s19
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v61, v167, v168
.Ltmp13:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v55, v160, v149
	v_sub_f32_e32 v64, v154, v149
	v_sub_f32_e32 v65, v153, v149
	v_sub_f32_e32 v67, v151, v149
	v_sub_f32_e32 v68, v155, v149
	v_sub_f32_e32 v70, v164, v149
	v_sub_f32_e32 v71, v165, v149
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v55, v55
	v_exp_f32_e32 v64, v64
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v160, 0, v72, s1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v73, v163, v149
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v73, v73
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v151, 0, v56, s21
	v_cndmask_b32_e64 v56, 0, v57, s20
	v_cndmask_b32_e64 v57, 0, v62, s18
	v_cndmask_b32_e64 v153, 0, v63, s17
.Ltmp14:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v62, v175, v176
.Ltmp15:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v71
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v63, v177, v178
.Ltmp17:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v50, v170, v169 :: v_dual_add_f32 v53, v171, v172
.Ltmp19:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v55, 0, v55, s22
	v_cndmask_b32_e64 v154, 0, v64, s16
	v_cndmask_b32_e64 v155, 0, v65, s15
	v_cndmask_b32_e64 v156, 0, v66, s14
	v_cndmask_b32_e64 v157, 0, v67, s0
	v_cndmask_b32_e64 v169, 0, v69, s6
	v_cndmask_b32_e64 v159, 0, v70, s7
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v158, 0, v68, s13
	v_cndmask_b32_e64 v170, 0, v71, s5
	v_cndmask_b32_e64 v171, 0, v73, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v58.h, v148.h
	v_mov_b16_e64 v59.h, v148.h
	v_mov_b16_e32 v49.l, v55.h
	v_mov_b16_e32 v58.l, v56.h
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v64, v179, v180 :: v_dual_add_f32 v65, v181, v182
	v_dual_add_f32 v66, v55, v151 :: v_dual_add_f32 v67, v56, v152
	v_dual_add_f32 v68, v57, v153 :: v_dual_add_f32 v69, v154, v155
	v_add_f32_e32 v70, v156, v157
	v_dual_add_f32 v161, v50, v53 :: v_dual_and_b32 v58, 1, v58
	v_add_f32_e32 v53, v159, v170
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v59.l, v57.h
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v50, v158, v169
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v92.l, v154.h
	v_mov_b16_e64 v187.l, v160.h
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v162, v54, v61
	v_add_f32_e32 v54, v160, v171
	v_dual_add_f32 v163, v62, v63 :: v_dual_add_f32 v164, v64, v65
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v49, 1, v49
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v165, v66, v67 :: v_dual_add_f32 v166, v68, v69
.Ltmp27:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v59, 1, v59
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v167, v70, v50 :: v_dual_and_b32 v92, 1, v92
	v_add_f32_e32 v168, v53, v54
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v184.l, v156.h
	v_mov_b16_e64 v185.l, v158.h
	v_cmp_o_f32_e64 s7, v154, v154
	v_and_b32_e32 v175, 1, v187
	v_add3_u32 v176, v154, v92, 0x7fff
	v_and_b32_e32 v172, 1, v184
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v92, v161, v162 :: v_dual_and_b32 v173, 1, v185
	v_dual_add_f32 v154, v163, v164 :: v_dual_add_f32 v161, v165, v166
	v_add_f32_e32 v162, v167, v168
.Ltmp31:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v42, v0 offset:4416
	ds_load_u16_d16 v35, v0 offset:4608
	ds_load_u16_d16 v75, v0 offset:4384
	ds_load_u16_d16 v43, v0 offset:4672
	ds_load_u16_d16 v36, v0 offset:4864
	ds_load_u16_d16 v76, v0 offset:4640
	ds_load_u16_d16 v44, v0 offset:4928
	ds_load_u16_d16 v37, v0 offset:5120
	ds_load_u16_d16 v77, v0 offset:4896
	ds_load_u16_d16 v45, v0 offset:5184
	ds_load_u16_d16 v38, v0 offset:5376
	ds_load_u16_d16 v78, v0 offset:5152
	ds_load_u16_d16 v46, v0 offset:5440
	ds_load_u16_d16 v39, v0 offset:5632
	ds_load_u16_d16 v79, v0 offset:5408
	ds_load_u16_d16 v47, v0 offset:5696
	ds_load_u16_d16 v40, v0 offset:5888
	ds_load_u16_d16 v80, v0 offset:5664
	ds_load_u16_d16 v48, v0 offset:5952
	ds_load_u16_d16 v51, v0 offset:6464
	ds_load_u16_d16 v60, v0 offset:6656
	ds_load_u16_d16 v52, v0 offset:6720
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v92, v92, v154
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v148.l, v151.h
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v154, v161, v162
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v50, v56, v58, 0x7fff
	v_add3_u32 v66, v57, v59, 0x7fff
	v_cmp_o_f32_e64 s0, v55, v55
	v_cmp_o_f32_e64 s1, v56, v56
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v92, v92, v154
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v57, v57
	v_add3_u32 v49, v55, v49, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v66, v0 offset:6240
	ds_load_u16_d16 v59, v0 offset:6400
	ds_load_u16_d16 v61, v0 offset:6912
	ds_load_u16_d16 v53, v0 offset:6976
	ds_load_u16_d16 v68, v0 offset:6752
	ds_load_u16_d16 v62, v0 offset:7168
	ds_load_u16_d16 v54, v0 offset:7232
	ds_load_u16_d16 v69, v0 offset:7008
	ds_load_u16_d16 v63, v0 offset:7424
	ds_load_u16_d16 v55, v0 offset:7488
	ds_load_u16_d16 v70, v0 offset:7264
	ds_load_u16_d16 v64, v0 offset:7680
	ds_load_u16_d16 v56, v0 offset:7744
	ds_load_u16_d16 v71, v0 offset:7520
	ds_load_u16_d16 v65, v0 offset:7936
	ds_load_u16_d16 v57, v0 offset:8000
	ds_load_u16_d16 v72, v0 offset:7776
	ds_load_u16_d16 v73, v0 offset:8032
	ds_load_u16_d16 v81, v0 offset:5920
	ds_load_u16_d16 v50, v0 offset:6208
	ds_load_u16_d16 v58, v0 offset:6144
	ds_load_u16_d16 v67, v0 offset:6496
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v51, v0 offset:6592
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v60, v0 offset:6784
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v52, v0 offset:6848
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v154, v92, s65, 0xfedcba98 op_sel:[1,0]
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v151, v151
	v_cmp_o_f32_e64 s5, v152, v152
	v_mov_b16_e64 v186.l, v159.h
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s0
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v92, v92, v154
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v154, 1, v148
	v_mov_b16_e64 v148.l, v152.h
	s_waitcnt lgkmcnt(5)
	v_cndmask_b16 v161.l, 0x7fff, v50.h, s1
	v_and_b32_e32 v174, 1, v186
	v_cmp_o_f32_e64 s6, v153, v153
	v_add3_u32 v151, v151, v154, 0x7fff
	v_and_b32_e32 v162, 1, v148
	v_mov_b16_e64 v148.l, v153.h
	v_cmp_o_f32_e64 s8, v156, v156
	v_add3_u32 v156, v156, v172, 0x7fff
	v_cndmask_b16 v49.h, 0x7fff, v151.h, s4
	v_add3_u32 v152, v152, v162, 0x7fff
	v_and_b32_e32 v151, 1, v148
	v_mov_b16_e64 v148.l, v155.h
	v_cmp_o_f32_e64 s10, v159, v159
	v_cmp_o_f32_e64 s9, v158, v158
	v_cndmask_b16 v161.h, 0x7fff, v152.h, s5
	v_permlanex16_b32 v152, v49, s65, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v167, v153, v151, 0x7fff
	v_and_b32_e32 v153, 1, v148
	v_mov_b16_e64 v148.l, v157.h
	v_permlanex16_b32 v154, v161, s65, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v151, v152, v49, v143
	v_perm_b32 v152, v152, v49, v144
	v_mov_b32_e32 v49, v149
	v_add3_u32 v159, v159, v174, 0x7fff
	v_cmp_o_f32_e64 s11, v160, v160
	v_cmp_o_f32_e64 s12, v155, v155
	v_add3_u32 v158, v158, v173, 0x7fff
	v_add3_u32 v160, v160, v175, 0x7fff
	v_add3_u32 v155, v155, v153, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
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
	ds_load_u16_d16_hi v58, v0 offset:6272
	ds_load_u16_d16 v159, v0 offset:6176
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v149.l, 0x7fff, v66.h, s3
	v_cndmask_b16 v167.l, 0x7fff, v156.h, s8
	v_cndmask_b16 v149.h, 0x7fff, v167.h, s6
	v_and_b32_e32 v156, 1, v148
	v_mov_b16_e64 v148.l, v169.h
	v_perm_b32 v153, v154, v161, v143
	v_perm_b32 v154, v154, v161, v144
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v161, v0 offset:6688
	ds_load_u16_d16_hi v61, v0 offset:7040
	ds_load_u16_d16_hi v53, v0 offset:7104
	ds_load_u16_d16 v162, v0 offset:6944
	ds_load_u16_d16_hi v62, v0 offset:7296
	ds_load_u16_d16_hi v54, v0 offset:7360
	ds_load_u16_d16 v163, v0 offset:7200
	ds_load_u16_d16_hi v63, v0 offset:7552
	ds_load_u16_d16_hi v55, v0 offset:7616
	ds_load_u16_d16 v164, v0 offset:7456
	ds_load_u16_d16_hi v64, v0 offset:7808
	ds_load_u16_d16_hi v56, v0 offset:7872
	ds_load_u16_d16 v165, v0 offset:7712
	ds_load_u16_d16_hi v65, v0 offset:8064
	ds_load_u16_d16_hi v57, v0 offset:8128
	ds_load_u16_d16 v166, v0 offset:7968
	ds_load_u16_d16_hi v50, v0 offset:6336
	ds_load_u16_d16_hi v59, v0 offset:6528
	ds_load_u16_d16 v160, v0 offset:6432
	ds_load_u16_d16_hi v41, v0 offset:4288
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v158.l, 0x7fff, v176.h, s7
	v_cndmask_b16 v168.l, 0x7fff, v158.h, s9
	v_cndmask_b16 v158.h, 0x7fff, v155.h, s12
	v_permlanex16_b32 v174, v149, s65, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v175, 1, v148
	v_mov_b16_e64 v148.l, v170.h
	v_cmp_o_f32_e64 s0, v157, v157
	v_add3_u32 v157, v157, v156, 0x7fff
	v_perm_b32 v155, v174, v149, v143
	v_perm_b32 v156, v174, v149, v144
	v_permlanex16_b32 v149, v158, s65, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v174, 1, v148
	v_mov_b16_e64 v148.l, v171.h
	v_cmp_o_f32_e64 s1, v169, v169
	v_cndmask_b16 v167.h, 0x7fff, v157.h, s0
	v_add3_u32 v169, v169, v175, 0x7fff
	v_perm_b32 v157, v149, v158, v143
	v_perm_b32 v158, v149, v158, v144
	v_and_b32_e32 v148, 1, v148
	v_cmp_o_f32_e64 s4, v170, v170
	v_cmp_o_f32_e64 s5, v171, v171
	s_waitcnt lgkmcnt(20)
	v_cndmask_b16 v172.l, 0x7fff, v159.h, s10
	s_waitcnt lgkmcnt(1)
	v_cndmask_b16 v173.l, 0x7fff, v160.h, s11
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v74, v0 offset:4256
	ds_load_u16_d16_hi v183, v0 offset:4320
	ds_load_u16_d16_hi v75, v0 offset:4512
	ds_load_u16_d16_hi v184, v0 offset:4576
	ds_load_u16_d16_hi v76, v0 offset:4768
	ds_load_u16_d16_hi v185, v0 offset:4832
	ds_load_u16_d16_hi v77, v0 offset:5024
	ds_load_u16_d16_hi v186, v0 offset:5088
	ds_load_u16_d16_hi v78, v0 offset:5280
	ds_load_u16_d16_hi v187, v0 offset:5344
	ds_load_u16_d16_hi v79, v0 offset:5536
	ds_load_u16_d16_hi v188, v0 offset:5600
	ds_load_u16_d16_hi v80, v0 offset:5792
	ds_load_u16_d16_hi v189, v0 offset:5856
	ds_load_u16_d16_hi v81, v0 offset:6048
	ds_load_u16_d16_hi v190, v0 offset:6112
	ds_load_u16_d16_hi v159, v0 offset:6304
	ds_load_u16_d16_hi v66, v0 offset:6368
	ds_load_u16_d16_hi v160, v0 offset:6560
	ds_load_u16_d16_hi v67, v0 offset:6624
	ds_load_u16_d16_hi v161, v0 offset:6816
	ds_load_u16_d16_hi v68, v0 offset:6880
	ds_load_u16_d16_hi v162, v0 offset:7072
	ds_load_u16_d16_hi v69, v0 offset:7136
	ds_load_u16_d16_hi v163, v0 offset:7328
	ds_load_u16_d16_hi v70, v0 offset:7392
	ds_load_u16_d16_hi v164, v0 offset:7584
	ds_load_u16_d16_hi v71, v0 offset:7648
	ds_load_u16_d16_hi v165, v0 offset:7840
	ds_load_u16_d16_hi v72, v0 offset:7904
	ds_load_u16_d16_hi v166, v0 offset:8096
	ds_load_u16_d16_hi v73, v0 offset:8160
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v168.h, 0x7fff, v169.h, s1
	v_add3_u32 v169, v170, v174, 0x7fff
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[33:40], v[151:158], v[25:32]
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v35, v171, v148, 0x7fff
	v_permlanex16_b32 v149, v167, s65, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v168, s65, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v172.h, 0x7fff, v169.h, s4
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(17)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[74:81], v[151:158], v[17:24]
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v173.h, 0x7fff, v35.h, s5
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[41:48], v[151:158], v[9:16]
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[183:190], v[151:158], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v38, v172, s65, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v149, v167, v143
	v_permlanex16_b32 v40, v173, s65, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v34, v149, v167, v144
	v_perm_b32 v35, v36, v168, v143
	v_perm_b32 v36, v36, v168, v144
	v_perm_b32 v37, v38, v172, v143
	v_perm_b32 v38, v38, v172, v144
	v_perm_b32 v39, v40, v173, v143
	v_perm_b32 v40, v40, v173, v144
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v92, v191, v150
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[58:65], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[159:166], v[33:40], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[50:57], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[66:73], v[33:40], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v33, v125
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v0, null, v92, v92, v25
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v34, null, v92, v92, v26
	v_div_scale_f32 v35, null, v92, v92, v27
	v_rcp_f32_e32 v36, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, vcc_lo, v25, v92, v25
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v40, s0, v26, v92, v26
	v_div_scale_f32 v43, null, v92, v92, v28
	v_div_scale_f32 v49, s3, v28, v92, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v0, v36, 1.0
	v_fma_f32 v42, -v34, v37, 1.0
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s49, s49, 0xffff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v35, v38, 1.0
	s_mov_b32 s51, 0x31027000
	v_dual_fmac_f32 v36, v41, v36 :: v_dual_fmac_f32 v37, v42, v37
	v_rcp_f32_e32 v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v41, s1, v27, v92, v27
	v_dual_mul_f32 v44, v39, v36 :: v_dual_mul_f32 v45, v40, v37
	s_mov_b32 s50, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v0, v44, v39
	v_fma_f32 v48, -v34, v45, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v43, v42, 1.0
	v_dual_fmac_f32 v44, v47, v36 :: v_dual_fmac_f32 v45, v48, v37
	v_div_scale_f32 v47, null, v92, v92, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v50, v42
	v_fma_f32 v0, -v0, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v45, v40
	v_rcp_f32_e32 v39, v47
	v_div_scale_f32 v40, null, v92, v92, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v36, v44
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v36, v49, v42
	v_div_fmas_f32 v34, v34, v37, v45
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v0, v92, v25
	v_rcp_f32_e32 v44, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v39, 1.0
	v_div_fixup_f32 v25, v34, v92, v26
	v_div_scale_f32 v34, s4, v29, v92, v29
	v_fma_f32 v37, -v43, v36, v49
	v_fmac_f32_e32 v39, v45, v39
	v_mul_f32_e32 v46, v41, v38
	v_div_scale_f32 v45, null, v92, v92, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v37, v42
	v_div_scale_f32 v37, null, v92, v92, v31
	v_fma_f32 v51, -v35, v46, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v45
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v92
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
	v_div_scale_f32 v43, s1, v30, v92, v30
	v_div_fixup_f32 v26, v26, v92, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v38, v42, v36
	v_fma_f32 v38, -v47, v41, v34
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v36, v92, v28
	v_fmac_f32_e32 v41, v38, v39
	v_div_scale_f32 v38, null, v92, v92, v17
	v_div_scale_f32 v36, s3, v31, v92, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v47, v41, v34
	v_rcp_f32_e32 v49, v38
	v_fmac_f32_e32 v44, v35, v44
	v_rcp_f32_e32 v35, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
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
	v_div_scale_f32 v46, s5, v32, v92, v32
	v_div_scale_f32 v43, null, v92, v92, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v37, v47, v36
	v_mul_f32_e32 v40, v46, v48
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v49, v41, v49
	v_div_fmas_f32 v34, v34, v44, v42
	v_fmac_f32_e32 v47, v39, v35
	v_rcp_f32_e32 v39, v43
	v_fma_f32 v42, -v45, v40, v46
	v_div_scale_f32 v41, s1, v17, v92, v17
	v_div_fixup_f32 v28, v28, v92, v29
	v_div_fixup_f32 v29, v34, v92, v30
	v_fma_f32 v30, -v37, v47, v36
	v_fmac_f32_e32 v40, v42, v48
	v_div_scale_f32 v37, null, v92, v92, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v43, v39, 1.0
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v34, v41, v49
	v_div_fmas_f32 v30, v30, v35, v47
	v_fma_f32 v35, -v45, v40, v46
	v_fmac_f32_e32 v39, v36, v39
	v_rcp_f32_e32 v36, v37
	v_div_scale_f32 v45, null, v92, v92, v20
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v42, -v38, v34, v41
	v_div_scale_f32 v44, s3, v18, v92, v18
	v_div_fmas_f32 v35, v35, v48, v40
	v_rcp_f32_e32 v40, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v42, v49
	v_mul_f32_e32 v42, v44, v39
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v37, v36, 1.0
	v_div_fixup_f32 v30, v30, v92, v31
	v_div_fixup_f32 v31, v35, v92, v32
	v_fma_f32 v32, -v38, v34, v41
	v_fma_f32 v35, -v43, v42, v44
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v38, s4, v19, v92, v19
	v_fma_f32 v41, -v45, v40, 1.0
	v_div_scale_f32 v46, null, v92, v92, v21
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v42, v35, v39
	v_div_fmas_f32 v32, v32, v49, v34
	v_mul_f32_e32 v34, v38, v36
	v_fmac_f32_e32 v40, v41, v40
	v_rcp_f32_e32 v35, v46
	v_div_scale_f32 v41, s1, v20, v92, v20
	v_div_scale_f32 v47, null, v92, v92, v22
	v_div_fixup_f32 v17, v32, v92, v17
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
	v_div_scale_f32 v42, s3, v21, v92, v21
	v_fmac_f32_e32 v35, v49, v35
	v_div_fixup_f32 v18, v32, v92, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v47, v48, 1.0
	v_fma_f32 v32, -v37, v34, v38
	v_fmac_f32_e32 v44, v39, v40
	v_div_scale_f32 v39, null, v92, v92, v23
	s_mov_b32 vcc_lo, s4
	v_dual_mul_f32 v37, v42, v35 :: v_dual_fmac_f32 v48, v43, v48
	v_div_scale_f32 v38, s5, v22, v92, v22
	v_div_fmas_f32 v32, v32, v36, v34
	v_fma_f32 v34, -v45, v44, v41
	v_rcp_f32_e32 v41, v39
	v_fma_f32 v36, -v46, v37, v42
	v_mul_f32_e32 v43, v38, v48
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v92, v92, v24
	v_div_fmas_f32 v34, v34, v40, v44
	v_fmac_f32_e32 v37, v36, v35
	v_fma_f32 v40, -v47, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v36, v45
	v_fma_f32 v44, -v39, v41, 1.0
	v_div_fixup_f32 v19, v32, v92, v19
	v_div_fixup_f32 v20, v34, v92, v20
	v_fma_f32 v32, -v46, v37, v42
	v_fmac_f32_e32 v43, v40, v48
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v34, s1, v23, v92, v23
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v45, v36, 1.0
	v_div_fmas_f32 v32, v32, v35, v37
	v_fma_f32 v35, -v47, v43, v38
	v_mul_f32_e32 v37, v34, v41
	v_div_scale_f32 v38, null, v92, v92, v9
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v36, v40, v36
	v_div_fmas_f32 v35, v35, v48, v43
	v_rcp_f32_e32 v42, v38
	v_fma_f32 v43, -v39, v37, v34
	v_div_scale_f32 v40, s3, v24, v92, v24
	v_div_scale_f32 v46, null, v92, v92, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v37, v43, v41 :: v_dual_mul_f32 v44, v40, v36
	v_div_fixup_f32 v22, v35, v92, v22
	v_rcp_f32_e32 v35, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v38, v42, 1.0
	v_fma_f32 v34, -v39, v37, v34
	v_div_scale_f32 v39, null, v92, v92, v11
	v_div_fixup_f32 v21, v32, v92, v21
	v_fma_f32 v32, -v45, v44, v40
	v_fmac_f32_e32 v42, v43, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v43, v39
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v47, -v46, v35, 1.0
	v_fmac_f32_e32 v44, v32, v36
	v_div_fmas_f32 v34, v34, v41, v37
	v_div_scale_f32 v41, s1, v10, v92, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v47, v35
	v_fma_f32 v37, -v45, v44, v40
	v_div_scale_f32 v32, s4, v9, v92, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v39, v43, 1.0
	v_div_scale_f32 v48, null, v92, v92, v12
	v_dual_mul_f32 v49, v41, v35 :: v_dual_mul_f32 v40, v32, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, s5, v11, v92, v11
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	v_div_fmas_f32 v36, v37, v36, v44
	v_fma_f32 v37, -v46, v49, v41
	v_mul_f32_e32 v44, v45, v43
	v_fma_f32 v47, -v38, v40, v32
	v_div_fixup_f32 v23, v34, v92, v23
	v_div_fixup_f32 v24, v36, v92, v24
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v39, v44, v45
	v_div_scale_f32 v37, null, v92, v92, v13
	v_fmac_f32_e32 v40, v47, v42
	v_fma_f32 v36, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v32, -v38, v40, v32
	v_fma_f32 v38, -v46, v49, v41
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s3, v12, v92, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v32, v32, v42, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, null, v92, v92, v14
	v_div_fmas_f32 v35, v38, v35, v49
	v_fma_f32 v38, -v39, v44, v45
	v_mul_f32_e32 v39, v36, v50
	v_fma_f32 v41, -v37, v34, 1.0
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v42, v40
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v43, -v48, v39, v36
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s1, v13, v92, v13
	v_div_fixup_f32 v9, v32, v92, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v43, v50
	v_div_fixup_f32 v10, v35, v92, v10
	v_mul_f32_e32 v32, v41, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v48, v39, v36
	v_div_fixup_f32 v11, v38, v92, v11
	v_fma_f32 v43, -v37, v32, v41
	v_div_scale_f32 v38, null, v92, v92, v15
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s4, v14, v92, v14
	v_div_fmas_f32 v36, v36, v50, v39
	v_fmac_f32_e32 v32, v43, v34
	v_rcp_f32_e32 v44, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v39, v35, v42
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v36, v92, v12
	v_fma_f32 v36, -v37, v32, v41
	v_div_scale_f32 v43, null, v92, v92, v16
	v_fma_f32 v37, -v40, v39, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v36, v34, v32
	v_div_scale_f32 v34, null, v92, v92, v1
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v36, s1, v15, v92, v15
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v92, v92, v2
	v_div_fixup_f32 v13, v32, v92, v13
	v_fma_f32 v35, -v40, v39, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v34, v37, 1.0
	v_mul_f32_e32 v40, v36, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v32, v45
	v_div_scale_f32 v32, s3, v16, v92, v16
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v92, v92, v3
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v32, v45
	v_div_scale_f32 v48, s4, v1, v92, v1
	v_fma_f32 v49, -v41, v47, 1.0
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v32
	v_mul_f32_e32 v51, v48, v37
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v2, v92, v2
	v_div_fixup_f32 v14, v35, v92, v14
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
	v_div_scale_f32 v39, s1, v3, v92, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_div_fmas_f32 v35, v35, v44, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, null, v92, v92, v4
	v_div_fmas_f32 v32, v32, v45, v42
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v35, v92, v15
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v16, v32, v92, v16
	v_div_fixup_f32 v1, v34, v92, v1
	v_div_scale_f32 v34, null, v92, v92, v5
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v44, null, v92, v92, v8
	v_div_fmas_f32 v37, v37, v47, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v32, -v46, v36, v39
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v2, v37, v92, v2
	v_div_fmas_f32 v32, v32, v50, v36
	v_rcp_f32_e32 v36, v34
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v92, v92, v6
	v_div_scale_f32 v37, null, v92, v92, v7
	v_div_scale_f32 v38, vcc_lo, v4, v92, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v35
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v3, v32, v92, v3
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v32, -v34, v36, 1.0
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v50, -v44, v46, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v32, v36
	v_div_scale_f32 v32, s1, v5, v92, v5
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v48, -v37, v41, 1.0
	v_fma_f32 v47, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v49, v32, v36 :: v_dual_fmac_f32 v46, v50, v46
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v92, v6
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v92, v7
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v32
	v_div_scale_f32 v50, s5, v8, v92, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v51, v45, v39 :: v_dual_mul_f32 v52, v48, v41
	v_fmac_f32_e32 v49, v47, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v51, v45
	v_fma_f32 v47, -v37, v52, v48
	v_fma_f32 v32, -v34, v49, v32
	v_fma_f32 v34, -v44, v53, v50
	v_div_fmas_f32 v38, v38, v42, v43
	v_fmac_f32_e32 v51, v40, v39
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v52, v47, v41
	v_div_fmas_f32 v32, v32, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v35, -v35, v51, v45
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v34, -v37, v52, v48
	v_div_fixup_f32 v5, v32, v92, v5
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v32, s38, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v44, v53, v50
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v4, v38, v92, v4
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v35, v92, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s38, v113
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v33, v32, v113, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v92, v7
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v34, v32, v124, 2
	v_add_lshl_u32 v35, v32, v123, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v36, v92, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	s_clause 0x2
	buffer_store_b32 v0, v33, s[48:51], 0 offen
	buffer_store_b32 v25, v34, s[48:51], 0 offen
	buffer_store_b32 v26, v35, s[48:51], 0 offen
	v_add_lshl_u32 v0, v32, v122, 2
	v_add_lshl_u32 v25, v32, v121, 2
	v_add_lshl_u32 v26, v32, v120, 2
	v_add_lshl_u32 v33, v32, v119, 2
	v_add_lshl_u32 v34, v32, v118, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	v_cndmask_b32_e64 v17, 0, v17, s0
	v_cndmask_b32_e64 v18, 0, v18, s0
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	v_cndmask_b32_e64 v23, 0, v23, s0
	v_cndmask_b32_e64 v24, 0, v24, s0
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
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s38, v117
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	s_clause 0x4
	buffer_store_b32 v27, v0, s[48:51], 0 offen
	buffer_store_b32 v28, v25, s[48:51], 0 offen
	buffer_store_b32 v29, v26, s[48:51], 0 offen
	buffer_store_b32 v30, v33, s[48:51], 0 offen
	buffer_store_b32 v31, v34, s[48:51], 0 offen
	v_add_lshl_u32 v0, v32, v117, 2
	v_add_lshl_u32 v25, v32, v116, 2
	v_add_lshl_u32 v26, v32, v115, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v32, v114, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_lshl_u32 v28, v32, v112, 2
	s_clause 0x2
	buffer_store_b32 v17, v0, s[48:51], 0 offen
	buffer_store_b32 v18, v25, s[48:51], 0 offen
	buffer_store_b32 v19, v26, s[48:51], 0 offen
	v_add_lshl_u32 v17, v32, v111, 2
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v0, 0x80000000, v28
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s38, v108
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v18, v32, v110, 2
	v_add_lshl_u32 v19, v32, v109, 2
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x1
	buffer_store_b32 v20, v27, s[48:51], 0 offen
	buffer_store_b32 v21, v0, s[48:51], 0 offen
	v_add_lshl_u32 v0, v32, v108, 2
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v22, v17, s[48:51], 0 offen
	v_add_lshl_u32 v17, v32, v107, 2
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v18, s[48:51], 0 offen
	buffer_store_b32 v24, v19, s[48:51], 0 offen
	buffer_store_b32 v9, v0, s[48:51], 0 offen
	v_add_lshl_u32 v0, v32, v106, 2
	v_cndmask_b32_e32 v9, 0x80000000, v17, vcc_lo
	v_add_lshl_u32 v17, v32, v105, 2
	v_add_lshl_u32 v18, v32, v104, 2
	v_add_lshl_u32 v19, v32, v103, 2
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b32 v10, v9, s[48:51], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v10, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s38, v100
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v11, v0, s[48:51], 0 offen
	v_add_lshl_u32 v0, v32, v102, 2
	s_clause 0x2
	buffer_store_b32 v12, v9, s[48:51], 0 offen
	buffer_store_b32 v13, v10, s[48:51], 0 offen
	buffer_store_b32 v14, v17, s[48:51], 0 offen
	v_add_lshl_u32 v9, v32, v101, 2
	v_add_lshl_u32 v10, v32, v100, 2
	v_add_lshl_u32 v11, v32, v99, 2
	v_add_lshl_u32 v12, v32, v98, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v0, s[48:51], 0 offen
	buffer_store_b32 v16, v9, s[48:51], 0 offen
	buffer_store_b32 v1, v10, s[48:51], 0 offen
	buffer_store_b32 v2, v11, s[48:51], 0 offen
	buffer_store_b32 v3, v12, s[48:51], 0 offen
	v_add_lshl_u32 v0, v32, v95, 2
	v_add_lshl_u32 v1, v32, v93, 2
	v_add_lshl_u32 v2, v32, v97, 2
	v_add_lshl_u32 v3, v32, v96, 2
	v_add_lshl_u32 v9, v32, v94, 2
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
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp42:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_sgpr 69
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 194
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 69
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13052
; TotalNumSgprs: 71
; NumVgprs: 194
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 71
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
	.quad	.Ltmp9-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
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
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     71
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
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
