	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s6, s[0:1], 0x60
	s_load_b32 s7, s[0:1], 0x88
	s_load_b64 s[12:13], s[0:1], 0x0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v36, 1, v0
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v37, 4, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s8, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s5, s3, 9
	s_mov_b32 s15, 0x31027000
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s8, v36
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v33, 16, v37
	.loc	1 773 26 is_stmt 0              ; attention.py:773:26
	s_add_i32 s9, s8, s5
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_bfe_u32 v69, v0, 4, 1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v35, 15, v0
	v_and_b32_e32 v65, 16, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v38, 1, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s6, v36
	s_mul_i32 s2, s6, s9
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s6, v33
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s13, s13, 0xffff
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s16, s8, s7
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s40, 0, v65
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s16, s16, 64
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_add3_u32 v1, v2, v33, s2
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_gt_i32 s16, 0
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v5, v38, 30, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_lshlrev_b32_e32 v5, 2, v5
	buffer_load_b128 v[1:4], v1, s[12:15], 0 offen
	v_xor_b32_e32 v6, 4, v5
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v39, v5, v1
	ds_bpermute_b32 v40, v5, v2
	ds_bpermute_b32 v41, v5, v3
	ds_bpermute_b32 v43, v5, v4
	ds_bpermute_b32 v42, v6, v1
	ds_bpermute_b32 v44, v6, v2
	ds_bpermute_b32 v45, v6, v3
	ds_bpermute_b32 v46, v6, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v1, v36, 48, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v47, s8, v1
	v_or_b32_e32 v68, s9, v1
	s_mov_b32 s8, 0
	.loc	1 776 23 is_stmt 1              ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v47
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b32_e32 v2, 0x5410
	v_mov_b32_e32 v3, 0x7632
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v34, s9, v1
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
	v_and_b32_e32 v66, 0x5040504, v2
	v_and_b32_e32 v67, 0x7060706, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr66
                                        ; implicit-def: $vgpr67
                                        ; implicit-def: $vgpr34
