	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s2
	v_dual_mov_b32 v10, 0 :: v_dual_lshlrev_b32 v7, 2, v0
	v_dual_mov_b32 v14, 0 :: v_dual_and_b32 v73, 15, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v3, 5, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v2, 0x7c, v7
	s_load_b64 s[24:25], s[0:1], 0x20
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s26, 15
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
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v24, 0
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v38, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s7, v1
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v40, 0
	s_mul_f32 s7, s7, 0x4f7ffffe
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v46, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s7, s7
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v48, 0
	s_mul_i32 s10, s10, s7
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	s_mul_hi_u32 s10, s7, s10
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v54, 0
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v52, 0
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	s_cselect_b32 s6, s11, s7
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v62, 0
	s_xor_b32 s6, s6, s10
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v60, 0
	s_sub_i32 s16, s6, s10
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
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
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v72, 0 :: v_dual_lshlrev_b32 v79, 4, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v74, v0, 4, 1
	v_bfe_i32 v77, v0, 3, 1
	v_or_b32_e32 v76, 0x3f0, v0
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
	v_or_b32_e32 v78, 0x7f0, v0
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_mad_u64_u32 v[4:5], null, s26, v73, v[1:2]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s7, s7
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[5:6], null, s27, v3, v[2:3]
	.loc	1 166 26 is_stmt 0              ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v81, 0, v7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 93 13 is_stmt 1               ; generate_amdgcn.py:93:13
	s_mul_i32 s10, s10, s7
	v_add_nc_u32_e32 v75, 0, v73
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
	v_mov_b32_e32 v71, 0
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s7, s20, s7
	s_add_i32 s18, s5, 1
	s_cmp_ge_u32 s7, s6
	v_mov_b32_e32 v51, 0
	s_cselect_b32 s5, s18, s5
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s6, s3, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s7, s5, s17
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s18, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s20, s4, 31
.Ltmp13:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s5, s7, s17
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v6, s6, v73
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s18
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s19, s5, s19
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v8, s6, v3
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s18, s4, 1
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
	v_cmp_gt_i32_e64 s4, s18, v6
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 16, v6
	.loc	1 92 13 is_stmt 1               ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	s_mul_i32 s21, s26, s6
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s5, 7
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s5, s18, v8
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s3, 16, v8
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s35, s23, 5
.Ltmp21:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s34, s2, 4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s20, 31
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s22, s27, s6
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_add3_u32 v4, s21, s34, v4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s4, vcc_lo, s4
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v5, s22, s33, v5
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s5, s3, s5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s4
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s5
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_u8 v4, v4, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b32 v5, v5, s[28:31], 0 offen
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_bfe_i32 v6, v0, 7, 1
	v_and_b32_e32 v8, 0x7f, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s44, s35, -1
	s_mov_b32 s16, 0
	s_cmp_lt_i32 s20, 64
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_and_b32_e32 v6, 0x88, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v6, v6, v8
	v_add_nc_u32_e32 v80, 0, v6
	s_waitcnt vmcnt(1)
	ds_store_b8 v80, v4 offset:2048
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v81, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_add_i32 s5, s6, 16
	s_lshl_b32 s0, s7, 8
	s_lshl_b32 s1, s17, 8
	v_sub_nc_u32_e32 v82, s18, v73
	v_sub_nc_u32_e32 v83, s18, v3
	s_lshl_b32 s4, s7, 7
	s_sub_i32 s7, s0, s1
	s_lshl_b32 s0, s17, 7
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v5, s5, v3
	v_dual_mov_b32 v51, 0 :: v_dual_and_b32 v4, 0x70, v79
	v_add_nc_u32_e32 v3, s34, v73
	v_add_nc_u32_e32 v7, s5, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v5, s27, v5
	v_and_or_b32 v4, 0x88, v77, v4
	v_lshlrev_b32_e32 v84, 1, v74
	v_mul_lo_u32 v3, s35, v3
	v_mul_lo_u32 v7, s26, v7
	v_add_nc_u32_e32 v90, 0, v76
	v_xor_b32_e32 v6, 8, v4
	v_add_nc_u32_e32 v88, 0, v4
	v_add3_u32 v2, v5, s4, v2
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v91, 0, v78
	v_lshlrev_b32_e32 v85, 1, v3
	v_add3_u32 v87, v7, s34, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_subrev_nc_u32_e32 v86, s0, v2
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v89, 0, v6
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v8, s23 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v13, 0
	v_mov_b32_e32 v9, 0
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_max_i32 s6, s44, 1
	s_lshl_b32 s45, s27, 1
	s_lshl_b32 s46, s27, 4
	s_lshl_b32 s26, s26, 4
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s10
	s_mov_b32 s43, s11
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s5, v82
	v_cmp_lt_i32_e64 s1, s5, v83
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s6, s6, -1
	s_add_i32 s5, s5, 16
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s4, s0, vcc_lo
	s_and_b32 s0, s1, s3
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e64 v92, 0x80000000, v87, s4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v87, s26, v87
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_u8 v92, v92, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v101, v85, s[36:39], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v166, v75 offset:1664
	ds_load_u8 v167, v75 offset:1536
	ds_load_u8 v168, v75 offset:1520
	ds_load_u8 v169, v75 offset:1648
	ds_load_u8 v170, v75 offset:1920
	ds_load_u8 v171, v75 offset:1792
	ds_load_u8 v172, v75 offset:1024
	ds_load_u8 v173, v75 offset:1152
	ds_load_u8 v94, v75 offset:512
	ds_load_u8 v95, v75 offset:640
	ds_load_u8 v96, v75 offset:656
	ds_load_u8 v97, v75 offset:672
	ds_load_u8 v98, v75 offset:688
	ds_load_u8 v105, v75 offset:704
	ds_load_u8 v108, v75 offset:720
	ds_load_u8 v117, v75 offset:736
	ds_load_u8 v118, v75 offset:752
	ds_load_u8 v99, v75 offset:528
	ds_load_u8 v100, v75 offset:544
	ds_load_u8 v119, v75 offset:560
	ds_load_u8 v120, v75 offset:576
	ds_load_u8 v121, v75 offset:592
	ds_load_u8 v122, v75 offset:608
	ds_load_u8 v123, v75 offset:624
	ds_load_u8 v111, v75 offset:768
	ds_load_u8 v113, v75 offset:896
	ds_load_u8 v114, v75 offset:912
	ds_load_u8 v115, v75 offset:928
	ds_load_u8 v124, v75 offset:944
	ds_load_u8 v125, v75 offset:960
	ds_load_u8 v126, v75 offset:976
	ds_load_u8 v127, v75 offset:992
	ds_load_u8 v116, v75 offset:784
	ds_load_u8 v128, v75 offset:800
	ds_load_u8 v129, v75 offset:816
	ds_load_u8 v130, v75 offset:832
	ds_load_u8 v150, v75 offset:256
	ds_load_u8 v151, v75 offset:384
	ds_load_u8 v152, v75 offset:400
	ds_load_u8 v153, v75 offset:416
	ds_load_u8 v154, v75 offset:432
	ds_load_u8 v155, v75 offset:448
	ds_load_u8 v156, v75 offset:464
	ds_load_u8 v157, v75 offset:480
	ds_load_u8 v182, v75 offset:1760
	ds_load_u8 v183, v75 offset:1568
	ds_load_u8 v184, v75 offset:1584
	ds_load_u8 v185, v75 offset:1600
	ds_load_u8 v186, v75 offset:1936
	ds_load_u8 v187, v75 offset:1808
	ds_load_u8 v188, v75 offset:1040
	ds_load_u8 v134, v75
	ds_load_u8 v135, v75 offset:128
	ds_load_u8 v136, v75 offset:144
	ds_load_u8 v137, v75 offset:160
	ds_load_u8 v138, v75 offset:176
	ds_load_u8 v139, v75 offset:192
	ds_load_u8 v140, v75 offset:208
	ds_load_u8 v141, v75 offset:224
	ds_load_u8 v158, v75 offset:496
	ds_load_u8 v159, v75 offset:272
	ds_load_u8 v160, v75 offset:288
	ds_load_u8 v161, v75 offset:304
	ds_load_u8 v162, v75 offset:320
	ds_load_u8 v163, v75 offset:336
	ds_load_u8 v164, v75 offset:352
	ds_load_u8 v165, v75 offset:368
	ds_load_u8 v142, v75 offset:240
	ds_load_u8 v143, v75 offset:16
	ds_load_u8 v144, v75 offset:32
	ds_load_u8 v145, v75 offset:48
	ds_load_u8 v146, v75 offset:64
	ds_load_u8 v147, v75 offset:80
	ds_load_u8 v148, v75 offset:96
	ds_load_u8 v149, v75 offset:112
	ds_load_u8 v174, v75 offset:1408
	ds_load_u8 v175, v75 offset:1280
	ds_load_u8 v176, v75 offset:1552
	ds_load_u8 v177, v75 offset:1680
	ds_load_u8 v178, v75 offset:1696
	ds_load_u8 v179, v75 offset:1712
	ds_load_u8 v180, v75 offset:1728
	ds_load_u8 v181, v75 offset:1744
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v189, v94, v95, 0xc0c0004
	ds_load_u8 v94, v75 offset:1168
	ds_load_u8 v95, v75 offset:1296
	v_perm_b32 v119, v119, v98, 0xc0c0004
	ds_load_u8 v98, v75 offset:1216
	ds_load_u8 v192, v75 offset:1776
	ds_load_u8 v131, v75 offset:848
	ds_load_u8 v132, v75 offset:864
	ds_load_u8 v133, v75 offset:880
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v117, v122, v117, 0xc0c0004
	v_perm_b32 v190, v111, v113, 0xc0c0004
	v_perm_b32 v120, v120, v105, 0xc0c0004
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v134, v134, v135, 0xc0c0004
	v_perm_b32 v135, v150, v151, 0xc0c0004
	ds_load_u8 v150, v75 offset:1424
	v_perm_b32 v151, v167, v166, 0xc0c0004
	v_perm_b32 v166, v171, v170, 0xc0c0004
	v_perm_b32 v170, v172, v173, 0xc0c0004
	ds_load_u8 v171, v75 offset:1824
	ds_load_u8 v173, v75 offset:1952
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v172, v175, v174, 0xc0c0004
	v_perm_b32 v174, v99, v96, 0xc0c0004
	ds_load_u8 v96, v75 offset:1184
	ds_load_u8 v99, v75 offset:1056
	v_perm_b32 v136, v143, v136, 0xc0c0004
	v_perm_b32 v143, v159, v152, 0xc0c0004
	ds_load_u8 v152, v75 offset:1440
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v159, v176, v177, 0xc0c0004
	ds_load_u8 v176, v75 offset:1312
	v_perm_b32 v177, v187, v186, 0xc0c0004
	v_perm_b32 v187, v100, v97, 0xc0c0004
	ds_load_u8 v97, v75 offset:1200
	ds_load_u8 v100, v75 offset:1072
	v_perm_b32 v137, v144, v137, 0xc0c0004
	v_perm_b32 v144, v160, v153, 0xc0c0004
	ds_load_u8 v153, v75 offset:1456
	v_perm_b32 v124, v129, v124, 0xc0c0004
	ds_load_u8 v129, v75 offset:1088
	v_perm_b32 v139, v146, v139, 0xc0c0004
	ds_load_u8 v146, v75 offset:1488
	v_perm_b32 v155, v162, v155, 0xc0c0004
	v_perm_b32 v156, v163, v156, 0xc0c0004
	ds_load_u8 v163, v75 offset:1504
	ds_load_u8 v162, v75 offset:1360
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v160, v183, v178, 0xc0c0004
	ds_load_u8 v178, v75 offset:1328
	v_perm_b32 v154, v161, v154, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v161, v184, v179, 0xc0c0004
	v_perm_b32 v130, v130, v125, 0xc0c0004
	ds_load_u8 v125, v75 offset:1104
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v131, v131, v126, 0xc0c0004
	v_perm_b32 v140, v147, v140, 0xc0c0004
	ds_load_u8 v147, v75 offset:1120
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v122, v132, v127, 0xc0c0004
	v_perm_b32 v132, v148, v141, 0xc0c0004
	ds_load_u8 v141, v75 offset:1392
	ds_load_u8 v126, v75 offset:1248
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v150, v95, v150, 0xc0c0004
	ds_load_u8 v95, v75 offset:1968
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	ds_load_b64 v[183:184], v89 offset:2048
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v148, v164, v157, 0xc0c0004
	ds_load_u8 v157, v91
	ds_load_u8 v167, v75 offset:1616
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v146, v162, v146, 0xc0c0004
	ds_load_u8 v162, v75 offset:1136
	v_perm_b32 v186, v188, v94, 0xc0c0004
	ds_load_u8 v94, v75 offset:1840
	v_perm_b32 v188, v99, v96, 0xc0c0004
	ds_load_u8 v96, v75 offset:1984
	v_perm_b32 v191, v100, v97, 0xc0c0004
	ds_load_u8 v97, v75 offset:1232
	ds_load_u8 v127, v75 offset:1264
	v_perm_b32 v129, v129, v98, 0xc0c0004
	ds_load_u8 v98, v75 offset:1888
	v_perm_b32 v171, v171, v173, 0xc0c0004
	ds_load_u8 v173, v75 offset:1856
	v_perm_b32 v152, v176, v152, 0xc0c0004
	v_perm_b32 v138, v145, v138, 0xc0c0004
	ds_load_u8 v176, v75 offset:1344
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v153, v178, v153, 0xc0c0004
	v_perm_b32 v178, v185, v180, 0xc0c0004
	v_perm_b32 v175, v116, v114, 0xc0c0004
	v_perm_b32 v121, v121, v108, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v147, v147, v126, 0xc0c0004
	v_perm_b32 v118, v123, v118, 0xc0c0004
	v_lshl_or_b32 v126, v190, 16, v189
	v_perm_b32 v196, v165, v158, 0xc0c0004
	v_lshl_or_b32 v158, v166, 16, v151
	v_lshl_or_b32 v165, v150, 16, v186
	v_lshl_or_b32 v150, v124, 16, v119
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v193, v125, v97, 0xc0c0004
	ds_load_u8 v125, v75 offset:1904
	ds_load_u8 v97, v90
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v127, v162, v127, 0xc0c0004
	v_perm_b32 v162, v141, v168, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v173, v173, v96, 0xc0c0004
	ds_load_u8 v96, v75 offset:1632
	ds_load_u8 v145, v75 offset:1472
	v_perm_b32 v179, v94, v95, 0xc0c0004
	ds_load_u8 v94, v75 offset:1872
	ds_load_u8 v95, v75 offset:2000
	v_perm_b32 v180, v167, v181, 0xc0c0004
	ds_load_u8 v167, v75 offset:1376
	v_lshl_or_b32 v168, v171, 16, v160
	v_lshl_or_b32 v160, v130, 16, v120
	v_perm_b32 v128, v128, v115, 0xc0c0004
	v_perm_b32 v195, v149, v142, 0xc0c0004
	v_lshl_or_b32 v141, v144, 16, v137
	v_lshl_or_b32 v166, v177, 16, v159
	v_lshl_or_b32 v149, v154, 16, v138
	v_lshl_or_b32 v142, v128, 16, v187
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v197, v125, v157, 0xc0c0004
	v_lshl_or_b32 v125, v135, 16, v134
	v_lshl_or_b32 v157, v172, 16, v170
	v_lshl_or_b32 v134, v175, 16, v174
	v_lshl_or_b32 v174, v173, 16, v178
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v164, v96, v182, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v145, v176, v145, 0xc0c0004
	ds_load_u8 v176, v75 offset:2016
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	ds_load_b64 v[181:182], v88 offset:2048
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v123, v133, v97, 0xc0c0004
	v_lshl_or_b32 v172, v131, 16, v121
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v163, v167, v163, 0xc0c0004
	v_lshl_or_b32 v167, v152, 16, v188
	v_lshl_or_b32 v178, v122, 16, v117
	v_lshl_or_b32 v188, v123, 16, v118
	v_perm_b32 v185, v94, v95, 0xc0c0004
	v_lshl_or_b32 v133, v143, 16, v136
	v_lshl_or_b32 v159, v155, 16, v139
	v_lshl_or_b32 v173, v145, 16, v129
	v_lshl_or_b32 v171, v156, 16, v140
	v_lshl_or_b32 v177, v148, 16, v132
	v_lshl_or_b32 v189, v162, 16, v127
	v_perm_b32 v192, v169, v192, 0xc0c0004
	v_lshl_or_b32 v170, v179, 16, v161
	v_lshl_or_b32 v169, v153, 16, v191
	v_lshl_or_b32 v175, v146, 16, v193
	v_lshl_or_b32 v187, v196, 16, v195
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v194, v98, v176, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[117:124], v[125:126], v[181:182], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[125:132], v[133:134], v[181:182], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[141:142], v[181:182], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[117:124], v[157:158], v[183:184], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[125:132], v[165:166], v[183:184], v[125:132] neg_lo:[1,1,0]
	v_lshl_or_b32 v176, v185, 16, v180
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[133:140], v[167:168], v[183:184], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v186, v194, 16, v164
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v185, v163, 16, v147
	v_wmma_i32_16x16x16_iu4 v[141:148], v[149:150], v[181:182], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[159:160], v[181:182], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[157:164], v[171:172], v[181:182], v[1:8] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v190, v197, 16, v192
	v_wmma_i32_16x16x16_iu4 v[141:148], v[169:170], v[183:184], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[165:172], v[177:178], v[181:182], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[173:174], v[183:184], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[157:164], v[175:176], v[183:184], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[173:180], v[187:188], v[181:182], v[1:8] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v136, v136
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[165:172], v[185:186], v[183:184], v[165:172] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v134, v134
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[173:180], v[189:190], v[183:184], v[173:180] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v175, v175
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v177, v177
	v_cvt_f32_i32_e32 v178, v178
	v_cvt_f32_i32_e32 v179, v179
	v_cvt_f32_i32_e32 v180, v180
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v85, 2, v85
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v101, 16, v101
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v93, s7, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s7, s7, s45
	s_cmp_lg_u32 s6, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v118, v101, v118
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1c
	buffer_load_u16 v102, v93, s[40:43], 0 offen
	buffer_load_u16 v103, v93, s[40:43], 0 offen offset:4
	buffer_load_u16 v104, v93, s[40:43], 0 offen offset:8
	buffer_load_u16 v106, v93, s[40:43], 0 offen offset:12
	buffer_load_u16 v107, v93, s[40:43], 0 offen offset:16
	buffer_load_u16 v109, v93, s[40:43], 0 offen offset:20
	buffer_load_u16 v110, v93, s[40:43], 0 offen offset:24
	buffer_load_u16 v112, v93, s[40:43], 0 offen offset:28
	buffer_load_u16 v111, v93, s[40:43], 0 offen offset:32
	buffer_load_u16 v114, v93, s[40:43], 0 offen offset:36
	buffer_load_u16 v113, v93, s[40:43], 0 offen offset:40
	buffer_load_u16 v115, v93, s[40:43], 0 offen offset:44
	buffer_load_u16 v116, v93, s[40:43], 0 offen offset:48
	buffer_load_u16 v99, v93, s[40:43], 0 offen offset:52
	buffer_load_u16 v100, v93, s[40:43], 0 offen offset:56
	buffer_load_u16 v105, v93, s[40:43], 0 offen offset:60
	buffer_load_u16 v108, v93, s[40:43], 0 offen offset:64
	buffer_load_u16 v94, v93, s[40:43], 0 offen offset:68
	buffer_load_u16 v95, v93, s[40:43], 0 offen offset:72
	buffer_load_u16 v96, v93, s[40:43], 0 offen offset:76
	buffer_load_u16 v97, v93, s[40:43], 0 offen offset:80
	buffer_load_u16 v98, v93, s[40:43], 0 offen offset:84
	buffer_load_u16 v181, v93, s[40:43], 0 offen offset:88
	buffer_load_u16 v182, v93, s[40:43], 0 offen offset:92
	buffer_load_u16 v183, v93, s[40:43], 0 offen offset:96
	buffer_load_u16 v184, v93, s[40:43], 0 offen offset:100
	buffer_load_u16 v185, v93, s[40:43], 0 offen offset:104
	buffer_load_u16 v186, v93, s[40:43], 0 offen offset:108
	buffer_load_u16 v187, v93, s[40:43], 0 offen offset:112
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v103, 16, v103
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v104, 16, v104
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v106, 16, v106
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v107, 16, v107
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v72, v118, v103
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v120, v101, v120
	s_waitcnt vmcnt(22)
	v_dual_mul_f32 v121, v101, v121 :: v_dual_lshlrev_b32 v110, 16, v110
	v_dual_mul_f32 v117, v101, v117 :: v_dual_lshlrev_b32 v102, 16, v102
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(21)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v71, v121, v107 :: v_dual_lshlrev_b32 v112, 16, v112
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(20)
	v_dual_mul_f32 v124, v101, v124 :: v_dual_lshlrev_b32 v111, 16, v111
	v_mul_f32_e32 v123, v101, v123
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v51, v117, v102
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v119, v101, v119
	v_dual_mul_f32 v122, v101, v122 :: v_dual_lshlrev_b32 v109, 16, v109
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v66, v124, v112 :: v_dual_fmac_f32 v67, v123, v110
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v128, v101, v128
	s_waitcnt vmcnt(19)
	v_dual_mul_f32 v125, v101, v125 :: v_dual_lshlrev_b32 v114, 16, v114
	s_waitcnt vmcnt(18)
	v_dual_mul_f32 v126, v101, v126 :: v_dual_lshlrev_b32 v113, 16, v113
	s_waitcnt vmcnt(16)
	v_dual_mul_f32 v127, v101, v127 :: v_dual_lshlrev_b32 v116, 16, v116
	v_dual_mul_f32 v130, v101, v130 :: v_dual_lshlrev_b32 v115, 16, v115
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v132, v101, v132 :: v_dual_lshlrev_b32 v99, 16, v99
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v129, v101, v129 :: v_dual_lshlrev_b32 v100, 16, v100
	v_mul_f32_e32 v131, v101, v131
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v136, v101, v136 :: v_dual_lshlrev_b32 v105, 16, v105
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v133, v101, v133 :: v_dual_lshlrev_b32 v108, 16, v108
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x3
	buffer_load_u16 v102, v93, s[40:43], 0 offen offset:116
	buffer_load_u16 v117, v93, s[40:43], 0 offen offset:120
	buffer_load_u16 v103, v93, s[40:43], 0 offen offset:124
	buffer_load_u16 v118, v93, s[40:43], 0 offen offset:128
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v70, v119, v104
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v104, v93, s[40:43], 0 offen offset:132
	buffer_load_u16 v119, v93, s[40:43], 0 offen offset:136
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v69, v120, v106 :: v_dual_fmac_f32 v68, v122, v109
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x9
	buffer_load_u16 v106, v93, s[40:43], 0 offen offset:140
	buffer_load_u16 v120, v93, s[40:43], 0 offen offset:144
	buffer_load_u16 v107, v93, s[40:43], 0 offen offset:148
	buffer_load_u16 v121, v93, s[40:43], 0 offen offset:152
	buffer_load_u16 v109, v93, s[40:43], 0 offen offset:156
	buffer_load_u16 v122, v93, s[40:43], 0 offen offset:160
	buffer_load_u16 v110, v93, s[40:43], 0 offen offset:164
	buffer_load_u16 v123, v93, s[40:43], 0 offen offset:168
	buffer_load_u16 v112, v93, s[40:43], 0 offen offset:172
	buffer_load_u16 v124, v93, s[40:43], 0 offen offset:176
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v65, v125, v111 :: v_dual_fmac_f32 v64, v126, v114
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x3
	buffer_load_u16 v111, v93, s[40:43], 0 offen offset:180
	buffer_load_u16 v125, v93, s[40:43], 0 offen offset:184
	buffer_load_u16 v114, v93, s[40:43], 0 offen offset:188
	buffer_load_u16 v126, v93, s[40:43], 0 offen offset:192
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v63, v127, v113 :: v_dual_fmac_f32 v62, v128, v115
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x3
	buffer_load_u16 v113, v93, s[40:43], 0 offen offset:196
	buffer_load_u16 v127, v93, s[40:43], 0 offen offset:200
	buffer_load_u16 v115, v93, s[40:43], 0 offen offset:204
	buffer_load_u16 v128, v93, s[40:43], 0 offen offset:208
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v60, v130, v99 :: v_dual_fmac_f32 v61, v129, v116
	v_fmac_f32_e32 v58, v132, v105
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x3
	buffer_load_u16 v116, v93, s[40:43], 0 offen offset:212
	buffer_load_u16 v129, v93, s[40:43], 0 offen offset:216
	buffer_load_u16 v99, v93, s[40:43], 0 offen offset:220
	buffer_load_u16 v130, v93, s[40:43], 0 offen offset:224
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v59, v131, v100 :: v_dual_mul_f32 v134, v101, v134
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x3
	buffer_load_u16 v100, v93, s[40:43], 0 offen offset:228
	buffer_load_u16 v131, v93, s[40:43], 0 offen offset:232
	buffer_load_u16 v105, v93, s[40:43], 0 offen offset:236
	buffer_load_u16 v132, v93, s[40:43], 0 offen offset:240
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v57, v133, v108
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x2
	buffer_load_u16 v108, v93, s[40:43], 0 offen offset:244
	buffer_load_u16 v133, v93, s[40:43], 0 offen offset:248
	buffer_load_u16 v93, v93, s[40:43], 0 offen offset:252
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(46)
	v_dual_mul_f32 v135, v101, v135 :: v_dual_lshlrev_b32 v94, 16, v94
	s_waitcnt vmcnt(44)
	v_dual_mul_f32 v137, v101, v137 :: v_dual_lshlrev_b32 v96, 16, v96
	v_mul_f32_e32 v138, v101, v138
	s_waitcnt vmcnt(42)
	v_dual_mul_f32 v139, v101, v139 :: v_dual_lshlrev_b32 v98, 16, v98
	v_mul_f32_e32 v140, v101, v140
	s_waitcnt vmcnt(40)
	v_dual_mul_f32 v141, v101, v141 :: v_dual_lshlrev_b32 v182, 16, v182
	v_dual_mul_f32 v142, v101, v142 :: v_dual_lshlrev_b32 v95, 16, v95
	s_waitcnt vmcnt(38)
	v_dual_mul_f32 v143, v101, v143 :: v_dual_lshlrev_b32 v184, 16, v184
	v_dual_mul_f32 v144, v101, v144 :: v_dual_lshlrev_b32 v97, 16, v97
	s_waitcnt vmcnt(36)
	v_dual_mul_f32 v145, v101, v145 :: v_dual_lshlrev_b32 v186, 16, v186
	v_dual_mul_f32 v146, v101, v146 :: v_dual_lshlrev_b32 v181, 16, v181
	v_mul_f32_e32 v147, v101, v147
	v_dual_mul_f32 v148, v101, v148 :: v_dual_lshlrev_b32 v183, 16, v183
	v_mul_f32_e32 v149, v101, v149
	v_dual_mul_f32 v150, v101, v150 :: v_dual_lshlrev_b32 v185, 16, v185
	v_mul_f32_e32 v151, v101, v151
	s_waitcnt vmcnt(35)
	v_dual_mul_f32 v152, v101, v152 :: v_dual_lshlrev_b32 v187, 16, v187
	v_mul_f32_e32 v153, v101, v153
	v_mul_f32_e32 v154, v101, v154
	v_mul_f32_e32 v155, v101, v155
	v_mul_f32_e32 v156, v101, v156
	v_mul_f32_e32 v157, v101, v157
	v_mul_f32_e32 v158, v101, v158
	v_mul_f32_e32 v159, v101, v159
	v_mul_f32_e32 v160, v101, v160
	v_mul_f32_e32 v161, v101, v161
	v_mul_f32_e32 v162, v101, v162
	v_mul_f32_e32 v163, v101, v163
	v_mul_f32_e32 v164, v101, v164
	v_mul_f32_e32 v165, v101, v165
	v_mul_f32_e32 v166, v101, v166
	v_mul_f32_e32 v167, v101, v167
	v_mul_f32_e32 v168, v101, v168
	v_mul_f32_e32 v169, v101, v169
	v_mul_f32_e32 v170, v101, v170
	v_mul_f32_e32 v171, v101, v171
	v_mul_f32_e32 v172, v101, v172
	v_mul_f32_e32 v173, v101, v173
	v_mul_f32_e32 v174, v101, v174
	v_mul_f32_e32 v175, v101, v175
	v_mul_f32_e32 v176, v101, v176
	v_mul_f32_e32 v177, v101, v177
	v_mul_f32_e32 v178, v101, v178
	v_mul_f32_e32 v179, v101, v179
	v_dual_mul_f32 v101, v101, v180 :: v_dual_fmac_f32 v56, v134, v94
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v180, 0x80000000, v86, s0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v86, s46, v86
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v54, v136, v96
	v_fmac_f32_e32 v50, v140, v182
	v_fmac_f32_e32 v52, v138, v98
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b32 v180, v180, s[28:31], 0 offen
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v46, v144, v186
	v_fmac_f32_e32 v48, v142, v184
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	ds_store_b8 v80, v92 offset:2048
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v81, v180
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v102, 16, v102
	v_lshlrev_b32_e32 v117, 16, v117
	v_lshlrev_b32_e32 v103, 16, v103
	v_lshlrev_b32_e32 v118, 16, v118
	v_lshlrev_b32_e32 v104, 16, v104
	v_lshlrev_b32_e32 v119, 16, v119
	v_lshlrev_b32_e32 v106, 16, v106
	v_lshlrev_b32_e32 v120, 16, v120
	v_lshlrev_b32_e32 v107, 16, v107
	v_lshlrev_b32_e32 v121, 16, v121
	v_lshlrev_b32_e32 v109, 16, v109
	v_lshlrev_b32_e32 v122, 16, v122
	v_lshlrev_b32_e32 v110, 16, v110
	v_lshlrev_b32_e32 v123, 16, v123
	v_lshlrev_b32_e32 v112, 16, v112
	v_lshlrev_b32_e32 v124, 16, v124
	v_lshlrev_b32_e32 v111, 16, v111
	v_lshlrev_b32_e32 v125, 16, v125
	v_lshlrev_b32_e32 v114, 16, v114
	v_lshlrev_b32_e32 v126, 16, v126
	v_lshlrev_b32_e32 v113, 16, v113
	v_lshlrev_b32_e32 v127, 16, v127
	v_lshlrev_b32_e32 v115, 16, v115
	v_lshlrev_b32_e32 v128, 16, v128
	v_lshlrev_b32_e32 v116, 16, v116
	v_lshlrev_b32_e32 v129, 16, v129
	v_lshlrev_b32_e32 v99, 16, v99
	v_lshlrev_b32_e32 v130, 16, v130
	v_lshlrev_b32_e32 v100, 16, v100
	v_lshlrev_b32_e32 v131, 16, v131
	v_lshlrev_b32_e32 v105, 16, v105
	v_lshlrev_b32_e32 v132, 16, v132
	v_lshlrev_b32_e32 v108, 16, v108
	v_lshlrev_b32_e32 v93, 16, v93
	v_lshlrev_b32_e32 v133, 16, v133
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v55, v135, v95 :: v_dual_fmac_f32 v44, v146, v102
	v_dual_fmac_f32 v53, v137, v97 :: v_dual_fmac_f32 v42, v148, v103
	v_dual_fmac_f32 v49, v139, v181 :: v_dual_fmac_f32 v40, v150, v104
	v_dual_fmac_f32 v47, v141, v183 :: v_dual_fmac_f32 v38, v152, v106
	v_dual_fmac_f32 v45, v143, v185 :: v_dual_fmac_f32 v36, v154, v107
	v_dual_fmac_f32 v43, v145, v187 :: v_dual_fmac_f32 v34, v156, v109
	v_dual_fmac_f32 v41, v147, v117 :: v_dual_fmac_f32 v32, v158, v110
	v_dual_fmac_f32 v39, v149, v118 :: v_dual_fmac_f32 v30, v160, v112
	v_dual_fmac_f32 v37, v151, v119 :: v_dual_fmac_f32 v26, v164, v114
	v_dual_fmac_f32 v35, v153, v120 :: v_dual_fmac_f32 v28, v162, v111
	v_dual_fmac_f32 v33, v155, v121 :: v_dual_fmac_f32 v22, v168, v115
	v_dual_fmac_f32 v31, v157, v122 :: v_dual_fmac_f32 v24, v166, v113
	v_dual_fmac_f32 v29, v159, v123 :: v_dual_fmac_f32 v20, v170, v116
	v_dual_fmac_f32 v27, v161, v124 :: v_dual_fmac_f32 v18, v172, v99
	v_dual_fmac_f32 v25, v163, v125 :: v_dual_fmac_f32 v16, v174, v100
	v_dual_fmac_f32 v23, v165, v126 :: v_dual_fmac_f32 v14, v176, v105
	v_dual_fmac_f32 v21, v167, v127 :: v_dual_fmac_f32 v12, v178, v108
	v_dual_fmac_f32 v19, v169, v128 :: v_dual_fmac_f32 v10, v179, v133
	v_fmac_f32_e32 v17, v171, v129
	v_fmac_f32_e32 v15, v173, v130
	v_fmac_f32_e32 v13, v175, v131
	v_fmac_f32_e32 v11, v177, v132
	v_fmac_f32_e32 v9, v101, v93
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow585
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v114, 0 :: v_dual_and_b32 v1, 16, v0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v3, 0
	v_mov_b32_e32 v2, 0
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	ds_load_u8 v3, v75 offset:640
	ds_load_u8 v4, v75 offset:512
	ds_load_u8 v5, v75 offset:896
	ds_load_u8 v6, v75 offset:768
	ds_load_u8 v84, v75 offset:656
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s4, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v100, v75 offset:1664
	ds_load_u8 v101, v75 offset:1536
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_and_b32_e32 v2, 0x70, v79
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v144, s11 :: v_dual_mov_b32 v139, s6
	v_dual_mov_b32 v143, s10 :: v_dual_add_nc_u32 v8, 0, v78
	v_mov_b32_e32 v141, s8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_and_or_b32 v2, 0x88, v77, v2
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v142, s9
	v_dual_mov_b32 v140, s7 :: v_dual_mov_b32 v137, s4
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v78, v4, v3, 0xc0c0004
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_xad_u32 v7, v2, 8, 0
	v_add_nc_u32_e32 v77, 0, v2
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v6, v6, v5, 0xc0c0004
	ds_load_u8 v79, v75 offset:128
	ds_load_u8 v80, v75
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	ds_load_b64 v[2:3], v7 offset:2048
	ds_load_b64 v[4:5], v77 offset:2048
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v138, s5 :: v_dual_add_nc_u32 v147, 0, v76
	ds_load_u8 v92, v75 offset:672
	ds_load_u8 v104, v75 offset:688
	ds_load_u8 v105, v75 offset:704
	ds_load_u8 v106, v75 offset:720
	ds_load_u8 v107, v75 offset:736
	ds_load_u8 v108, v75 offset:752
	ds_load_u8 v85, v75 offset:528
	ds_load_u8 v93, v75 offset:544
	ds_load_u8 v109, v75 offset:560
	ds_load_u8 v110, v75 offset:576
	ds_load_u8 v111, v75 offset:592
	ds_load_u8 v112, v75 offset:608
	ds_load_u8 v113, v75 offset:624
	v_lshl_or_b32 v7, v6, 16, v78
	ds_load_u8 v6, v75 offset:384
	ds_load_u8 v77, v75 offset:256
	ds_load_u8 v89, v75 offset:144
	ds_load_u8 v96, v75 offset:160
	ds_load_u8 v123, v75 offset:176
	ds_load_u8 v124, v75 offset:192
	ds_load_u8 v125, v75 offset:208
	ds_load_u8 v126, v75 offset:224
	ds_load_u8 v127, v75 offset:240
	ds_load_u8 v90, v75 offset:16
	ds_load_u8 v97, v75 offset:32
	ds_load_u8 v128, v75 offset:48
	ds_load_u8 v129, v75 offset:64
	ds_load_u8 v130, v75 offset:80
	ds_load_u8 v131, v75 offset:96
	ds_load_u8 v132, v75 offset:112
	ds_load_u8 v86, v75 offset:1024
	ds_load_u8 v87, v75 offset:912
	ds_load_u8 v94, v75 offset:928
	ds_load_u8 v114, v75 offset:944
	ds_load_u8 v115, v75 offset:960
	ds_load_u8 v116, v75 offset:976
	ds_load_u8 v117, v75 offset:992
	ds_load_u8 v88, v75 offset:784
	ds_load_u8 v95, v75 offset:800
	ds_load_u8 v118, v75 offset:816
	ds_load_u8 v119, v75 offset:832
	ds_load_u8 v120, v75 offset:848
	ds_load_u8 v121, v75 offset:864
	ds_load_u8 v122, v75 offset:880
	ds_load_u8 v91, v75 offset:400
	ds_load_u8 v98, v75 offset:416
	ds_load_u8 v133, v75 offset:432
	ds_load_u8 v134, v75 offset:448
	ds_load_u8 v135, v75 offset:464
	ds_load_u8 v136, v75 offset:480
	ds_load_u8 v177, v75 offset:496
	ds_load_u8 v99, v75 offset:272
	ds_load_u8 v102, v75 offset:288
	ds_load_u8 v145, v75 offset:304
	ds_load_u8 v146, v75 offset:320
	ds_load_u8 v153, v75 offset:336
	ds_load_u8 v161, v75 offset:352
	ds_load_u8 v178, v75 offset:368
	s_waitcnt lgkmcnt(61)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v101, v75 offset:1152
	ds_load_u8 v156, v75 offset:1680
	ds_load_u8 v157, v75 offset:1696
	ds_load_u8 v158, v75 offset:1712
	ds_load_u8 v159, v75 offset:1728
	ds_load_u8 v164, v75 offset:1744
	ds_load_u8 v183, v75 offset:1760
	ds_load_u8 v184, v75 offset:1776
	ds_load_u8 v160, v75 offset:1808
	ds_load_u8 v165, v75 offset:1824
	ds_load_u8 v166, v75 offset:1840
	ds_load_u8 v167, v75 offset:1856
	ds_load_u8 v168, v75 offset:1872
	ds_load_u8 v185, v75 offset:1888
	ds_load_u8 v186, v75 offset:1904
	ds_load_u8 v170, v75 offset:1040
	ds_load_u8 v171, v75 offset:1056
	ds_load_u8 v172, v75 offset:1072
	ds_load_u8 v173, v75 offset:1088
	ds_load_u8 v174, v75 offset:1104
	ds_load_u8 v187, v75 offset:1120
	ds_load_u8 v188, v75 offset:1136
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v6, v77, v6, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v86, v86, v101, 0xc0c0004
	v_perm_b32 v84, v85, v84, 0xc0c0004
	v_perm_b32 v78, v80, v79, 0xc0c0004
	v_perm_b32 v104, v109, v104, 0xc0c0004
	v_perm_b32 v85, v88, v87, 0xc0c0004
	v_perm_b32 v87, v90, v89, 0xc0c0004
	v_perm_b32 v88, v99, v91, 0xc0c0004
	v_lshl_or_b32 v6, v6, 16, v78
	ds_load_u8 v99, v75 offset:1936
	ds_load_u8 v175, v75 offset:1168
	ds_load_u8 v176, v75 offset:1184
	ds_load_u8 v189, v75 offset:1200
	ds_load_u8 v190, v75 offset:1216
	ds_load_u8 v191, v75 offset:1232
	ds_load_u8 v192, v75 offset:1248
	ds_load_u8 v193, v75 offset:1264
	ds_load_u8 v194, v75 offset:1296
	ds_load_u8 v195, v75 offset:1312
	ds_load_u8 v196, v75 offset:1328
	ds_load_u8 v197, v75 offset:1344
	ds_load_u8 v198, v75 offset:1360
	ds_load_u8 v199, v75 offset:1376
	ds_load_u8 v200, v75 offset:1392
	v_perm_b32 v109, v118, v114, 0xc0c0004
	v_perm_b32 v114, v128, v123, 0xc0c0004
	v_perm_b32 v92, v93, v92, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[76:83], v[6:7], v[4:5], v[137:144] neg_lo:[1,1,0]
	ds_load_u8 v6, v75 offset:1920
	ds_load_u8 v7, v75 offset:1792
	ds_load_u8 v103, v75 offset:1424
	ds_load_u8 v148, v75 offset:1440
	ds_load_u8 v149, v75 offset:1456
	ds_load_u8 v154, v75 offset:1472
	ds_load_u8 v162, v75 offset:1488
	ds_load_u8 v179, v75 offset:1504
	ds_load_u8 v180, v75 offset:1520
	ds_load_u8 v150, v75 offset:1552
	ds_load_u8 v151, v75 offset:1568
	ds_load_u8 v152, v75 offset:1584
	ds_load_u8 v155, v75 offset:1600
	ds_load_u8 v163, v75 offset:1616
	ds_load_u8 v181, v75 offset:1632
	ds_load_u8 v182, v75 offset:1648
	v_perm_b32 v93, v95, v94, 0xc0c0004
	v_perm_b32 v94, v97, v96, 0xc0c0004
	v_perm_b32 v95, v102, v98, 0xc0c0004
	ds_load_u8 v123, v147
	ds_load_u8 v8, v8
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v169, v7, v6, 0xc0c0004
	ds_load_u8 v6, v75 offset:1408
	ds_load_u8 v7, v75 offset:1280
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v96, v194, v103, 0xc0c0004
	v_lshl_or_b32 v103, v93, 16, v92
	v_lshl_or_b32 v102, v95, 16, v94
	v_lshl_or_b32 v101, v169, 16, v100
	ds_load_u8 v169, v75 offset:1952
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v148, v195, v148, 0xc0c0004
	v_perm_b32 v118, v145, v133, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v151, v151, v157, 0xc0c0004
	v_perm_b32 v106, v111, v106, 0xc0c0004
	v_perm_b32 v111, v153, v135, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v8, v186, v8, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v89, v7, v6, 0xc0c0004
	v_lshl_or_b32 v7, v85, 16, v84
	v_lshl_or_b32 v6, v88, 16, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v100, v89, 16, v86
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v165, v169, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[84:91], v[6:7], v[4:5], v[137:144] neg_lo:[1,1,0]
	v_perm_b32 v6, v150, v156, 0xc0c0004
	ds_load_u8 v150, v75 offset:1968
	ds_load_u8 v156, v75 offset:1984
	ds_load_u8 v201, v75 offset:2000
	ds_load_u8 v75, v75 offset:2016
	v_perm_b32 v7, v160, v99, 0xc0c0004
	v_perm_b32 v160, v171, v176, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[76:83], v[100:101], v[2:3], v[76:83] neg_lo:[1,1,0]
	v_perm_b32 v100, v152, v158, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v7, v7, 16, v6
	v_perm_b32 v6, v170, v175, 0xc0c0004
	v_lshl_or_b32 v6, v96, 16, v6
	v_wmma_i32_16x16x16_iu4 v[92:99], v[102:103], v[4:5], v[137:144] neg_lo:[1,1,0]
	v_lshl_or_b32 v103, v157, 16, v151
	v_lshl_or_b32 v102, v148, 16, v160
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[84:91], v[6:7], v[2:3], v[84:91] neg_lo:[1,1,0]
	v_lshl_or_b32 v7, v109, 16, v104
	v_lshl_or_b32 v6, v118, 16, v114
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v101, v166, v150, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[92:99], v[102:103], v[2:3], v[92:99] neg_lo:[1,1,0]
	v_perm_b32 v102, v172, v189, 0xc0c0004
	v_perm_b32 v103, v196, v149, 0xc0c0004
	v_perm_b32 v104, v110, v105, 0xc0c0004
	v_perm_b32 v105, v119, v115, 0xc0c0004
	v_perm_b32 v109, v129, v124, 0xc0c0004
	v_perm_b32 v110, v146, v134, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[145:152], v[6:7], v[4:5], v[137:144] neg_lo:[1,1,0]
	v_lshl_or_b32 v7, v101, 16, v100
	v_lshl_or_b32 v6, v103, 16, v102
	v_lshl_or_b32 v101, v105, 16, v104
	v_lshl_or_b32 v100, v110, 16, v109
	v_perm_b32 v102, v155, v159, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v103, v167, v156, 0xc0c0004
	v_perm_b32 v104, v173, v190, 0xc0c0004
	v_perm_b32 v105, v197, v154, 0xc0c0004
	v_perm_b32 v109, v120, v116, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[153:160], v[100:101], v[4:5], v[137:144] neg_lo:[1,1,0]
	v_lshl_or_b32 v101, v103, 16, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v100, v105, 16, v104
	v_lshl_or_b32 v103, v109, 16, v106
	v_perm_b32 v104, v112, v107, 0xc0c0004
	v_perm_b32 v105, v121, v117, 0xc0c0004
	v_perm_b32 v107, v131, v126, 0xc0c0004
	v_perm_b32 v109, v161, v136, 0xc0c0004
	v_perm_b32 v110, v130, v125, 0xc0c0004
	v_perm_b32 v106, v163, v164, 0xc0c0004
	v_lshl_or_b32 v105, v105, 16, v104
	v_perm_b32 v112, v198, v162, 0xc0c0004
	v_lshl_or_b32 v104, v109, 16, v107
	v_lshl_or_b32 v102, v111, 16, v110
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v110, v168, v201, 0xc0c0004
	v_perm_b32 v111, v174, v191, 0xc0c0004
	v_perm_b32 v107, v113, v108, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[169:176], v[104:105], v[4:5], v[137:144] neg_lo:[1,1,0]
	v_perm_b32 v104, v132, v127, 0xc0c0004
	v_perm_b32 v105, v178, v177, 0xc0c0004
	v_perm_b32 v108, v122, v123, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[161:168], v[102:103], v[4:5], v[137:144] neg_lo:[1,1,0]
	v_lshl_or_b32 v103, v110, 16, v106
	v_lshl_or_b32 v102, v112, 16, v111
	v_perm_b32 v106, v181, v183, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v185, v75, 0xc0c0004
	v_perm_b32 v109, v187, v192, 0xc0c0004
	v_perm_b32 v110, v199, v179, 0xc0c0004
	v_lshl_or_b32 v104, v105, 16, v104
	v_lshl_or_b32 v105, v108, 16, v107
	v_perm_b32 v108, v188, v193, 0xc0c0004
	v_perm_b32 v111, v200, v180, 0xc0c0004
	v_perm_b32 v112, v182, v184, 0xc0c0004
	v_lshl_or_b32 v107, v75, 16, v106
	v_lshl_or_b32 v106, v110, 16, v109
	v_wmma_i32_16x16x16_iu4 v[137:144], v[104:105], v[4:5], v[137:144] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v111, 16, v108
	v_lshl_or_b32 v5, v8, 16, v112
	v_wmma_i32_16x16x16_iu4 v[145:152], v[6:7], v[2:3], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[153:160], v[100:101], v[2:3], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[161:168], v[102:103], v[2:3], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[169:176], v[106:107], v[2:3], v[169:176] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[4:5], v[2:3], v[137:144] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v113, v76
	v_cvt_f32_i32_e32 v114, v77
	v_cvt_f32_i32_e32 v117, v78
	v_cvt_f32_i32_e32 v118, v79
	v_cvt_f32_i32_e32 v115, v80
	v_cvt_f32_i32_e32 v116, v81
	v_cvt_f32_i32_e32 v119, v82
	v_cvt_f32_i32_e32 v120, v83
	v_cvt_f32_i32_e32 v121, v84
	v_cvt_f32_i32_e32 v122, v85
	v_cvt_f32_i32_e32 v125, v86
	v_cvt_f32_i32_e32 v126, v87
	v_cvt_f32_i32_e32 v123, v88
	v_cvt_f32_i32_e32 v124, v89
	v_cvt_f32_i32_e32 v127, v90
	v_cvt_f32_i32_e32 v128, v91
	v_cvt_f32_i32_e32 v129, v92
	v_cvt_f32_i32_e32 v130, v93
	v_cvt_f32_i32_e32 v133, v94
	v_cvt_f32_i32_e32 v134, v95
	v_cvt_f32_i32_e32 v131, v96
	v_cvt_f32_i32_e32 v132, v97
	v_cvt_f32_i32_e32 v135, v98
	v_cvt_f32_i32_e32 v136, v99
	v_cvt_f32_i32_e32 v111, v145
	v_cvt_f32_i32_e32 v112, v146
	v_cvt_f32_i32_e32 v109, v147
	v_cvt_f32_i32_e32 v110, v148
	v_cvt_f32_i32_e32 v107, v149
	v_cvt_f32_i32_e32 v108, v150
	v_cvt_f32_i32_e32 v105, v151
	v_cvt_f32_i32_e32 v106, v152
	v_cvt_f32_i32_e32 v103, v153
	v_cvt_f32_i32_e32 v104, v154
	v_cvt_f32_i32_e32 v101, v155
	v_cvt_f32_i32_e32 v102, v156
	v_cvt_f32_i32_e32 v99, v157
	v_cvt_f32_i32_e32 v100, v158
	v_cvt_f32_i32_e32 v97, v159
	v_cvt_f32_i32_e32 v98, v160
	v_cvt_f32_i32_e32 v95, v161
	v_cvt_f32_i32_e32 v96, v162
	v_cvt_f32_i32_e32 v93, v163
	v_cvt_f32_i32_e32 v94, v164
	v_cvt_f32_i32_e32 v91, v165
	v_cvt_f32_i32_e32 v92, v166
	v_cvt_f32_i32_e32 v89, v167
	v_cvt_f32_i32_e32 v90, v168
	v_cvt_f32_i32_e32 v87, v169
	v_cvt_f32_i32_e32 v88, v170
	v_cvt_f32_i32_e32 v85, v171
	v_cvt_f32_i32_e32 v86, v172
	v_cvt_f32_i32_e32 v83, v173
	v_cvt_f32_i32_e32 v84, v174
	v_cvt_f32_i32_e32 v81, v175
	v_cvt_f32_i32_e32 v82, v176
	v_cvt_f32_i32_e32 v8, v137
	v_cvt_f32_i32_e32 v80, v138
	v_cvt_f32_i32_e32 v6, v139
	v_cvt_f32_i32_e32 v7, v140
	v_cvt_f32_i32_e32 v4, v141
	v_cvt_f32_i32_e32 v5, v142
	v_cvt_f32_i32_e32 v3, v143
	v_cvt_f32_i32_e32 v2, v144
