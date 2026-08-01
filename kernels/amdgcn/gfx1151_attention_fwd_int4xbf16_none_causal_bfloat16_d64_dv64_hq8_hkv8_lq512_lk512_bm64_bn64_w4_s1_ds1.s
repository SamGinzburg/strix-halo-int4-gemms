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
	s_load_b32 s5, s[0:1], 0x60
	s_load_b32 s7, s[0:1], 0x88
	s_load_b64 s[12:13], s[0:1], 0x0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v34, 1, v0
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v35, 4, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s8, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s6, s3, 9
	s_mov_b32 s15, 0x31027000
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s8, v34
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v41, 16, v35
	.loc	1 773 26 is_stmt 0              ; attention.py:773:26
	s_add_i32 s9, s8, s6
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_bfe_u32 v70, v0, 4, 1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v42, 15, v0
	v_and_b32_e32 v68, 16, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v36, 1, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s5, v34
	s_mul_i32 s2, s5, s9
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s5, v41
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s13, s13, 0xffff
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s16, s8, s7
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s36, 0, v68
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s16, s16, 64
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_add3_u32 v1, v2, v41, s2
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_gt_i32 s16, 0
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v5, v36, 30, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_lshlrev_b32_e32 v5, 2, v5
	buffer_load_b128 v[1:4], v1, s[12:15], 0 offen
	v_xor_b32_e32 v6, 4, v5
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v37, v5, v1
	ds_bpermute_b32 v38, v5, v2
	ds_bpermute_b32 v39, v5, v3
	ds_bpermute_b32 v43, v5, v4
	ds_bpermute_b32 v40, v6, v1
	ds_bpermute_b32 v44, v6, v2
	ds_bpermute_b32 v45, v6, v3
	ds_bpermute_b32 v46, v6, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v1, v34, 48, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v47, s8, v1
	v_or_b32_e32 v69, s9, v1
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
	v_or_b32_e32 v33, s9, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v2, 0x1054, v2, s36
	v_cndmask_b32_e64 v3, 0x3276, v3, s36
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
                                        ; implicit-def: $vgpr33