.LBB0_3:                                ; %Flow111
	s_clause 0x1
	s_load_b64 s[52:53], s[0:1], 0x38
	s_load_b32 s42, s[0:1], 0x64
	v_mov_b32_e32 v8, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
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
	v_mov_b32_e32 v125, v8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	v_dual_mov_b32 v4, 0x5410 :: v_dual_lshlrev_b32 v1, 1, v68
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v2, 24, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_and_b32_e32 v3, 24, v38
	v_dual_mov_b32 v5, 0x7632 :: v_dual_add_nc_u32 v70, s7, v47
	v_dual_mov_b32 v124, 0xff800000 :: v_dual_and_b32 v47, 7, v0
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v59, v39, v42, s40
	v_cndmask_b32_e64 v63, v42, v39, s40
	v_dual_mov_b32 v18, v17 :: v_dual_and_b32 v39, 0x78, v0
	v_bfe_i32 v0, v0, 3, 1
	v_mov_b32_e32 v22, v17
	v_lshl_or_b32 v72, v35, 5, v3
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s57, s13, 0xffff
	s_mov_b32 s56, s12
	v_cndmask_b32_e64 v35, 0x1054, v4, s40
	buffer_load_u16 v34, v1, s[56:59], 0 offen
	v_dual_mov_b32 v20, v17 :: v_dual_and_b32 v1, 0x7f0, v37
	s_load_b32 s0, s[0:1], 0x68
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v57, v41, v45, s40
	v_cndmask_b32_e64 v60, v40, v44, s40
	v_cndmask_b32_e64 v61, v45, v41, s40
	v_cndmask_b32_e64 v64, v44, v40, s40
	v_dual_mov_b32 v24, v17 :: v_dual_add_nc_u32 v7, s5, v36
	v_xor_b32_e32 v71, v1, v2
	v_dual_mov_b32 v23, v17 :: v_dual_and_b32 v40, 0x410, v0
	v_mul_u32_u24_e32 v41, 0x90, v47
	v_lshl_or_b32 v35, v35, 8, v35
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v37, 1, v39
	v_cndmask_b32_e64 v38, 0x3276, v5, s40
	v_dual_mov_b32 v26, v17 :: v_dual_lshlrev_b32 v73, 4, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v30, v17 :: v_dual_and_b32 v35, 0x540054, v35
	v_xor_b32_e32 v75, v41, v40
	v_dual_mov_b32 v28, v17 :: v_dual_add_nc_u32 v37, s5, v37
	v_dual_mov_b32 v21, v17 :: v_dual_lshlrev_b32 v36, 3, v47
	v_lshl_or_b32 v38, v38, 8, v38
	v_xor_b32_e32 v39, v73, v39
	v_xor_b32_e32 v66, 0x1060, v75
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v58, v43, v46, s40
	v_cndmask_b32_e64 v62, v46, v43, s40
	v_dual_mov_b32 v27, v17 :: v_dual_add_nc_u32 v82, 2, v37
	v_dual_mov_b32 v32, v17 :: v_dual_add_nc_u32 v81, 3, v37
	v_xor_b32_e32 v42, 16, v72
	v_xor_b32_e32 v43, 24, v72
	v_dual_mov_b32 v25, v17 :: v_dual_and_b32 v38, 0x760076, v38
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e32 vcc_lo, s42, v36
	v_xor_b32_e32 v36, 8, v72
	v_lshl_or_b32 v76, v47, 10, v39
	v_xor_b32_e32 v39, 16, v75
	v_xor_b32_e32 v40, 32, v75
	v_xor_b32_e32 v41, 48, v75
	v_xor_b32_e32 v44, 64, v75
	v_xor_b32_e32 v45, 0x50, v75
	v_xor_b32_e32 v55, 0x1040, v75
	v_add_nc_u32_e32 v97, 0, v66
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s0, s0, 0x3fb8aa3b
	v_dual_mov_b32 v31, v17 :: v_dual_add_nc_u32 v80, 0, v43
	v_dual_mov_b32 v12, v17 :: v_dual_add_nc_u32 v79, 0, v42
	.loc	1 818 13                        ; attention.py:818:13
	v_mul_lo_u32 v37, s42, v37
	v_mul_lo_u32 v42, s42, v81
	v_mul_lo_u32 v43, s42, v82
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s1, s16, 0x200
	v_dual_mov_b32 v19, v17 :: v_dual_lshlrev_b32 v6, 1, v69
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s1, s1, 63
	v_dual_mov_b32 v29, v17 :: v_dual_add_nc_u32 v78, 0, v36
	v_dual_mov_b32 v9, v17 :: v_dual_add_nc_u32 v82, 0, v40
	v_dual_mov_b32 v11, v17 :: v_dual_add_nc_u32 v84, 0, v44
	v_dual_mov_b32 v14, v17 :: v_dual_add_nc_u32 v81, 0, v39
	v_dual_mov_b32 v16, v17 :: v_dual_add_nc_u32 v83, 0, v41
	v_dual_mov_b32 v2, v17 :: v_dual_add_nc_u32 v85, 0, v45
	v_xor_b32_e32 v46, 0x60, v75
	v_xor_b32_e32 v47, 0x70, v75
	v_xor_b32_e32 v48, 0x820, v75
	v_xor_b32_e32 v49, 0x830, v75
	v_xor_b32_e32 v50, 0x810, v75
	v_xor_b32_e32 v51, 0x860, v75
	v_xor_b32_e32 v52, 0x870, v75
	v_xor_b32_e32 v53, 0x840, v75
	v_xor_b32_e32 v54, 0x850, v75
	v_xor_b32_e32 v56, 0x1050, v75
	v_xor_b32_e32 v67, 0x1070, v75
	v_xor_b32_e32 v99, 0x1010, v75
	v_xor_b32_e32 v100, 0x1020, v75
	v_xor_b32_e32 v101, 0x1030, v75
	v_xor_b32_e32 v102, 0x1860, v75
	v_xor_b32_e32 v103, 0x1870, v75
	v_xor_b32_e32 v104, 0x1840, v75
	v_xor_b32_e32 v105, 0x1850, v75
	v_xor_b32_e32 v106, 0x1820, v75
	v_xor_b32_e32 v107, 0x1830, v75
	v_xor_b32_e32 v108, 0x1810, v75
	v_xor_b32_e32 v36, 0x90, v76
	v_xor_b32_e32 v39, 0x1b0, v76
	v_xor_b32_e32 v40, 0x240, v76
	v_xor_b32_e32 v41, 0x2d0, v76
	v_xor_b32_e32 v44, 0x360, v76
	v_xor_b32_e32 v45, 0x3f0, v76
	.loc	1 811 34 is_stmt 0              ; attention.py:811:34
	s_ashr_i32 s7, s1, 31
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	v_lshl_or_b32 v74, s3, 10, v6
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s3, s7, 26
	v_dual_mov_b32 v13, v17 :: v_dual_add_nc_u32 v86, 0, v46
	v_dual_mov_b32 v15, v17 :: v_dual_add_nc_u32 v88, 0, v48
	v_dual_mov_b32 v3, v17 :: v_dual_add_nc_u32 v92, 0, v52
	v_dual_mov_b32 v4, v17 :: v_dual_add_nc_u32 v87, 0, v47
	v_dual_mov_b32 v5, v17 :: v_dual_add_nc_u32 v94, 0, v54
	v_dual_mov_b32 v6, v17 :: v_dual_add_nc_u32 v89, 0, v49
	v_dual_mov_b32 v8, v17 :: v_dual_add_nc_u32 v91, 0, v51
	v_add_nc_u32_e32 v99, 0, v99
	v_add_nc_u32_e32 v101, 0, v101
	v_dual_mov_b32 v125, v17 :: v_dual_add_nc_u32 v102, 0, v102
	v_add_nc_u32_e32 v103, 0, v103
	v_add_nc_u32_e32 v104, 0, v104
	v_add_nc_u32_e32 v105, 0, v105
	v_add_nc_u32_e32 v106, 0, v106
	v_add_nc_u32_e32 v107, 0, v107
	v_add_nc_u32_e32 v108, 0, v108
	.loc	1 818 13                        ; attention.py:818:13
	v_add_lshl_u32 v109, v37, s42, 1
	v_lshlrev_b32_e32 v110, 1, v37
	v_add_nc_u32_e32 v111, 0, v36
	v_add_nc_u32_e32 v113, 0, v39
	v_add_nc_u32_e32 v114, 0, v40
	v_add_nc_u32_e32 v115, 0, v41
	v_add_nc_u32_e32 v117, 0, v44
	v_add_nc_u32_e32 v118, 0, v45
	v_lshlrev_b32_e32 v119, 1, v42
	v_lshlrev_b32_e32 v120, 1, v43
	s_mov_b32 s44, 0
	.loc	1 811 34                        ; attention.py:811:34
	s_add_i32 s69, s1, s3
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	s_lshl_b32 s43, s42, 7
	s_lshl_b32 s54, s6, 6
	s_mov_b32 s55, 0x76543210
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
	s_mov_b32 s68, s44
	.loc	1 811 33                        ; attention.py:811:33
	s_and_not1_b32 s69, s69, 63
	s_and_b32 s65, s11, 0xffff
	s_mov_b32 s60, s14
	s_mov_b32 s64, s10
	s_mov_b32 s56, s8
	s_mov_b32 s57, s9
	s_mov_b32 s61, s15
	v_add_nc_u32_e32 v96, 0, v56
	v_add_nc_u32_e32 v90, 0, v50
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[0:1], null, s6, v7, v[33:34]
	v_xor_b32_e32 v33, 8, v71
	v_mov_b32_e32 v10, v17
	v_mov_b32_e32 v1, v17
	v_mov_b32_e32 v7, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v77, 0, v33
	v_lshl_or_b32 v33, v35, 4, v35
	v_lshl_or_b32 v35, v38, 4, v38
	v_xor_b32_e32 v38, 0x120, v76
	v_and_b32_e32 v66, 0x5040504, v33
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v33, 16, v34
	v_add_nc_u32_e32 v95, 0, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v112, 0, v38
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v116, s0, v33
	v_add_nc_u32_e32 v93, 0, v53
	v_add_nc_u32_e32 v98, 0, v67
	v_add_nc_u32_e32 v100, 0, v100
	v_and_b32_e32 v67, 0x7060706, v35
	.loc	1 847 25                        ; attention.py:847:25
	v_mov_b32_e32 v121, v116
	v_mov_b32_e32 v122, v116
	v_mov_b32_e32 v123, v116
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v33, 0x80000000, v0, s4
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v48, v109, v73
	v_add_nc_u32_e32 v50, v119, v73
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v38, s44 :: v_dual_add_nc_u32 v37, 0, v71
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[33:36], v33, s[56:59], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v151, 0x80000000, v48, vcc_lo
	v_dual_cndmask_b32 v48, 0x80000000, v50 :: v_dual_add_nc_u32 v47, v110, v73
	v_add_nc_u32_e32 v49, v120, v73
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v54, 0x80000000, v47, vcc_lo
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v39, s45 :: v_dual_add_nc_u32 v46, 0, v72
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v47, 0x80000000, v49, vcc_lo
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v40, s46 :: v_dual_mov_b32 v41, s47
	v_dual_mov_b32 v42, s48 :: v_dual_mov_b32 v43, s49
	v_dual_mov_b32 v44, s50 :: v_dual_mov_b32 v45, s51
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s35, 0xff800000, v124
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v37, v[33:34]
	ds_store_b64 v77, v[35:36]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[180:183], v47, s[64:67], 0 offen
	buffer_load_b128 v[34:37], v48, s[64:67], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[126:129], v46 offset1:1
	ds_load_2addr_stride64_b64 v[139:142], v46 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[143:146], v78 offset1:1
	ds_load_2addr_stride64_b64 v[147:150], v78 offset0:2 offset1:3
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[184:187], v54, s[64:67], 0 offen
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v73, s43, v73
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[126:127], v[63:64], v[38:45] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[131:138], v[141:142], v[63:64], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[164:171], v[139:140], v[63:64], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[172:179], v[128:129], v[63:64], v[38:45] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[38:41], v79 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[42:45], v79 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[131:138], v[149:150], v[61:62], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[164:171], v[147:148], v[61:62], v[164:171] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[126:129], v80 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[172:179], v[145:146], v[61:62], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[46:53], v[143:144], v[61:62], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[131:138], v[40:41], v[59:60], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[164:171], v[38:39], v[59:60], v[164:171] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[38:41], v80 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[172:179], v[44:45], v[59:60], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[46:53], v[42:43], v[59:60], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[172:179], v[128:129], v[57:58], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[46:53], v[126:127], v[57:58], v[46:53] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v154, v175
	v_cvt_f32_i32_e32 v145, v177
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v144, v46
	v_cvt_f32_i32_e32 v127, v48
	v_cvt_f32_i32_e32 v150, v52
	v_cvt_f32_i32_e32 v130, v53
	v_cvt_f32_i32_e32 v129, v50
	v_cvt_f32_i32_e32 v128, v51
	v_cvt_f32_i32_e32 v156, v173
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[131:138], v[40:41], v[57:58], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[164:171], v[38:39], v[57:58], v[164:171] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[38:41], v151, s[64:67], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1
	buffer_load_u16 v177, v74, s[60:63], 0 offen offset:72
	buffer_load_u16 v175, v74, s[60:63], 0 offen offset:76
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v155, v174
	v_cvt_f32_i32_e32 v149, v176
	v_cvt_f32_i32_e32 v140, v131
	v_cvt_f32_i32_e32 v139, v132
	v_cvt_f32_i32_e32 v55, v134
	v_cvt_f32_i32_e32 v54, v135
	v_cvt_f32_i32_e32 v53, v137
	v_cvt_f32_i32_e32 v52, v136
	v_cvt_f32_i32_e32 v42, v138
	v_cvt_f32_i32_e32 v153, v133
	v_cvt_f32_i32_e32 v143, v164
	v_cvt_f32_i32_e32 v164, v166
	v_cvt_f32_i32_e32 v163, v167
	v_cvt_f32_i32_e32 v161, v168
	v_cvt_f32_i32_e32 v158, v169
	v_cvt_f32_i32_e32 v157, v170
	v_cvt_f32_i32_e32 v141, v171
	v_cvt_f32_i32_e32 v147, v165
	v_cvt_f32_i32_e32 v142, v179
	v_cvt_f32_i32_e32 v148, v178
	v_cvt_f32_i32_e32 v56, v172
	v_dual_mul_f32 v130, v123, v130 :: v_dual_add_nc_u32 v33, 0, v76
	v_cvt_f32_i32_e32 v146, v47
	v_cvt_f32_i32_e32 v126, v49
	v_mul_f32_e32 v128, v121, v128
	v_dual_mul_f32 v129, v116, v129 :: v_dual_add_nc_u32 v0, s54, v0
	v_mul_f32_e32 v56, v116, v56
	v_mul_f32_e32 v55, v116, v55
	v_mul_f32_e32 v53, v123, v53
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v46.l, v180.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v46.h, v34.l
	v_mov_b16_e64 v34.l, v180.h
	v_mov_b16_e64 v48.l, v181.l
	v_mov_b16_e32 v48.h, v35.l
	v_mov_b16_e64 v35.l, v181.h
	v_mov_b16_e64 v50.l, v182.l
	v_mov_b16_e32 v50.h, v36.l
	v_mov_b16_e64 v36.l, v182.h
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1d
	buffer_load_u16 v182, v74, s[60:63], 0 offen offset:80
	buffer_load_u16 v181, v74, s[60:63], 0 offen offset:84
	buffer_load_u16 v180, v74, s[60:63], 0 offen offset:88
	buffer_load_u16 v179, v74, s[60:63], 0 offen offset:92
	buffer_load_u16 v178, v74, s[60:63], 0 offen offset:96
	buffer_load_u16 v176, v74, s[60:63], 0 offen offset:100
	buffer_load_u16 v174, v74, s[60:63], 0 offen offset:104
	buffer_load_u16 v172, v74, s[60:63], 0 offen offset:36
	buffer_load_u16 v171, v74, s[60:63], 0 offen offset:40
	buffer_load_u16 v168, v74, s[60:63], 0 offen offset:44
	buffer_load_u16 v166, v74, s[60:63], 0 offen offset:48
	buffer_load_u16 v162, v74, s[60:63], 0 offen
	buffer_load_u16 v160, v74, s[60:63], 0 offen offset:4
	buffer_load_u16 v152, v74, s[60:63], 0 offen offset:8
	buffer_load_u16 v159, v74, s[60:63], 0 offen offset:12
	buffer_load_u16 v137, v74, s[60:63], 0 offen offset:16
	buffer_load_u16 v170, v74, s[60:63], 0 offen offset:60
	buffer_load_u16 v136, v74, s[60:63], 0 offen offset:20
	buffer_load_u16 v151, v74, s[60:63], 0 offen offset:24
	buffer_load_u16 v138, v74, s[60:63], 0 offen offset:28
	buffer_load_u16 v135, v74, s[60:63], 0 offen offset:32
	buffer_load_u16 v169, v74, s[60:63], 0 offen offset:52
	buffer_load_u16 v167, v74, s[60:63], 0 offen offset:56
	buffer_load_u16 v173, v74, s[60:63], 0 offen offset:64
	buffer_load_u16 v165, v74, s[60:63], 0 offen offset:68
	buffer_load_u16 v134, v74, s[60:63], 0 offen offset:108
	buffer_load_u16 v133, v74, s[60:63], 0 offen offset:112
	buffer_load_u16 v131, v74, s[60:63], 0 offen offset:116
	buffer_load_u16 v132, v74, s[60:63], 0 offen offset:120
	buffer_load_u16 v51, v74, s[60:63], 0 offen offset:124
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(33)
	v_mov_b16_e64 v45.l, v184.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b16_e64 v47.l, v185.l
	v_mov_b16_e64 v49.l, v186.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v54, v121, v54
	v_mul_f32_e32 v52, v122, v52
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v44.h, v37.l
	v_mov_b16_e64 v37.l, v183.h
	v_mov_b16_e64 v44.l, v183.l
	v_mov_b16_e64 v43.l, v187.l
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v74, 0x80, v74
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(32)
	v_mov_b16_e32 v45.h, v38.l
	v_mov_b16_e64 v38.l, v184.h
	v_mov_b16_e32 v47.h, v39.l
	v_mov_b16_e64 v39.l, v185.h
	v_mov_b16_e32 v49.h, v40.l
	ds_store_b64 v33, v[45:46]
	v_mov_b32_e32 v33, v38
	ds_store_b64 v111, v[33:34]
	ds_store_b64 v112, v[47:48]
	v_dual_mov_b32 v34, v39 :: v_dual_add_nc_u32 v33, s68, v69
	ds_store_b64 v113, v[34:35]
	ds_store_b64 v114, v[49:50]
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v34, 52, v33
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s36, v33, v70
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v40.l, v186.h
	v_mov_b16_e32 v43.h, v41.l
	v_mov_b16_e64 v41.l, v187.h
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s1, v34, v70
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v34, 50, v33
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s41, s2, s36
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s68, s68, 64
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s1, s2, s1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s0, v34, v70
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s0, s2, s0
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v38, 16, v182
	v_lshlrev_b32_e32 v35, 16, v175
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v34, 48, v33
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v39, 16, v181
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v46, 16, v179
	v_lshlrev_b32_e32 v45, 16, v180
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s5, v34, v70
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v34, 46, v33
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v48, 16, v171
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s5, s2, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s6, v34, v70
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v34, 44, v33
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s36, s2, s6
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s7, v34, v70
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v34, 42, v33
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v138, 16, v138
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s37, s2, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s8, v34, v70
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v34, 40, v33
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s38, s2, s8
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s9, v34, v70
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v34, 38, v33
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s39, s2, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s11, v34, v70
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v34, 36, v33
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s11, s2, s11
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s12, v34, v70
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v34, 34, v33
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s12, s2, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s13, v34, v70
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v34, 32, v33
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s13, s2, s13
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s14, v34, v70
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v34, 30, v33
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s14, s2, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s15, v34, v70
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v34, 28, v33
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s2, s15
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s10, v34, v70
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v34, 26, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s17, v34, v70
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v34, 24, v33
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s15, s2, s17
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s18, v34, v70
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v34, 22, v33
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s17, s2, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s20, v34, v70
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v34, 20, v33
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s18, s2, s10
	s_and_b32 s20, s2, s20
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s22, v34, v70
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v34, 18, v33
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s22, s2, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s23, v34, v70
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v34, 16, v33
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s23, s2, s23
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s16, v34, v70
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v34, 14, v33
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s16, s2, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s19, v34, v70
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v34, 12, v33
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s19, s2, s19
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s21, v34, v70
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v34, 10, v33
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s21, s2, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s24, v34, v70
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v34, 8, v33
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s24, s2, s24
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s27, v34, v70
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v34, 6, v33
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s27, s2, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s28, v34, v70
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v34, 4, v33
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s28, s2, s28
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s29, v34, v70
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v34, 2, v33
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s29, s2, s29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s31, v34, v70
	.loc	1 822 32 is_stmt 1              ; attention.py:822:32
	v_add_nc_u32_e32 v34, 62, v33
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s31, s2, s31
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s26, v34, v70
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v34, 60, v33
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s6, s2, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s25, v34, v70
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v34, 58, v33
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s8, s2, s25
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s30, v34, v70
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v34, 56, v33
	v_add_nc_u32_e32 v33, 54, v33
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s7, s2, s30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s33, v34, v70
	v_cmp_le_i32_e64 s34, v33, v70
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v33, v116, v164 :: v_dual_lshlrev_b32 v34, 16, v177
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s9, s2, s33
	s_and_b32 s10, s2, s34
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s68, s69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v33, v34
	v_mul_f32_e32 v33, v121, v163
	v_mul_f32_e32 v35, v33, v35
	v_mul_f32_e32 v33, v122, v161
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v34, 0xff800000, v34, s12
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v38, v33, v38
	v_mul_f32_e32 v33, v123, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v39, v33, v39
	v_mul_f32_e32 v33, v116, v157
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v157, 0xff800000, v39, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v45, v33, v45
	v_mul_f32_e32 v33, v121, v141
	v_mul_f32_e32 v47, v33, v46
	v_dual_mul_f32 v33, v122, v140 :: v_dual_lshlrev_b32 v46, 16, v178
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v140, 16, v166
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v50, v33, v46 :: v_dual_mul_f32 v33, v123, v139
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v46, 16, v176
	v_lshlrev_b32_e32 v139, 16, v168
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v141, v33, v46
	v_dual_mul_f32 v33, v122, v153 :: v_dual_lshlrev_b32 v46, 16, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v49, v33, v46
	v_mul_f32_e32 v33, v116, v156
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v46, 16, v172
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v156, 0xff800000, v35, s11
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_mov_b32 v35, v40 :: v_dual_mul_f32 v46, v33, v46
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v33, v121, v155
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v115, v[35:36]
	ds_store_b64 v117, v[43:44]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v164, 0xff800000, v46, s23
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v48, v33, v48 :: v_dual_mul_f32 v33, v122, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v139, v33, v139
	v_mul_f32_e32 v33, v123, v149
	v_dual_mul_f32 v140, v33, v140 :: v_dual_mul_f32 v33, v122, v142
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v142, 16, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v142, v33, v142 :: v_dual_mul_f32 v33, v123, v143
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v143, 16, v173
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v163, 0xff800000, v48, s22
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v143, v33, v143
	v_mul_f32_e32 v33, v116, v145
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v145, 16, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v145, v33, v145
	v_dual_mul_f32 v33, v121, v148 :: v_dual_lshlrev_b32 v148, 16, v167
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v158, 0xff800000, v145, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v149, v33, v148
	v_mul_f32_e32 v33, v121, v147
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v147, 16, v165
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v165, 0xff800000, v140, s17
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v148, v33, v147 :: v_dual_mul_f32 v33, v116, v144
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v144, 16, v162
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v162, 0xff800000, v139, s20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v144, v33, v144
	v_dual_mul_f32 v33, v121, v146 :: v_dual_lshlrev_b32 v146, 16, v160
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v160, 0xff800000, v142, s3
	v_cndmask_b32_e64 v46, 0xff800000, v144, s41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v146, v33, v146
	v_dual_mul_f32 v33, v123, v126 :: v_dual_lshlrev_b32 v126, 16, v159
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v159, 0xff800000, v143, s14
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v147, v33, v126
	v_mul_f32_e32 v33, v122, v127
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v127, 16, v152
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v161, 0xff800000, v148, s13
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v126.h, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v152, v33, v127
	v_mov_b32_e32 v127, v125
	v_dual_mul_f32 v125, v122, v150 :: v_dual_lshlrev_b32 v150, 16, v151
	v_dual_mul_f32 v151, v130, v138 :: v_dual_lshlrev_b32 v130, 16, v137
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v33, 0, v75
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v48, 0xff800000, v152, s29
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v40, v160, v159, v161
.Ltmp2:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v154.h, v126.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v137, v129, v130
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v129, 16, v136
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v130, 0xff800000, v50, s5
	v_cndmask_b32_e64 v50, 0xff800000, v47, s36
	v_cndmask_b32_e64 v47, 0xff800000, v147, s28
	v_cndmask_b32_e64 v39, 0xff800000, v137, s27
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v128, v128, v129 :: v_dual_lshlrev_b32 v129, 16, v135
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v153.h, v126.h
	v_mov_b16_e64 v155.h, v126.h
	v_mov_b16_e64 v138.h, v126.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v135, v56, v129
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v129, 16, v134
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v56.h, v126.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v166, 0xff800000, v135, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v134, v55, v129
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v129, 16, v133
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v55.h, v126.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v133, v54, v129
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v129, 16, v132
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v135, 0xff800000, v134, s10
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v54.h, v126.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v133, 0xff800000, v133, s9
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v132, v53, v129 :: v_dual_lshlrev_b32 v53, 16, v131
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v131, 0xff800000, v49, s1
	v_cndmask_b32_e64 v49, 0xff800000, v149, s18
	v_cndmask_b32_e64 v129, 0xff800000, v141, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v136, v52, v53 :: v_dual_mul_f32 v53, v123, v42
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v42, v37
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v139, v165, v158, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v36, v130, v129, v131
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v134, 0xff800000, v136, s7
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v37, v53, v51
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v51, 0xff800000, v45, s37
	v_cndmask_b32_e64 v45, 0xff800000, v146, s31
	v_cndmask_b32_e64 v53, 0xff800000, v38, s39
	v_cndmask_b32_e64 v38, 0xff800000, v128, s24
	v_cndmask_b32_e64 v128, 0xff800000, v151, s19
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v136, v164, v163, v162
	v_max_f32_e32 v43, v46, v45