.LBB0_5:
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v75, s35, v73
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s0, s44, 0
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s1, s34, s35
	.loc	1 179 36                        ; generate_amdgcn.py:179:36
	s_mul_i32 s3, s0, s27
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_add_i32 s1, s1, s0
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s0, s33, s3
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s21, s13, 0xffff
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v77, s0, v74, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v75, s1, v75, 1
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s12
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v73, s27, v73
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v74, 0x80000000, v75, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v75, 0x80000000, v77, s2
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s34, s34, s27
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v0, 0x1e0, v0
	s_and_b32 s25, s25, 0xffff
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	buffer_load_u16 v76, v74, s[20:23], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s20, s14
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v73, s34, s33, v73
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v76, 16, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v78, 4, v77
	v_add_nc_u32_e32 v79, 8, v77
	v_add_nc_u32_e32 v137, 16, v77
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v117, v117, v76 :: v_dual_add_nc_u32 v138, 20, v77
	v_mul_f32_e32 v114, v114, v76
	v_mul_f32_e32 v113, v113, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v74, 0x80000000, v78, s2
	v_cndmask_b32_e64 v78, 0x80000000, v79, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v118, v118, v76 :: v_dual_add_nc_u32 v79, 12, v77
	v_dual_mul_f32 v120, v120, v76 :: v_dual_add_nc_u32 v139, 24, v77
	v_dual_mul_f32 v115, v115, v76 :: v_dual_add_nc_u32 v140, 28, v77
	v_dual_mul_f32 v122, v122, v76 :: v_dual_add_nc_u32 v141, 32, v77
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v119, v119, v76 :: v_dual_add_nc_u32 v142, 36, v77
	v_dual_mul_f32 v126, v126, v76 :: v_dual_add_nc_u32 v143, 40, v77
	v_mul_f32_e32 v116, v116, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v137, 0x80000000, v137, s2
	v_cndmask_b32_e64 v138, 0x80000000, v138, s2
	v_cndmask_b32_e64 v139, 0x80000000, v139, s2
	v_cndmask_b32_e64 v140, 0x80000000, v140, s2
	s_clause 0x7
	buffer_load_u16 v154, v75, s[20:23], 0 offen
	buffer_load_u16 v155, v74, s[20:23], 0 offen
	buffer_load_u16 v156, v78, s[20:23], 0 offen
	buffer_load_u16 v157, v79, s[20:23], 0 offen
	buffer_load_u16 v158, v137, s[20:23], 0 offen
	buffer_load_u16 v159, v138, s[20:23], 0 offen
	buffer_load_u16 v160, v139, s[20:23], 0 offen
	buffer_load_u16 v161, v140, s[20:23], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v124, v124, v76 :: v_dual_add_nc_u32 v79, 44, v77
	v_dual_mul_f32 v128, v128, v76 :: v_dual_add_nc_u32 v137, 48, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v74, 0x80000000, v141, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v121, v121, v76 :: v_dual_add_nc_u32 v138, 52, v77
	v_dual_mul_f32 v130, v130, v76 :: v_dual_add_nc_u32 v139, 56, v77
	v_dual_mul_f32 v125, v125, v76 :: v_dual_add_nc_u32 v140, 60, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v75, 0x80000000, v142, s2
	v_cndmask_b32_e64 v78, 0x80000000, v143, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v134, v134, v76 :: v_dual_add_nc_u32 v141, 64, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v123, v123, v76 :: v_dual_add_nc_u32 v142, 0x44, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v137, 0x80000000, v137, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v132, v132, v76 :: v_dual_add_nc_u32 v143, 0x48, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v138, 0x80000000, v138, s2
	v_cndmask_b32_e64 v139, 0x80000000, v139, s2
	v_cndmask_b32_e64 v140, 0x80000000, v140, s2
	s_clause 0x7
	buffer_load_u16 v164, v74, s[20:23], 0 offen
	buffer_load_u16 v165, v75, s[20:23], 0 offen
	buffer_load_u16 v166, v78, s[20:23], 0 offen
	buffer_load_u16 v167, v79, s[20:23], 0 offen
	buffer_load_u16 v168, v137, s[20:23], 0 offen
	buffer_load_u16 v169, v138, s[20:23], 0 offen
	buffer_load_u16 v170, v139, s[20:23], 0 offen
	buffer_load_u16 v171, v140, s[20:23], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v136, v136, v76 :: v_dual_add_nc_u32 v79, 0x4c, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v137, 0x50, v77
	v_cndmask_b32_e64 v74, 0x80000000, v141, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v127, v127, v76 :: v_dual_add_nc_u32 v138, 0x54, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v139, 0x58, v77
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v129, v129, v76 :: v_dual_add_nc_u32 v140, 0x5c, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v75, 0x80000000, v142, s2
	v_cndmask_b32_e64 v78, 0x80000000, v143, s2
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	v_cndmask_b32_e64 v137, 0x80000000, v137, s2
	v_cndmask_b32_e64 v138, 0x80000000, v138, s2
	v_cndmask_b32_e64 v139, 0x80000000, v139, s2
	v_cndmask_b32_e64 v140, 0x80000000, v140, s2
	s_clause 0x7
	buffer_load_u16 v176, v74, s[20:23], 0 offen
	buffer_load_u16 v177, v75, s[20:23], 0 offen
	buffer_load_u16 v178, v78, s[20:23], 0 offen
	buffer_load_u16 v179, v79, s[20:23], 0 offen
	buffer_load_u16 v180, v137, s[20:23], 0 offen
	buffer_load_u16 v181, v138, s[20:23], 0 offen
	buffer_load_u16 v172, v139, s[20:23], 0 offen
	buffer_load_u16 v173, v140, s[20:23], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v133, v133, v76 :: v_dual_add_nc_u32 v78, 0x60, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v79, 0x64, v77
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v75.h, 0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v131, v131, v76 :: v_dual_add_nc_u32 v138, 0x6c, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	s_clause 0x1
	buffer_load_u16 v193, v78, s[20:23], 0 offen
	buffer_load_u16 v194, v79, s[20:23], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v190.h, v75.h
	v_mov_b16_e64 v188.h, v75.h
	v_mov_b16_e64 v189.h, v75.h
	v_mov_b16_e64 v182.h, v75.h
	v_mov_b16_e64 v183.h, v75.h
	v_mov_b16_e64 v184.h, v75.h
	v_mov_b16_e64 v185.h, v75.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v137, 0x68, v77
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v186.h, v75.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v138, 0x80000000, v138, s2
	v_add_nc_u32_e32 v139, 0x70, v77
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v135, v135, v76 :: v_dual_add_nc_u32 v78, 0x74, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v137, 0x80000000, v137, s2
	s_clause 0x1
	buffer_load_u16 v195, v137, s[20:23], 0 offen
	buffer_load_u16 v196, v138, s[20:23], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v187.h, v75.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v139, 0x80000000, v139, s2
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	s_clause 0x1
	buffer_load_u16 v205, v139, s[20:23], 0 offen
	buffer_load_u16 v206, v78, s[20:23], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v191.h, v75.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v79, 0x78, v77
	v_add_nc_u32_e32 v140, 0x7c, v77
	v_add_nc_u32_e32 v141, 0x80, v77
	v_add_nc_u32_e32 v142, 0x84, v77
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v192.h, v75.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	v_add_nc_u32_e32 v144, 0x8c, v77
	v_cndmask_b32_e64 v141, 0x80000000, v141, s2
	v_add_nc_u32_e32 v146, 0x94, v77
	v_add_nc_u32_e32 v143, 0x88, v77
	v_add_nc_u32_e32 v145, 0x90, v77
	v_add_nc_u32_e32 v147, 0x98, v77
	v_add_nc_u32_e32 v148, 0x9c, v77
	v_add_nc_u32_e32 v149, 0xa0, v77
	v_add_nc_u32_e32 v150, 0xa4, v77
	v_add_nc_u32_e32 v151, 0xa8, v77
	v_add_nc_u32_e32 v152, 0xac, v77
	v_add_nc_u32_e32 v137, 0xb0, v77
	v_add_nc_u32_e32 v138, 0xb4, v77
	v_add_nc_u32_e32 v153, 0xb8, v77
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v7, v7, v76 :: v_dual_add_nc_u32 v162, 0xbc, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v163, 0xc0, v77
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v5, v5, v76 :: v_dual_add_nc_u32 v174, 0xc4, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v175, 0xc8, v77
	v_add_nc_u32_e32 v197, 0xcc, v77
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v3, v76 :: v_dual_add_nc_u32 v198, 0xd0, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v199, 0xd4, v77
	v_add_nc_u32_e32 v201, 0xdc, v77
	v_add_nc_u32_e32 v203, 0xe4, v77
	v_add_nc_u32_e32 v139, 0xf0, v77
	v_add_nc_u32_e32 v207, 0xf4, v77
	v_cndmask_b32_e64 v143, 0x80000000, v143, s2
	v_cndmask_b32_e64 v145, 0x80000000, v145, s2
	v_cndmask_b32_e64 v147, 0x80000000, v147, s2
	v_cndmask_b32_e64 v149, 0x80000000, v149, s2
	v_cndmask_b32_e64 v137, 0x80000000, v137, s2
	v_cndmask_b32_e64 v138, 0x80000000, v138, s2
	v_cndmask_b32_e64 v211, 0x80000000, v162, s2
	v_cndmask_b32_e64 v212, 0x80000000, v163, s2
	v_cndmask_b32_e64 v213, 0x80000000, v174, s2
	v_cndmask_b32_e64 v214, 0x80000000, v175, s2
	v_cndmask_b32_e64 v197, 0x80000000, v197, s2
	v_cndmask_b32_e64 v198, 0x80000000, v198, s2
	v_cndmask_b32_e64 v199, 0x80000000, v199, s2
	v_cndmask_b32_e64 v201, 0x80000000, v201, s2
	v_cndmask_b32_e64 v203, 0x80000000, v203, s2
	v_cndmask_b32_e64 v217, 0x80000000, v139, s2
	v_cndmask_b32_e64 v207, 0x80000000, v207, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v74, 1, v1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v8, v8, v76
	v_mul_f32_e32 v6, v6, v76
	s_waitcnt vmcnt(28)
	v_dual_mul_f32 v2, v2, v76 :: v_dual_lshlrev_b32 v155, 16, v155
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v156, 16, v156
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v157, 16, v157
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v158, 16, v158
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v159, 16, v159
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v114, v114, v155, v72
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v161, 16, v161
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v118, v118, v157, v69
	v_fma_f32 v117, v117, v156, v70
	v_fma_f32 v116, v116, v159, v68
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v72, v72, v114, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v120, v120, v161, v66
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v69, v69, v118, s2
	v_cndmask_b32_e64 v70, v70, v117, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v115, v115, v158, v71
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v182.l, v72.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v66, v66, v120, s2
	v_cndmask_b32_e64 v68, v68, v116, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v183.l, v70.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v71, v71, v115, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v160, 16, v160
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v69, v69
	v_cmp_o_f32_e64 s3, v70, v70
	v_cmp_o_f32_e32 vcc_lo, v72, v72
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v164, 16, v164
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v165, 16, v165
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v119, v119, v160, v67
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v184.l, v71.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v168, 16, v168
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v121, v121, v164, v65
	v_fma_f32 v122, v122, v165, v64
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v170, 16, v170
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v67, v67, v119, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v123, v123, v168, v61
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v65, v65, v121, s2
	v_cndmask_b32_e64 v64, v64, v122, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v127, v127, v170, v59
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v185.l, v67.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v61, v61, v123, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v166, 16, v166
	v_lshlrev_b32_e32 v167, 16, v167
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v176, 16, v176
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v59, v59, v127, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v188.l, v61.h
	v_cmp_o_f32_e64 s13, v61, v61
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v180, 16, v180
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v129, v129, v176, v57
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v189.l, v59.h
	v_and_b32_e32 v120, 1, v188
	v_cmp_o_f32_e64 s15, v59, v59
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v179, 16, v179
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v57, v57, v129, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v121, 1, v189
	v_add3_u32 v61, v61, v120, 0x7fff
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v131, v131, v180, v53
	v_fma_f32 v134, v134, v179, v54
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v190.l, v57.h
	v_cmp_o_f32_e64 s17, v57, v57
	v_add3_u32 v59, v59, v121, 0x7fff
	v_cndmask_b16 v59.l, 0x7fff, v61.h, s13
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v181, 16, v181
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v122, 1, v190
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v116, v53, v131, s2
	v_cndmask_b32_e64 v115, v54, v134, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v54, 1, v183
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v132, v132, v181, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v57, v57, v122, 0x7fff
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v125, v125, v166, v63
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s5, v71, v71
	v_mov_b16_e64 v186.l, v65.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v117, v52, v132, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v57.l, 0x7fff, v57.h, s17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v154, 16, v154
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v52, 1, v182
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v171, 16, v171
	v_lshlrev_b32_e32 v178, 16, v178
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v126, v126, v167, v62
	v_fma_f32 v113, v113, v154, v51
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v63, v63, v125, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v128, v128, v171, v58
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v118, 1, v186
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v133, v133, v178, v55
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v51, v51, v113, s2
	v_cndmask_b32_e64 v62, v62, v126, s2
	v_cndmask_b32_e64 v113, v58, v128, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v58, 1, v185
	v_cmp_o_f32_e64 s9, v65, v65
	v_mov_b16_e32 v75.l, v51.h
	v_cmp_o_f32_e64 s0, v51, v51
	v_mov_b16_e64 v187.l, v63.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v55, v55, v133, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s11, v63, v63
	v_and_b32_e32 v53, 1, v75
	v_mov_b16_e32 v75.l, v69.h
	v_and_b32_e32 v119, 1, v187
	v_mov_b16_e64 v191.l, v55.h
	v_cmp_o_f32_e64 s7, v67, v67
	v_add3_u32 v53, v51, v53, 0x7fff
	v_and_b32_e32 v123, 1, v75
	v_add3_u32 v51, v72, v52, 0x7fff
	v_add3_u32 v52, v70, v54, 0x7fff
	v_mov_b16_e32 v75.l, v68.h
	v_cndmask_b16 v51.l, 0x7fff, v53.h, s0
	v_add3_u32 v53, v69, v123, 0x7fff
	v_cndmask_b16 v51.h, 0x7fff, v51.h, vcc_lo
	v_cndmask_b16 v52.l, 0x7fff, v52.h, s3
	v_and_b32_e32 v70, 1, v75
	v_mov_b16_e32 v75.l, v66.h
	v_cndmask_b16 v52.h, 0x7fff, v53.h, s1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v177, 16, v177
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v63, v63, v119, 0x7fff
	v_cmp_o_f32_e64 s19, v55, v55
	v_cmp_o_f32_e64 s8, v64, v64
	v_cmp_o_f32_e64 s6, v66, v66
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v130, v130, v177, v56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v53.l, 0x7fff, v63.h, s11
	v_cmp_o_f32_e64 s10, v62, v62
	v_cmp_o_f32_e64 s18, v115, v115
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v172, 16, v172
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v114, v56, v130, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v56, 1, v184
	v_cmp_o_f32_e64 s14, v113, v113
	v_cmp_o_f32_e64 s4, v68, v68
	v_add3_u32 v68, v68, v70, 0x7fff
	v_cmp_o_f32_e64 s16, v114, v114
	v_add3_u32 v54, v71, v56, 0x7fff
	v_add3_u32 v56, v67, v58, 0x7fff
	v_add3_u32 v58, v65, v118, 0x7fff
	v_and_b32_e32 v65, 1, v75
	v_mov_b16_e32 v75.l, v64.h
	v_cndmask_b16 v56.l, 0x7fff, v54.h, s5
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v169, 16, v169
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v58.l, 0x7fff, v59.h, s15
	v_add3_u32 v65, v66, v65, 0x7fff
	v_and_b32_e32 v71, 1, v75
	v_mov_b16_e32 v75.l, v62.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v124, v124, v169, v60
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v54.l, 0x7fff, v58.h, s9
	v_mov_b16_e64 v192.l, v116.h
	v_add3_u32 v64, v64, v71, 0x7fff
	v_and_b32_e32 v69, 1, v75
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v60, v60, v124, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v124, 1, v191
	v_cmp_o_f32_e32 vcc_lo, v117, v117
	v_cndmask_b16 v54.h, 0x7fff, v64.h, s8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v64, 16, v193
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v75.l, v60.h
	v_add3_u32 v67, v55, v124, 0x7fff
	v_cmp_o_f32_e64 s12, v60, v60
	v_add3_u32 v62, v62, v69, 0x7fff
	v_cndmask_b16 v55.h, 0x7fff, v65.h, s6
	v_and_b32_e32 v63, 1, v75
	v_mov_b16_e32 v75.l, v113.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v65, 16, v194
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v53.h, 0x7fff, v62.h, s10
	v_cndmask_b16 v55.l, 0x7fff, v56.h, s7
	v_add3_u32 v60, v60, v63, 0x7fff
	v_cndmask_b16 v60.l, 0x7fff, v67.h, s19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v67, v111, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v140, 0x80000000, v140, s2
	s_clause 0x1
	buffer_load_u16 v209, v79, s[20:23], 0 offen
	buffer_load_u16 v210, v140, s[20:23], 0 offen
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v64, v67, v64, v47
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v67, v109, v76
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v142, 0x80000000, v142, s2
	s_clause 0x1
	buffer_load_u16 v215, v141, s[20:23], 0 offen
	buffer_load_u16 v216, v142, s[20:23], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v61, 1, v75
	v_mov_b16_e32 v75.l, v114.h
	v_cndmask_b16 v59.h, 0x7fff, v60.h, s12
	v_cndmask_b16 v56.h, 0x7fff, v68.h, s4
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v200, 0xd8, v77
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v61, v113, v61, 0x7fff
	v_and_b32_e32 v66, 1, v75
	v_mov_b16_e32 v75.l, v115.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v202, 0xe0, v77
	v_add_nc_u32_e32 v204, 0xe8, v77
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v58.h, 0x7fff, v61.h, s14
	v_add3_u32 v63, v114, v66, 0x7fff
	v_and_b32_e32 v62, 1, v75
	v_mov_b16_e32 v75.l, v117.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v66, v112, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v78, 0xec, v77
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v57.h, 0x7fff, v63.h, s16
	v_add3_u32 v62, v115, v62, 0x7fff
	v_and_b32_e32 v61, 1, v75
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v65, v66, v65, v48
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v63, 1, v192
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v79, 0x80000000, v151, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v60.h, 0x7fff, v62.h, s18
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v173, 16, v173
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v62, v135, v172, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v61, v117, v61, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v48, v48, v65, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v63, v116, v63, 0x7fff
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v136, v136, v173, v50
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v62, v49, v62, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v49.h, 0x7fff, v61.h, vcc_lo
	v_mov_b16_e32 v61.h, v75.h
	v_cmp_o_f32_e32 vcc_lo, v116, v116
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v50, v50, v136, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v61.l, v62.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v65, 16, v196
	v_cndmask_b32_e64 v140, 0x80000000, v152, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v49.l, 0x7fff, v63.h, vcc_lo
	v_mov_b16_e32 v75.l, v50.h
	v_cmp_o_f32_e64 s0, v50, v50
	v_and_b32_e32 v61, 1, v61
	v_mov_b16_e32 v63.h, v75.h
	v_cmp_o_f32_e32 vcc_lo, v62, v62
	v_and_b32_e32 v68, 1, v75
	v_mov_b16_e32 v75.l, v48.h
	v_add3_u32 v61, v62, v61, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v151, 0x80000000, v153, s2
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v66, v50, v68, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v50, v47, v64, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v64, 16, v195
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v68, 1, v75
	v_cndmask_b16 v47.l, 0x7fff, v61.h, vcc_lo
	v_cndmask_b16 v47.h, 0x7fff, v66.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v66, v110, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v63.l, v50.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v64, v67, v64, v45
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v48, v48
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v62, v66, v65, v46
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v65, v48, v68, 0x7fff
	v_and_b32_e32 v63, 1, v63
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v48, v45, v64, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v64, 16, v206
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v46, v46, v62, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v45.h, 0x7fff, v65.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v65, v108, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v61, v50, v63, 0x7fff
	v_mov_b16_e32 v62.l, v48.h
	v_mov_b16_e32 v75.l, v46.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v63, 16, v205
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v50, v65, v64, v44
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v66, v107, v76
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v62.h, v75.h
	v_and_b32_e32 v67, 1, v75
	v_cmp_o_f32_e64 s0, v46, v46
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v44, v44, v50, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v63, v66, v63, v43
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v62, 1, v62
	v_add3_u32 v64, v46, v67, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v65, v105, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v75.l, v44.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v46, v43, v63, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v50, v48, v62, 0x7fff
	v_cndmask_b16 v43.h, 0x7fff, v64.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v64, v106, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v66, 1, v75
	v_cndmask_b16 v45.l, 0x7fff, v61.h, vcc_lo
	v_mov_b16_e32 v61.l, v46.h
	v_mov_b16_e32 v61.h, v75.h
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	v_cmp_o_f32_e64 s0, v44, v44
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v208, 0xf8, v77
	v_add_nc_u32_e32 v77, 0xfc, v77
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v61, 1, v61
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v144, 0x80000000, v144, s2
	v_cndmask_b32_e64 v146, 0x80000000, v146, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v43.l, 0x7fff, v50.h, vcc_lo
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v200, 0x80000000, v200, s2
	v_cndmask_b32_e64 v202, 0x80000000, v202, s2
	v_cndmask_b32_e64 v204, 0x80000000, v204, s2
	v_cndmask_b32_e64 v208, 0x80000000, v208, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v50.h, v75.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v62, 16, v209
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v63, 16, v210
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v62, v65, v62, v41
	v_fma_f32 v48, v64, v63, v42
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v63, v44, v66, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v64, v103, v76
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v44, v41, v62, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v62, 16, v216
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v41.h, 0x7fff, v63.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v63, v104, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v148, 0x80000000, v148, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v42, v42, v48, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v48, v46, v61, 0x7fff
	v_mov_b16_e32 v50.l, v44.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v46, v63, v62, v40
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v63, v101, v76
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v150, 0x80000000, v150, s2
	s_clause 0x1d
	buffer_load_u16 v218, v143, s[20:23], 0 offen
	buffer_load_u16 v219, v144, s[20:23], 0 offen
	buffer_load_u16 v220, v145, s[20:23], 0 offen
	buffer_load_u16 v221, v146, s[20:23], 0 offen
	buffer_load_u16 v222, v147, s[20:23], 0 offen
	buffer_load_u16 v223, v148, s[20:23], 0 offen
	buffer_load_u16 v174, v149, s[20:23], 0 offen
	buffer_load_u16 v175, v150, s[20:23], 0 offen
	buffer_load_u16 v162, v79, s[20:23], 0 offen
	buffer_load_u16 v163, v140, s[20:23], 0 offen
	buffer_load_u16 v152, v137, s[20:23], 0 offen
	buffer_load_u16 v153, v138, s[20:23], 0 offen
	buffer_load_u16 v150, v151, s[20:23], 0 offen
	buffer_load_u16 v151, v211, s[20:23], 0 offen
	buffer_load_u16 v148, v212, s[20:23], 0 offen
	buffer_load_u16 v149, v213, s[20:23], 0 offen
	buffer_load_u16 v146, v214, s[20:23], 0 offen
	buffer_load_u16 v147, v197, s[20:23], 0 offen
	buffer_load_u16 v144, v198, s[20:23], 0 offen
	buffer_load_u16 v145, v199, s[20:23], 0 offen
	buffer_load_u16 v142, v200, s[20:23], 0 offen
	buffer_load_u16 v143, v201, s[20:23], 0 offen
	buffer_load_u16 v140, v202, s[20:23], 0 offen
	buffer_load_u16 v141, v203, s[20:23], 0 offen
	buffer_load_u16 v138, v204, s[20:23], 0 offen
	buffer_load_u16 v139, v78, s[20:23], 0 offen
	buffer_load_u16 v79, v217, s[20:23], 0 offen
	buffer_load_u16 v137, v207, s[20:23], 0 offen
	buffer_load_u16 v78, v208, s[20:23], 0 offen
	buffer_load_u16 v77, v77, s[20:23], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v75.l, v42.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v61, 16, v215
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v40, v40, v46, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v50, 1, v50
	v_cmp_o_f32_e64 s0, v42, v42
	v_and_b32_e32 v65, 1, v75
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v61, v64, v61, v39
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v75.l, v40.h
	v_add3_u32 v46, v44, v50, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v48.h, vcc_lo
	v_add3_u32 v62, v42, v65, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v42, v39, v61, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v64, 1, v75
	v_mov_b16_e32 v48.h, v75.h
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	v_cndmask_b16 v39.h, 0x7fff, v62.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v62, v102, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v48.l, v42.h
	v_cmp_o_f32_e64 s0, v40, v40
	v_cndmask_b16 v39.l, 0x7fff, v46.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_mov_b16_e32 v46.h, v75.h
	v_and_b32_e32 v48, 1, v48
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v50, 16, v218
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v61, 16, v219
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v50, v63, v50, v37
	v_fma_f32 v44, v62, v61, v38
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v61, v40, v64, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v62, v99, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v40, v37, v50, s2
	v_cndmask_b32_e64 v38, v38, v44, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v37.h, 0x7fff, v61.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(26)
	v_dual_mul_f32 v61, v100, v76 :: v_dual_lshlrev_b32 v50, 16, v221
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v44, v42, v48, 0x7fff
	v_mov_b16_e32 v75.l, v38.h
	v_mov_b16_e32 v46.l, v40.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v48, 16, v220
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v42, v61, v50, v36
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v38, v38
	v_and_b32_e32 v63, 1, v75
	v_and_b32_e32 v46, 1, v46
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v48, v62, v48, v35
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v36, v36, v42, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v61, v97, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v50, v38, v63, 0x7fff
	v_add3_u32 v38, v40, v46, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v35, v35, v48, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v75.l, v36.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v46, 16, v222
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v42.h, 0x7fff, v50.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v48, 16, v223
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v50, v98, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v62, 1, v75
	v_cndmask_b16 v37.l, 0x7fff, v44.h, vcc_lo
	v_mov_b16_e32 v44.l, v35.h
	v_mov_b16_e32 v44.h, v75.h
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v40, v50, v48, v34
	v_fma_f32 v46, v61, v46, v33
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v48, v36, v62, 0x7fff
	v_cmp_o_f32_e64 s0, v36, v36
	v_and_b32_e32 v44, 1, v44
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v34, v34, v40, s2
	v_cndmask_b32_e64 v33, v33, v46, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v42.l, 0x7fff, v38.h, vcc_lo
	v_cndmask_b16 v38.h, 0x7fff, v48.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v46, 16, v175
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v48, v96, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v36, v35, v44, 0x7fff
	v_mov_b16_e32 v75.l, v34.h
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	v_mov_b16_e32 v40.l, v33.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v35, v48, v46, v32
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v44, 16, v174
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v50, v95, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v40.h, v75.h
	v_and_b32_e32 v61, 1, v75
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v32, v32, v35, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v34, v34
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v44, v50, v44, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v46, v34, v61, 0x7fff
	v_mov_b16_e32 v75.l, v32.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v48, v93, v76
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v31, v31, v44, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v34, v33, v40, 0x7fff
	v_cndmask_b16 v35.h, 0x7fff, v46.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v40, 16, v162
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v44, 16, v163
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v46, v94, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v50, 1, v75
	v_cndmask_b16 v38.l, 0x7fff, v36.h, vcc_lo
	v_mov_b16_e32 v36.l, v31.h
	v_mov_b16_e32 v36.h, v75.h
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v33, v46, v44, v30
	v_fma_f32 v40, v48, v40, v29
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v44, v32, v50, 0x7fff
	v_cmp_o_f32_e64 s0, v32, v32
	v_and_b32_e32 v36, 1, v36
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v30, v33, s2
	v_cndmask_b32_e64 v29, v29, v40, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v40, 16, v153
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v33.h, 0x7fff, v44.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v44, v92, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v35.l, 0x7fff, v34.h, vcc_lo
	v_add3_u32 v32, v31, v36, 0x7fff
	v_mov_b16_e32 v75.l, v30.h
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v31, v44, v40, v28
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v34.l, v29.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v36, 16, v152
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v46, v91, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v34.h, v75.h
	v_and_b32_e32 v48, 1, v75
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v28, v28, v31, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v30, v30
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v36, v46, v36, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v40, v30, v48, 0x7fff
	v_mov_b16_e32 v75.l, v28.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v44, v89, v76
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v27, v27, v36, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v30, v29, v34, 0x7fff
	v_cndmask_b16 v31.h, 0x7fff, v40.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v34, 16, v150
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v36, 16, v151
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v40, v90, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v46, 1, v75
	v_cndmask_b16 v33.l, 0x7fff, v32.h, vcc_lo
	v_mov_b16_e32 v32.l, v27.h
	v_mov_b16_e32 v32.h, v75.h
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v29, v40, v36, v26
	v_fma_f32 v34, v44, v34, v25
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v36, v28, v46, 0x7fff
	v_cmp_o_f32_e64 s0, v28, v28
	v_and_b32_e32 v32, 1, v32
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v26, v29, s2
	v_cndmask_b32_e64 v25, v25, v34, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v34, 16, v149
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v29.h, 0x7fff, v36.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v36, v88, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v31.l, 0x7fff, v30.h, vcc_lo
	v_add3_u32 v28, v27, v32, 0x7fff
	v_mov_b16_e32 v75.l, v26.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v32, 16, v148
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v40, v87, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v27, v36, v34, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v30.l, v25.h
	v_mov_b16_e32 v30.h, v75.h
	v_and_b32_e32 v44, 1, v75
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v32, v40, v32, v23
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v24, v24, v27, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v26, v26
	v_and_b32_e32 v30, 1, v30
	v_add3_u32 v34, v26, v44, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v23, v32, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v75.l, v24.h
	v_cndmask_b16 v29.l, 0x7fff, v28.h, vcc_lo
	v_add3_u32 v26, v25, v30, 0x7fff
	v_cndmask_b16 v27.h, 0x7fff, v34.h, s0
	v_mov_b16_e32 v28.l, v23.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v30, 16, v146
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v32, 16, v147
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v34, v86, v76
	v_mul_f32_e32 v36, v85, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v28.h, v75.h
	v_and_b32_e32 v40, 1, v75
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v25, v34, v32, v22
	v_fma_f32 v30, v36, v30, v21
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v28, 1, v28
	v_add3_u32 v32, v24, v40, 0x7fff
	v_cmp_o_f32_e64 s0, v24, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v22, v22, v25, s2
	v_cndmask_b32_e64 v21, v21, v30, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v24, v23, v28, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v28, 16, v144
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v25.h, 0x7fff, v32.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v30, 16, v145
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v32, v84, v76
	v_mul_f32_e32 v34, v83, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v27.l, 0x7fff, v26.h, vcc_lo
	v_mov_b16_e32 v75.l, v22.h
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v23, v32, v30, v20
	v_fma_f32 v28, v34, v28, v19
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v26.l, v21.h
	v_mov_b16_e32 v26.h, v75.h
	v_and_b32_e32 v36, 1, v75
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v20, v23, s2
	v_cndmask_b32_e64 v19, v19, v28, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v22, v22
	v_and_b32_e32 v26, 1, v26
	v_add3_u32 v30, v22, v36, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v24.h, vcc_lo
	v_mov_b16_e32 v75.l, v20.h
	v_mov_b16_e32 v24.l, v19.h
	v_mov_b16_e32 v24.h, v75.h
	v_add3_u32 v22, v21, v26, 0x7fff
	v_cndmask_b16 v23.h, 0x7fff, v30.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v26, 16, v142
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v28, 16, v143
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v30, v82, v76
	v_mul_f32_e32 v32, v81, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v34, 1, v75
	v_and_b32_e32 v24, 1, v24
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v21, v30, v28, v18
	v_fma_f32 v26, v32, v26, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v28, v20, v34, 0x7fff
	v_cmp_o_f32_e64 s0, v20, v20
	v_add3_u32 v20, v19, v24, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v24, 16, v140
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v18, v21, s2
	v_cndmask_b32_e64 v17, v17, v26, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v23.l, 0x7fff, v22.h, vcc_lo
	v_cndmask_b16 v21.h, 0x7fff, v28.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v26, 16, v141
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v28, v80, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v8, v8, v24, v15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v22.l, v17.h
	v_mov_b16_e32 v22.h, v75.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v19, v28, v26, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v21.l, 0x7fff, v20.h, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v8, v15, v8, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v20, 16, v138
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v75.l, v18.h
	v_and_b32_e32 v22, 1, v22
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v16, v16, v19, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v19.l, v8.h
	v_mov_b16_e32 v19.h, v75.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v6, v6, v20, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v30, 1, v75
	v_add3_u32 v15, v17, v22, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_and_b32_e32 v17, 1, v19
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v13, v6, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v24, v18, v30, 0x7fff
	v_cmp_o_f32_e64 s0, v18, v18
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v22, 16, v139
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v18.l, 0x7fff, v15.h, vcc_lo
	v_add3_u32 v13, v8, v17, 0x7fff
	v_mov_b16_e32 v15.l, v6.h
	v_mov_b16_e32 v15.h, v75.h
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v8, 16, v137
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v7, v7, v22, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v75.l, v16.h
	v_and_b32_e32 v15, 1, v15
	v_cndmask_b16 v18.h, 0x7fff, v24.h, s0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v5, v8, v12
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v7, v14, v7, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v24, 1, v75
	v_add3_u32 v8, v6, v15, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v77
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v12, v5, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v12, 16, v78
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v75.l, v7.h
	v_add3_u32 v19, v16, v24, 0x7fff
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v2, v2, v15, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v16, v16
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v3, v3, v12, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v16, 1, v75
	v_mov_b16_e32 v75.l, v5.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v9, v2, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v14.h, 0x7fff, v19.h, s0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v3, v10, v3, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v14.l, 0x7fff, v13.h, vcc_lo
	v_add3_u32 v13, v7, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_cmp_o_f32_e64 s0, v6, v6
	v_and_b32_e32 v6, 1, v75
	v_mov_b16_e32 v9.l, v3.h
	v_mov_b16_e32 v9.h, v75.h
	v_mov_b16_e32 v75.l, v2.h
	v_cndmask_b16 v10.h, 0x7fff, v13.h, vcc_lo
	v_cndmask_b16 v10.l, 0x7fff, v8.h, s0
	v_add3_u32 v6, v5, v6, 0x7fff
	v_and_b32_e32 v8, 1, v9
	v_and_b32_e32 v9, 1, v75
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v17, 16, v79
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.h, v75.h
	v_add3_u32 v5, v2, v9, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v6.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v1.h, 0x7fff, v5.h, s1
	v_dual_cndmask_b32 v9, v58, v53 :: v_dual_mul_f32 v4, v4, v76
	v_cndmask_b32_e32 v28, v35, v42, vcc_lo
	v_cndmask_b32_e32 v30, v42, v35, vcc_lo
	v_cndmask_b32_e32 v34, v18, v23, vcc_lo
	v_cndmask_b32_e32 v18, v23, v18, vcc_lo
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v4, v4, v17, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_dual_mov_b32 v23, 0x7632 :: v_dual_cndmask_b32 v6, v52, v55
	v_cndmask_b32_e32 v13, v57, v49, vcc_lo
	v_cndmask_b32_e32 v19, v45, v41, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v4, v11, v4, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v3, v3
	v_cndmask_b32_e32 v11, v53, v58, vcc_lo
	v_cndmask_b32_e32 v26, v37, v38, vcc_lo
	v_cndmask_b32_e32 v32, v29, v33, vcc_lo
	v_mov_b16_e32 v7.l, v4.h
	v_cmp_o_f32_e64 s0, v4, v4
	v_cndmask_b32_e32 v29, v33, v29, vcc_lo
	v_cndmask_b32_e32 v33, v27, v31, vcc_lo
	v_cndmask_b32_e32 v27, v31, v27, vcc_lo
	v_and_b32_e32 v7, 1, v7
	v_dual_cndmask_b32 v5, v55, v52 :: v_dual_cndmask_b32 v12, v49, v57
	v_cndmask_b32_e32 v17, v41, v45, vcc_lo
	v_cndmask_b32_e32 v24, v38, v37, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v7, v4, v7, 0x7fff
	v_add3_u32 v4, v3, v8, 0x7fff
	v_cndmask_b32_e32 v8, v54, v59, vcc_lo
	v_cndmask_b32_e32 v3, v56, v51, vcc_lo
	v_cndmask_b32_e32 v16, v60, v47, vcc_lo
	v_cndmask_b16 v2.l, 0x7fff, v7.h, s0
	v_cndmask_b16 v1.l, 0x7fff, v4.h, s2
	v_cndmask_b32_e32 v4, v51, v56, vcc_lo
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v7, v59, v54, vcc_lo
	v_cndmask_b32_e32 v35, v2, v14, vcc_lo
	v_cndmask_b32_e32 v2, v14, v2, vcc_lo
	v_mov_b32_e32 v14, 0x5410
	v_dual_cndmask_b32 v36, v1, v10 :: v_dual_cndmask_b32 v1, v10, v1
	v_permlanex16_b32 v4, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v10, 0x1054, v14, vcc_lo
	v_cndmask_b32_e32 v14, 0x3276, v23, vcc_lo
	v_permlanex16_b32 v8, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v10, v10, 8, v10
	v_lshl_or_b32 v14, v14, 8, v14
	v_permlanex16_b32 v19, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v27, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 0x540054, v10
	v_and_b32_e32 v14, 0x760076, v14
	v_cndmask_b32_e32 v22, v43, v39, vcc_lo
	v_dual_cndmask_b32 v20, v39, v43 :: v_dual_cndmask_b32 v31, v21, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v10, v10, 4, v10
	v_lshl_or_b32 v14, v14, 4, v14
	v_cndmask_b32_e32 v21, v25, v21, vcc_lo
	v_permlanex16_b32 v25, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v37, 0x5040504, v10
	v_and_b32_e32 v38, 0x7060706, v14
	v_permlanex16_b32 v39, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v15, v47, v60, vcc_lo
	v_perm_b32 v1, v4, v3, v37
	v_perm_b32 v2, v4, v3, v38
	v_perm_b32 v3, v6, v5, v37
	v_perm_b32 v4, v6, v5, v38
	v_perm_b32 v5, v8, v7, v37
	v_perm_b32 v6, v8, v7, v38
	v_perm_b32 v7, v11, v9, v37
	v_perm_b32 v8, v11, v9, v38
	v_perm_b32 v9, v13, v12, v37
	v_perm_b32 v10, v13, v12, v38
	v_perm_b32 v13, v19, v17, v37
	v_perm_b32 v14, v19, v17, v38
	v_perm_b32 v17, v23, v24, v37
	v_perm_b32 v18, v23, v24, v38
	v_perm_b32 v23, v27, v33, v37
	v_perm_b32 v24, v27, v33, v38
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v33, v73, v74, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_permlanex16_b32 v16, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_nc_u32_e32 v0, 32, v33
	v_permlanex16_b32 v29, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v11, v16, v15, v37
	v_perm_b32 v12, v16, v15, v38
	v_perm_b32 v15, v22, v20, v37
	v_perm_b32 v16, v22, v20, v38
	v_perm_b32 v21, v26, v32, v37
	v_perm_b32 v22, v26, v32, v38
	v_add_nc_u32_e32 v32, 64, v33
	v_perm_b32 v19, v25, v28, v37
	v_perm_b32 v20, v25, v28, v38
	v_perm_b32 v27, v30, v34, v37
	v_perm_b32 v28, v30, v34, v38
	v_cndmask_b32_e32 v34, 0x80000000, v33, vcc_lo
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_perm_b32 v25, v29, v31, v37
	v_perm_b32 v26, v29, v31, v38
	v_perm_b32 v29, v39, v35, v37
	v_perm_b32 v30, v39, v35, v38
	v_cndmask_b32_e32 v35, 0x80000000, v32, vcc_lo
	s_clause 0x2
	buffer_store_b128 v[1:4], v34, s[24:27], 0 offen
	buffer_store_b128 v[5:8], v0, s[24:27], 0 offen
	buffer_store_b128 v[9:12], v35, s[24:27], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v33
	v_add_nc_u32_e32 v1, 0x80, v33
	v_add_nc_u32_e32 v2, 0xa0, v33
	v_add_nc_u32_e32 v3, 0xc0, v33
	v_add_nc_u32_e32 v4, 0xe0, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_perm_b32 v31, v40, v36, v37
	v_perm_b32 v32, v40, v36, v38
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[13:16], v0, s[24:27], 0 offen
	buffer_store_b128 v[17:20], v1, s[24:27], 0 offen
	buffer_store_b128 v[21:24], v2, s[24:27], 0 offen
	buffer_store_b128 v[25:28], v3, s[24:27], 0 offen
	buffer_store_b128 v[29:32], v4, s[24:27], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 224
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 224
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15800
; TotalNumSgprs: 49
; NumVgprs: 224
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 49
; NumVGPRsForWavesPerEU: 224
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     224
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