.LBB0_3:                                ; %Flow330
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x38
	s_load_b32 s38, s[0:1], 0x64
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
	v_mov_b32_e32 v49, v8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	v_dual_mov_b32 v6, 0x5410 :: v_dual_lshlrev_b32 v1, 1, v69
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_load_b32 s0, s[0:1], 0x68
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_mov_b32 s40, 0
	v_dual_mov_b32 v7, 0x7632 :: v_dual_and_b32 v4, 24, v0
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	v_and_b32_e32 v5, 24, v36
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 3, v0
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v58, v39, v45, s36
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s53, s13, 0xffff
	s_mov_b32 s52, s12
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v61, v38, v44, s36
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v48, v1, s[52:55], 0 offen
	.loc	1 889 86                        ; attention.py:889:86
	v_lshlrev_b32_e32 v1, 3, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v60, v37, v40, s36
	v_cndmask_b32_e64 v62, v45, v39, s36
	v_cndmask_b32_e64 v65, v44, v38, s36
	v_cndmask_b32_e64 v64, v40, v37, s36
	v_and_b32_e32 v3, 0x7f0, v35
	.loc	1 818 13                        ; attention.py:818:13
	v_and_b32_e32 v0, 7, v0
	v_add_nc_u32_e32 v9, s6, v34
	v_mov_b32_e32 v33, s40
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v59, v43, v46, s36
	v_cndmask_b32_e64 v63, v46, v43, s36
	v_lshl_add_u32 v72, v42, 1, 0
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v8, 1, v70
	v_mov_b32_e32 v34, s41
	v_dual_mov_b32 v38, s45 :: v_dual_and_b32 v43, 56, v1
	v_lshl_or_b32 v42, v42, 5, v5
	v_cndmask_b32_e64 v45, 0x1054, v6, s36
	v_cndmask_b32_e64 v46, 0x3276, v7, s36
	v_dual_mov_b32 v90, 0xff800000 :: v_dual_add_nc_u32 v71, s7, v47
	v_dual_mov_b32 v32, v25 :: v_dual_add_nc_u32 v47, s6, v2
	v_mov_b32_e32 v36, s43
	v_xor_b32_e32 v44, v3, v4
	v_mov_b32_e32 v30, v25
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e32 vcc_lo, s38, v43
	v_xor_b32_e32 v43, 8, v42
	v_lshl_or_b32 v45, v45, 8, v45
	v_lshl_or_b32 v46, v46, 8, v46
	v_dual_mov_b32 v27, v25 :: v_dual_add_nc_u32 v52, 32, v47
	v_dual_mov_b32 v20, v25 :: v_dual_add_nc_u32 v51, 48, v47
	v_dual_mov_b32 v22, v25 :: v_dual_add_nc_u32 v53, 16, v47
	v_dual_mov_b32 v35, s42 :: v_dual_lshlrev_b32 v74, 4, v0
	v_mov_b32_e32 v40, s47
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[0:1], null, s5, v9, v[41:42]
	v_dual_mov_b32 v29, v25 :: v_dual_add_nc_u32 v76, 0, v44
	v_mov_b32_e32 v31, v25
	v_mov_b32_e32 v17, v25
	v_dual_mov_b32 v24, v25 :: v_dual_add_nc_u32 v77, 0, v42
	v_dual_mov_b32 v10, v25 :: v_dual_add_nc_u32 v79, 0, v43
	v_mov_b32_e32 v14, v25
	v_xor_b32_e32 v41, 8, v44
	v_xor_b32_e32 v49, 16, v42
	v_xor_b32_e32 v50, 24, v42
	v_and_b32_e32 v42, 0x540054, v45
	v_and_b32_e32 v44, 0x760076, v46
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s0, s0, 0x3fb8aa3b
	.loc	1 818 13                        ; attention.py:818:13
	v_mul_lo_u32 v47, s38, v47
	v_mul_lo_u32 v45, s38, v51
	v_mul_lo_u32 v46, s38, v52
	v_mul_lo_u32 v51, s38, v53
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s1, s16, 0x200
	v_dual_mov_b32 v19, v25 :: v_dual_add_nc_u32 v78, 0, v41
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s1, s1, 63
	v_lshl_or_b32 v41, v42, 4, v42
	v_lshl_or_b32 v42, v44, 4, v44
	.loc	1 811 34 is_stmt 0              ; attention.py:811:34
	s_ashr_i32 s7, s1, 31
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	v_lshl_or_b32 v73, s3, 10, v8
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s3, s7, 26
	v_dual_mov_b32 v37, s44 :: v_dual_mov_b32 v26, v25
	v_dual_mov_b32 v39, s46 :: v_dual_mov_b32 v28, v25
	v_dual_mov_b32 v18, v25 :: v_dual_add_nc_u32 v75, 0, v3
	v_dual_mov_b32 v21, v25 :: v_dual_add_nc_u32 v80, 0, v49
	v_dual_mov_b32 v23, v25 :: v_dual_lshlrev_b32 v82, 1, v47
	v_dual_mov_b32 v11, v25 :: v_dual_lshlrev_b32 v86, 1, v51
	v_dual_mov_b32 v12, v25 :: v_dual_add_nc_u32 v81, 0, v50
	v_dual_mov_b32 v13, v25 :: v_dual_and_b32 v66, 0x5040504, v41
	v_dual_mov_b32 v16, v25 :: v_dual_lshlrev_b32 v83, 1, v45
	v_mov_b32_e32 v1, v25
	v_dual_mov_b32 v2, v25 :: v_dual_lshlrev_b32 v85, 1, v46
	v_mov_b32_e32 v3, v25
	v_dual_mov_b32 v4, v25 :: v_dual_and_b32 v67, 0x7060706, v42
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v49, v25
	s_add_i32 s41, s1, s3
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	s_lshl_b32 s39, s38, 7
	s_lshl_b32 s50, s5, 6
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	.loc	1 811 33                        ; attention.py:811:33
	s_and_not1_b32 s41, s41, 63
	s_and_b32 s45, s11, 0xffff
	s_mov_b32 s56, s14
	s_mov_b32 s44, s10
	s_mov_b32 s52, s8
	s_mov_b32 s53, s9
	s_mov_b32 s57, s15
	s_mov_b32 s46, s54
	s_mov_b32 s47, s55
	s_mov_b32 s42, 0x76543210
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v43, 16, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v9, v25 :: v_dual_mul_f32 v84, s0, v43
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v6, v25
	v_dual_mov_b32 v8, v25 :: v_dual_mov_b32 v89, v84
	.loc	1 847 25                        ; attention.py:847:25
	v_mov_b32_e32 v87, v84
	v_mov_b32_e32 v88, v84
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v41, 0x80000000, v0, s4
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v114, s40, v70
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v91.h, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s40, s40, 64
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[41:44], v41, s[52:55], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v109, 52, v114
	v_add_nc_u32_e32 v108, 50, v114
	v_add_nc_u32_e32 v111, 58, v114
	v_add_nc_u32_e32 v110, 56, v114
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s1, v109, v71
	v_cmp_le_i32_e64 s18, v108, v71
	v_cmp_le_i32_e64 s21, v111, v71
	v_cmp_le_i32_e64 s15, v110, v71
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v99, 32, v114
	v_add_nc_u32_e32 v98, 30, v114
	v_add_nc_u32_e32 v97, 28, v114
	v_add_nc_u32_e32 v96, 26, v114
	v_add_nc_u32_e32 v95, 24, v114
	v_add_nc_u32_e32 v94, 22, v114
	v_add_nc_u32_e32 v93, 20, v114
	v_add_nc_u32_e32 v92, 18, v114
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s24, v99, v71
	v_cmp_le_i32_e64 s25, v98, v71
	v_cmp_le_i32_e64 s23, v97, v71
	v_cmp_le_i32_e64 s27, v96, v71
	v_cmp_le_i32_e64 s28, v95, v71
	v_cmp_le_i32_e64 s29, v94, v71
	v_cmp_le_i32_e64 s30, v93, v71
	v_cmp_le_i32_e64 s31, v92, v71
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v115.h, v91.h
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s15, s2, s15
	s_and_b32 s23, s2, s23
	s_and_b32 s18, s2, s18
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v117.h, v91.h
	v_mov_b16_e32 v116.h, v91.h
	v_mov_b16_e32 v118.h, v91.h
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v76, v[41:42]
	ds_store_b64 v78, v[43:44]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[41:44], v77 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[108:111], v77 offset1:1
	ds_load_2addr_stride64_b64 v[119:122], v79 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[127:130], v79 offset1:1
	ds_load_2addr_stride64_b64 v[131:134], v80 offset1:1
	ds_load_2addr_stride64_b64 v[135:138], v80 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[139:142], v81 offset1:1
	ds_load_2addr_stride64_b64 v[143:146], v81 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[92:99], v[41:42], v[64:65], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[92:99], v[119:120], v[62:63], v[92:99] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[92:99], v[135:136], v[60:61], v[92:99] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[92:99], v[143:144], v[58:59], v[92:99] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v96, v96
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v45, v82, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v50, v85, v74
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_dual_mul_f32 v96, v88, v96 :: v_dual_add_nc_u32 v51, v83, v74
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v48, 0x80000000, v45, vcc_lo
	v_add_nc_u32_e32 v46, v86, v74
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v99, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v94, v84, v94 :: v_dual_cndmask_b32 v45, 0x80000000, v51
	v_mul_f32_e32 v95, v87, v95
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v47, 0x80000000, v46, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v46, 0x80000000, v50 :: v_dual_mul_f32 v99, v87, v99
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v97, v89, v97
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v57, 16, v114
	v_add_nc_u32_e32 v56, 14, v114
	v_add_nc_u32_e32 v55, 12, v114
	v_add_nc_u32_e32 v54, 10, v114
	v_add_nc_u32_e32 v53, 8, v114
	v_add_nc_u32_e32 v51, 4, v114
	v_add_nc_u32_e32 v50, 2, v114
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v98, v84, v98
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v52, 6, v114
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s13, v57, v71
	v_cmp_le_i32_e64 s19, v56, v71
	v_cmp_le_i32_e64 s14, v55, v71
	v_cmp_le_i32_e64 s22, v54, v71
	v_cmp_le_i32_e64 s35, v53, v71
	v_cmp_le_i32_e64 s34, v52, v71
	v_cmp_le_i32_e64 s33, v51, v71
	v_cmp_le_i32_e64 s26, v50, v71
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[50:57], v[43:44], v[64:65], v[33:40] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v102, 38, v114
	v_add_nc_u32_e32 v100, 34, v114
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v92, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[50:57], v[121:122], v[62:63], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[119:126], v[110:111], v[64:65], v[33:40] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v92, v89, v92 :: v_dual_add_nc_u32 v105, 44, v114
	v_cvt_f32_i32_e32 v93, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[119:126], v[129:130], v[62:63], v[119:126] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v104, 42, v114
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s7, v105, v71
	v_cmp_le_i32_e64 s10, v102, v71
	v_cmp_le_i32_e64 s12, v100, v71
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[119:126], v[133:134], v[60:61], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[137:138], v[60:61], v[50:57] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v93, v87, v93
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s8, v104, v71
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v173, v73, s[56:59], 0 offen offset:120
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[41:44], v48, s[44:47], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[119:126], v[141:142], v[58:59], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[145:146], v[58:59], v[50:57] neg_lo:[1,1,0]
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s0, v114, v71
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s26, s2, s26
	s_and_b32 s22, s2, s22
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v121, v121
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v106, 46, v114
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v123, v123
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v107, 48, v114
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v124, v124
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v103, 40, v114
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v125, v125
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v101, 36, v114
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v121, v87, v121
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s6, v106, v71
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v142, v89, v123
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s5, v107, v71
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v124, v84, v124
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s9, v103, v71
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v144, v87, v125
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s11, v101, v71
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[100:107], v[108:109], v[64:65], v[33:40] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v53, v53
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[100:107], v[127:128], v[62:63], v[100:107] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[127:130], v46, s[44:47], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v119, v119
	v_mul_f32_e32 v141, v88, v122
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v113, 62, v114
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[100:107], v[131:132], v[60:61], v[100:107] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1
	buffer_load_u16 v131, v73, s[56:59], 0 offen offset:116
	buffer_load_u16 v132, v73, s[56:59], 0 offen offset:124
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v126, v126
	v_mul_f32_e32 v119, v84, v119
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s20, v113, v71
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[100:107], v[139:140], v[58:59], v[100:107] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v140, v88, v52
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v112, 60, v114
	v_add_nc_u32_e32 v114, 54, v114
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[108:111], v47, s[44:47], 0 offen
	buffer_load_b128 v[45:48], v45, s[44:47], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v101, v101
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s16, v112, v71
	v_cmp_le_i32_e64 s17, v114, v71
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1c
	buffer_load_u16 v112, v73, s[56:59], 0 offen
	buffer_load_u16 v113, v73, s[56:59], 0 offen offset:4
	buffer_load_u16 v114, v73, s[56:59], 0 offen offset:8
	buffer_load_u16 v147, v73, s[56:59], 0 offen offset:12
	buffer_load_u16 v148, v73, s[56:59], 0 offen offset:16
	buffer_load_u16 v149, v73, s[56:59], 0 offen offset:20
	buffer_load_u16 v150, v73, s[56:59], 0 offen offset:24
	buffer_load_u16 v151, v73, s[56:59], 0 offen offset:28
	buffer_load_u16 v152, v73, s[56:59], 0 offen offset:32
	buffer_load_u16 v153, v73, s[56:59], 0 offen offset:36
	buffer_load_u16 v154, v73, s[56:59], 0 offen offset:40
	buffer_load_u16 v155, v73, s[56:59], 0 offen offset:44
	buffer_load_u16 v156, v73, s[56:59], 0 offen offset:48
	buffer_load_u16 v157, v73, s[56:59], 0 offen offset:52
	buffer_load_u16 v158, v73, s[56:59], 0 offen offset:56
	buffer_load_u16 v159, v73, s[56:59], 0 offen offset:60
	buffer_load_u16 v160, v73, s[56:59], 0 offen offset:64
	buffer_load_u16 v161, v73, s[56:59], 0 offen offset:68
	buffer_load_u16 v162, v73, s[56:59], 0 offen offset:72
	buffer_load_u16 v163, v73, s[56:59], 0 offen offset:76
	buffer_load_u16 v164, v73, s[56:59], 0 offen offset:80
	buffer_load_u16 v165, v73, s[56:59], 0 offen offset:84
	buffer_load_u16 v166, v73, s[56:59], 0 offen offset:88
	buffer_load_u16 v167, v73, s[56:59], 0 offen offset:92
	buffer_load_u16 v168, v73, s[56:59], 0 offen offset:96
	buffer_load_u16 v169, v73, s[56:59], 0 offen offset:100
	buffer_load_u16 v170, v73, s[56:59], 0 offen offset:104
	buffer_load_u16 v171, v73, s[56:59], 0 offen offset:108
	buffer_load_u16 v172, v73, s[56:59], 0 offen offset:112
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v105, v105
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v100, v100
	v_mul_f32_e32 v101, v87, v101
	v_mul_f32_e32 v105, v87, v105
	v_mul_f32_e32 v145, v84, v53
	v_mul_f32_e32 v143, v88, v126
	v_mul_f32_e32 v100, v84, v100
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v120, v120
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s2, s0
	s_and_b32 s0, s2, s1
	s_and_b32 s1, s2, s5
	s_and_b32 s5, s2, s6
	s_and_b32 s6, s2, s7
	s_and_b32 s7, s2, s8
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v57, v57
	v_mul_f32_e32 v138, v88, v50
	v_dual_mul_f32 v120, v84, v120 :: v_dual_mul_f32 v103, v89, v103
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s8, s2, s9
	s_and_b32 s9, s2, s10
	s_and_b32 s10, s2, s11
	s_and_b32 s11, s2, s12
	s_and_b32 s12, s2, s24
	s_and_b32 s24, s2, s25
	s_and_b32 s25, s2, s27
	s_and_b32 s27, s2, s28
	s_and_b32 s28, s2, s29
	s_and_b32 s29, s2, s30
	s_and_b32 s30, s2, s31
	s_and_b32 s31, s2, s35
	s_and_b32 s35, s2, s19
	s_and_b32 s19, s2, s13
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v102, v88, v102
	v_dual_mul_f32 v106, v88, v106 :: v_dual_mul_f32 v107, v89, v107
	v_mul_f32_e32 v104, v84, v104
	v_dual_mul_f32 v174, v89, v56 :: v_dual_mul_f32 v175, v88, v55
	v_mul_f32_e32 v176, v89, v57
	v_cvt_f32_i32_e32 v54, v54
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s17, s2, s17
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s34, s2, s34
	s_and_b32 s33, s2, s33
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v146, v87, v54
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s37, s2, s14
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v139, v89, v51
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s13, s2, s20
	s_and_b32 s16, s2, s16
	s_and_b32 s14, s2, s21
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s20, 0xff800000, v90
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s40, s41
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(34)
	ds_store_b128 v75, v[41:44]
	s_waitcnt vmcnt(30)
	ds_store_b128 v75, v[108:111] offset:2048
	ds_store_b128 v75, v[127:130] offset:4096
	s_waitcnt vmcnt(29)
	ds_store_b128 v75, v[45:48] offset:6144
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v42, 16, v163
	v_lshlrev_b32_e32 v113, 16, v113
	v_lshlrev_b32_e32 v152, 16, v152
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v44, 16, v165
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v42, v95, v42 :: v_dual_lshlrev_b32 v47, 16, v168
	v_dual_mul_f32 v113, v101, v113 :: v_dual_lshlrev_b32 v110, 16, v154
	v_dual_mul_f32 v119, v119, v152 :: v_dual_lshlrev_b32 v154, 16, v159
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v159, 16, v171
	v_lshlrev_b32_e32 v112, 16, v112
	v_lshlrev_b32_e32 v46, 16, v167
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v44, v97, v44 :: v_dual_lshlrev_b32 v109, 16, v153
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v145, v145, v159
	v_dual_mul_f32 v112, v100, v112 :: v_dual_lshlrev_b32 v45, 16, v166
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v46, v99, v46 :: v_dual_lshlrev_b32 v147, 16, v147
	v_dual_mul_f32 v45, v98, v45 :: v_dual_lshlrev_b32 v108, 16, v170
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v101, 0xff800000, v44, s7
	v_cndmask_b32_e64 v44, 0xff800000, v113, s26
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v111, 16, v155
	v_lshlrev_b32_e32 v153, 16, v156
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v98, 0xff800000, v45, s6
	v_cndmask_b32_e64 v45, 0xff800000, v112, s3
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v150, 16, v150
	v_lshlrev_b32_e32 v151, 16, v151
	v_lshlrev_b32_e32 v148, 16, v148
	v_lshlrev_b32_e32 v163, 16, v132
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v99, v140, v108
	v_mul_f32_e32 v108, v120, v109
	v_mul_f32_e32 v120, v143, v154
	v_dual_mul_f32 v107, v107, v151 :: v_dual_lshlrev_b32 v156, 16, v157
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v157, 16, v158
	v_lshlrev_b32_e32 v158, 16, v161
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v184, 0xff800000, v119, s19
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v119, v45, v44
.Ltmp2:
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v106, v106, v150 :: v_dual_lshlrev_b32 v161, 16, v173
	v_dual_mul_f32 v47, v138, v47 :: v_dual_lshlrev_b32 v114, 16, v114
	v_mul_f32_e32 v109, v121, v110
	v_mul_f32_e32 v110, v141, v111
	v_dual_mul_f32 v138, v104, v148 :: v_dual_lshlrev_b32 v41, 16, v162
	v_mul_f32_e32 v141, v103, v147
	v_mul_f32_e32 v147, v174, v161
	v_dual_mul_f32 v114, v102, v114 :: v_dual_lshlrev_b32 v149, 16, v149
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v43, 16, v164
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v111, v142, v153
	v_mul_f32_e32 v121, v124, v156
	v_mul_f32_e32 v124, v144, v157
	v_mul_f32_e32 v41, v94, v41
	v_dual_mul_f32 v142, v105, v149 :: v_dual_lshlrev_b32 v155, 16, v160
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v180, 0xff800000, v110, s28
	v_cndmask_b32_e64 v182, 0xff800000, v108, s30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v103, 0xff800000, v41, s10
	v_cndmask_b32_e64 v41, 0xff800000, v142, s22
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v160, 16, v172
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v110, 0xff800000, v145, s17
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v92, v92, v155
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v178, 0xff800000, v121, s25
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v94, v96, v43
	v_mul_f32_e32 v146, v146, v160
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v97, 0xff800000, v46, s5
	v_cndmask_b32_e64 v102, 0xff800000, v42, s9
	v_cndmask_b32_e64 v177, 0xff800000, v124, s23
	v_cndmask_b32_e64 v104, 0xff800000, v92, s12
	v_cndmask_b32_e64 v108, 0xff800000, v146, s15
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v162, 16, v131
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v179, 0xff800000, v120, s24
	v_cndmask_b32_e64 v181, 0xff800000, v109, s29
	v_cndmask_b32_e64 v183, 0xff800000, v111, s27
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v121, v110, v108 :: v_dual_mul_f32 v144, v175, v162
.Ltmp4:
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v143, v176, v163 :: v_dual_lshlrev_b32 v48, 16, v169
	v_mul_f32_e32 v93, v93, v158
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v42, 0xff800000, v138, s31
	v_cndmask_b32_e64 v46, 0xff800000, v141, s34
	v_cndmask_b32_e64 v96, 0xff800000, v47, s1
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v48, v139, v48
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v105, 0xff800000, v93, s11
	v_cndmask_b32_e64 v100, 0xff800000, v94, s8
	v_cndmask_b32_e64 v99, 0xff800000, v99, s0
	v_cndmask_b32_e64 v47, 0xff800000, v114, s33
	v_cndmask_b32_e64 v95, 0xff800000, v48, s18
	v_cndmask_b32_e64 v48, 0xff800000, v107, s35
	v_cndmask_b32_e64 v92, 0xff800000, v106, s37
	v_cndmask_b32_e64 v106, 0xff800000, v147, s16
	v_cndmask_b32_e64 v107, 0xff800000, v143, s13
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v112, v179, v104, v105
	v_max3_f32 v113, v182, v181, v180
	v_max3_f32 v114, v183, v178, v177
	v_max3_f32 v120, v46, v42, v41
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v109, 0xff800000, v144, s14
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v93, v103, v102, v100
	v_max3_f32 v94, v101, v98, v97
	v_max3_f32 v111, v96, v95, v99
	v_max_f32_e32 v124, v106, v107
	v_max3_f32 v145, v92, v48, v184
	v_max3_f32 v112, v113, v114, v112
	v_max3_f32 v113, v119, v47, v120
	v_max3_f32 v93, v93, v94, v111
	v_max3_f32 v94, v121, v109, v124
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v111, v113, v145, v112
.Ltmp10:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v140, v72 offset:608
	ds_load_u16_d16 v139, v72 offset:352
	ds_load_u16_d16 v133, v72 offset:832
	ds_load_u16_d16 v54, v72 offset:1024
	ds_load_u16_d16 v125, v72 offset:800
	ds_load_u16_d16 v134, v72 offset:1088
	ds_load_u16_d16 v55, v72 offset:1280
	ds_load_u16_d16 v126, v72 offset:1056
	ds_load_u16_d16 v135, v72 offset:1344
	ds_load_u16_d16 v56, v72 offset:1536
	ds_load_u16_d16 v127, v72 offset:1312
	ds_load_u16_d16 v136, v72 offset:1600
	ds_load_u16_d16 v57, v72 offset:1792
	ds_load_u16_d16 v128, v72 offset:1568
	ds_load_u16_d16 v137, v72 offset:1856
	ds_load_u16_d16 v51, v72 offset:256
	ds_load_u16_d16 v50, v72
	ds_load_u16_d16 v122, v72 offset:32
	ds_load_u16_d16 v132, v72 offset:576
	ds_load_u16_d16 v130, v72 offset:64
	ds_load_u16_d16 v131, v72 offset:320
	ds_load_u16_d16 v53, v72 offset:768
	ds_load_u16_d16 v52, v72 offset:512
	ds_load_u16_d16 v123, v72 offset:288
	ds_load_u16_d16 v129, v72 offset:1824
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v139, v72 offset:480
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v132, v72 offset:704
	ds_load_u16_d16 v124, v72 offset:544
	ds_load_u16_d16_hi v136, v72 offset:1728
	ds_load_u16_d16_hi v57, v72 offset:1920
	ds_load_u16_d16_hi v137, v72 offset:1984
	ds_load_u16_d16 v138, v72 offset:96
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v53, v72 offset:896
	ds_load_u16_d16_hi v133, v72 offset:960
	ds_load_u16_d16 v141, v72 offset:864
	ds_load_u16_d16_hi v54, v72 offset:1152
	ds_load_u16_d16_hi v134, v72 offset:1216
	ds_load_u16_d16 v142, v72 offset:1120
	ds_load_u16_d16_hi v55, v72 offset:1408
	ds_load_u16_d16_hi v135, v72 offset:1472
	ds_load_u16_d16 v143, v72 offset:1376
	ds_load_u16_d16_hi v56, v72 offset:1664
	ds_load_u16_d16 v144, v72 offset:1632
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v93, v111, v93, v94
.Ltmp12:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v43, v72 offset:2368
	ds_load_u16_d16 v170, v72 offset:2144
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v74, s39, v74
	v_add_nc_u32_e32 v73, 0x80, v73
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v94, v93, s42, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp14:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v94, v90, v93, v94
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v0, s50, v0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v44, v94
	v_sub_f32_e32 v45, v45, v94
	v_sub_f32_e32 v42, v42, v94
	v_sub_f32_e32 v41, v41, v94
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v93, v90, v94
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v41, v41
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v92, v92, v94
	v_sub_f32_e32 v46, v46, v94
	v_sub_f32_e32 v47, v47, v94
	v_sub_f32_e32 v102, v102, v94
	v_sub_f32_e32 v100, v100, v94
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v92, v92
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v90, 0, v44, s26
	v_cndmask_b32_e64 v111, 0, v45, s3
	v_cndmask_b32_e64 v114, 0, v42, s31
	v_cndmask_b32_e64 v119, 0, v41, s22
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v46, v46
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v91.l, v90.h
	v_mov_b16_e32 v115.l, v111.h
	v_cmp_o_f32_e64 s3, v90, v90
	v_cmp_o_f32_e64 s21, v111, v111
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v120, 0, v92, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v42, 1, v91
	v_and_b32_e32 v41, 1, v115
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v93, v93
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v113, 0, v46, s34
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v42, v90, v42, 0x7fff
	v_add3_u32 v41, v111, v41, 0x7fff
	v_mov_b16_e32 v118.l, v120.h
	v_mov_b16_e32 v117.l, v114.h
	v_mov_b16_e32 v91.l, v113.h
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s3
	v_cndmask_b16 v42.l, 0x7fff, v41.h, s21
	v_cmp_o_f32_e64 s22, v113, v113
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v112, 0, v47, s33
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v47, 1, v91
	v_mov_b16_e32 v91.l, v119.h
	v_permlanex16_b32 v92, v42, s42, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v45, 1, v117
	v_mov_b16_e32 v116.l, v112.h
	v_cmp_o_f32_e64 s26, v112, v112
	v_and_b32_e32 v41, 1, v91
	v_perm_b32 v146, v92, v42, v66
	v_perm_b32 v147, v92, v42, v67
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v92, 0, v93, s20
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v48, v48, v94
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v44, 1, v116
	v_and_b32_e32 v46, 1, v118
	v_add3_u32 v47, v113, v47, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v92
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v48, v48
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v44, v112, v44, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v92
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v46, v120, v46, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v31, v31, v92
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s31, v119, v119
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s26
	v_cndmask_b16 v44.h, 0x7fff, v47.h, s22
	v_cmp_o_f32_e64 s33, v114, v114
	v_add3_u32 v45, v114, v45, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v121, 0, v48, s35
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s35, v120, v120
	v_add3_u32 v41, v119, v41, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v92
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s33
	v_mov_b16_e32 v91.l, v121.h
	v_cmp_o_f32_e64 s34, v121, v121
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s35
	v_cndmask_b16 v45.h, 0x7fff, v41.h, s31
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v92
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v48, 1, v91
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v28, v28, v92 :: v_dual_sub_f32 v115, v183, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v41, v45, s42, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v30, v30, v92 :: v_dual_sub_f32 v117, v177, v94
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v47, v121, v48, 0x7fff
	v_permlanex16_b32 v48, v44, s42, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v150, v41, v45, v66
	v_perm_b32 v151, v41, v45, v67
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v32, v32, v92
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v46.h, 0x7fff, v47.h, s34
	v_perm_b32 v148, v48, v44, v66
	v_perm_b32 v149, v48, v44, v67
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v19, v19, v92
	v_mul_f32_e32 v23, v23, v92
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v42, v46, s42, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v21, v21, v92 :: v_dual_sub_f32 v116, v178, v94
	v_mul_f32_e32 v1, v1, v92
	v_dual_mul_f32 v2, v2, v92 :: v_dual_sub_f32 v99, v99, v94
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v152, v42, v46, v66
	v_perm_b32 v153, v42, v46, v67
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v154, v72 offset:2048
	ds_load_u16_d16 v42, v72 offset:2112
	ds_load_u16_d16 v145, v72 offset:1888
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v52, v72 offset:640
	ds_load_u16_d16_hi v51, v72 offset:384
	ds_load_u16_d16_hi v50, v72 offset:128
	ds_load_u16_d16_hi v122, v72 offset:160
	ds_load_u16_d16_hi v130, v72 offset:192
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v138, v72 offset:224
	ds_load_u16_d16_hi v123, v72 offset:416
	ds_load_u16_d16_hi v131, v72 offset:448
	ds_load_u16_d16_hi v124, v72 offset:672
	ds_load_u16_d16_hi v140, v72 offset:736
	ds_load_u16_d16_hi v125, v72 offset:928
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v141, v72 offset:992
	ds_load_u16_d16_hi v126, v72 offset:1184
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v142, v72 offset:1248
	ds_load_u16_d16_hi v127, v72 offset:1440
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v143, v72 offset:1504
	ds_load_u16_d16_hi v128, v72 offset:1696
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v144, v72 offset:1760
	ds_load_u16_d16_hi v129, v72 offset:1952
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v145, v72 offset:2016
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v92
	v_mul_f32_e32 v4, v4, v92
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(17)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[50:57], v[146:153], v[25:32]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v54, v184, v94
	v_sub_f32_e32 v55, v182, v94
	v_sub_f32_e32 v56, v181, v94
	v_sub_f32_e32 v57, v180, v94
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v92
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v54, v54
	v_exp_f32_e32 v55, v55
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v6, v6, v92 :: v_dual_sub_f32 v109, v109, v94
	v_dual_mul_f32 v7, v7, v92 :: v_dual_sub_f32 v98, v98, v94
	v_dual_mul_f32 v8, v8, v92 :: v_dual_sub_f32 v107, v107, v94
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v56, v56
	v_exp_f32_e32 v57, v57
	v_mov_b32_e32 v93, v49
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v169, v72 offset:3872
	ds_load_u16_d16 v156, v72 offset:2560
	ds_load_u16_d16 v163, v72 offset:2336
	ds_load_u16_d16 v44, v72 offset:2624
	ds_load_u16_d16 v157, v72 offset:2816
	ds_load_u16_d16 v164, v72 offset:2592
	ds_load_u16_d16 v45, v72 offset:2880
	ds_load_u16_d16 v158, v72 offset:3072
	ds_load_u16_d16 v165, v72 offset:2848
	ds_load_u16_d16 v46, v72 offset:3136
	ds_load_u16_d16 v160, v72 offset:3584
	ds_load_u16_d16 v167, v72 offset:3360
	ds_load_u16_d16 v48, v72 offset:3648
	ds_load_u16_d16 v161, v72 offset:3840
	ds_load_u16_d16 v168, v72 offset:3616
	ds_load_u16_d16 v49, v72 offset:3904
	ds_load_u16_d16 v159, v72 offset:3328
	ds_load_u16_d16 v166, v72 offset:3104
	ds_load_u16_d16 v47, v72 offset:3392
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(19)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[138:145], v[146:153], v[1:8]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v115, v115
	v_exp_f32_e32 v116, v116
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v141, 0, v54, s19
	v_cndmask_b32_e64 v142, 0, v55, s30
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v9, v9, v92 :: v_dual_sub_f32 v118, v179, v94
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v50.h, v91.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v143, 0, v56, s29
	v_cndmask_b32_e64 v144, 0, v57, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v50.l, v141.h
	v_mov_b16_e64 v91.l, v142.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v117, v117
	v_exp_f32_e32 v118, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v11, v11, v92 :: v_dual_and_b32 v50, 1, v50
	v_dual_mul_f32 v13, v13, v92 :: v_dual_and_b32 v54, 1, v91
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v51.h, v91.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v145, 0, v115, s27
	v_cndmask_b32_e64 v116, 0, v116, s25
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v51.l, v143.h
	v_mov_b16_e64 v91.l, v144.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v20, v20, v92
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v52.h, v91.h
	v_cmp_o_f32_e64 s3, v142, v142
	v_cmp_o_f32_e64 s19, v141, v141
	v_mov_b16_e64 v52.l, v145.h
	v_and_b32_e32 v51, 1, v51
	v_add3_u32 v50, v141, v50, 0x7fff
	v_and_b32_e32 v55, 1, v91
	v_mov_b16_e32 v91.l, v116.h
	v_add3_u32 v54, v142, v54, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v117, 0, v117, s23
	v_cndmask_b32_e64 v118, 0, v118, s24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v15, v15, v92 :: v_dual_and_b32 v56, 1, v91
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v41, v72 offset:4160
	ds_load_u16_d16 v155, v72 offset:2304
	ds_load_u16_d16_hi v154, v72 offset:2176
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v48, v72 offset:3776
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v161, v72 offset:3968
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v49, v72 offset:4032
	ds_load_u16_d16_hi v43, v72 offset:2496
	ds_load_u16_d16 v171, v72 offset:2400
	ds_load_u16_d16_hi v156, v72 offset:2688
	ds_load_u16_d16_hi v44, v72 offset:2752
	ds_load_u16_d16 v172, v72 offset:2656
	ds_load_u16_d16_hi v157, v72 offset:2944
	ds_load_u16_d16_hi v45, v72 offset:3008
	ds_load_u16_d16 v173, v72 offset:2912
	ds_load_u16_d16_hi v158, v72 offset:3200
	ds_load_u16_d16_hi v46, v72 offset:3264
	ds_load_u16_d16 v174, v72 offset:3168
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v159, v72 offset:3456
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v47, v72 offset:3520
	ds_load_u16_d16 v175, v72 offset:3424
	ds_load_u16_d16_hi v160, v72 offset:3712
	ds_load_u16_d16 v176, v72 offset:3680
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s20, v144, v144
	v_cmp_o_f32_e64 s21, v143, v143
	v_and_b32_e32 v52, 1, v52
	v_add3_u32 v51, v143, v51, 0x7fff
	v_cndmask_b16 v50.l, 0x7fff, v50.h, s19
	v_cndmask_b16 v50.h, 0x7fff, v54.h, s3
	v_add3_u32 v54, v144, v55, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v162, v72 offset:2080
	ds_load_u16_d16_hi v42, v72 offset:2240
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v53.h, v91.h
	v_mov_b16_e32 v53.l, v117.h
	v_mov_b16_e32 v91.l, v118.h
	v_cmp_o_f32_e64 s22, v116, v116
	v_cmp_o_f32_e64 s23, v145, v145
	v_add3_u32 v52, v145, v52, 0x7fff
	v_cndmask_b16 v51.l, 0x7fff, v51.h, s21
	v_cndmask_b16 v51.h, 0x7fff, v54.h, s20
	v_add3_u32 v54, v116, v56, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v18, v18, v92 :: v_dual_and_b32 v53, 1, v53
	v_dual_mul_f32 v22, v22, v92 :: v_dual_and_b32 v55, 1, v91
	v_mul_f32_e32 v17, v17, v92
	v_mul_f32_e32 v24, v24, v92
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v52.l, 0x7fff, v52.h, s23
	v_permlanex16_b32 v57, v50, s42, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v52.h, 0x7fff, v54.h, s22
	v_cmp_o_f32_e64 s24, v118, v118
	v_cmp_o_f32_e64 s25, v117, v117
	v_add3_u32 v53, v117, v53, 0x7fff
	v_add3_u32 v55, v118, v55, 0x7fff
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[122:129], v[146:153], v[17:24]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v122, v57, v50, v66
	v_perm_b32 v123, v57, v50, v67
	v_permlanex16_b32 v50, v52, s42, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v53.l, 0x7fff, v53.h, s25
	v_permlanex16_b32 v56, v51, s42, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v53.h, 0x7fff, v55.h, s24
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v10, v10, v92 :: v_dual_sub_f32 v103, v103, v94
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v126, v50, v52, v66
	v_perm_b32 v127, v50, v52, v67
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v50, v72 offset:4096
	ds_load_u16_d16 v177, v72 offset:3936
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v155, v72 offset:2432
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v162, v72 offset:2208
	ds_load_u16_d16_hi v170, v72 offset:2272
	ds_load_u16_d16_hi v163, v72 offset:2464
	ds_load_u16_d16_hi v171, v72 offset:2528
	ds_load_u16_d16_hi v164, v72 offset:2720
	ds_load_u16_d16_hi v172, v72 offset:2784
	ds_load_u16_d16_hi v165, v72 offset:2976
	ds_load_u16_d16_hi v173, v72 offset:3040
	ds_load_u16_d16_hi v166, v72 offset:3232
	ds_load_u16_d16_hi v174, v72 offset:3296
	ds_load_u16_d16_hi v167, v72 offset:3488
	ds_load_u16_d16_hi v175, v72 offset:3552
	ds_load_u16_d16_hi v168, v72 offset:3744
	ds_load_u16_d16_hi v176, v72 offset:3808
	ds_load_u16_d16_hi v169, v72 offset:4000
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v12, v12, v92 :: v_dual_sub_f32 v101, v101, v94
	v_dual_mul_f32 v14, v14, v92 :: v_dual_sub_f32 v97, v97, v94
	v_dual_mul_f32 v16, v16, v92 :: v_dual_sub_f32 v95, v95, v94
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v124, v56, v51, v66
	v_perm_b32 v125, v56, v51, v67
	v_permlanex16_b32 v51, v53, s42, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v177, v72 offset:4064
	ds_load_u16_d16_hi v50, v72 offset:4224
	ds_load_u16_d16_hi v41, v72 offset:4288
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[130:137], v[146:153], v[9:16]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v103, v103
	v_exp_f32_e32 v102, v102
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v128, v51, v53, v66
	v_perm_b32 v129, v51, v53, v67
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v97, v97
	v_exp_f32_e32 v99, v99
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v96, v96, v94
	v_sub_f32_e32 v106, v106, v94
	.loc	1 896 23 is_stmt 1              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[42:49], v[122:129], v[9:16]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v104, v94
	v_sub_f32_e32 v104, v105, v94
	v_sub_f32_e32 v105, v110, v94
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(18)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[154:161], v[122:129], v[25:32]
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[162:169], v[122:129], v[17:24]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v103, 0, v103, s10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v105, v105
	.loc	1 896 23 is_stmt 1              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[170:177], v[122:129], v[1:8]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v124, 0, v102, s9
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v108, v108, v94
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v104, v104
	v_exp_f32_e32 v100, v100
	v_exp_f32_e32 v101, v101
	v_exp_f32_e32 v98, v98
	v_exp_f32_e32 v95, v95
	v_exp_f32_e32 v109, v109
	v_exp_f32_e32 v107, v107
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v126, 0, v97, s5
	v_cndmask_b32_e64 v128, 0, v99, s0
	v_cndmask_b32_e64 v129, 0, v105, s17