.Ltmp6:
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v125, v125, v150
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v44, v47, v39, v38
.Ltmp8:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v150.h, v126.h
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v35, v157, v51, v50
.Ltmp10:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v118, v[41:42]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v137, 0xff800000, v125, s21
	v_cndmask_b32_e64 v125, 0xff800000, v132, s8
	v_cndmask_b32_e64 v132, 0xff800000, v37, s6
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v37, v34, v156, v53
	v_max_f32_e32 v41, v135, v133
	v_max3_f32 v140, v137, v128, v166
	v_max3_f32 v40, v136, v139, v40
	v_max_f32_e32 v42, v125, v132
	v_max3_f32 v43, v43, v48, v44
	v_max3_f32 v35, v37, v35, v36
.Ltmp12:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v36, v41, v134, v42
	v_max3_f32 v37, v43, v140, v40
.Ltmp14:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v52.h, v126.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v35, v37, v35, v36
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v35, s55, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v136, v124, v35, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v48, v136
	v_sub_f32_e32 v41, v137, v136
	v_sub_f32_e32 v39, v39, v136
	v_sub_f32_e32 v35, v45, v136
	v_sub_f32_e32 v40, v47, v136
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v43, v37
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v44, v39
	v_exp_f32_e32 v35, v35
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v38, v136
	v_sub_f32_e32 v42, v128, v136
	v_sub_f32_e32 v49, v49, v136
	v_sub_f32_e32 v130, v130, v136
	v_sub_f32_e32 v129, v129, v136
	v_sub_f32_e32 v131, v131, v136
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v43, s29
	v_cndmask_b32_e64 v47, 0, v41, s21
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v35, s31
	v_cndmask_b32_e64 v45, 0, v44, s27
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v153.l, v39.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v46, v136
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v155.l, v47.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v46, v38
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v126.l, v37.h
	v_and_b32_e32 v41, 1, v153
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v43, 1, v155
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v154.l, v45.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v48, 0, v42, s19
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s27, v45, v45
	v_cmp_o_f32_e64 s19, v37, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v46, 0, v46, s24
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v42, 1, v154
	v_cmp_o_f32_e64 s25, v39, v39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v36, s41
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v36, 1, v126
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s26, v46, v46
	v_add3_u32 v42, v45, v42, 0x7fff
	v_mov_b16_e64 v150.l, v38.h
	v_cmp_o_f32_e64 s21, v38, v38
	v_mov_b16_e32 v126.l, v40.h
	v_add3_u32 v36, v37, v36, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s27
	v_and_b32_e32 v35, 1, v150
	v_cmp_o_f32_e64 s24, v40, v40
	v_and_b32_e32 v44, 1, v126
	v_mov_b16_e32 v126.l, v46.h
	v_add3_u32 v41, v39, v41, 0x7fff
	v_add3_u32 v35, v38, v35, 0x7fff
	v_cmp_o_f32_e64 s28, v48, v48
	v_add3_u32 v44, v40, v44, 0x7fff
	v_cmp_o_f32_e64 s29, v47, v47
	v_add3_u32 v43, v47, v43, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s21
	v_and_b32_e32 v35, 1, v126
	v_mov_b16_e32 v126.l, v48.h
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s19
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s25
	v_cndmask_b16 v41.h, 0x7fff, v44.h, s24
	v_add3_u32 v35, v46, v35, 0x7fff
	v_and_b32_e32 v128, 1, v126
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s29
	v_permlanex16_b32 v137, v36, s55, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[147:150], v33
	ds_load_b128 v[151:154], v81
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v42.h, 0x7fff, v35.h, s26
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v135, v135, v136
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_perm_b32 v139, v137, v36, v66
	v_perm_b32 v140, v137, v36, v67
	v_permlanex16_b32 v35, v42, s55, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v130, v130
	v_exp_f32_e32 v129, v129
	v_exp_f32_e32 v131, v131
	v_exp_f32_e32 v135, v135
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v143, v35, v42, v66
	v_perm_b32 v144, v35, v42, v67
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v35, v124, v136
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v44, v48, v128, 0x7fff
	v_permlanex16_b32 v128, v41, s55, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v133, v133, v136
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v130, 0, v130, s5
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v35, v35
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v43.h, 0x7fff, v44.h, s28
	v_perm_b32 v141, v128, v41, v66
	v_perm_b32 v142, v128, v41, v67
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v163, v136
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v163, 0, v49, s18
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_permlanex16_b32 v36, v43, s55, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v41.h, v126.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v129, 0, v129, s0
	v_cndmask_b32_e64 v131, 0, v131, s1
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v128, 0, v35, s35
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v145, v36, v43, v66
	v_perm_b32 v146, v36, v43, v67
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v164, v136
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.h, v126.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v128
	v_mul_f32_e32 v20, v20, v128
	v_mul_f32_e32 v21, v21, v128
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v22, v22, v128
	v_mul_f32_e32 v23, v23, v128
	v_mul_f32_e32 v24, v24, v128
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v138.l, v163.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v128
	v_mul_f32_e32 v25, v25, v128
	v_mul_f32_e32 v26, v26, v128
	v_mul_f32_e32 v27, v27, v128
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v49, 1, v138
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v155, 0, v43, s23
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v128
	v_mul_f32_e32 v29, v29, v128
	v_mul_f32_e32 v30, v30, v128
	v_mul_f32_e32 v31, v31, v128
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v126.l, v155.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v19, v19, v128
	v_mul_f32_e32 v32, v32, v128
	v_mul_f32_e32 v9, v9, v128
	v_mul_f32_e32 v10, v10, v128
	v_mul_f32_e32 v11, v11, v128
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[147:154], v[139:146], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[147:150], v88
	ds_load_b128 v[151:154], v89
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v12, v12, v128
	v_mul_f32_e32 v13, v13, v128
	v_mul_f32_e32 v14, v14, v128
	v_mul_f32_e32 v15, v15, v128
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v135, 0, v135, s10
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v128
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v134, v134, v136
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v133, v133
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v128
	v_mul_f32_e32 v2, v2, v128
	v_mul_f32_e32 v5, v5, v128
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v134, v134
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v128
	v_mul_f32_e32 v7, v7, v128
	v_mul_f32_e32 v8, v8, v128
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v137.h, v126.h
	v_mov_b16_e64 v137.l, v130.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v4, v4, v128
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v133, 0, v133, s9
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[147:154], v[139:146], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[147:150], v95
	ds_load_b128 v[151:154], v96
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v134, 0, v134, s7
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v128
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v42, v166, v136 :: v_dual_and_b32 v137, 1, v137
	v_sub_f32_e32 v124, v162, v136
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v163, v163
	v_add3_u32 v49, v163, v49, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v124, v124
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v34, v34, v136
	v_sub_f32_e32 v51, v51, v136
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s21
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v50, v50, v136
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v36.h, v126.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v51, v51
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v125, v125, v136
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v50, v50
	.loc	1 896 23 is_stmt 1              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[147:154], v[139:146], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[147:150], v102
	ds_load_b128 v[151:154], v103
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v124, 0, v124, s20
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v132, v132, v136
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v125, v125
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v130, v130
	v_cmp_o_f32_e64 s5, v131, v131
	v_cmp_o_f32_e64 s7, v133, v133
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v132, v132
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s0, v129, v129
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v125, 0, v125, s8
	v_cndmask_b32_e64 v132, 0, v132, s6
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v125, v125
	v_cmp_o_f32_e64 s6, v134, v134
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[147:154], v[139:146], v[1:8]
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v139, v165, v136
	v_sub_f32_e32 v140, v158, v136
	v_sub_f32_e32 v141, v160, v136
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v154, 0, v42, s16
	v_cndmask_b32_e64 v158, 0, v44, s22
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v139, v139
	v_exp_f32_e32 v140, v140
	v_exp_f32_e32 v141, v141
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v56.l, v154.h
	v_mov_b16_e64 v55.l, v158.h
	v_cmp_o_f32_e64 s16, v124, v124
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[146:149], v82
	ds_load_b128 v[150:153], v83
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s8, v132, v132
	v_and_b32_e32 v42, 1, v56
	v_and_b32_e32 v43, 1, v55
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v160, 0, v139, s17
	v_cndmask_b32_e64 v162, 0, v140, s15
	v_cndmask_b32_e64 v164, 0, v141, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v155, v155
	v_cmp_o_f32_e64 s15, v154, v154
	v_mov_b16_e64 v54.l, v160.h
	v_add3_u32 v42, v154, v42, 0x7fff
	v_cmp_o_f32_e64 s17, v158, v158
	v_add3_u32 v43, v158, v43, 0x7fff
	v_cmp_o_f32_e64 s18, v162, v162
	v_and_b32_e32 v44, 1, v54
	v_and_b32_e32 v54, 1, v126
	v_mov_b16_e32 v126.l, v124.h
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s15
	v_cmp_o_f32_e64 s19, v160, v160
	v_cmp_o_f32_e64 s20, v164, v164
	v_add3_u32 v54, v155, v54, 0x7fff
	v_and_b32_e32 v55, 1, v126
	v_mov_b16_e64 v126.l, v162.h
	v_add3_u32 v44, v160, v44, 0x7fff
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s17
	v_cndmask_b16 v42.h, 0x7fff, v54.h, s3
	v_add3_u32 v54, v124, v55, 0x7fff
	v_and_b32_e32 v56, 1, v126
	v_mov_b16_e64 v126.l, v164.h
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s19
	v_permlanex16_b32 v139, v42, s55, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v43.h, 0x7fff, v54.h, s16
	v_add3_u32 v54, v162, v56, 0x7fff
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v154, v154, v155 :: v_dual_and_b32 v55, 1, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp19:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v138, v139, v42, v66
	v_permlanex16_b32 v56, v43, s55, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v44.h, 0x7fff, v54.h, s18
	v_add3_u32 v55, v164, v55, 0x7fff
	v_perm_b32 v139, v139, v42, v67
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v155, v158, v124
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v140, v56, v43, v66
	v_permlanex16_b32 v42, v44, s55, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v49.h, 0x7fff, v55.h, s20
	v_perm_b32 v141, v56, v43, v67
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v158, v160, v162
	v_add_f32_e32 v160, v163, v164
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v142, v42, v44, v66
	v_permlanex16_b32 v43, v49, s55, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v143, v42, v44, v67
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v42, v159, v136
	v_sub_f32_e32 v44, v156, v136
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v159, 0, v50, s36
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_perm_b32 v144, v43, v49, v66
	v_perm_b32 v145, v43, v49, v67
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v161, v136
	v_sub_f32_e32 v49, v53, v136
	v_sub_f32_e32 v53, v157, v136
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	.loc	1 896 23 is_stmt 1              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[146:153], v[138:145], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[146:149], v33 offset:2048
	ds_load_b128 v[150:153], v90
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v49, v49
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v157, 0, v51, s37
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s16, v159, v159
	v_mov_b32_e32 v124, v136
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v136, v154, v155
	v_add_f32_e32 v154, v130, v129
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v41.l, v157.h
	v_cmp_o_f32_e64 s17, v157, v157
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v155, v158, v160
.Ltmp27:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v156, 0, v53, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v130, v130, v137, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v136, v136, v155 :: v_dual_and_b32 v41, 1, v41
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v130.l, 0x7fff, v130.h, s1
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[146:153], v[138:145], v[25:32]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[146:149], v97
	ds_load_b128 v[150:153], v98
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v41, v157, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s17
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[146:153], v[138:145], v[9:16]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[146:149], v104
	ds_load_b128 v[150:153], v105
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[146:153], v[138:145], v[1:8]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v150, 0, v43, s13
	v_cndmask_b32_e64 v149, 0, v42, s14
	v_cndmask_b32_e64 v152, 0, v44, s11
	v_cndmask_b32_e64 v151, 0, v34, s12
	v_cndmask_b32_e64 v153, 0, v49, s39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v126.l, v150.h
	v_mov_b16_e64 v52.l, v149.h
	v_cmp_o_f32_e64 s3, v150, v150
	v_mov_b16_e64 v35.l, v151.h
	v_cmp_o_f32_e64 s11, v149, v149
	v_and_b32_e32 v42, 1, v126
	v_mov_b16_e64 v126.l, v152.h
	v_and_b32_e32 v34, 1, v52
	v_mov_b16_e64 v36.l, v153.h
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v42, v150, v42, 0x7fff
	v_and_b32_e32 v43, 1, v126
	v_mov_b16_e64 v126.l, v156.h
	v_add3_u32 v34, v149, v34, 0x7fff
	v_cmp_o_f32_e64 s12, v152, v152
	v_cmp_o_f32_e64 s13, v151, v151
	v_and_b32_e32 v36, 1, v36
	v_and_b32_e32 v44, 1, v126
	v_mov_b16_e64 v126.l, v159.h
	v_add3_u32 v35, v151, v35, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s11
	v_cndmask_b16 v34.h, 0x7fff, v42.h, s3
	v_add3_u32 v42, v152, v43, 0x7fff
	v_and_b32_e32 v43, 1, v126
	v_cmp_o_f32_e64 s14, v156, v156
	v_cmp_o_f32_e64 s15, v153, v153
	v_add3_u32 v36, v153, v36, 0x7fff
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s13
	v_cndmask_b16 v35.h, 0x7fff, v42.h, s12
	v_add3_u32 v42, v156, v44, 0x7fff
	v_add3_u32 v43, v159, v43, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[141:144], v84
	ds_load_b128 v[145:148], v85
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s15
	v_permlanex16_b32 v50, v34, s55, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v35, s55, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v36.h, 0x7fff, v42.h, s14
	v_cndmask_b16 v41.h, 0x7fff, v43.h, s16
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v149, v149, v150
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v49, v50, v34, v66
	v_perm_b32 v50, v50, v34, v67
	v_perm_b32 v51, v44, v35, v66
	v_permlanex16_b32 v34, v36, s55, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v52, v44, v35, v67
	v_permlanex16_b32 v35, v41, s55, 0xfedcba98 op_sel:[1,0]
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v150, v151, v152
	v_add_f32_e32 v151, v153, v156
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v53, v34, v36, v66
	v_perm_b32 v54, v34, v36, v67
	v_perm_b32 v55, v35, v41, v66
	v_perm_b32 v56, v35, v41, v67
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v152, v157, v159
	v_add_f32_e32 v157, v131, v135
	v_add_f32_e32 v149, v149, v150
	v_add_f32_e32 v150, v133, v134
