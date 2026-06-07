	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s2
	v_dual_mov_b32 v13, 0 :: v_dual_lshlrev_b32 v6, 2, v0
	v_dual_mov_b32 v15, 0 :: v_dual_and_b32 v10, 15, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v2, 5, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v9, 0x7c, v6
	s_load_b64 s[44:45], s[0:1], 0x20
	v_dual_mov_b32 v74, 0 :: v_dual_and_b32 v11, 0x7f, v0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s34, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s11, s11, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s9, 4
.Ltmp11:
	.loc	1 89 16 is_stmt 1               ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s5
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s7, v1
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v43, 0
	s_mul_f32 s7, s7, 0x4f7ffffe
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v47, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s7, s7
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v51, 0
	s_mul_i32 s10, s10, s7
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v53, 0
	s_mul_hi_u32 s10, s7, s10
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v55, 0
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v57, 0
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v59, 0
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v61, 0
	s_cselect_b32 s6, s11, s7
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v63, 0
	s_xor_b32 s6, s6, s10
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v65, 0
	s_sub_i32 s16, s6, s10
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v67, 0
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s6, s9, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 91 20 is_stmt 0               ; generate_amdgcn.py:91:20
	s_min_i32 s19, s6, 1
	.loc	1 92 29 is_stmt 1               ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s16, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s6, s19
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_f32_u32 s7, s6
	s_abs_i32 s18, s2
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v69, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v39, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v78, v0, 4, 1
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	v_readfirstlane_b32 s7, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	s_sub_i32 s10, 0, s6
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_bfe_u32 v1, v0, 4, 4
	s_mov_b32 s11, 0x31027000
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s7, s7, 0x4f7ffffe
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s31, s11
	v_bfe_i32 v81, v0, 3, 1
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_mad_u64_u32 v[3:4], null, s34, v10, v[1:2]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s7, s7
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[4:5], null, s35, v2, v[9:10]
	v_lshlrev_b32_e32 v83, 4, v0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_i32 s10, s10, s7
	v_or_b32_e32 v80, 0x3f0, v0
	s_mul_hi_u32 s5, s7, s10
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s7, s7, s5
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s30, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_hi_u32 s5, s18, s7
	s_xor_b32 s7, s2, s19
	s_mul_i32 s20, s5, s6
	s_ashr_i32 s17, s7, 31
	s_sub_i32 s7, s18, s20
	s_add_i32 s18, s5, 1
	s_sub_i32 s20, s7, s6
	s_cmp_ge_u32 s7, s6
	v_or_b32_e32 v82, 0x7f0, v0
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s7, s20, s7
	s_add_i32 s18, s5, 1
	s_cmp_ge_u32 s7, s6
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v84, 0, v6
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s5, s18, s5
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s6, s3, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s18, s5, s17
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s7, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s20, s4, 31
.Ltmp13:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s5, s18, s17
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v5, s6, v10
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s7
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s19, s5, s19
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v7, s6, v2
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s7, s4, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 27
.Ltmp17:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s19
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s23, s20, s3
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s4, s7, v5
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 16, v5
	.loc	1 92 13 is_stmt 1               ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	s_mul_i32 s21, s34, s6
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s5, 7
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s5, s7, v7
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s3, 16, v7
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s26, s23, 5
.Ltmp21:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s46, s2, 4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s20, 31
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s22, s35, s6
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_add3_u32 v3, s21, s46, v3
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s4, vcc_lo, s4
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v4, s22, s33, v4
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s5, s3, s5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s4
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s5
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_u8 v3, v3, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b32 v4, v4, s[28:31], 0 offen
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_bfe_i32 v5, v0, 7, 1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v7, 4, v0
	v_add_nc_u32_e32 v79, 0, v10
	s_mov_b64 s[24:25], s[14:15]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s14, s26, -1
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_and_b32_e32 v5, 0x88, v5
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v77, 62, v7
	v_or_b32_e32 v76, 0x7e, v7
	s_mov_b32 s16, 0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lt_i32 s20, 64
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_xor_b32_e32 v5, v5, v11
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v85, 0, v5
	s_waitcnt vmcnt(1)
	ds_store_b8 v85, v3 offset:2048
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v84, v4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_add_i32 s6, s6, 16
	v_dual_mov_b32 v39, 0 :: v_dual_lshlrev_b32 v4, 1, v76
	v_sub_nc_u32_e32 v87, s7, v2
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v2, s6, v2
	v_dual_mov_b32 v74, 0 :: v_dual_and_b32 v3, 0x70, v83
	s_lshl_b32 s0, s17, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v2, s35, v2
	v_subrev_nc_u32_e32 v88, s0, v4
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v4, s46, v10
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v6, s6, v10
	v_and_or_b32 v3, 0x88, v81, v3
	v_mul_lo_u32 v4, s26, v4
	v_dual_mov_b32 v72, 0 :: v_dual_lshlrev_b32 v7, 1, v78
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v6, s34, v6
	v_dual_mov_b32 v69, 0 :: v_dual_lshlrev_b32 v8, 1, v77
	s_lshl_b32 s1, s18, 7
	v_xor_b32_e32 v5, 8, v3
	v_add3_u32 v2, v2, s1, v9
	v_subrev_nc_u32_e32 v89, s0, v7
	v_subrev_nc_u32_e32 v90, s0, v8
	s_lshl_b32 s0, s17, 7
	v_sub_nc_u32_e32 v86, s7, v10
	s_lshl_b32 s7, s18, 8
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_dual_mov_b32 v70, 0 :: v_dual_lshlrev_b32 v91, 1, v4
	v_subrev_nc_u32_e32 v92, s0, v2
	v_add3_u32 v93, v6, s46, v1
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v94, 0, v3
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v95, 0, v5
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v1, s16
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v96, 0, v80
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v97, 0, v82
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v7, s22
	v_mov_b32_e32 v6, s21
	v_mov_b32_e32 v8, s23
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_max_i32 s5, s14, 1
	s_lshl_b32 s15, s35, 1
	s_lshl_b32 s27, s35, 4
	s_lshl_b32 s34, s34, 4
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s10
	s_mov_b32 s43, s11
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s6, v86
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v145, s7, v89
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s1, s6, v87
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s5, s5, -1
	s_add_i32 s6, s6, 16
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s4, s0, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v89, s15, v89
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e64 v98, 0x80000000, v93, s4
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s1, s3
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s5, 0
	v_add_nc_u32_e32 v93, s34, v93
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_u8 v98, v98, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v144, v91, s[36:39], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x5
	buffer_load_u16 v149, v145, s[40:43], 0 offen
	buffer_load_u16 v146, v145, s[40:43], 0 offen offset:4
	buffer_load_u16 v147, v145, s[40:43], 0 offen offset:8
	buffer_load_u16 v148, v145, s[40:43], 0 offen offset:12
	buffer_load_u16 v150, v145, s[40:43], 0 offen offset:16
	buffer_load_u16 v151, v145, s[40:43], 0 offen offset:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v99, v79 offset:640
	ds_load_u8 v100, v79 offset:512
	ds_load_u8 v101, v79 offset:768
	ds_load_u8 v102, v79 offset:784
	ds_load_u8 v103, v79 offset:800
	ds_load_u8 v104, v79 offset:816
	ds_load_u8 v107, v79 offset:832
	ds_load_u8 v105, v79 offset:896
	ds_load_u8 v106, v79 offset:912
	ds_load_u8 v108, v79 offset:928
	ds_load_u8 v109, v79 offset:944
	ds_load_u8 v110, v79 offset:960
	ds_load_u8 v116, v79 offset:976
	ds_load_u8 v125, v79 offset:992
	ds_load_u8 v111, v79 offset:656
	ds_load_u8 v112, v79 offset:672
	ds_load_u8 v113, v79 offset:688
	ds_load_u8 v114, v79 offset:704
	ds_load_u8 v118, v79 offset:720
	ds_load_u8 v124, v79 offset:736
	ds_load_u8 v134, v79 offset:752
	ds_load_u8 v119, v79 offset:528
	ds_load_u8 v120, v79 offset:544
	ds_load_u8 v121, v79 offset:560
	ds_load_u8 v122, v79 offset:576
	ds_load_u8 v123, v79 offset:592
	ds_load_u8 v126, v79 offset:608
	ds_load_u8 v135, v79 offset:624
	ds_load_u8 v127, v79 offset:848
	ds_load_u8 v128, v79 offset:864
	ds_load_u8 v136, v79 offset:880
	ds_load_u8 v129, v79
	ds_load_u8 v130, v79 offset:128
	ds_load_u8 v131, v79 offset:144
	ds_load_u8 v132, v79 offset:160
	ds_load_u8 v133, v79 offset:176
	ds_load_u8 v141, v79 offset:192
	ds_load_u8 v142, v79 offset:208
	ds_load_u8 v143, v79 offset:224
	ds_load_u8 v152, v79 offset:240
	ds_load_u8 v153, v79 offset:16
	ds_load_u8 v154, v79 offset:32
	ds_load_u8 v155, v79 offset:48
	ds_load_u8 v156, v79 offset:64
	ds_load_u8 v157, v79 offset:80
	ds_load_u8 v158, v79 offset:96
	ds_load_u8 v159, v79 offset:112
	ds_load_u8 v160, v79 offset:256
	ds_load_u8 v161, v79 offset:384
	ds_load_u8 v173, v79 offset:336
	ds_load_u8 v174, v79 offset:352
	ds_load_u8 v175, v79 offset:368
	ds_load_u8 v176, v79 offset:1664
	ds_load_u8 v177, v79 offset:1536
	ds_load_u8 v178, v79 offset:1520
	ds_load_u8 v179, v79 offset:1648
	ds_load_u8 v180, v79 offset:1920
	ds_load_u8 v181, v79 offset:1792
	ds_load_u8 v182, v79 offset:1776
	ds_load_u8 v183, v79 offset:1904
	ds_load_u8 v184, v79 offset:1024
	ds_load_u8 v185, v79 offset:1152
	ds_load_u8 v186, v79 offset:1136
	ds_load_u8 v187, v79 offset:1408
	ds_load_u8 v188, v79 offset:1280
	ds_load_u8 v189, v79 offset:1264
	ds_load_u8 v190, v79 offset:1392
	ds_load_u8 v191, v96
	ds_load_u8 v192, v97
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	ds_load_b64 v[137:138], v94 offset:2048
	ds_load_b64 v[139:140], v95 offset:2048
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v193, v79 offset:1552
	ds_load_u8 v194, v79 offset:1680
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v216, v100, v99, 0xc0c0004
	ds_load_u8 v99, v79 offset:1040
	ds_load_u8 v100, v79 offset:1168
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v219, v129, v130, 0xc0c0004
	ds_load_u8 v129, v79 offset:1184
	ds_load_u8 v162, v79 offset:400
	ds_load_u8 v163, v79 offset:416
	ds_load_u8 v164, v79 offset:432
	ds_load_u8 v165, v79 offset:448
	ds_load_u8 v166, v79 offset:464
	ds_load_u8 v167, v79 offset:480
	ds_load_u8 v168, v79 offset:496
	ds_load_u8 v169, v79 offset:272
	ds_load_u8 v170, v79 offset:288
	ds_load_u8 v171, v79 offset:304
	ds_load_u8 v172, v79 offset:320
	ds_load_u8 v195, v79 offset:1696
	ds_load_u8 v196, v79 offset:1712
	ds_load_u8 v197, v79 offset:1728
	ds_load_u8 v198, v79 offset:1744
	ds_load_u8 v199, v79 offset:1760
	ds_load_u8 v200, v79 offset:1568
	ds_load_u8 v201, v79 offset:1584
	ds_load_u8 v202, v79 offset:1600
	ds_load_u8 v203, v79 offset:1616
	ds_load_u8 v204, v79 offset:1632
	ds_load_u8 v205, v79 offset:1936
	ds_load_u8 v206, v79 offset:1808
	ds_load_u8 v207, v79 offset:1824
	ds_load_u8 v208, v79 offset:1840
	ds_load_u8 v209, v79 offset:1856
	ds_load_u8 v210, v79 offset:1872
	ds_load_u8 v211, v79 offset:1888
	ds_load_u8 v212, v79 offset:1952
	ds_load_u8 v213, v79 offset:1968
	ds_load_u8 v214, v79 offset:1984
	ds_load_u8 v215, v79 offset:2000
	v_perm_b32 v218, v101, v105, 0xc0c0004
	ds_load_u8 v101, v79 offset:1296
	ds_load_u8 v130, v79 offset:1200
	ds_load_u8 v105, v79 offset:1424
	ds_load_u8 v223, v79 offset:1360
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v153, v153, v131, 0xc0c0004
	ds_load_u8 v131, v79 offset:1088
	v_perm_b32 v160, v160, v161, 0xc0c0004
	s_waitcnt lgkmcnt(59)
	v_perm_b32 v161, v177, v176, 0xc0c0004
	s_waitcnt lgkmcnt(55)
	v_perm_b32 v176, v181, v180, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v180, v188, v187, 0xc0c0004
	v_perm_b32 v187, v102, v106, 0xc0c0004
	ds_load_u8 v102, v79 offset:1056
	v_perm_b32 v177, v184, v185, 0xc0c0004
	v_perm_b32 v184, v119, v111, 0xc0c0004
	ds_load_u8 v106, v79 offset:1440
	ds_load_u8 v111, v79 offset:1312
	ds_load_u8 v181, v79 offset:1216
	ds_load_u8 v185, v79 offset:1232
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v162, v169, v162, 0xc0c0004
	v_perm_b32 v194, v193, v194, 0xc0c0004
	ds_load_u8 v119, v79 offset:1072
	ds_load_u8 v169, v79 offset:1104
	ds_load_u8 v193, v79 offset:1120
	v_perm_b32 v221, v120, v112, 0xc0c0004
	v_perm_b32 v222, v103, v108, 0xc0c0004
	ds_load_u8 v120, v79 offset:1472
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v163, v170, v163, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v170, v200, v195, 0xc0c0004
	ds_load_u8 v108, v79 offset:1328
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v195, v207, v212, 0xc0c0004
	ds_load_u8 v200, v79 offset:1504
	ds_load_u8 v225, v79 offset:1376
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v207, v102, v129, 0xc0c0004
	ds_load_u8 v129, v79 offset:1344
	ds_load_u8 v188, v79 offset:1248
	v_perm_b32 v205, v206, v205, 0xc0c0004
	v_perm_b32 v206, v99, v100, 0xc0c0004
	v_perm_b32 v220, v101, v105, 0xc0c0004
	v_perm_b32 v154, v154, v132, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v212, v111, v106, 0xc0c0004
	v_perm_b32 v155, v155, v133, 0xc0c0004
	v_perm_b32 v164, v171, v164, 0xc0c0004
	v_perm_b32 v156, v156, v141, 0xc0c0004
	v_perm_b32 v165, v172, v165, 0xc0c0004
	v_perm_b32 v157, v157, v142, 0xc0c0004
	v_perm_b32 v166, v173, v166, 0xc0c0004
	v_perm_b32 v143, v158, v143, 0xc0c0004
	v_perm_b32 v158, v174, v167, 0xc0c0004
	v_perm_b32 v152, v159, v152, 0xc0c0004
	v_perm_b32 v159, v175, v168, 0xc0c0004
	v_lshl_or_b32 v142, v218, 16, v216
	v_lshl_or_b32 v141, v160, 16, v219
	v_perm_b32 v171, v201, v196, 0xc0c0004
	v_perm_b32 v172, v202, v197, 0xc0c0004
	v_perm_b32 v173, v203, v198, 0xc0c0004
	v_perm_b32 v198, v210, v215, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v210, v169, v185, 0xc0c0004
	v_perm_b32 v167, v204, v199, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v193, v188, 0xc0c0004
	v_perm_b32 v199, v225, v200, 0xc0c0004
	v_perm_b32 v179, v179, v182, 0xc0c0004
	v_perm_b32 v182, v183, v192, 0xc0c0004
	v_lshl_or_b32 v193, v176, 16, v161
	v_lshl_or_b32 v192, v180, 16, v177
	v_lshl_or_b32 v169, v187, 16, v184
	v_lshl_or_b32 v168, v162, 16, v153
	v_lshl_or_b32 v201, v205, 16, v194
	v_lshl_or_b32 v200, v220, 16, v206
	v_lshl_or_b32 v176, v163, 16, v154
	v_lshl_or_b32 v202, v212, 16, v207
	v_lshl_or_b32 v184, v164, 16, v155
	v_lshl_or_b32 v194, v165, 16, v156
	v_lshl_or_b32 v206, v166, 16, v157
	v_lshl_or_b32 v212, v158, 16, v143
	v_lshl_or_b32 v218, v159, 16, v152
	v_wmma_i32_16x16x16_iu4 v[152:159], v[141:142], v[137:138], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v227, v122, v114, 0xc0c0004
	v_perm_b32 v228, v107, v110, 0xc0c0004
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v99, v145, s[40:43], 0 offen offset:24
	buffer_load_u16 v100, v145, s[40:43], 0 offen offset:28
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[152:159], v[192:193], v[139:140], v[152:159] neg_lo:[1,1,0]
	v_lshl_or_b32 v203, v195, 16, v170
	v_lshl_or_b32 v195, v228, 16, v227
	ds_load_u8 v105, v79 offset:1456
	ds_load_u8 v217, v79 offset:2016
	ds_load_u8 v132, v79 offset:1488
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v226, v104, v109, 0xc0c0004
	v_perm_b32 v196, v208, v213, 0xc0c0004
	v_perm_b32 v224, v121, v113, 0xc0c0004
	v_perm_b32 v229, v123, v118, 0xc0c0004
	v_perm_b32 v230, v127, v116, 0xc0c0004
	v_perm_b32 v208, v119, v130, 0xc0c0004
	v_perm_b32 v197, v209, v214, 0xc0c0004
	v_perm_b32 v181, v131, v181, 0xc0c0004
	v_perm_b32 v214, v129, v120, 0xc0c0004
	v_perm_b32 v231, v128, v125, 0xc0c0004
	v_perm_b32 v175, v135, v134, 0xc0c0004
	v_perm_b32 v191, v136, v191, 0xc0c0004
	v_perm_b32 v186, v186, v189, 0xc0c0004
	v_perm_b32 v178, v190, v178, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v213, v108, v105, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v174, v211, v217, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v215, v223, v132, 0xc0c0004
	v_perm_b32 v223, v126, v124, 0xc0c0004
	v_lshl_or_b32 v177, v222, 16, v221
	v_lshl_or_b32 v185, v226, 16, v224
	v_lshl_or_b32 v217, v174, 16, v167
	v_wmma_i32_16x16x16_iu4 v[160:167], v[168:169], v[137:138], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v207, v230, 16, v229
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v155, v155
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v205, v196, 16, v171
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[160:167], v[200:201], v[139:140], v[160:167] neg_lo:[1,1,0]
	v_lshl_or_b32 v204, v213, 16, v208
	v_lshl_or_b32 v209, v197, 16, v172
	v_lshl_or_b32 v208, v214, 16, v181
	v_lshl_or_b32 v211, v198, 16, v173
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v162, v162
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v213, v231, 16, v223
	v_lshl_or_b32 v219, v191, 16, v175
	v_lshl_or_b32 v220, v178, 16, v186
	v_lshl_or_b32 v221, v182, 16, v179
	v_wmma_i32_16x16x16_iu4 v[168:175], v[176:177], v[137:138], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[176:183], v[184:185], v[137:138], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v210, v215, 16, v210
	v_lshl_or_b32 v216, v199, 16, v188
	v_wmma_i32_16x16x16_iu4 v[184:191], v[194:195], v[137:138], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[192:199], v[206:207], v[137:138], v[1:8] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v156, v156
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[168:175], v[202:203], v[139:140], v[168:175] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[176:183], v[204:205], v[139:140], v[176:183] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[200:207], v[212:213], v[137:138], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[184:191], v[208:209], v[139:140], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[192:199], v[210:211], v[139:140], v[192:199] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[208:215], v[218:219], v[137:138], v[1:8] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v165, v165
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[200:207], v[216:217], v[139:140], v[200:207] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[208:215], v[220:221], v[139:140], v[208:215] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v217, v205
	v_cvt_f32_i32_e32 v218, v206
	v_cvt_f32_i32_e32 v219, v207
	v_cvt_f32_i32_e32 v220, v208
	v_cvt_f32_i32_e32 v216, v204
	v_cvt_f32_i32_e32 v221, v209
	v_cvt_f32_i32_e32 v222, v210
	v_cvt_f32_i32_e32 v223, v211
	v_cvt_f32_i32_e32 v224, v212
	v_cvt_f32_i32_e32 v225, v213
	v_cvt_f32_i32_e32 v226, v214
	v_cvt_f32_i32_e32 v227, v215
	v_cvt_f32_i32_e32 v177, v177
	v_cvt_f32_i32_e32 v190, v190
	v_cvt_f32_i32_e32 v203, v203
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v175, v175
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v178, v178
	v_cvt_f32_i32_e32 v179, v179
	v_cvt_f32_i32_e32 v180, v180
	v_cvt_f32_i32_e32 v181, v181
	v_cvt_f32_i32_e32 v182, v182
	v_cvt_f32_i32_e32 v183, v183
	v_cvt_f32_i32_e32 v184, v184
	v_cvt_f32_i32_e32 v185, v185
	v_cvt_f32_i32_e32 v186, v186
	v_cvt_f32_i32_e32 v187, v187
	v_cvt_f32_i32_e32 v188, v188
	v_cvt_f32_i32_e32 v189, v189
	v_cvt_f32_i32_e32 v191, v191
	v_cvt_f32_i32_e32 v192, v192
	v_cvt_f32_i32_e32 v194, v194
	v_cvt_f32_i32_e32 v195, v195
	v_cvt_f32_i32_e32 v196, v196
	v_cvt_f32_i32_e32 v198, v198
	v_cvt_f32_i32_e32 v199, v199
	v_cvt_f32_i32_e32 v200, v200
	v_cvt_f32_i32_e32 v202, v202
	v_cvt_f32_i32_e32 v193, v193
	v_cvt_f32_i32_e32 v197, v197
	v_cvt_f32_i32_e32 v201, v201
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v91, 2, v91
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v146, 16, v146
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v228, 16, v144
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v144, 16, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v149, v152, v228
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v39, v149, v144
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v149, v153, v228
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v75, v149, v146 :: v_dual_lshlrev_b32 v146, 16, v147
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v147, v154, v228
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v115, s7, v90
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v90, s15, v90
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v152, v165, v228
	v_mul_f32_e32 v154, v167, v228
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v74, v147, v146
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0xf
	buffer_load_u16 v101, v145, s[40:43], 0 offen offset:32
	buffer_load_u16 v102, v145, s[40:43], 0 offen offset:36
	buffer_load_u16 v103, v145, s[40:43], 0 offen offset:40
	buffer_load_u16 v104, v145, s[40:43], 0 offen offset:44
	buffer_load_u16 v105, v145, s[40:43], 0 offen offset:48
	buffer_load_u16 v106, v145, s[40:43], 0 offen offset:52
	buffer_load_u16 v107, v145, s[40:43], 0 offen offset:56
	buffer_load_u16 v108, v145, s[40:43], 0 offen offset:60
	buffer_load_u16 v109, v145, s[40:43], 0 offen offset:64
	buffer_load_u16 v110, v145, s[40:43], 0 offen offset:68
	buffer_load_u16 v111, v145, s[40:43], 0 offen offset:72
	buffer_load_u16 v112, v145, s[40:43], 0 offen offset:76
	buffer_load_u16 v113, v145, s[40:43], 0 offen offset:80
	buffer_load_u16 v114, v145, s[40:43], 0 offen offset:84
	buffer_load_u16 v116, v145, s[40:43], 0 offen offset:88
	buffer_load_u16 v118, v145, s[40:43], 0 offen offset:92
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v147, v155, v228
	v_mul_f32_e32 v149, v162, v228
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1f
	buffer_load_u16 v119, v145, s[40:43], 0 offen offset:96
	buffer_load_u16 v120, v145, s[40:43], 0 offen offset:100
	buffer_load_u16 v121, v145, s[40:43], 0 offen offset:104
	buffer_load_u16 v122, v145, s[40:43], 0 offen offset:108
	buffer_load_u16 v123, v145, s[40:43], 0 offen offset:112
	buffer_load_u16 v124, v145, s[40:43], 0 offen offset:116
	buffer_load_u16 v125, v145, s[40:43], 0 offen offset:120
	buffer_load_u16 v128, v145, s[40:43], 0 offen offset:132
	buffer_load_u16 v129, v145, s[40:43], 0 offen offset:136
	buffer_load_u16 v130, v145, s[40:43], 0 offen offset:140
	buffer_load_u16 v131, v145, s[40:43], 0 offen offset:144
	buffer_load_u16 v132, v145, s[40:43], 0 offen offset:148
	buffer_load_u16 v133, v145, s[40:43], 0 offen offset:152
	buffer_load_u16 v134, v145, s[40:43], 0 offen offset:156
	buffer_load_u16 v135, v145, s[40:43], 0 offen offset:160
	buffer_load_u16 v136, v145, s[40:43], 0 offen offset:164
	buffer_load_u16 v137, v145, s[40:43], 0 offen offset:168
	buffer_load_u16 v138, v145, s[40:43], 0 offen offset:172
	buffer_load_u16 v139, v145, s[40:43], 0 offen offset:176
	buffer_load_u16 v140, v145, s[40:43], 0 offen offset:180
	buffer_load_u16 v141, v145, s[40:43], 0 offen offset:184
	buffer_load_u16 v142, v145, s[40:43], 0 offen offset:188
	buffer_load_u16 v143, v145, s[40:43], 0 offen offset:192
	buffer_load_u16 v205, v145, s[40:43], 0 offen offset:204
	buffer_load_u16 v206, v145, s[40:43], 0 offen offset:208
	buffer_load_u16 v207, v145, s[40:43], 0 offen offset:212
	buffer_load_u16 v208, v145, s[40:43], 0 offen offset:216
	buffer_load_u16 v144, v145, s[40:43], 0 offen offset:196
	buffer_load_u16 v204, v145, s[40:43], 0 offen offset:200
	buffer_load_u16 v209, v145, s[40:43], 0 offen offset:220
	buffer_load_u16 v210, v145, s[40:43], 0 offen offset:224
	buffer_load_u16 v211, v145, s[40:43], 0 offen offset:228
	s_clause 0x3
	buffer_load_u16 v212, v145, s[40:43], 0 offen offset:232
	buffer_load_u16 v213, v145, s[40:43], 0 offen offset:236
	buffer_load_u16 v214, v145, s[40:43], 0 offen offset:240
	buffer_load_u16 v215, v145, s[40:43], 0 offen offset:244
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v153, v166, v228
	v_mul_f32_e32 v162, v175, v228
	v_mul_f32_e32 v165, v178, v228
	v_mul_f32_e32 v166, v179, v228
	v_mul_f32_e32 v167, v180, v228
	v_mul_f32_e32 v178, v191, v228
	s_waitcnt vmcnt(53)
	v_dual_mul_f32 v180, v193, v228 :: v_dual_lshlrev_b32 v99, 16, v99
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(51)
	v_lshlrev_b32_e32 v101, 16, v101
	s_waitcnt vmcnt(50)
	v_lshlrev_b32_e32 v102, 16, v102
	v_lshlrev_b32_e32 v146, 16, v148
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(47)
	v_dual_mul_f32 v148, v161, v228 :: v_dual_lshlrev_b32 v105, 16, v105
	s_waitcnt vmcnt(46)
	v_dual_mul_f32 v161, v174, v228 :: v_dual_lshlrev_b32 v106, 16, v106
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v174, v187, v228 :: v_dual_fmac_f32 v67, v148, v102
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v73, v147, v146
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v147, v156, v228 :: v_dual_lshlrev_b32 v146, 16, v150
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v117, s7, v88
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v150, v163, v228
	v_mul_f32_e32 v156, v169, v228
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(36)
	v_lshlrev_b32_e32 v118, 16, v118
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v72, v147, v146
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v147, v157, v228 :: v_dual_lshlrev_b32 v146, 16, v151
	v_mul_f32_e32 v151, v164, v228
	v_mul_f32_e32 v164, v177, v228
	v_mul_f32_e32 v177, v190, v228
	v_mul_f32_e32 v190, v203, v228
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v71, v147, v146
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v146, v159, v228
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x3
	buffer_load_u16 v126, v145, s[40:43], 0 offen offset:128
	buffer_load_u16 v127, v115, s[40:43], 0 offen
	buffer_load_u16 v115, v117, s[40:43], 0 offen
	buffer_load_u16 v117, v145, s[40:43], 0 offen offset:248
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v203, 0x80000000, v92, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v145, v158, v228 :: v_dual_lshlrev_b32 v110, 16, v110
	v_dual_mul_f32 v147, v160, v228 :: v_dual_lshlrev_b32 v114, 16, v114
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b32 v203, v203, s[28:31], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v155, v168, v228
	s_waitcnt vmcnt(31)
	v_dual_mul_f32 v157, v170, v228 :: v_dual_lshlrev_b32 v130, 16, v130
	v_mul_f32_e32 v158, v171, v228
	s_waitcnt vmcnt(27)
	v_dual_mul_f32 v159, v172, v228 :: v_dual_lshlrev_b32 v134, 16, v134
	v_mul_f32_e32 v160, v173, v228
	s_waitcnt vmcnt(19)
	v_dual_mul_f32 v163, v176, v228 :: v_dual_lshlrev_b32 v142, 16, v142
	v_dual_mul_f32 v168, v181, v228 :: v_dual_lshlrev_b32 v109, 16, v109
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v169, v182, v228 :: v_dual_lshlrev_b32 v214, 16, v214
	v_dual_mul_f32 v170, v183, v228 :: v_dual_lshlrev_b32 v111, 16, v111
	v_dual_mul_f32 v171, v184, v228 :: v_dual_fmac_f32 v70, v145, v99
	v_dual_mul_f32 v172, v185, v228 :: v_dual_lshlrev_b32 v113, 16, v113
	v_dual_mul_f32 v173, v186, v228 :: v_dual_fmac_f32 v68, v147, v101
	v_dual_mul_f32 v176, v189, v228 :: v_dual_lshlrev_b32 v121, 16, v121
	v_mul_f32_e32 v182, v195, v228
	v_dual_mul_f32 v183, v196, v228 :: v_dual_fmac_f32 v58, v157, v111
	v_dual_mul_f32 v185, v198, v228 :: v_dual_fmac_f32 v56, v159, v113
	v_dual_mul_f32 v186, v199, v228 :: v_dual_lshlrev_b32 v131, 16, v131
	v_dual_mul_f32 v196, v221, v228 :: v_dual_lshlrev_b32 v141, 16, v141
	v_dual_mul_f32 v198, v223, v228 :: v_dual_lshlrev_b32 v143, 16, v143
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v103, 16, v103
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v175, v188, v228
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v107, 16, v107
	v_lshlrev_b32_e32 v119, 16, v119
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v187, v200, v228 :: v_dual_lshlrev_b32 v122, 16, v122
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v179, v192, v228 :: v_dual_fmac_f32 v62, v153, v107
	v_dual_mul_f32 v192, v217, v228 :: v_dual_lshlrev_b32 v137, 16, v137
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v123, 16, v123
	v_lshlrev_b32_e32 v138, 16, v138
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v189, v202, v228 :: v_dual_lshlrev_b32 v206, 16, v206
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v50, v165, v121
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v202, v227, v228 :: v_dual_lshlrev_b32 v207, 16, v207
	v_dual_mul_f32 v184, v197, v228 :: v_dual_lshlrev_b32 v129, 16, v129
	v_dual_mul_f32 v188, v201, v228 :: v_dual_lshlrev_b32 v133, 16, v133
	v_mul_f32_e32 v197, v222, v228
	v_dual_mul_f32 v200, v225, v228 :: v_dual_lshlrev_b32 v205, 16, v205
	v_dual_mul_f32 v201, v226, v228 :: v_dual_fmac_f32 v22, v192, v207
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v55, v160, v114 :: v_dual_lshlrev_b32 v100, 16, v100
	v_dual_fmac_f32 v53, v162, v118 :: v_dual_lshlrev_b32 v104, 16, v104
	v_dual_fmac_f32 v49, v166, v122 :: v_dual_lshlrev_b32 v108, 16, v108
	v_dual_fmac_f32 v41, v174, v130 :: v_dual_lshlrev_b32 v116, 16, v116
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v125, 16, v125
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v193, v218, v228
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v135, 16, v135
	v_lshlrev_b32_e32 v124, 16, v124
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v29, v185, v141 :: v_dual_lshlrev_b32 v136, 16, v136
	v_dual_fmac_f32 v54, v161, v116 :: v_dual_lshlrev_b32 v209, 16, v209
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v191, v216, v228 :: v_dual_lshlrev_b32 v210, 16, v210
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v48, v167, v123
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v144, 16, v144
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v36, v178, v134 :: v_dual_lshlrev_b32 v213, 16, v213
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v34, v180, v136 :: v_dual_lshlrev_b32 v215, 16, v215
	v_dual_fmac_f32 v66, v149, v103 :: v_dual_mul_f32 v199, v224, v228
	v_fmac_f32_e32 v40, v175, v131
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v208, 16, v208
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v64, v151, v105
	v_dual_fmac_f32 v37, v177, v133 :: v_dual_lshlrev_b32 v120, 16, v120
	v_fmac_f32_e32 v52, v163, v119
	v_dual_fmac_f32 v27, v187, v143 :: v_dual_lshlrev_b32 v140, 16, v140
	v_dual_fmac_f32 v63, v152, v106 :: v_dual_add_nc_u32 v88, s15, v88
	v_dual_fmac_f32 v59, v156, v110 :: v_dual_add_nc_u32 v92, s27, v92
	v_dual_fmac_f32 v65, v150, v104 :: v_dual_fmac_f32 v14, v200, v215
	v_fmac_f32_e32 v61, v154, v108
	v_dual_fmac_f32 v51, v164, v120 :: v_dual_fmac_f32 v28, v186, v142
	v_fmac_f32_e32 v46, v169, v125
	v_dual_fmac_f32 v42, v173, v129 :: v_dual_fmac_f32 v35, v179, v135
	v_dual_fmac_f32 v47, v168, v124 :: v_dual_fmac_f32 v24, v190, v205
	v_dual_fmac_f32 v23, v191, v206 :: v_dual_fmac_f32 v26, v188, v144
	v_fmac_f32_e32 v15, v199, v214
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v139, 16, v139
	v_lshlrev_b32_e32 v132, 16, v132
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	ds_store_b8 v85, v98 offset:2048
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v84, v203
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v181, v194, v228 :: v_dual_lshlrev_b32 v126, 16, v126
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v60, v155, v109
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v194, v219, v228
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v195, v220, v228 :: v_dual_fmac_f32 v44, v171, v126
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v127, 16, v127
	v_lshlrev_b32_e32 v112, 16, v112
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v33, v181, v137 :: v_dual_lshlrev_b32 v128, 16, v128
	v_dual_fmac_f32 v19, v195, v210 :: v_dual_lshlrev_b32 v204, 16, v204
	v_dual_fmac_f32 v32, v182, v138 :: v_dual_lshlrev_b32 v117, 16, v117
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v212, 16, v212
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v30, v184, v140 :: v_dual_lshlrev_b32 v115, 16, v115
	v_fmac_f32_e32 v31, v183, v139
	v_dual_fmac_f32 v38, v176, v132 :: v_dual_lshlrev_b32 v211, 16, v211
	v_fmac_f32_e32 v69, v146, v100
	v_fmac_f32_e32 v45, v170, v127
	v_fmac_f32_e32 v57, v158, v112
	v_dual_fmac_f32 v43, v172, v128 :: v_dual_fmac_f32 v20, v194, v209
	v_dual_fmac_f32 v25, v189, v204 :: v_dual_fmac_f32 v16, v198, v213
	v_dual_fmac_f32 v21, v193, v208 :: v_dual_fmac_f32 v12, v202, v115
	v_dual_fmac_f32 v18, v196, v211 :: v_dual_fmac_f32 v13, v201, v117
	v_fmac_f32_e32 v17, v197, v212
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow229
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v4, 0x1e0, v0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_mov_b32_e32 v140, 0
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	ds_load_u8 v2, v79 offset:640
	ds_load_u8 v3, v79 offset:512
	ds_load_u8 v5, v79 offset:896
	ds_load_u8 v6, v79 offset:768
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s4, 0
	v_add_nc_u32_e32 v150, 0, v80
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v140, s11 :: v_dual_and_b32 v1, 0x70, v83
	v_dual_mov_b32 v139, s10 :: v_dual_add_nc_u32 v122, 0, v82
	v_mov_b32_e32 v137, s8
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_and_or_b32 v1, 0x88, v81, v1
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v138, s9 :: v_dual_mov_b32 v135, s6
	v_dual_mov_b32 v136, s7 :: v_dual_mov_b32 v133, s4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_xad_u32 v7, v1, 8, 0
	v_add_nc_u32_e32 v8, 0, v1
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v6, v5, 0xc0c0004
	ds_load_u8 v82, v79 offset:128
	ds_load_u8 v83, v79
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	ds_load_b64 v[1:2], v7 offset:2048
	ds_load_b64 v[5:6], v8 offset:2048
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v134, s5
	ds_load_u8 v88, v79 offset:656
	ds_load_u8 v96, v79 offset:672
	ds_load_u8 v108, v79 offset:688
	ds_load_u8 v109, v79 offset:704
	ds_load_u8 v112, v79 offset:720
	ds_load_u8 v123, v79 offset:736
	ds_load_u8 v132, v79 offset:752
	ds_load_u8 v89, v79 offset:528
	ds_load_u8 v97, v79 offset:544
	ds_load_u8 v110, v79 offset:560
	ds_load_u8 v111, v79 offset:576
	ds_load_u8 v113, v79 offset:592
	ds_load_u8 v124, v79 offset:608
	ds_load_u8 v151, v79 offset:624
	ds_load_u8 v90, v79 offset:1024
	ds_load_u8 v91, v79 offset:912
	ds_load_u8 v98, v79 offset:928
	ds_load_u8 v114, v79 offset:944
	ds_load_u8 v115, v79 offset:960
	ds_load_u8 v116, v79 offset:976
	ds_load_u8 v125, v79 offset:992
	ds_load_u8 v92, v79 offset:784
	ds_load_u8 v99, v79 offset:800
	ds_load_u8 v117, v79 offset:816
	ds_load_u8 v118, v79 offset:832
	ds_load_u8 v119, v79 offset:848
	ds_load_u8 v126, v79 offset:864
	ds_load_u8 v152, v79 offset:880
	v_lshl_or_b32 v8, v81, 16, v3
	ds_load_u8 v3, v79 offset:384
	ds_load_u8 v7, v79 offset:256
	ds_load_u8 v93, v79 offset:144
	ds_load_u8 v100, v79 offset:160
	ds_load_u8 v120, v79 offset:176
	ds_load_u8 v121, v79 offset:192
	ds_load_u8 v127, v79 offset:208
	ds_load_u8 v141, v79 offset:224
	ds_load_u8 v153, v79 offset:240
	ds_load_u8 v94, v79 offset:16
	ds_load_u8 v101, v79 offset:32
	ds_load_u8 v128, v79 offset:48
	ds_load_u8 v129, v79 offset:64
	ds_load_u8 v130, v79 offset:80
	ds_load_u8 v142, v79 offset:96
	ds_load_u8 v154, v79 offset:112
	ds_load_u8 v95, v79 offset:400
	ds_load_u8 v102, v79 offset:416
	ds_load_u8 v131, v79 offset:432
	ds_load_u8 v143, v79 offset:448
	ds_load_u8 v144, v79 offset:464
	ds_load_u8 v145, v79 offset:480
	ds_load_u8 v155, v79 offset:496
	ds_load_u8 v103, v79 offset:272
	ds_load_u8 v106, v79 offset:288
	ds_load_u8 v146, v79 offset:304
	ds_load_u8 v147, v79 offset:320
	ds_load_u8 v148, v79 offset:336
	ds_load_u8 v149, v79 offset:352
	ds_load_u8 v156, v79 offset:368
	ds_load_u8 v184, v79 offset:1040
	ds_load_u8 v185, v79 offset:1056
	ds_load_u8 v186, v79 offset:1072
	ds_load_u8 v187, v79 offset:1088
	ds_load_u8 v188, v79 offset:1104
	ds_load_u8 v189, v79 offset:1120
	ds_load_u8 v190, v79 offset:1136
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v3, v7, v3, 0xc0c0004
	v_perm_b32 v88, v89, v88, 0xc0c0004
	v_perm_b32 v89, v92, v91, 0xc0c0004
	v_perm_b32 v81, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v91, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v92, v103, v95, 0xc0c0004
	ds_load_u8 v103, v79 offset:1936
	ds_load_u8 v191, v79 offset:1168
	ds_load_u8 v192, v79 offset:1184
	ds_load_u8 v193, v79 offset:1200
	ds_load_u8 v194, v79 offset:1216
	ds_load_u8 v195, v79 offset:1232
	ds_load_u8 v196, v79 offset:1248
	ds_load_u8 v197, v79 offset:1264
	ds_load_u8 v198, v79 offset:1296
	ds_load_u8 v199, v79 offset:1312
	ds_load_u8 v200, v79 offset:1328
	ds_load_u8 v201, v79 offset:1344
	ds_load_u8 v202, v79 offset:1360
	ds_load_u8 v203, v79 offset:1376
	ds_load_u8 v204, v79 offset:1392
	v_perm_b32 v96, v97, v96, 0xc0c0004
	v_lshl_or_b32 v7, v3, 16, v81
	ds_load_u8 v3, v79 offset:1664
	ds_load_u8 v104, v79 offset:1536
	v_perm_b32 v97, v99, v98, 0xc0c0004
	v_perm_b32 v98, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v99, v106, v102, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[80:87], v[7:8], v[5:6], v[133:140] neg_lo:[1,1,0]
	ds_load_u8 v7, v79 offset:1920
	ds_load_u8 v8, v79 offset:1792
	ds_load_u8 v107, v79 offset:1424
	ds_load_u8 v157, v79 offset:1440
	ds_load_u8 v158, v79 offset:1456
	ds_load_u8 v159, v79 offset:1472
	ds_load_u8 v160, v79 offset:1488
	ds_load_u8 v161, v79 offset:1504
	ds_load_u8 v162, v79 offset:1520
	ds_load_u8 v163, v79 offset:1552
	ds_load_u8 v164, v79 offset:1568
	ds_load_u8 v165, v79 offset:1584
	ds_load_u8 v166, v79 offset:1600
	ds_load_u8 v167, v79 offset:1616
	ds_load_u8 v168, v79 offset:1632
	ds_load_u8 v169, v79 offset:1648
	v_perm_b32 v115, v118, v115, 0xc0c0004
	v_lshl_or_b32 v106, v99, 16, v98
	v_perm_b32 v118, v129, v121, 0xc0c0004
	s_waitcnt lgkmcnt(43)
	v_perm_b32 v129, v147, v143, 0xc0c0004
	v_perm_b32 v147, v119, v116, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v105, v8, v7, 0xc0c0004
	ds_load_u8 v7, v79 offset:1408
	ds_load_u8 v8, v79 offset:1280
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v100, v198, v107, 0xc0c0004
	v_lshl_or_b32 v107, v97, 16, v96
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v157, v199, v157, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v143, v201, v159, 0xc0c0004
	v_perm_b32 v127, v130, v127, 0xc0c0004
	v_perm_b32 v130, v148, v144, 0xc0c0004
	v_perm_b32 v3, v104, v3, 0xc0c0004
	ds_load_u8 v104, v79 offset:1152
	ds_load_u8 v170, v79 offset:1680
	ds_load_u8 v171, v79 offset:1696
	ds_load_u8 v172, v79 offset:1712
	ds_load_u8 v173, v79 offset:1728
	ds_load_u8 v174, v79 offset:1744
	ds_load_u8 v175, v79 offset:1760
	ds_load_u8 v176, v79 offset:1776
	ds_load_u8 v177, v79 offset:1808
	ds_load_u8 v178, v79 offset:1824
	ds_load_u8 v179, v79 offset:1840
	ds_load_u8 v180, v79 offset:1856
	ds_load_u8 v181, v79 offset:1872
	ds_load_u8 v182, v79 offset:1888
	ds_load_u8 v183, v79 offset:1904
	v_perm_b32 v132, v151, v132, 0xc0c0004
	v_lshl_or_b32 v130, v130, 16, v127
	v_lshl_or_b32 v105, v105, 16, v3
	ds_load_u8 v3, v79 offset:1952
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v90, v90, v104, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v164, v164, v171, 0xc0c0004
	v_perm_b32 v171, v185, v192, 0xc0c0004
	v_perm_b32 v93, v8, v7, 0xc0c0004
	v_lshl_or_b32 v8, v89, 16, v88
	v_lshl_or_b32 v7, v92, 16, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v104, v93, 16, v90
	v_wmma_i32_16x16x16_iu4 v[88:95], v[7:8], v[5:6], v[133:140] neg_lo:[1,1,0]
	v_perm_b32 v7, v163, v170, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v8, v177, v103, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[80:87], v[104:105], v[1:2], v[80:87] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v8, v8, 16, v7
	v_perm_b32 v7, v184, v191, 0xc0c0004
	v_lshl_or_b32 v7, v100, 16, v7
	v_wmma_i32_16x16x16_iu4 v[96:103], v[106:107], v[5:6], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v157, 16, v171
	ds_load_u8 v157, v150
	ds_load_u8 v163, v79 offset:1968
	ds_load_u8 v170, v79 offset:1984
	ds_load_u8 v205, v79 offset:2000
	ds_load_u8 v79, v79 offset:2016
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v3, v178, v3, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[88:95], v[7:8], v[1:2], v[88:95] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v107, v3, 16, v164
	v_perm_b32 v3, v110, v108, 0xc0c0004
	v_perm_b32 v108, v117, v114, 0xc0c0004
	v_perm_b32 v110, v128, v120, 0xc0c0004
	v_perm_b32 v114, v146, v131, 0xc0c0004
	v_perm_b32 v117, v186, v193, 0xc0c0004
	v_perm_b32 v120, v200, v158, 0xc0c0004
	v_lshl_or_b32 v8, v108, 16, v3
	v_perm_b32 v128, v111, v109, 0xc0c0004
	v_lshl_or_b32 v7, v114, 16, v110
	v_wmma_i32_16x16x16_iu4 v[96:103], v[106:107], v[1:2], v[96:103] neg_lo:[1,1,0]
	v_perm_b32 v3, v165, v172, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v114, v179, v163, 0xc0c0004
	v_lshl_or_b32 v121, v115, 16, v128
	v_wmma_i32_16x16x16_iu4 v[104:111], v[7:8], v[5:6], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v7, v120, 16, v117
	v_lshl_or_b32 v120, v129, 16, v118
	ds_load_u8 v158, v122
	v_lshl_or_b32 v8, v114, 16, v3
	v_perm_b32 v3, v166, v173, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v128, v180, v170, 0xc0c0004
	v_perm_b32 v131, v187, v194, 0xc0c0004
	v_perm_b32 v146, v113, v112, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[112:119], v[120:121], v[5:6], v[133:140] neg_lo:[1,1,0]
	v_perm_b32 v120, v124, v123, 0xc0c0004
	v_perm_b32 v121, v126, v125, 0xc0c0004
	v_perm_b32 v123, v142, v141, 0xc0c0004
	v_perm_b32 v124, v149, v145, 0xc0c0004
	v_lshl_or_b32 v129, v128, 16, v3
	v_lshl_or_b32 v128, v143, 16, v131
	v_lshl_or_b32 v131, v147, 16, v146
	v_perm_b32 v3, v167, v174, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v141, v181, v205, 0xc0c0004
	v_perm_b32 v142, v188, v195, 0xc0c0004
	v_perm_b32 v143, v202, v160, 0xc0c0004
	v_lshl_or_b32 v150, v121, 16, v120
	v_lshl_or_b32 v149, v124, 16, v123
	v_wmma_i32_16x16x16_iu4 v[120:127], v[130:131], v[5:6], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v131, v141, 16, v3
	v_lshl_or_b32 v130, v143, 16, v142
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[141:148], v[149:150], v[5:6], v[133:140] neg_lo:[1,1,0]
	v_perm_b32 v149, v154, v153, 0xc0c0004
	v_perm_b32 v150, v156, v155, 0xc0c0004
	v_perm_b32 v151, v152, v157, 0xc0c0004
	v_perm_b32 v3, v168, v175, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v79, v182, v79, 0xc0c0004
	v_perm_b32 v153, v189, v196, 0xc0c0004
	v_perm_b32 v154, v203, v161, 0xc0c0004
	v_lshl_or_b32 v149, v150, 16, v149
	v_lshl_or_b32 v150, v151, 16, v132
	v_perm_b32 v132, v190, v197, 0xc0c0004
	v_perm_b32 v155, v204, v162, 0xc0c0004
	v_perm_b32 v156, v169, v176, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v183, v158, 0xc0c0004
	v_lshl_or_b32 v152, v79, 16, v3
	v_lshl_or_b32 v151, v154, 16, v153
	v_wmma_i32_16x16x16_iu4 v[133:140], v[149:150], v[5:6], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v5, v155, 16, v132
	v_lshl_or_b32 v6, v157, 16, v156
	v_wmma_i32_16x16x16_iu4 v[104:111], v[7:8], v[1:2], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[112:119], v[128:129], v[1:2], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[120:127], v[130:131], v[1:2], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[141:148], v[151:152], v[1:2], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[5:6], v[1:2], v[133:140] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v1, v80
	v_cvt_f32_i32_e32 v2, v81
	v_cvt_f32_i32_e32 v3, v82
	v_cvt_f32_i32_e32 v5, v83
	v_cvt_f32_i32_e32 v6, v84
	v_cvt_f32_i32_e32 v7, v85
	v_cvt_f32_i32_e32 v8, v86
	v_cvt_f32_i32_e32 v84, v87
	v_cvt_f32_i32_e32 v85, v88
	v_cvt_f32_i32_e32 v86, v89
	v_cvt_f32_i32_e32 v87, v90
	v_cvt_f32_i32_e32 v88, v91
	v_cvt_f32_i32_e32 v89, v92
	v_cvt_f32_i32_e32 v90, v93
	v_cvt_f32_i32_e32 v91, v94
	v_cvt_f32_i32_e32 v92, v95
	v_cvt_f32_i32_e32 v93, v96
	v_cvt_f32_i32_e32 v94, v97
	v_cvt_f32_i32_e32 v95, v98
	v_cvt_f32_i32_e32 v96, v99
	v_cvt_f32_i32_e32 v97, v100
	v_cvt_f32_i32_e32 v98, v101
	v_cvt_f32_i32_e32 v99, v102
	v_cvt_f32_i32_e32 v100, v103
	v_cvt_f32_i32_e32 v101, v104
	v_cvt_f32_i32_e32 v102, v105
	v_cvt_f32_i32_e32 v103, v106
	v_cvt_f32_i32_e32 v104, v107
	v_cvt_f32_i32_e32 v105, v108
	v_cvt_f32_i32_e32 v106, v109
	v_cvt_f32_i32_e32 v107, v110
	v_cvt_f32_i32_e32 v108, v111
	v_cvt_f32_i32_e32 v109, v112
	v_cvt_f32_i32_e32 v110, v113
	v_cvt_f32_i32_e32 v111, v114
	v_cvt_f32_i32_e32 v112, v115
	v_cvt_f32_i32_e32 v113, v116
	v_cvt_f32_i32_e32 v114, v117
	v_cvt_f32_i32_e32 v115, v118
	v_cvt_f32_i32_e32 v116, v119
	v_cvt_f32_i32_e32 v117, v120
	v_cvt_f32_i32_e32 v118, v121
	v_cvt_f32_i32_e32 v119, v122
	v_cvt_f32_i32_e32 v120, v123
	v_cvt_f32_i32_e32 v121, v124
	v_cvt_f32_i32_e32 v122, v125
	v_cvt_f32_i32_e32 v123, v126
	v_cvt_f32_i32_e32 v124, v127
	v_cvt_f32_i32_e32 v125, v141
	v_cvt_f32_i32_e32 v126, v142
	v_cvt_f32_i32_e32 v127, v143
	v_cvt_f32_i32_e32 v128, v144
	v_cvt_f32_i32_e32 v129, v145
	v_cvt_f32_i32_e32 v130, v146
	v_cvt_f32_i32_e32 v131, v147
	v_cvt_f32_i32_e32 v132, v148
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
.LBB0_5:
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v79, s26, v10
	s_mul_i32 s0, s46, s26
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s14, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s13, s13, 0xffff
	.loc	1 179 36                        ; generate_amdgcn.py:179:36
	s_mul_i32 s3, s1, s35
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_add_i32 s1, s0, s1
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 178 18 is_stmt 0              ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v79, s1, v79, 1
	.loc	1 179 26 is_stmt 1              ; generate_amdgcn.py:179:26
	s_add_i32 s0, s33, s3
	.loc	1 179 18 is_stmt 0              ; generate_amdgcn.py:179:18
	s_and_b32 s25, s25, 0xffff
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v78, s0, v78, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v77, s0, v77, 1
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
	v_cndmask_b32_e64 v82, 0x80000000, v78, s2
	v_add_lshl_u32 v76, s0, v76, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v79, v79, s[12:15], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshl_or_b32 v9, v10, 9, v9
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v198, 7, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s0, s46, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s0, s0, s33
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v79, 16, v79
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v168, 0x80, v78
	v_add_nc_u32_e32 v169, 0x84, v78
	v_add_nc_u32_e32 v184, 0xc0, v78
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v86, v86, v79 :: v_dual_add_nc_u32 v145, 32, v78
	v_dual_mul_f32 v94, v94, v79 :: v_dual_add_nc_u32 v153, 64, v78
	v_dual_mul_f32 v102, v102, v79 :: v_dual_add_nc_u32 v161, 0x60, v78
	v_dual_mul_f32 v107, v107, v79 :: v_dual_add_nc_u32 v170, 0x88, v78
	v_dual_mul_f32 v126, v126, v79 :: v_dual_add_nc_u32 v185, 0xc4, v78
	v_dual_mul_f32 v7, v7, v79 :: v_dual_add_nc_u32 v146, 36, v78
	v_dual_mul_f32 v91, v91, v79 :: v_dual_add_nc_u32 v154, 0x44, v78
	v_dual_mul_f32 v99, v99, v79 :: v_dual_add_nc_u32 v162, 0x64, v78
	v_dual_mul_f32 v112, v112, v79 :: v_dual_add_nc_u32 v171, 0x8c, v78
	v_dual_mul_f32 v113, v113, v79 :: v_dual_add_nc_u32 v176, 0xa0, v78
	v_dual_mul_f32 v123, v123, v79 :: v_dual_add_nc_u32 v186, 0xc8, v78
	v_dual_mul_f32 v1, v1, v79 :: v_dual_add_nc_u32 v80, 4, v78
	v_dual_mul_f32 v88, v88, v79 :: v_dual_add_nc_u32 v147, 40, v78
	v_dual_mul_f32 v96, v96, v79 :: v_dual_add_nc_u32 v155, 0x48, v78
	v_dual_mul_f32 v104, v104, v79 :: v_dual_add_nc_u32 v163, 0x68, v78
	v_dual_mul_f32 v109, v109, v79 :: v_dual_add_nc_u32 v172, 0x90, v78
	v_dual_mul_f32 v114, v114, v79 :: v_dual_add_nc_u32 v173, 0x94, v78
	v_dual_mul_f32 v111, v111, v79 :: v_dual_add_nc_u32 v174, 0x98, v78
	v_dual_mul_f32 v116, v116, v79 :: v_dual_add_nc_u32 v175, 0x9c, v78
	v_dual_mul_f32 v118, v118, v79 :: v_dual_add_nc_u32 v177, 0xa4, v78
	v_dual_mul_f32 v128, v128, v79 :: v_dual_add_nc_u32 v187, 0xcc, v78
	v_dual_mul_f32 v129, v129, v79 :: v_dual_add_nc_u32 v192, 0xe0, v78
	v_dual_mul_f32 v2, v2, v79 :: v_dual_add_nc_u32 v81, 8, v78
	v_dual_mul_f32 v85, v85, v79 :: v_dual_add_nc_u32 v148, 44, v78
	v_dual_mul_f32 v93, v93, v79 :: v_dual_add_nc_u32 v156, 0x4c, v78
	v_dual_mul_f32 v101, v101, v79 :: v_dual_add_nc_u32 v164, 0x6c, v78
	v_dual_mul_f32 v115, v115, v79 :: v_dual_add_nc_u32 v178, 0xa8, v78
	v_dual_mul_f32 v125, v125, v79 :: v_dual_add_nc_u32 v188, 0xd0, v78
	v_dual_mul_f32 v130, v130, v79 :: v_dual_add_nc_u32 v189, 0xd4, v78
	v_dual_mul_f32 v127, v127, v79 :: v_dual_add_nc_u32 v190, 0xd8, v78
	v_dual_mul_f32 v132, v132, v79 :: v_dual_add_nc_u32 v191, 0xdc, v78
	v_dual_mul_f32 v134, v134, v79 :: v_dual_add_nc_u32 v193, 0xe4, v78
	v_mul_f32_e32 v105, v105, v79
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v168, 0x80000000, v168, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v6, v6, v79 :: v_dual_add_nc_u32 v83, 12, v78
	v_dual_mul_f32 v90, v90, v79 :: v_dual_add_nc_u32 v149, 48, v78
	v_dual_mul_f32 v87, v87, v79 :: v_dual_add_nc_u32 v150, 52, v78
	v_dual_mul_f32 v92, v92, v79 :: v_dual_add_nc_u32 v151, 56, v78
	v_dual_mul_f32 v89, v89, v79 :: v_dual_add_nc_u32 v152, 60, v78
	v_dual_mul_f32 v98, v98, v79 :: v_dual_add_nc_u32 v157, 0x50, v78
	v_dual_mul_f32 v95, v95, v79 :: v_dual_add_nc_u32 v158, 0x54, v78
	v_dual_mul_f32 v100, v100, v79 :: v_dual_add_nc_u32 v159, 0x58, v78
	v_dual_mul_f32 v97, v97, v79 :: v_dual_add_nc_u32 v160, 0x5c, v78
	v_dual_mul_f32 v106, v106, v79 :: v_dual_add_nc_u32 v165, 0x70, v78
	v_dual_mul_f32 v103, v103, v79 :: v_dual_add_nc_u32 v166, 0x74, v78
	v_dual_mul_f32 v108, v108, v79 :: v_dual_add_nc_u32 v167, 0x78, v78
	v_dual_mul_f32 v120, v120, v79 :: v_dual_add_nc_u32 v179, 0xac, v78
	v_dual_mul_f32 v131, v131, v79 :: v_dual_add_nc_u32 v194, 0xe8, v78
	v_mul_f32_e32 v110, v110, v79
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v169, 0x80000000, v169, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v121, v121, v79
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v184, 0x80000000, v184, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v8, v8, v79 :: v_dual_add_nc_u32 v141, 16, v78
	v_dual_mul_f32 v3, v3, v79 :: v_dual_add_nc_u32 v142, 20, v78
	v_dual_mul_f32 v84, v84, v79 :: v_dual_add_nc_u32 v143, 24, v78
	v_dual_mul_f32 v5, v5, v79 :: v_dual_add_nc_u32 v144, 28, v78
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v145, 0x80000000, v145, s2
	v_cndmask_b32_e64 v153, 0x80000000, v153, s2
	v_cndmask_b32_e64 v161, 0x80000000, v161, s2
	v_cndmask_b32_e64 v170, 0x80000000, v170, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v117, v117, v79 :: v_dual_add_nc_u32 v180, 0xb0, v78
	v_dual_mul_f32 v122, v122, v79 :: v_dual_add_nc_u32 v181, 0xb4, v78
	v_dual_mul_f32 v119, v119, v79 :: v_dual_add_nc_u32 v182, 0xb8, v78
	v_dual_mul_f32 v124, v124, v79 :: v_dual_add_nc_u32 v183, 0xbc, v78
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v185, 0x80000000, v185, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v136, v136, v79 :: v_dual_add_nc_u32 v195, 0xec, v78
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v146, 0x80000000, v146, s2
	v_cndmask_b32_e64 v154, 0x80000000, v154, s2
	v_cndmask_b32_e64 v162, 0x80000000, v162, s2
	v_cndmask_b32_e64 v171, 0x80000000, v171, s2
	v_cndmask_b32_e64 v176, 0x80000000, v176, s2
	v_cndmask_b32_e64 v186, 0x80000000, v186, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v133, v133, v79 :: v_dual_add_nc_u32 v196, 0xf0, v78
	v_dual_mul_f32 v138, v138, v79 :: v_dual_add_nc_u32 v197, 0xf4, v78
	v_dual_mul_f32 v135, v135, v79 :: v_dual_add_nc_u32 v78, 0xf8, v78
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v80, 0x80000000, v80, s2
	v_cndmask_b32_e64 v147, 0x80000000, v147, s2
	v_cndmask_b32_e64 v155, 0x80000000, v155, s2
	v_cndmask_b32_e64 v163, 0x80000000, v163, s2
	v_cndmask_b32_e64 v172, 0x80000000, v172, s2
	v_cndmask_b32_e64 v173, 0x80000000, v173, s2
	v_cndmask_b32_e64 v174, 0x80000000, v174, s2
	v_cndmask_b32_e64 v175, 0x80000000, v175, s2
	v_cndmask_b32_e64 v177, 0x80000000, v177, s2
	v_cndmask_b32_e64 v187, 0x80000000, v187, s2
	v_cndmask_b32_e64 v192, 0x80000000, v192, s2
	v_cndmask_b32_e64 v81, 0x80000000, v81, s2
	v_cndmask_b32_e64 v148, 0x80000000, v148, s2
	v_cndmask_b32_e64 v156, 0x80000000, v156, s2
	v_cndmask_b32_e64 v164, 0x80000000, v164, s2
	s_clause 0x7
	buffer_load_u16 v168, v168, s[24:27], 0 offen
	buffer_load_u16 v169, v169, s[24:27], 0 offen
	buffer_load_u16 v170, v170, s[24:27], 0 offen
	buffer_load_u16 v171, v171, s[24:27], 0 offen
	buffer_load_u16 v172, v172, s[24:27], 0 offen
	buffer_load_u16 v173, v173, s[24:27], 0 offen
	buffer_load_u16 v174, v174, s[24:27], 0 offen
	buffer_load_u16 v175, v175, s[24:27], 0 offen
	v_cndmask_b32_e64 v178, 0x80000000, v178, s2
	v_cndmask_b32_e64 v188, 0x80000000, v188, s2
	v_cndmask_b32_e64 v189, 0x80000000, v189, s2
	v_cndmask_b32_e64 v190, 0x80000000, v190, s2
	v_cndmask_b32_e64 v191, 0x80000000, v191, s2
	v_cndmask_b32_e64 v193, 0x80000000, v193, s2
	v_cndmask_b32_e64 v83, 0x80000000, v83, s2
	v_cndmask_b32_e64 v149, 0x80000000, v149, s2
	v_cndmask_b32_e64 v150, 0x80000000, v150, s2
	v_cndmask_b32_e64 v151, 0x80000000, v151, s2
	v_cndmask_b32_e64 v152, 0x80000000, v152, s2
	v_cndmask_b32_e64 v157, 0x80000000, v157, s2
	v_cndmask_b32_e64 v158, 0x80000000, v158, s2
	v_cndmask_b32_e64 v159, 0x80000000, v159, s2
	v_cndmask_b32_e64 v160, 0x80000000, v160, s2
	v_cndmask_b32_e64 v165, 0x80000000, v165, s2
	v_cndmask_b32_e64 v166, 0x80000000, v166, s2
	v_cndmask_b32_e64 v167, 0x80000000, v167, s2
	v_cndmask_b32_e64 v179, 0x80000000, v179, s2
	s_clause 0x7
	buffer_load_u16 v184, v184, s[24:27], 0 offen
	buffer_load_u16 v185, v185, s[24:27], 0 offen
	buffer_load_u16 v186, v186, s[24:27], 0 offen
	buffer_load_u16 v187, v187, s[24:27], 0 offen
	buffer_load_u16 v188, v188, s[24:27], 0 offen
	buffer_load_u16 v189, v189, s[24:27], 0 offen
	buffer_load_u16 v190, v190, s[24:27], 0 offen
	buffer_load_u16 v191, v191, s[24:27], 0 offen
	v_cndmask_b32_e64 v194, 0x80000000, v194, s2
	v_cndmask_b32_e64 v141, 0x80000000, v141, s2
	v_cndmask_b32_e64 v142, 0x80000000, v142, s2
	v_cndmask_b32_e64 v143, 0x80000000, v143, s2
	v_cndmask_b32_e64 v144, 0x80000000, v144, s2
	s_clause 0x17
	buffer_load_u16 v145, v145, s[24:27], 0 offen
	buffer_load_u16 v146, v146, s[24:27], 0 offen
	buffer_load_u16 v147, v147, s[24:27], 0 offen
	buffer_load_u16 v148, v148, s[24:27], 0 offen
	buffer_load_u16 v149, v149, s[24:27], 0 offen
	buffer_load_u16 v150, v150, s[24:27], 0 offen
	buffer_load_u16 v151, v151, s[24:27], 0 offen
	buffer_load_u16 v152, v152, s[24:27], 0 offen
	buffer_load_u16 v153, v153, s[24:27], 0 offen
	buffer_load_u16 v154, v154, s[24:27], 0 offen
	buffer_load_u16 v155, v155, s[24:27], 0 offen
	buffer_load_u16 v156, v156, s[24:27], 0 offen
	buffer_load_u16 v157, v157, s[24:27], 0 offen
	buffer_load_u16 v158, v158, s[24:27], 0 offen
	buffer_load_u16 v159, v159, s[24:27], 0 offen
	buffer_load_u16 v160, v160, s[24:27], 0 offen
	buffer_load_u16 v161, v161, s[24:27], 0 offen
	buffer_load_u16 v162, v162, s[24:27], 0 offen
	buffer_load_u16 v163, v163, s[24:27], 0 offen
	buffer_load_u16 v164, v164, s[24:27], 0 offen
	buffer_load_u16 v165, v165, s[24:27], 0 offen
	buffer_load_u16 v166, v166, s[24:27], 0 offen
	buffer_load_u16 v167, v167, s[24:27], 0 offen
	buffer_load_u16 v77, v77, s[24:27], 0 offen
	v_cndmask_b32_e64 v180, 0x80000000, v180, s2
	v_cndmask_b32_e64 v181, 0x80000000, v181, s2
	v_cndmask_b32_e64 v182, 0x80000000, v182, s2
	v_cndmask_b32_e64 v183, 0x80000000, v183, s2
	v_cndmask_b32_e64 v195, 0x80000000, v195, s2
	s_clause 0xf
	buffer_load_u16 v82, v82, s[24:27], 0 offen
	buffer_load_u16 v80, v80, s[24:27], 0 offen
	buffer_load_u16 v81, v81, s[24:27], 0 offen
	buffer_load_u16 v83, v83, s[24:27], 0 offen
	buffer_load_u16 v141, v141, s[24:27], 0 offen
	buffer_load_u16 v142, v142, s[24:27], 0 offen
	buffer_load_u16 v143, v143, s[24:27], 0 offen
	buffer_load_u16 v144, v144, s[24:27], 0 offen
	buffer_load_u16 v176, v176, s[24:27], 0 offen
	buffer_load_u16 v177, v177, s[24:27], 0 offen
	buffer_load_u16 v178, v178, s[24:27], 0 offen
	buffer_load_u16 v179, v179, s[24:27], 0 offen
	buffer_load_u16 v180, v180, s[24:27], 0 offen
	buffer_load_u16 v181, v181, s[24:27], 0 offen
	buffer_load_u16 v182, v182, s[24:27], 0 offen
	buffer_load_u16 v183, v183, s[24:27], 0 offen
	v_cndmask_b32_e64 v196, 0x80000000, v196, s2
	v_cndmask_b32_e64 v197, 0x80000000, v197, s2
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	s_clause 0x7
	buffer_load_u16 v192, v192, s[24:27], 0 offen
	buffer_load_u16 v193, v193, s[24:27], 0 offen
	buffer_load_u16 v194, v194, s[24:27], 0 offen
	buffer_load_u16 v195, v195, s[24:27], 0 offen
	buffer_load_u16 v196, v196, s[24:27], 0 offen
	buffer_load_u16 v197, v197, s[24:27], 0 offen
	buffer_load_u16 v78, v78, s[24:27], 0 offen
	buffer_load_u16 v76, v76, s[24:27], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v137, v137, v79
	v_mul_f32_e32 v139, v139, v79
	v_dual_mul_f32 v79, v140, v79 :: v_dual_lshlrev_b32 v168, 16, v168
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(62)
	v_lshlrev_b32_e32 v169, 16, v169
	s_waitcnt vmcnt(61)
	v_lshlrev_b32_e32 v170, 16, v170
	s_waitcnt vmcnt(60)
	v_lshlrev_b32_e32 v171, 16, v171
	s_waitcnt vmcnt(59)
	v_lshlrev_b32_e32 v172, 16, v172
	s_waitcnt vmcnt(58)
	v_lshlrev_b32_e32 v173, 16, v173
	s_waitcnt vmcnt(57)
	v_lshlrev_b32_e32 v174, 16, v174
	s_waitcnt vmcnt(56)
	v_lshlrev_b32_e32 v175, 16, v175
	s_waitcnt vmcnt(55)
	v_lshlrev_b32_e32 v184, 16, v184
	s_waitcnt vmcnt(54)
	v_lshlrev_b32_e32 v185, 16, v185
	s_waitcnt vmcnt(53)
	v_lshlrev_b32_e32 v186, 16, v186
	s_waitcnt vmcnt(52)
	v_lshlrev_b32_e32 v187, 16, v187
	s_waitcnt vmcnt(51)
	v_lshlrev_b32_e32 v188, 16, v188
	s_waitcnt vmcnt(50)
	v_lshlrev_b32_e32 v189, 16, v189
	s_waitcnt vmcnt(47)
	v_lshlrev_b32_e32 v145, 16, v145
	s_waitcnt vmcnt(46)
	v_lshlrev_b32_e32 v146, 16, v146
	s_waitcnt vmcnt(39)
	v_lshlrev_b32_e32 v153, 16, v153
	s_waitcnt vmcnt(38)
	v_lshlrev_b32_e32 v154, 16, v154
	v_lshlrev_b32_e32 v149, 16, v149
	v_lshlrev_b32_e32 v150, 16, v150
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v158, 16, v158
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v162, 16, v162
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v82, 16, v82
	v_lshlrev_b32_e32 v166, 16, v166
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v81, 16, v81
	v_lshlrev_b32_e32 v190, 16, v190
	v_lshlrev_b32_e32 v80, 16, v80
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v180, 16, v180
	v_lshlrev_b32_e32 v148, 16, v148
	v_lshlrev_b32_e32 v144, 16, v144
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v195, 16, v195
	v_lshlrev_b32_e32 v152, 16, v152
	v_lshlrev_b32_e32 v156, 16, v156
	v_lshlrev_b32_e32 v157, 16, v157
	v_lshlrev_b32_e32 v160, 16, v160
	v_lshlrev_b32_e32 v161, 16, v161
	v_lshlrev_b32_e32 v164, 16, v164
	v_lshlrev_b32_e32 v165, 16, v165
	v_lshlrev_b32_e32 v179, 16, v179
	v_lshlrev_b32_e32 v83, 16, v83
	v_lshlrev_b32_e32 v147, 16, v147
	v_lshlrev_b32_e32 v151, 16, v151
	v_lshlrev_b32_e32 v155, 16, v155
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v1, v1, v82, v39
	v_fma_f32 v3, v3, v81, v74
	v_fma_f32 v81, v85, v145, v68
	v_fma_f32 v82, v86, v146, v67
	v_fma_f32 v85, v89, v149, v64
	v_fma_f32 v86, v90, v150, v63
	v_fma_f32 v89, v93, v153, v60
	v_fma_f32 v90, v94, v154, v59
	v_fma_f32 v94, v98, v158, v55
	v_fma_f32 v98, v102, v162, v51
	v_fma_f32 v102, v106, v166, v47
	v_fma_f32 v106, v111, v170, v42
	v_fma_f32 v111, v116, v175, v36
	v_fma_f32 v116, v121, v180, v31
	v_fma_f32 v121, v126, v185, v26
	v_fma_f32 v126, v131, v190, v21
	v_fma_f32 v131, v136, v195, v16
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v159, 16, v159
	v_lshlrev_b32_e32 v163, 16, v163
	v_lshlrev_b32_e32 v167, 16, v167
	v_lshlrev_b32_e32 v176, 16, v176
	v_lshlrev_b32_e32 v181, 16, v181
	v_lshlrev_b32_e32 v77, 16, v77
	v_lshlrev_b32_e32 v177, 16, v177
	v_lshlrev_b32_e32 v182, 16, v182
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v2, v2, v80, v75
	v_fma_f32 v80, v84, v144, v69
	v_fma_f32 v84, v88, v148, v65
	v_fma_f32 v88, v92, v152, v61
	v_fma_f32 v92, v96, v156, v57
	v_fma_f32 v93, v97, v157, v56
	v_fma_f32 v96, v100, v160, v53
	v_fma_f32 v97, v101, v161, v52
	v_fma_f32 v100, v104, v164, v49
	v_fma_f32 v101, v105, v165, v48
	v_fma_f32 v104, v109, v168, v44
	v_fma_f32 v105, v110, v169, v43
	v_fma_f32 v110, v115, v174, v37
	v_fma_f32 v115, v120, v179, v32
	v_fma_f32 v120, v125, v184, v27
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v141, 16, v141
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v5, v83, v73
	v_fma_f32 v83, v87, v147, v66
	v_fma_f32 v87, v91, v151, v62
	v_fma_f32 v91, v95, v155, v58
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v1, v39, v1, s2
	v_cndmask_b32_e64 v60, v60, v89, s2
	v_cndmask_b32_e64 v10, v16, v131, s2
	v_add_nc_u32_e32 v16, 0, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v178, 16, v178
	v_lshlrev_b32_e32 v183, 16, v183
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v95, v99, v159, v54
	v_fma_f32 v99, v103, v163, v50
	v_fma_f32 v103, v107, v167, v46
	v_fma_f32 v107, v112, v171, v41
	v_fma_f32 v112, v117, v176, v35
	v_fma_f32 v117, v122, v181, v30
	v_fma_f32 v122, v127, v186, v25
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v142, 16, v142
	v_lshlrev_b32_e32 v143, 16, v143
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v77, v108, v77, v45
	v_fma_f32 v108, v113, v172, v40
	v_fma_f32 v113, v118, v177, v34
	v_fma_f32 v118, v123, v182, v29
	v_fma_f32 v123, v128, v187, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v44, v44, v104, s2
	v_cndmask_b32_e64 v27, v27, v120, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v6, v6, v141, v72
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v75, v2, s2
	v_cndmask_b32_e64 v39, v69, v80, s2
	v_cndmask_b32_e64 v59, v59, v90, s2
	v_cndmask_b32_e64 v43, v43, v105, s2
	v_cndmask_b32_e64 v26, v26, v121, s2
	v_xad_u32 v69, v9, 4, 0
	v_cndmask_b32_e64 v3, v74, v3, s2
	v_cndmask_b32_e64 v58, v58, v91, s2
	ds_store_2addr_b32 v16, v1, v60 offset1:32
	v_xad_u32 v1, v9, 8, 0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v192, 16, v192
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v109, v114, v173, v38
	v_fma_f32 v114, v119, v178, v33
	v_fma_f32 v119, v124, v183, v28
	v_fma_f32 v124, v129, v188, v23
	v_fma_f32 v125, v130, v189, v22
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v42, v42, v106, s2
	v_cndmask_b32_e64 v25, v25, v122, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v7, v7, v142, v71
	v_fma_f32 v8, v8, v143, v70
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v73, v5, s2
	v_cndmask_b32_e64 v57, v57, v92, s2
	v_cndmask_b32_e64 v41, v41, v107, s2
	v_cndmask_b32_e64 v24, v24, v123, s2
	ds_store_2addr_b32 v16, v44, v27 offset0:64 offset1:96
	ds_store_2addr_b32 v69, v2, v59 offset1:32
	v_xad_u32 v2, v9, 12, 0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v191, 16, v191
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v72, v6, s2
	v_cndmask_b32_e64 v56, v56, v93, s2
	ds_store_2addr_b32 v69, v43, v26 offset0:64 offset1:96
	ds_store_2addr_b32 v1, v3, v58 offset1:32
	v_xad_u32 v3, v9, 16, 0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v128, v133, v192, v19
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v40, v40, v108, s2
	v_cndmask_b32_e64 v38, v38, v109, s2
	v_cndmask_b32_e64 v23, v23, v124, s2
	v_cndmask_b32_e64 v22, v22, v125, s2
	ds_store_2addr_b32 v1, v42, v25 offset0:64 offset1:96
	ds_store_2addr_b32 v2, v5, v57 offset1:32
	v_xad_u32 v1, v9, 20, 0
	v_cndmask_b32_e64 v7, v71, v7, s2
	v_cndmask_b32_e64 v8, v70, v8, s2
	v_cndmask_b32_e64 v55, v55, v94, s2
	v_cndmask_b32_e64 v54, v54, v95, s2
	ds_store_2addr_b32 v2, v41, v24 offset0:64 offset1:96
	ds_store_2addr_b32 v3, v6, v56 offset1:32
	v_xad_u32 v2, v9, 24, 0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v127, v132, v191, v20
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v193, 16, v193
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v68, v68, v81, s2
	v_cndmask_b32_e64 v52, v52, v97, s2
	v_cndmask_b32_e64 v37, v37, v110, s2
	v_cndmask_b32_e64 v35, v35, v112, s2
	v_cndmask_b32_e64 v21, v21, v126, s2
	v_cndmask_b32_e64 v19, v19, v128, s2
	ds_store_2addr_b32 v3, v40, v23 offset0:64 offset1:96
	ds_store_2addr_b32 v1, v7, v55 offset1:32
	ds_store_2addr_b32 v1, v38, v22 offset0:64 offset1:96
	ds_store_2addr_b32 v2, v8, v54 offset1:32
	v_xad_u32 v1, v9, 32, 0
	v_cndmask_b32_e64 v53, v53, v96, s2
	v_xad_u32 v3, v9, 28, 0
	v_cndmask_b32_e64 v36, v36, v111, s2
	v_cndmask_b32_e64 v20, v20, v127, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v194, 16, v194
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v129, v134, v193, v18
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	ds_store_2addr_b32 v2, v37, v21 offset0:64 offset1:96
	ds_store_2addr_b32 v3, v39, v53 offset1:32
	ds_store_2addr_b32 v3, v36, v20 offset0:64 offset1:96
	ds_store_2addr_b32 v1, v68, v52 offset1:32
	ds_store_2addr_b32 v1, v35, v19 offset0:64 offset1:96
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mul_lo_u32 v1, s35, v198
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v196, 16, v196
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v130, v135, v194, v17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v67, v67, v82, s2
	v_cndmask_b32_e64 v51, v51, v98, s2
	v_xad_u32 v2, v9, 36, 0
	v_cndmask_b32_e64 v34, v34, v113, s2
	v_cndmask_b32_e64 v18, v18, v129, s2
	v_cndmask_b32_e64 v66, v66, v83, s2
	v_cndmask_b32_e64 v50, v50, v99, s2
	v_xad_u32 v3, v9, 40, 0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v132, v137, v196, v15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v65, v65, v84, s2
	v_cndmask_b32_e64 v49, v49, v100, s2
	v_cndmask_b32_e64 v33, v33, v114, s2
	v_cndmask_b32_e64 v17, v17, v130, s2
	ds_store_2addr_b32 v2, v67, v51 offset1:32
	ds_store_2addr_b32 v2, v34, v18 offset0:64 offset1:96
	ds_store_2addr_b32 v3, v66, v50 offset1:32
	v_xad_u32 v2, v9, 44, 0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_add3_u32 v1, s0, v11, v1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v32, v32, v115, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v197, 16, v197
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v78, 16, v78
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v64, v64, v85, s2
	v_cndmask_b32_e64 v48, v48, v101, s2
	v_cndmask_b32_e64 v31, v31, v116, s2
	v_cndmask_b32_e64 v15, v15, v132, s2
	ds_store_2addr_b32 v3, v33, v17 offset0:64 offset1:96
	v_xad_u32 v3, v9, 48, 0
	ds_store_2addr_b32 v2, v65, v49 offset1:32
	ds_store_2addr_b32 v2, v32, v10 offset0:64 offset1:96
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v2, 31, v1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v63, v63, v86, s2
	v_cndmask_b32_e64 v47, v47, v102, s2
	v_xad_u32 v5, v9, 52, 0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v133, v138, v197, v14
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v76, 16, v76
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v78, v139, v78, v13
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	ds_store_2addr_b32 v3, v64, v48 offset1:32
	ds_store_2addr_b32 v3, v31, v15 offset0:64 offset1:96
	ds_store_2addr_b32 v5, v63, v47 offset1:32
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_lshlrev_b64 v[2:3], 2, v[1:2]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v30, v117, s2
	v_cndmask_b32_e64 v14, v14, v133, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v76, v79, v76, v12
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v62, v62, v87, s2
	v_cndmask_b32_e64 v46, v46, v103, s2
	v_xad_u32 v6, v9, 56, 0
	v_cndmask_b32_e64 v29, v29, v118, s2
	v_cndmask_b32_e64 v13, v13, v78, s2
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_add_co_u32 v2, vcc_lo, s44, v2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v61, v61, v88, s2
	v_cndmask_b32_e64 v45, v45, v77, s2
	ds_store_2addr_b32 v5, v30, v14 offset0:64 offset1:96
	ds_store_2addr_b32 v6, v62, v46 offset1:32
	ds_store_2addr_b32 v6, v29, v13 offset0:64 offset1:96
	v_xad_u32 v5, v9, 60, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_add_co_ci_u32_e64 v3, null, s45, v3, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v28, v28, v119, s2
	v_cndmask_b32_e64 v12, v12, v76, s2
	ds_store_2addr_b32 v5, v61, v45 offset1:32
	ds_store_2addr_b32 v5, v28, v12 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	global_load_b32 v5, v[2:3], off
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshlrev_b32_e32 v6, 1, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v7, 0x180, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshlrev_b32_e32 v0, 6, v0
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v6, 60, v6
	v_lshrrev_b32_e32 v7, 5, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v4, v4, 2, v6
	v_xor_b32_e32 v4, v4, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_or_b32 v0, v0, 64, v4
	v_add_nc_u32_e32 v4, 0, v0
	v_xad_u32 v6, 0x810, v0, 0
	v_xad_u32 v9, 0x1020, v0, 0
	v_xad_u32 v10, 0x1830, v0, 0
	ds_load_b32 v8, v4
	ds_load_b32 v7, v6
	ds_load_b32 v0, v9
	ds_load_b32 v6, v10
.LBB0_6:                                ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v4, v5, v8
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_6
; %bb.7:                                ; %atomicrmw.end13
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v2, s35, 2, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s44, v2
	v_add_co_ci_u32_e64 v3, null, s45, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_8:                                ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_8
; %bb.9:                                ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v2, s35, 3, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s44, v2
	v_add_co_ci_u32_e64 v3, null, s45, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_10:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v4, v5, v0
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[0:1], null, s35, 12, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s44, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s45, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_12:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v2, v3, v6
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
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
		.amdhsa_next_free_vgpr 232
		.amdhsa_next_free_sgpr 47
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.num_vgpr, 232
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13016
; TotalNumSgprs: 49
; NumVgprs: 232
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 49
; NumVGPRsForWavesPerEU: 232
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	86                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	140                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk
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
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 512
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     232
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