.Ltmp15:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v97, v120, v121
.Ltmp16:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v106, v106
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v99, v143, v144
.Ltmp18:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v96, v96
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v105, v103, v124
.Ltmp20:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v108, v108
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s12
	v_cndmask_b32_e64 v123, 0, v104, s11
	v_cndmask_b32_e64 v104, 0, v100, s8
	v_cndmask_b32_e64 v125, 0, v101, s7
	v_cndmask_b32_e64 v110, 0, v98, s6
	v_cndmask_b32_e64 v127, 0, v95, s18
	v_cndmask_b32_e64 v163, 0, v109, s14
	v_cndmask_b32_e64 v122, 0, v96, s1
	v_cndmask_b32_e64 v164, 0, v106, s16
	v_cndmask_b32_e64 v162, 0, v108, s15
	v_cndmask_b32_e64 v165, 0, v107, s13
.Ltmp21:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v90, v111, v90 :: v_dual_add_f32 v109, v128, v129
	v_dual_add_f32 v95, v112, v113 :: v_dual_add_f32 v96, v114, v119
	v_add_f32_e32 v101, v117, v118
.Ltmp22:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v154.h, v91.h
	v_mov_b16_e64 v156.h, v91.h
	v_mov_b16_e64 v158.h, v91.h
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v98, v141, v142 :: v_dual_add_f32 v111, v162, v163
	v_dual_add_f32 v100, v145, v116 :: v_dual_add_f32 v107, v110, v126
	v_dual_add_f32 v102, v49, v123 :: v_dual_add_f32 v113, v96, v97
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v154.l, v49.h
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v108, v122, v127
.Ltmp26:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v156.l, v104.h
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v112, v164, v165
	v_add_f32_e32 v106, v104, v125