.Ltmp35:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[141:148], v[49:56], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[141:144], v91
	ds_load_b128 v[145:148], v92
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v151, v151, v152
	v_add_f32_e32 v152, v125, v132
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v140.h, v126.h
	v_mov_b16_e64 v140.l, v125.h
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v154, v154, v157
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v138.h, v126.h
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v150, v150, v152
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v139.h, v126.h
	v_mov_b16_e64 v138.l, v131.h
	v_mov_b16_e64 v139.l, v133.h
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v149, v149, v151 :: v_dual_and_b32 v140, 1, v140
	v_add_f32_e32 v150, v154, v150
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v138, 1, v138
	v_and_b32_e32 v139, 1, v139
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v125, v125, v140, 0x7fff
	v_mov_b16_e64 v126.l, v129.h
	v_cmp_o_f32_e64 s3, v135, v135
	v_add3_u32 v131, v131, v138, 0x7fff
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[141:148], v[49:56], v[25:32]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[145:148], v99
	ds_load_b128 v[141:144], v33 offset:4096
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v133, v133, v139, 0x7fff
	v_cndmask_b16 v139.l, 0x7fff, v125.h, s9
	v_cndmask_b16 v133.l, 0x7fff, v131.h, s5
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[41:44], v86
	ds_load_b128 v[33:36], v33 offset:6144
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v138.l, 0x7fff, v133.h, s7
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[141:148], v[49:56], v[9:16]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[141:144], v106
	ds_load_b128 v[145:148], v107
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[141:148], v[49:56], v[1:8]
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v53, v38, v37 :: v_dual_add_f32 v54, v39, v40
	v_dual_add_f32 v55, v45, v46 :: v_dual_add_f32 v56, v47, v48
.Ltmp45:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[49:52], v100
	ds_load_b128 v[37:40], v108
	ds_load_b128 v[45:48], v87
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v153, v53, v54 :: v_dual_add_f32 v156, v55, v56
.Ltmp47:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[141:144], v93
	ds_load_b128 v[145:148], v94
	ds_load_b128 v[53:56], v101
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v137, v153, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v136, v137, v136
	v_add_f32_e32 v137, v149, v150
	v_add_f32_e32 v125, v136, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v131, v125, s55, 0xfedcba98 op_sel:[1,0]
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v125, v125, v131
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v131, 1, v126
	v_mov_b16_e64 v126.l, v135.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v125, v127, v128
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v129, v129, v131, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v136, 1, v126
	v_mov_b16_e64 v126.l, v134.h
	v_cndmask_b16 v130.h, 0x7fff, v129.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v129, v135, v136, 0x7fff
	v_and_b32_e32 v131, 1, v126
	v_mov_b16_e64 v126.l, v132.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v135, v130, s55, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v133.h, 0x7fff, v129.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v131, v134, v131, 0x7fff
	v_and_b32_e32 v126, 1, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_perm_b32 v129, v135, v130, v66
	v_perm_b32 v130, v135, v130, v67
	v_cndmask_b16 v138.h, 0x7fff, v131.h, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v126, v132, v126, 0x7fff
	v_permlanex16_b32 v132, v133, s55, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v139.h, 0x7fff, v126.h, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v126, v138, s55, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v131, v132, v133, v66
	v_perm_b32 v132, v132, v133, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v136, v139, s55, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v133, v126, v138, v66
	v_perm_b32 v134, v126, v138, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v135, v136, v139, v66
	v_perm_b32 v136, v136, v139, v67
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[41:48], v[129:136], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[141:148], v[129:136], v[25:32]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[49:56], v[129:136], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[129:136], v[1:8]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v34, v68
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v0, null, v125, v125, v17
	v_div_scale_f32 v33, null, v125, v125, v18
	v_div_scale_f32 v35, null, v125, v125, v19
	v_rcp_f32_e32 v36, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v37, v33
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v39, vcc_lo, v17, v125, v17
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v40, s0, v18, v125, v18
	v_div_scale_f32 v43, null, v125, v125, v20
	v_div_scale_f32 v49, s3, v20, v125, v20
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v0, v36, 1.0
	v_fma_f32 v42, -v33, v37, 1.0
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v34, s42, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v35, v38, 1.0
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s53, s53, 0xffff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v36, v41, v36 :: v_dual_fmac_f32 v37, v42, v37
	v_div_scale_f32 v41, s1, v19, v125, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v44, v38
	v_dual_mul_f32 v44, v39, v36 :: v_dual_mul_f32 v45, v40, v37
	v_rcp_f32_e32 v42, v43
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v0, v44, v39
	v_fma_f32 v48, -v33, v45, v40
	v_dual_fmac_f32 v44, v47, v36 :: v_dual_fmac_f32 v45, v48, v37
	v_div_scale_f32 v47, null, v125, v125, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v43, v42, 1.0
	v_fma_f32 v0, -v0, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v45, v40
	v_rcp_f32_e32 v39, v47
	v_div_scale_f32 v40, null, v125, v125, v22
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v36, v44
	s_mov_b32 vcc_lo, s0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v125
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v37, v45
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v0, v125, v17
	v_rcp_f32_e32 v44, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v39, 1.0
	v_div_fixup_f32 v17, v33, v125, v18
	v_div_scale_f32 v33, s4, v21, v125, v21
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v45, v39
	v_mul_f32_e32 v46, v41, v38
	v_fmac_f32_e32 v42, v50, v42
	v_div_scale_f32 v45, null, v125, v125, v24
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v51, -v35, v46, v41
	v_rcp_f32_e32 v48, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v51, v38
	v_fma_f32 v18, -v35, v46, v41
	v_mul_f32_e32 v41, v33, v39
	v_mul_f32_e32 v36, v49, v42
	v_fma_f32 v35, -v40, v44, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v18, v18, v38, v46
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v37, -v43, v36, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v18, v18, v125, v19
	v_fmac_f32_e32 v36, v37, v42
	v_div_scale_f32 v37, null, v125, v125, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v43, v36, v49
	v_div_scale_f32 v43, s1, v22, v125, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v18, v18
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v38, v42, v36
	v_fma_f32 v38, -v47, v41, v33
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v19, v36, v125, v20
	v_fmac_f32_e32 v41, v38, v39
	v_div_scale_f32 v38, null, v125, v125, v25
	v_div_scale_f32 v36, s3, v23, v125, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v47, v41, v33
	v_rcp_f32_e32 v49, v38
	v_fmac_f32_e32 v44, v35, v44
	v_rcp_f32_e32 v35, v37
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v43, v44
	v_fma_f32 v20, -v40, v42, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v37, v35, 1.0
	v_dual_fmac_f32 v42, v20, v44 :: v_dual_fmac_f32 v35, v46, v35
	v_div_fmas_f32 v20, v33, v39, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v38, v49, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v33, -v40, v42, v43
	v_mul_f32_e32 v47, v36, v35
	v_div_scale_f32 v43, null, v125, v125, v26
	v_fma_f32 v46, -v45, v48, 1.0
	v_fmac_f32_e32 v49, v41, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v37, v47, v36
	v_div_fmas_f32 v33, v33, v44, v42
	v_div_fixup_f32 v20, v20, v125, v21
	v_div_scale_f32 v41, s1, v25, v125, v25
	v_fmac_f32_e32 v47, v39, v35
	v_rcp_f32_e32 v39, v43
	v_div_fixup_f32 v21, v33, v125, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v33, v41, v49
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v22, -v37, v47, v36
	v_div_scale_f32 v37, null, v125, v125, v27
	v_div_scale_f32 v44, s3, v26, v125, v26
	v_div_fmas_f32 v22, v22, v35, v47
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v43, v39, 1.0
	v_fmac_f32_e32 v48, v46, v48
	v_div_scale_f32 v46, s5, v24, v125, v24
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v39, v36, v39
	v_rcp_f32_e32 v36, v37
	v_mul_f32_e32 v40, v46, v48
	v_div_fixup_f32 v22, v22, v125, v23
	v_div_scale_f32 v47, null, v125, v125, v30
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v42, -v45, v40, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v42, v48
	v_fma_f32 v42, -v38, v33, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v45, v40, v46
	v_dual_fmac_f32 v33, v42, v49 :: v_dual_mul_f32 v42, v44, v39
	v_fma_f32 v46, -v37, v36, 1.0
	v_div_scale_f32 v45, null, v125, v125, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v35, v35, v48, v40
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v46, null, v125, v125, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v23, v35, v125, v24
	v_fma_f32 v35, -v43, v42, v44
	v_rcp_f32_e32 v40, v45
	v_fma_f32 v24, -v38, v33, v41
	v_div_scale_f32 v38, s4, v27, v125, v27
	v_fmac_f32_e32 v42, v35, v39
	v_rcp_f32_e32 v35, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v24, v24, v49, v33
	v_mul_f32_e32 v33, v38, v36
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v48, v47
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v41, -v45, v40, 1.0
	v_div_fixup_f32 v24, v24, v125, v25
	v_fma_f32 v25, -v43, v42, v44
	v_fma_f32 v43, -v37, v33, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v46, v35, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v25, v25, v39, v42
	v_fmac_f32_e32 v33, v43, v36
	v_div_scale_f32 v42, s3, v29, v125, v29
	v_fmac_f32_e32 v35, v49, v35
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, s1, v28, v125, v28
	v_div_fixup_f32 v25, v25, v125, v26
	v_fma_f32 v26, -v37, v33, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v37, v42, v35 :: v_dual_mul_f32 v44, v41, v40
	v_fma_f32 v43, -v47, v48, 1.0
	v_div_scale_f32 v38, s5, v30, v125, v30
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v39, -v45, v44, v41
	v_fmac_f32_e32 v48, v43, v48
	v_div_fmas_f32 v26, v26, v36, v33
	v_fma_f32 v36, -v46, v37, v42
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v44, v39, v40
	v_div_scale_f32 v39, null, v125, v125, v31
	v_mul_f32_e32 v43, v38, v48
	v_fmac_f32_e32 v37, v36, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v45, v44, v41
	v_rcp_f32_e32 v41, v39
	v_div_fixup_f32 v26, v26, v125, v27
	v_div_scale_f32 v45, null, v125, v125, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v40, v44
	v_fma_f32 v40, -v47, v43, v38
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v36, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v33, v125, v28
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v39, v41, 1.0
	v_fma_f32 v28, -v46, v37, v42
	v_fmac_f32_e32 v43, v40, v48
	v_div_scale_f32 v33, s1, v31, v125, v31
	v_fmac_f32_e32 v41, v44, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v28, v28, v35, v37
	v_fma_f32 v35, -v47, v43, v38
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v46, null, v125, v125, v10
	v_mul_f32_e32 v37, v33, v41
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v35, v35, v48, v43
	v_div_fixup_f32 v28, v28, v125, v29
	v_fma_f32 v40, -v45, v36, 1.0
	v_div_scale_f32 v38, null, v125, v125, v9
	v_fma_f32 v43, -v39, v37, v33
	v_div_fixup_f32 v29, v35, v125, v30
	v_rcp_f32_e32 v35, v46
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v42, v38
	v_fmac_f32_e32 v37, v43, v41
	v_div_scale_f32 v48, null, v125, v125, v12
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	v_cndmask_b32_e64 v27, 0, v27, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v39, v37, v33
	v_div_scale_f32 v39, null, v125, v125, v11
	v_fma_f32 v47, -v46, v35, 1.0
	v_fmac_f32_e32 v36, v40, v36
	v_div_scale_f32 v40, s3, v32, v125, v32
	v_div_fmas_f32 v33, v33, v41, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v35, v47, v35
	v_div_scale_f32 v41, s1, v10, v125, v10
	v_fma_f32 v43, -v38, v42, 1.0
	v_rcp_f32_e32 v50, v48
	s_mov_b32 vcc_lo, s3
	v_dual_mul_f32 v49, v41, v35 :: v_dual_mul_f32 v44, v40, v36
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v42, v43, v42
	v_rcp_f32_e32 v43, v39
	v_div_fixup_f32 v31, v33, v125, v31
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v45, v44, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v30, v36
	v_div_scale_f32 v30, s4, v9, v125, v9
	v_fma_f32 v37, -v45, v44, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v39, v43, 1.0
	v_mul_f32_e32 v40, v30, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v37, v36, v44
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, s5, v11, v125, v11
	v_fma_f32 v37, -v46, v49, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v32, v36, v125, v32
	v_fma_f32 v36, -v48, v50, 1.0
	v_fma_f32 v47, -v38, v40, v30
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v49, v37, v35
	v_div_scale_f32 v37, null, v125, v125, v13
	v_fmac_f32_e32 v50, v36, v50
	v_mul_f32_e32 v44, v45, v43
	v_fmac_f32_e32 v40, v47, v42
	v_div_scale_f32 v36, s3, v12, v125, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v39, v44, v45
	v_fma_f32 v30, -v38, v40, v30
	v_fma_f32 v38, -v46, v49, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v44, v33, v43
	v_rcp_f32_e32 v33, v37
	v_fma_f32 v41, -v37, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v33, v41, v33
	v_div_fmas_f32 v30, v30, v42, v40
	v_div_scale_f32 v40, null, v125, v125, v14
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v41, s1, v13, v125, v13
	v_div_fmas_f32 v35, v38, v35, v49
	v_fma_f32 v38, -v39, v44, v45
	v_mul_f32_e32 v39, v36, v50
	v_rcp_f32_e32 v42, v40
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v30, v125, v9
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v43, -v48, v39, v36
	v_div_fixup_f32 v10, v35, v125, v10
	v_mul_f32_e32 v30, v41, v33
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v11, v38, v125, v11
	v_fmac_f32_e32 v39, v43, v50
	v_fma_f32 v35, -v40, v42, 1.0
	v_fma_f32 v43, -v37, v30, v41
	v_div_scale_f32 v38, null, v125, v125, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v48, v39, v36
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s4, v14, v125, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v44, v38
	v_div_fmas_f32 v36, v36, v50, v39
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v39, v35, v42
	v_fmac_f32_e32 v30, v43, v33
	v_div_scale_f32 v43, null, v125, v125, v16
	v_div_fixup_f32 v12, v36, v125, v12
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v37, v30, v41
	v_fma_f32 v37, -v40, v39, v35
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v37, v42
	v_div_fmas_f32 v30, v36, v33, v30
	v_div_scale_f32 v33, null, v125, v125, v1
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v48, s4, v1, v125, v1
	v_rcp_f32_e32 v37, v33
	v_div_scale_f32 v36, s1, v15, v125, v15
	v_div_fixup_f32 v13, v30, v125, v13
	v_fma_f32 v30, -v43, v45, 1.0
	v_fma_f32 v35, -v40, v39, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v45, v30, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v46, -v33, v37, 1.0
	v_div_scale_f32 v30, s3, v16, v125, v16
	v_dual_fmac_f32 v37, v46, v37 :: v_dual_fmac_f32 v44, v41, v44
	v_div_scale_f32 v41, null, v125, v125, v2
	v_div_fmas_f32 v35, v35, v42, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v51, v48, v37
	v_mul_f32_e32 v42, v30, v45
	v_rcp_f32_e32 v47, v41
	v_div_scale_f32 v46, null, v125, v125, v3
	v_div_fixup_f32 v14, v35, v125, v14
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v50, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v41, v47, 1.0
	v_dual_mul_f32 v40, v36, v44 :: v_dual_fmac_f32 v47, v49, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v39, -v38, v40, v36
	v_div_scale_f32 v49, s5, v2, v125, v2
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v38, v40, v36
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v33, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v43, v42, v30
	v_fmac_f32_e32 v51, v36, v37
	v_div_fmas_f32 v35, v35, v44, v40
	v_div_scale_f32 v40, null, v125, v125, v4
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v41, v38, v49
	v_div_fmas_f32 v30, v30, v45, v42
	v_rcp_f32_e32 v42, v40
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v125, v3
	v_div_fixup_f32 v15, v35, v125, v15
	v_fma_f32 v33, -v33, v51, v48
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v16, v30, v125, v16
	v_div_scale_f32 v44, null, v125, v125, v8
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fmas_f32 v33, v33, v37, v51
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v35, v42
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	v_div_scale_f32 v35, null, v125, v125, v6
	v_div_fixup_f32 v1, v33, v125, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	v_div_scale_f32 v33, null, v125, v125, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v47, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v2, v37, v125, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fma_f32 v30, -v46, v36, v39
	v_rcp_f32_e32 v39, v35
	v_div_scale_f32 v37, null, v125, v125, v7
	v_rcp_f32_e32 v46, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v41, v37
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v35, v39, 1.0
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v125, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v48, -v37, v41, 1.0
	v_mul_f32_e32 v51, v45, v39
	v_div_fmas_f32 v30, v30, v50, v36
	v_rcp_f32_e32 v36, v33
	v_fma_f32 v50, -v44, v46, 1.0
	v_div_scale_f32 v38, vcc_lo, v4, v125, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v3, v30, v125, v3
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v125, v7
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s5, v8, v125, v8
	v_fma_f32 v30, -v33, v36, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v43, v38, v42 :: v_dual_mul_f32 v52, v48, v41
	v_mul_f32_e32 v53, v50, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v30, v36
	v_div_scale_f32 v30, s1, v5, v125, v5
	v_fma_f32 v47, -v40, v43, v38
	v_mul_f32_e32 v49, v30, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v33, v49, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v51, v45
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v52, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v38, v38, v42, v43
	v_fmac_f32_e32 v51, v40, v39
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v30, -v33, v49, v30
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v33, -v44, v53, v50
	v_fma_f32 v35, -v35, v51, v45
	v_div_fixup_f32 v4, v38, v125, v4
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v38, v17, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v53, v33, v46
	v_div_fmas_f32 v30, v30, v36, v49
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v33, -v37, v52, v48
	v_div_fmas_f32 v35, v35, v39, v51
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v37, v0, 16, 1
	v_bfe_u32 v39, v18, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s4
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s4, v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v41, v52
	s_mov_b32 vcc_lo, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v37, v0, v37, 0x7fff
	v_add3_u32 v0, v17, v38, 0x7fff
	v_cmp_o_f32_e64 s5, v17, v17
	v_add3_u32 v17, v18, v39, 0x7fff
	v_bfe_u32 v18, v19, 16, 1
	v_cndmask_b16 v0.l, 0x7fff, v37.h, s4
	v_bfe_u32 v37, v20, 16, 1
	v_bfe_u32 v38, v21, 16, 1
	v_cmp_o_f32_e64 s4, v19, v19
	v_add3_u32 v18, v19, v18, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s5
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s6
	v_add3_u32 v19, v20, v37, 0x7fff
	v_cmp_o_f32_e64 s5, v20, v20
	v_add3_u32 v20, v21, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v21, v21
	v_cndmask_b16 v17.h, 0x7fff, v18.h, s4
	v_bfe_u32 v18, v22, 16, 1
	v_bfe_u32 v21, v23, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s5
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s6
	v_bfe_u32 v20, v24, 16, 1
	v_add3_u32 v18, v22, v18, 0x7fff
	v_cmp_o_f32_e64 s4, v22, v22
	v_add3_u32 v21, v23, v21, 0x7fff
	v_cmp_o_f32_e64 s5, v23, v23
	v_bfe_u32 v22, v25, 16, 1
	v_add3_u32 v20, v24, v20, 0x7fff
	v_cmp_o_f32_e64 s6, v24, v24
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s4
	v_cndmask_b16 v18.h, 0x7fff, v21.h, s5
	v_bfe_u32 v21, v26, 16, 1
	v_add3_u32 v22, v25, v22, 0x7fff
	v_cmp_o_f32_e64 s4, v25, v25
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s6
	v_bfe_u32 v23, v27, 16, 1
	v_add3_u32 v21, v26, v21, 0x7fff
	v_cmp_o_f32_e64 s5, v26, v26
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s4
	v_bfe_u32 v22, v28, 16, 1
	v_bfe_u32 v24, v29, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v5, v30, v125, v5
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v31, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v23, v27, v23, 0x7fff
	v_cmp_o_f32_e64 s6, v27, v27
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s5
	v_add3_u32 v22, v28, v22, 0x7fff
	v_cmp_o_f32_e64 s4, v28, v28
	v_add3_u32 v24, v29, v24, 0x7fff
	v_cmp_o_f32_e64 s5, v29, v29
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v32, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s6
	v_bfe_u32 v23, v30, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s4
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s5
	v_bfe_u32 v24, v9, 16, 1
	v_bfe_u32 v25, v31, 16, 1
	v_bfe_u32 v26, v10, 16, 1
	v_add3_u32 v23, v30, v23, 0x7fff
	v_cmp_o_f32_e64 s6, v30, v30
	v_add3_u32 v24, v9, v24, 0x7fff
	v_cmp_o_f32_e64 s5, v9, v9
	v_add3_u32 v25, v31, v25, 0x7fff
	v_cmp_o_f32_e64 s4, v31, v31
	v_add3_u32 v9, v10, v26, 0x7fff
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s6
	v_cmp_o_f32_e64 s6, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v24.h, s5
	v_bfe_u32 v24, v12, 16, 1
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s4
	v_bfe_u32 v25, v13, 16, 1
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s4, v11, v11
	v_add3_u32 v11, v12, v24, 0x7fff
	v_cmp_o_f32_e64 s5, v12, v12
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s6
	v_add3_u32 v12, v13, v25, 0x7fff
	v_cmp_o_f32_e64 s6, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s4
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s5
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v24, v16, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v44, v53, v50
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v14, v14
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s6
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s5, v15, v15
	v_add3_u32 v14, v16, v24, 0x7fff
	v_cmp_o_f32_e64 s6, v16, v16
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s4
	v_bfe_u32 v13, v1, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v35, v125, v6
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s5
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s6
	v_bfe_u32 v14, v3, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v33, v125, v7
	v_div_fixup_f32 v8, v36, v125, v8
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
	v_lshrrev_b32_e32 v32, 1, v65
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v5, v19, v0, s40
	v_cndmask_b32_e64 v0, v0, v19, s40
	v_cndmask_b32_e64 v6, v18, v17, s40
	v_cndmask_b32_e64 v7, v17, v18, s40
	v_cndmask_b32_e64 v13, v20, v22, s40
	v_cndmask_b32_e64 v15, v21, v23, s40
	v_cndmask_b32_e64 v16, v12, v9, s40
	v_cndmask_b32_e64 v9, v9, v12, s40
	v_cndmask_b32_e64 v12, v11, v10, s40
	v_cndmask_b32_e64 v10, v10, v11, s40
	v_cndmask_b32_e64 v17, v3, v1, s40
	v_cndmask_b32_e64 v1, v1, v3, s40
	v_cndmask_b32_e64 v18, v4, v2, s40
	v_cndmask_b32_e64 v2, v2, v4, s40
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 16, v32
	s_mov_b32 s4, 0x76543210
	v_or_b32_e32 v35, 32, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v8, v22, v20, s40
	v_cndmask_b32_e64 v14, v23, v21, s40
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
	v_cmp_gt_i32_e32 vcc_lo, s42, v33
	v_cmp_gt_i32_e64 s3, s42, v32
	v_cmp_gt_i32_e64 s0, s42, v35
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v3, v5, v66
	v_perm_b32 v1, v3, v5, v67
	v_perm_b32 v2, v4, v6, v66
	v_perm_b32 v3, v4, v6, v67
	v_perm_b32 v4, v7, v8, v66
	v_perm_b32 v5, v7, v8, v67
	v_perm_b32 v6, v11, v14, v66
	v_perm_b32 v7, v11, v14, v67
	v_perm_b32 v10, v13, v12, v66
	v_perm_b32 v11, v13, v12, v67
	v_perm_b32 v12, v15, v17, v66
	v_perm_b32 v13, v15, v17, v67
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v34, v33, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v8, v9, v16, v66
	v_perm_b32 v9, v9, v16, v67
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v34, v32, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s42, v36
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v14, v19, v18, v66
	v_perm_b32 v15, v19, v18, v67
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v18, v34, v35, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	s_and_b32 s3, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v34, v36, 1
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
.Ltmp52:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 188
		.amdhsa_next_free_sgpr 70
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_vgpr, 188
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.numbered_sgpr, 70
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12612
; TotalNumSgprs: 72
; NumVgprs: 188
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 72
; NumVGPRsForWavesPerEU: 188
; Occupancy: 8
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
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     72
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     188
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