.Ltmp28:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v158.l, v122.h
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v90, v90, v95
.Ltmp30:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v155.h, v91.h
	v_mov_b16_e64 v160.h, v91.h
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v111, v111, v112
.Ltmp32:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v155.l, v103.h
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v105, v102, v105
.Ltmp34:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v117, 1, v158
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v113, v90, v113
	v_dual_add_f32 v106, v106, v107 :: v_dual_and_b32 v107, 1, v154
	v_add_f32_e32 v166, v108, v109
	v_add_f32_e32 v116, v100, v101
.Ltmp36:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v160.l, v162.h
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v114, v98, v99
.Ltmp38:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v108, 1, v155
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v111, v166, v111
.Ltmp40:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v159.h, v91.h
	v_and_b32_e32 v155, 1, v160
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v114, v114, v116
.Ltmp42:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v159.l, v128.h
	v_mov_b16_e32 v91.l, v123.h
	v_mov_b32_e32 v90, v94
	v_mov_b16_e64 v157.h, v91.h
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v113, v113, v114
	v_add_f32_e32 v154, v105, v106
.Ltmp44:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v94, 1, v159
	v_cmp_o_f32_e64 s0, v49, v49
	v_mov_b16_e64 v157.l, v110.h
	v_add3_u32 v49, v49, v107, 0x7fff
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v111, v154, v111
.Ltmp46:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v138, v72 offset:6208
	ds_load_u16_d16 v137, v72 offset:5984
	ds_load_u16_d16 v146, v72 offset:6144
	ds_load_u16_d16 v148, v72 offset:6656
	ds_load_u16_d16 v140, v72 offset:6720
	ds_load_u16_d16 v139, v72 offset:6464
	ds_load_u16_d16 v147, v72 offset:6400
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v94, v128, v94, 0x7fff
	v_and_b32_e32 v112, 1, v157
	v_cndmask_b16 v94.l, 0x7fff, v49.h, s0
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v49, v113, v111
.Ltmp48:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v161.h, v91.h
	v_mov_b16_e64 v161.l, v164.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v130, v72 offset:4192
	ds_load_u16_d16 v42, v72 offset:4416
	ds_load_u16_d16 v51, v72 offset:4352
	ds_load_u16_d16 v52, v72 offset:4608
	ds_load_u16_d16 v43, v72 offset:4672
	ds_load_u16_d16 v131, v72 offset:4448
	ds_load_u16_d16 v53, v72 offset:4864
	ds_load_u16_d16 v44, v72 offset:4928
	ds_load_u16_d16 v132, v72 offset:4704
	ds_load_u16_d16 v54, v72 offset:5120
	ds_load_u16_d16 v45, v72 offset:5184
	ds_load_u16_d16 v133, v72 offset:4960
	ds_load_u16_d16 v55, v72 offset:5376
	ds_load_u16_d16 v46, v72 offset:5440
	ds_load_u16_d16 v134, v72 offset:5216
	ds_load_u16_d16 v56, v72 offset:5632
	ds_load_u16_d16 v47, v72 offset:5696
	ds_load_u16_d16 v135, v72 offset:5472
	ds_load_u16_d16 v57, v72 offset:5888
	ds_load_u16_d16 v48, v72 offset:5952
	ds_load_u16_d16 v136, v72 offset:5728
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v109, 1, v156
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v111, v49, s42, 0xfedcba98 op_sel:[1,0]
.Ltmp50:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v123, v123
	v_cmp_o_f32_e64 s12, v128, v128
	v_and_b32_e32 v156, 1, v161
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v96, v72 offset:6496
	ds_load_u16_d16 v149, v72 offset:6912
	ds_load_u16_d16 v141, v72 offset:6976
	ds_load_u16_d16 v97, v72 offset:6752
	ds_load_u16_d16 v150, v72 offset:7168
	ds_load_u16_d16 v142, v72 offset:7232
	ds_load_u16_d16 v98, v72 offset:7008
	ds_load_u16_d16 v151, v72 offset:7424
	ds_load_u16_d16 v143, v72 offset:7488
	ds_load_u16_d16 v99, v72 offset:7264
	ds_load_u16_d16 v152, v72 offset:7680
	ds_load_u16_d16 v144, v72 offset:7744
	ds_load_u16_d16 v100, v72 offset:7520
	ds_load_u16_d16 v153, v72 offset:7936
	ds_load_u16_d16 v145, v72 offset:8000
	ds_load_u16_d16 v101, v72 offset:7776
	ds_load_u16_d16 v102, v72 offset:8032
	ds_load_u16_d16 v95, v72 offset:6240
	s_waitcnt lgkmcnt(45)
	ds_load_u16_d16_hi v138, v72 offset:6336
	s_waitcnt lgkmcnt(41)
	ds_load_u16_d16_hi v139, v72 offset:6592
	s_waitcnt lgkmcnt(41)
	ds_load_u16_d16_hi v147, v72 offset:6528
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v49, v49, v111
.Ltmp52:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v111, 1, v91
	v_mov_b16_e32 v91.l, v124.h
	v_cmp_o_f32_e64 s1, v103, v103
	v_cmp_o_f32_e64 s6, v122, v122
	v_add3_u32 v103, v103, v108, 0x7fff
	v_add3_u32 v111, v123, v111, 0x7fff
	v_and_b32_e32 v113, 1, v91
	v_mov_b16_e32 v91.l, v125.h
	v_add3_u32 v107, v110, v112, 0x7fff
	v_add3_u32 v112, v122, v117, 0x7fff
	v_cmp_o_f32_e64 s8, v124, v124
	v_cmp_o_f32_e64 s14, v164, v164
	v_add3_u32 v128, v162, v155, 0x7fff
	v_add3_u32 v155, v164, v156, 0x7fff
	v_cndmask_b16 v164.l, 0x7fff, v94.h, s12
	v_and_b32_e32 v123, 1, v91
	v_mov_b16_e32 v91.l, v126.h
	v_cndmask_b16 v94.h, 0x7fff, v111.h, s7
	v_add3_u32 v111, v124, v113, 0x7fff
	v_cmp_o_f32_e64 s3, v104, v104
	v_add3_u32 v104, v104, v109, 0x7fff
	v_cmp_o_f32_e64 s9, v125, v125
	v_cmp_o_f32_e64 s13, v162, v162
	v_cndmask_b16 v112.l, 0x7fff, v103.h, s1
	v_cndmask_b16 v162.l, 0x7fff, v112.h, s6
	v_and_b32_e32 v113, 1, v91
	v_permlanex16_b32 v124, v94, s42, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v112.h, 0x7fff, v111.h, s8
	v_add3_u32 v111, v125, v123, 0x7fff
	v_mov_b16_e32 v91.l, v127.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v115, v72 offset:4128
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v110, v110
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v104, v72 offset:6432
	ds_load_u16_d16_hi v148, v72 offset:6784
	ds_load_u16_d16_hi v140, v72 offset:6848
	ds_load_u16_d16 v105, v72 offset:6688
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v149, v72 offset:7040
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v141, v72 offset:7104
	ds_load_u16_d16 v106, v72 offset:6944
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v150, v72 offset:7296
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v142, v72 offset:7360
	ds_load_u16_d16 v107, v72 offset:7200
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v151, v72 offset:7552
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v143, v72 offset:7616
	ds_load_u16_d16 v108, v72 offset:7456
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v152, v72 offset:7808
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v144, v72 offset:7872
	ds_load_u16_d16 v109, v72 offset:7712
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v153, v72 offset:8064
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v145, v72 offset:8128
	ds_load_u16_d16 v110, v72 offset:7968
	ds_load_u16_d16_hi v51, v72 offset:4480
	ds_load_u16_d16_hi v42, v72 offset:4544
	ds_load_u16_d16 v116, v72 offset:4384
	ds_load_u16_d16_hi v52, v72 offset:4736
	ds_load_u16_d16_hi v43, v72 offset:4800
	ds_load_u16_d16 v117, v72 offset:4640
	ds_load_u16_d16_hi v53, v72 offset:4992
	ds_load_u16_d16_hi v44, v72 offset:5056
	ds_load_u16_d16 v118, v72 offset:4896
	ds_load_u16_d16_hi v54, v72 offset:5248
	ds_load_u16_d16_hi v45, v72 offset:5312
	ds_load_u16_d16 v119, v72 offset:5152
	ds_load_u16_d16_hi v55, v72 offset:5504
	ds_load_u16_d16_hi v46, v72 offset:5568
	ds_load_u16_d16 v120, v72 offset:5408
	ds_load_u16_d16_hi v56, v72 offset:5760
	ds_load_u16_d16_hi v47, v72 offset:5824
	ds_load_u16_d16 v121, v72 offset:5664
	ds_load_u16_d16_hi v57, v72 offset:6016
	ds_load_u16_d16_hi v48, v72 offset:6080
	ds_load_u16_d16 v122, v72 offset:5920
	ds_load_u16_d16_hi v146, v72 offset:6272
	ds_load_u16_d16 v103, v72 offset:6176
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v126, v126
	s_waitcnt lgkmcnt(41)
	v_cndmask_b16 v114.l, 0x7fff, v104.h, s3
	v_cndmask_b16 v167.l, 0x7fff, v155.h, s14
	v_add3_u32 v113, v126, v113, 0x7fff
	v_perm_b32 v154, v124, v94, v66
	v_perm_b32 v155, v124, v94, v67
	v_permlanex16_b32 v94, v112, s42, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v114.h, 0x7fff, v111.h, s9
	v_and_b32_e32 v111, 1, v91
	v_mov_b16_e64 v91.l, v129.h
	s_waitcnt lgkmcnt(32)
	v_cndmask_b16 v128.l, 0x7fff, v107.h, s5
	v_cndmask_b16 v166.l, 0x7fff, v128.h, s13
	v_cndmask_b16 v128.h, 0x7fff, v113.h, s10
	v_perm_b32 v156, v94, v112, v66
	v_perm_b32 v157, v94, v112, v67
	v_permlanex16_b32 v94, v114, s42, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v112, 1, v91
	v_mov_b16_e64 v91.l, v163.h
	v_permlanex16_b32 v113, v128, s42, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s11, v127, v127
	v_perm_b32 v158, v94, v114, v66
	v_perm_b32 v159, v94, v114, v67
	v_add3_u32 v94, v129, v112, 0x7fff
	v_and_b32_e32 v112, 1, v91
	v_mov_b16_e64 v91.l, v165.h
	v_add3_u32 v111, v127, v111, 0x7fff
	v_perm_b32 v160, v113, v128, v66
	v_perm_b32 v161, v113, v128, v67
	v_cmp_o_f32_e64 s15, v129, v129
	v_and_b32_e32 v91, 1, v91
	v_cmp_o_f32_e64 s16, v163, v163
	v_cmp_o_f32_e64 s17, v165, v165
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v115, v72 offset:4256
	ds_load_u16_d16_hi v130, v72 offset:4320
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v116, v72 offset:4512
	ds_load_u16_d16_hi v131, v72 offset:4576
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v117, v72 offset:4768
	ds_load_u16_d16_hi v132, v72 offset:4832
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v118, v72 offset:5024
	ds_load_u16_d16_hi v133, v72 offset:5088
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v119, v72 offset:5280
	ds_load_u16_d16_hi v134, v72 offset:5344
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v120, v72 offset:5536
	ds_load_u16_d16_hi v135, v72 offset:5600
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v121, v72 offset:5792
	ds_load_u16_d16_hi v136, v72 offset:5856
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v122, v72 offset:6048
	ds_load_u16_d16_hi v137, v72 offset:6112
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v103, v72 offset:6304
	ds_load_u16_d16_hi v95, v72 offset:6368
	ds_load_u16_d16_hi v104, v72 offset:6560
	ds_load_u16_d16_hi v96, v72 offset:6624
	ds_load_u16_d16_hi v105, v72 offset:6816
	ds_load_u16_d16_hi v97, v72 offset:6880
	ds_load_u16_d16_hi v106, v72 offset:7072
	ds_load_u16_d16_hi v98, v72 offset:7136
	ds_load_u16_d16_hi v107, v72 offset:7328
	ds_load_u16_d16_hi v99, v72 offset:7392
	ds_load_u16_d16_hi v108, v72 offset:7584
	ds_load_u16_d16_hi v100, v72 offset:7648
	ds_load_u16_d16_hi v109, v72 offset:7840
	ds_load_u16_d16_hi v101, v72 offset:7904
	ds_load_u16_d16_hi v110, v72 offset:8096
	ds_load_u16_d16_hi v102, v72 offset:8160
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v162.h, 0x7fff, v111.h, s11
	v_add3_u32 v111, v163, v112, 0x7fff
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[41:48], v[154:161], v[9:16]
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v43, v165, v91, 0x7fff
	v_cndmask_b16 v164.h, 0x7fff, v94.h, s15
	v_permlanex16_b32 v94, v162, s42, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v166.h, 0x7fff, v111.h, s16
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[50:57], v[154:161], v[25:32]
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v167.h, 0x7fff, v43.h, s17
	v_permlanex16_b32 v44, v164, s42, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(17)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[115:122], v[154:161], v[17:24]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v46, v166, s42, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[130:137], v[154:161], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v48, v167, s42, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v41, v94, v162, v66
	v_perm_b32 v42, v94, v162, v67
	v_perm_b32 v43, v44, v164, v66
	v_perm_b32 v44, v44, v164, v67
	v_perm_b32 v45, v46, v166, v66
	v_perm_b32 v46, v46, v166, v67
	v_perm_b32 v47, v48, v167, v66
	v_perm_b32 v48, v48, v167, v67
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v49, v93, v92
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[146:153], v[41:48], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[103:110], v[41:48], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[138:145], v[41:48], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[95:102], v[41:48], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v33, v69
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v0, null, v49, v49, v25
	v_div_scale_f32 v34, null, v49, v49, v26
	v_div_scale_f32 v35, null, v49, v49, v27
	v_rcp_f32_e32 v36, v0
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, vcc_lo, v25, v49, v25
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v40, s0, v26, v49, v26
	v_div_scale_f32 v43, null, v49, v49, v28
	v_div_scale_f32 v50, s3, v28, v49, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v0, v36, 1.0
	v_fma_f32 v42, -v34, v37, 1.0
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v33, s38, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v35, v38, 1.0
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s49, s49, 0xffff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v36, v41, v36 :: v_dual_fmac_f32 v37, v42, v37
	v_div_scale_f32 v41, s1, v27, v49, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v44, v38
	v_dual_mul_f32 v44, v39, v36 :: v_dual_mul_f32 v45, v40, v37
	v_rcp_f32_e32 v42, v43
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v0, v44, v39
	v_fma_f32 v48, -v34, v45, v40
	v_dual_fmac_f32 v44, v47, v36 :: v_dual_fmac_f32 v45, v48, v37
	v_div_scale_f32 v47, null, v49, v49, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v43, v42, 1.0
	v_fma_f32 v0, -v0, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v45, v40
	v_rcp_f32_e32 v39, v47
	v_div_scale_f32 v40, null, v49, v49, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v36, v44
	s_mov_b32 vcc_lo, s0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v49
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v37, v45
	v_rcp_f32_e32 v44, v40
	v_div_fixup_f32 v0, v0, v49, v25
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v39, 1.0
	v_div_fixup_f32 v25, v34, v49, v26
	v_div_scale_f32 v34, s4, v29, v49, v29
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v45, v39
	v_mul_f32_e32 v46, v41, v38
	v_div_scale_f32 v45, null, v49, v49, v32
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v52, -v35, v46, v41
	v_rcp_f32_e32 v48, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v52, v38
	v_fma_f32 v26, -v35, v46, v41
	v_dual_mul_f32 v41, v34, v39 :: v_dual_fmac_f32 v42, v51, v42
	v_fma_f32 v35, -v40, v44, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v26, v26, v38, v46
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v36, v50, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v44, v35, v44
	v_div_fixup_f32 v26, v26, v49, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v43, v36, v50
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v37, v42
	v_div_scale_f32 v37, null, v49, v49, v31
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v26, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v35, v37
	v_fma_f32 v46, -v37, v35, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v46, v35
	v_fma_f32 v38, -v43, v36, v50
	v_div_scale_f32 v43, s1, v30, v49, v30
	v_fma_f32 v46, -v45, v48, 1.0
	v_div_fmas_f32 v36, v38, v42, v36
	v_fma_f32 v38, -v47, v41, v34
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v48, v46, v48
	v_div_scale_f32 v46, s5, v32, v49, v32
	v_div_fixup_f32 v27, v36, v49, v28
	v_fmac_f32_e32 v41, v38, v39
	v_div_scale_f32 v36, s3, v31, v49, v31
	v_div_scale_f32 v38, null, v49, v49, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v47, v41, v34
	v_dual_mul_f32 v47, v36, v35 :: v_dual_mul_f32 v42, v43, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v50, v38
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v40, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v42, v28, v44
	v_div_fmas_f32 v28, v34, v39, v41
	v_fma_f32 v39, -v37, v47, v36
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v41, -v38, v50, 1.0
	v_fma_f32 v34, -v40, v42, v43
	v_div_scale_f32 v43, null, v49, v49, v18
	v_dual_mul_f32 v40, v46, v48 :: v_dual_fmac_f32 v47, v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v34, v34, v44, v42
	v_rcp_f32_e32 v39, v43
	v_fmac_f32_e32 v50, v41, v50
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v42, -v45, v40, v46
	v_div_scale_f32 v41, s1, v17, v49, v17
	v_div_fixup_f32 v28, v28, v49, v29
	v_div_fixup_f32 v29, v34, v49, v30
	v_fma_f32 v30, -v37, v47, v36
	v_fmac_f32_e32 v40, v42, v48
	v_div_scale_f32 v37, null, v49, v49, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v43, v39, 1.0
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v34, v41, v50
	v_div_fmas_f32 v30, v30, v35, v47
	v_fma_f32 v35, -v45, v40, v46
	v_fmac_f32_e32 v39, v36, v39
	v_rcp_f32_e32 v36, v37
	v_div_scale_f32 v45, null, v49, v49, v20
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v42, -v38, v34, v41
	v_div_scale_f32 v44, s3, v18, v49, v18
	v_div_fmas_f32 v35, v35, v48, v40
	v_rcp_f32_e32 v40, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v42, v50
	v_mul_f32_e32 v42, v44, v39
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v37, v36, 1.0
	v_div_fixup_f32 v30, v30, v49, v31
	v_div_fixup_f32 v31, v35, v49, v32
	v_fma_f32 v32, -v38, v34, v41
	v_fma_f32 v35, -v43, v42, v44
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v38, s4, v19, v49, v19
	v_fma_f32 v41, -v45, v40, 1.0
	v_div_scale_f32 v46, null, v49, v49, v21
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v42, v35, v39
	v_div_fmas_f32 v32, v32, v50, v34
	v_mul_f32_e32 v34, v38, v36
	v_fmac_f32_e32 v40, v41, v40
	v_rcp_f32_e32 v35, v46
	v_div_scale_f32 v41, s1, v20, v49, v20
	v_div_scale_f32 v47, null, v49, v49, v22
	v_div_fixup_f32 v17, v32, v49, v17
	v_fma_f32 v32, -v43, v42, v44
	v_fma_f32 v43, -v37, v34, v38
	v_mul_f32_e32 v44, v41, v40
	v_rcp_f32_e32 v48, v47
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v50, -v46, v35, 1.0
	v_div_fmas_f32 v32, v32, v39, v42
	v_fmac_f32_e32 v34, v43, v36
	v_fma_f32 v39, -v45, v44, v41
	v_div_scale_f32 v42, s3, v21, v49, v21
	v_fmac_f32_e32 v35, v50, v35
	v_div_fixup_f32 v18, v32, v49, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v47, v48, 1.0
	v_fma_f32 v32, -v37, v34, v38
	v_fmac_f32_e32 v44, v39, v40
	v_div_scale_f32 v39, null, v49, v49, v23
	s_mov_b32 vcc_lo, s4
	v_dual_mul_f32 v37, v42, v35 :: v_dual_fmac_f32 v48, v43, v48
	v_div_scale_f32 v38, s5, v22, v49, v22
	v_div_fmas_f32 v32, v32, v36, v34
	v_fma_f32 v34, -v45, v44, v41
	v_rcp_f32_e32 v41, v39
	v_fma_f32 v36, -v46, v37, v42
	v_mul_f32_e32 v43, v38, v48
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v49, v49, v24
	v_div_fmas_f32 v34, v34, v40, v44
	v_fmac_f32_e32 v37, v36, v35
	v_fma_f32 v40, -v47, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v36, v45
	v_fma_f32 v44, -v39, v41, 1.0
	v_div_fixup_f32 v19, v32, v49, v19
	v_div_fixup_f32 v20, v34, v49, v20
	v_fma_f32 v32, -v46, v37, v42
	v_fmac_f32_e32 v43, v40, v48
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v34, s1, v23, v49, v23
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v45, v36, 1.0
	v_div_fmas_f32 v32, v32, v35, v37
	v_fma_f32 v35, -v47, v43, v38
	v_mul_f32_e32 v37, v34, v41
	v_div_scale_f32 v38, null, v49, v49, v9
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v36, v40, v36
	v_div_fmas_f32 v35, v35, v48, v43
	v_rcp_f32_e32 v42, v38
	v_fma_f32 v43, -v39, v37, v34
	v_div_scale_f32 v40, s3, v24, v49, v24
	v_div_scale_f32 v46, null, v49, v49, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v37, v43, v41 :: v_dual_mul_f32 v44, v40, v36
	v_div_fixup_f32 v22, v35, v49, v22
	v_rcp_f32_e32 v35, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v38, v42, 1.0
	v_fma_f32 v34, -v39, v37, v34
	v_div_scale_f32 v39, null, v49, v49, v11
	v_div_fixup_f32 v21, v32, v49, v21
	v_fma_f32 v32, -v45, v44, v40
	v_fmac_f32_e32 v42, v43, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v43, v39
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v47, -v46, v35, 1.0
	v_fmac_f32_e32 v44, v32, v36
	v_div_fmas_f32 v34, v34, v41, v37
	v_div_scale_f32 v41, s1, v10, v49, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v47, v35
	v_fma_f32 v37, -v45, v44, v40
	v_div_scale_f32 v32, s4, v9, v49, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v39, v43, 1.0
	v_div_scale_f32 v48, null, v49, v49, v12
	v_mul_f32_e32 v50, v41, v35
	v_dual_mul_f32 v40, v32, v42 :: v_dual_fmac_f32 v43, v45, v43
	v_div_scale_f32 v45, s5, v11, v49, v11
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v51, v48
	v_div_fmas_f32 v36, v37, v36, v44
	v_fma_f32 v37, -v46, v50, v41
	v_mul_f32_e32 v44, v45, v43
	v_fma_f32 v47, -v38, v40, v32
	v_div_fixup_f32 v23, v34, v49, v23
	v_div_fixup_f32 v24, v36, v49, v24
	v_fmac_f32_e32 v50, v37, v35
	v_fma_f32 v34, -v39, v44, v45
	v_div_scale_f32 v37, null, v49, v49, v13
	v_fmac_f32_e32 v40, v47, v42
	v_fma_f32 v36, -v48, v51, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v32, -v38, v40, v32
	v_fma_f32 v38, -v46, v50, v41
	v_fmac_f32_e32 v51, v36, v51
	v_div_scale_f32 v36, s3, v12, v49, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v32, v32, v42, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, null, v49, v49, v14
	v_div_fmas_f32 v35, v38, v35, v50
	v_fma_f32 v38, -v39, v44, v45
	v_mul_f32_e32 v39, v36, v51
	v_fma_f32 v41, -v37, v34, 1.0
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v42, v40
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v43, -v48, v39, v36
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s1, v13, v49, v13
	v_div_fixup_f32 v9, v32, v49, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v43, v51
	v_div_fixup_f32 v10, v35, v49, v10
	v_mul_f32_e32 v32, v41, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v48, v39, v36
	v_div_fixup_f32 v11, v38, v49, v11
	v_fma_f32 v43, -v37, v32, v41
	v_div_scale_f32 v38, null, v49, v49, v15
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s4, v14, v49, v14
	v_div_fmas_f32 v36, v36, v51, v39
	v_fmac_f32_e32 v32, v43, v34
	v_rcp_f32_e32 v44, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v39, v35, v42
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v36, v49, v12
	v_fma_f32 v36, -v37, v32, v41
	v_div_scale_f32 v43, null, v49, v49, v16
	v_fma_f32 v37, -v40, v39, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v36, v34, v32
	v_div_scale_f32 v34, null, v49, v49, v1
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v36, s1, v15, v49, v15
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v49, v49, v2
	v_div_fixup_f32 v13, v32, v49, v13
	v_fma_f32 v35, -v40, v39, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v34, v37, 1.0
	v_mul_f32_e32 v40, v36, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v32, v45
	v_div_scale_f32 v32, s3, v16, v49, v16
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v49, v49, v3
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v32, v45
	v_div_scale_f32 v48, s4, v1, v49, v1
	v_fma_f32 v50, -v41, v47, 1.0
	v_rcp_f32_e32 v51, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v32
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v52, v48, v37 :: v_dual_fmac_f32 v47, v50, v47
	v_div_scale_f32 v50, s5, v2, v49, v2
	v_div_fixup_f32 v14, v35, v49, v14
	v_fma_f32 v35, -v38, v40, v36
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v52, v48
	v_mul_f32_e32 v38, v50, v47
	v_fma_f32 v39, -v46, v51, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v32, -v43, v42, v32
	v_fmac_f32_e32 v52, v36, v37
	v_fma_f32 v36, -v41, v38, v50
	v_fmac_f32_e32 v51, v39, v51
	v_div_scale_f32 v39, s1, v3, v49, v3
	v_div_fmas_f32 v35, v35, v44, v40
	v_div_scale_f32 v40, null, v49, v49, v4
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v34, -v34, v52, v48
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v51
	v_div_fmas_f32 v32, v32, v45, v42
	v_rcp_f32_e32 v42, v40
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v35, v49, v15
	v_div_fmas_f32 v34, v34, v37, v52
	v_fma_f32 v37, -v41, v38, v50
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v16, v32, v49, v16
	v_div_fixup_f32 v1, v34, v49, v1
	v_div_scale_f32 v34, null, v49, v49, v5
	v_fmac_f32_e32 v36, v41, v51
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fmas_f32 v37, v37, v47, v38
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v44, null, v49, v49, v8
	v_fma_f32 v32, -v46, v36, v39
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v49, v49, v6
	v_div_fixup_f32 v2, v37, v49, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v32, v51, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v37, null, v49, v49, v7
	v_rcp_f32_e32 v39, v35
	v_div_scale_f32 v38, vcc_lo, v4, v49, v4
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v3, v32, v49, v3
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
	v_div_scale_f32 v32, s1, v5, v49, v5
	v_fma_f32 v48, -v37, v41, 1.0
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v49, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v50, v32, v36
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v49, v7
	v_fma_f32 v51, -v44, v46, 1.0
	v_dual_fmac_f32 v43, v47, v42 :: v_dual_mul_f32 v52, v45, v39
	v_fma_f32 v47, -v34, v50, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v53, v48, v41 :: v_dual_fmac_f32 v46, v51, v46
	v_div_scale_f32 v51, s5, v8, v49, v8
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v52, v45
	v_fmac_f32_e32 v50, v47, v36
	v_fma_f32 v47, -v37, v53, v48
	v_mul_f32_e32 v54, v51, v46
	v_div_fmas_f32 v38, v38, v42, v43
	v_fmac_f32_e32 v52, v40, v39
	v_fma_f32 v32, -v34, v50, v32
	v_fmac_f32_e32 v53, v47, v41
	v_fma_f32 v34, -v44, v54, v51
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v35, -v35, v52, v45
	v_div_fmas_f32 v32, v32, v36, v50
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v54, v34, v46
	v_fma_f32 v34, -v37, v53, v48
	v_div_fmas_f32 v35, v35, v39, v52
	v_div_fixup_f32 v4, v38, v49, v4
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v37, v0, 16, 1
	v_bfe_u32 v38, v25, 16, 1
	v_bfe_u32 v39, v26, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s4
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s4, v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v41, v53
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
	v_fma_f32 v36, -v44, v54, v51
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
	v_div_fmas_f32 v36, v36, v46, v54
	v_div_fixup_f32 v5, v32, v49, v5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s4
	v_bfe_u32 v13, v1, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v35, v49, v6
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s5
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s6
	v_bfe_u32 v14, v3, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v49, v7
	v_div_fixup_f32 v8, v36, v49, v8
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
	v_lshrrev_b32_e32 v32, 1, v68
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v5, v27, v0, s36
	v_cndmask_b32_e64 v0, v0, v27, s36
	v_cndmask_b32_e64 v6, v17, v25, s36
	v_cndmask_b32_e64 v7, v25, v17, s36
	v_cndmask_b32_e64 v13, v28, v20, s36
	v_cndmask_b32_e64 v15, v18, v19, s36
	v_cndmask_b32_e64 v16, v12, v9, s36
	v_cndmask_b32_e64 v9, v9, v12, s36
	v_cndmask_b32_e64 v12, v11, v10, s36
	v_cndmask_b32_e64 v10, v10, v11, s36
	v_cndmask_b32_e64 v17, v3, v1, s36
	v_cndmask_b32_e64 v1, v1, v3, s36
	v_cndmask_b32_e64 v14, v19, v18, s36
	v_cndmask_b32_e64 v18, v4, v2, s36
	v_cndmask_b32_e64 v2, v2, v4, s36
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 16, v32
	s_mov_b32 s4, 0x76543210
	v_or_b32_e32 v35, 32, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v8, v20, v28, s36
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
	v_cmp_gt_i32_e32 vcc_lo, s38, v34
	v_cmp_gt_i32_e64 s3, s38, v32
	v_cmp_gt_i32_e64 s0, s38, v35
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
	v_add_lshl_u32 v17, v33, v34, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v8, v9, v16, v66
	v_perm_b32 v9, v9, v16, v67
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v33, v32, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s38, v36
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v14, v19, v18, v66
	v_perm_b32 v15, v19, v18, v67
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
	buffer_store_b128 v[0:3], v16, s[48:51], 0 offen
	buffer_store_b128 v[4:7], v17, s[48:51], 0 offen
	buffer_store_b128 v[8:11], v18, s[48:51], 0 offen
	buffer_store_b128 v[12:15], v19, s[48:51], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp53:
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
		.amdhsa_next_free_vgpr 185
		.amdhsa_next_free_sgpr 60
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
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_vgpr, 185
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.numbered_sgpr, 60
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13568
; TotalNumSgprs: 62
; NumVgprs: 185
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 62
; NumVGPRsForWavesPerEU: 185
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
    .sgpr_count:     62
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     185
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
