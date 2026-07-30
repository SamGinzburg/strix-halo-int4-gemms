	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 80 0                          ; generate_amdgcn.py:80:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 90 16 prologue_end            ; generate_amdgcn.py:90:16
	s_abs_i32 s8, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v11, 15, v0
	v_lshrrev_b32_e32 v2, 5, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:88:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s9, s26, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s11, s11, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s9, s9, 4
.Ltmp11:
	.loc	1 90 16 is_stmt 1               ; generate_amdgcn.py:90:16
	s_abs_i32 s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s7
	s_mul_hi_u32 s10, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s6, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s6, s10
	s_sub_i32 s7, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 92 31                         ; generate_amdgcn.py:92:31
	s_sub_i32 s6, s9, s7
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 92 20 is_stmt 0               ; generate_amdgcn.py:92:20
	s_min_i32 s6, s6, 1
	.loc	1 93 29 is_stmt 1               ; generate_amdgcn.py:93:29
	s_mul_i32 s5, s7, s5
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_abs_i32 s16, s6
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_sub_i32 s2, s2, s5
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_cvt_f32_u32 s17, s16
	s_abs_i32 s18, s2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v1, v0, 4, 4
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_mov_b32 s39, s11
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 187 34                        ; generate_amdgcn.py:187:34
	v_mad_u64_u32 v[3:4], null, s26, v11, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s16
	s_mul_i32 s17, s17, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s17
	s_xor_b32 s17, s2, s6
	s_add_i32 s5, s10, s5
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s5, s18, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s19, s5, s16
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_mov_b32 s38, s10
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s18, s18, s19
	s_add_i32 s19, s5, 1
	s_sub_i32 s20, s18, s16
	s_cmp_ge_u32 s18, s16
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s18, s20, s18
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s18, s16
	s_cselect_b32 s5, s19, s5
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_lshr_b32 s16, s4, 31
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_xor_b32 s18, s5, s17
	.loc	1 170 39                        ; generate_amdgcn.py:170:39
	s_lshl_b32 s19, s3, 4
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s5, s18, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s21, s4, 31
.Ltmp13:
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_mul_i32 s6, s5, s6
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_add_i32 s4, s4, s16
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_sub_i32 s2, s2, s6
	.loc	1 187 34                        ; generate_amdgcn.py:187:34
	s_mul_i32 s16, s26, s19
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_add_i32 s2, s2, s7
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s3, s21, 31
.Ltmp15:
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s34, s2, 4
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v7, s19, v2
	.loc	1 187 34                        ; generate_amdgcn.py:187:34
	v_add3_u32 v3, s16, s34, v3
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshlrev_b32_e32 v6, 2, v0
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_ashr_i32 s20, s4, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_lshr_b32 s3, s3, 27
.Ltmp17:
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	s_lshl_b32 s33, s5, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s23, s21, s3
.Ltmp19:
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_and_b32_e32 v9, 0x7c, v6
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e64 s5, s20, v7
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s4, 16, v7
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s6, s23, 5
.Ltmp21:
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_gt_i32 s21, 31
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	v_mad_u64_u32 v[4:5], null, s27, v2, v[9:10]
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v5, s19, v11
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	s_mul_i32 s22, s27, s19
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cselect_b32 s2, -1, 0
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 s5, s4, s5
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e32 vcc_lo, s20, v5
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s3, 16, v5
	.loc	1 193 34 is_stmt 1              ; generate_amdgcn.py:193:34
	v_add3_u32 v4, s22, s33, v4
	.loc	1 193 26 is_stmt 0              ; generate_amdgcn.py:193:26
	s_and_b32 s37, s37, 0xffff
	.loc	1 100 32 is_stmt 1              ; generate_amdgcn.py:100:32
	v_and_b32_e32 v10, 0x7f, v0
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 s7, s3, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s7
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_add_nc_u32 v85, 0, v6
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	buffer_load_u8 v5, v3, s[8:11], 0 offen
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	buffer_load_b32 v4, v4, s[36:39], 0 offen
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	v_bfe_i32 v3, v0, 7, 1
	s_mov_b32 s5, -1
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_gt_i32 s21, 63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	v_and_b32_e32 v3, 0x88, v3
	v_xor_b32_e32 v3, v3, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v84, 0, v3
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	s_waitcnt vmcnt(1)
	ds_store_b8 v84, v5 offset:2048
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v85, v4
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_mov_b64 s[30:31], s[10:11]
	s_mov_b32 s5, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr28_sgpr29
.LBB0_3:                                ; %Flow211
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[24:25], s[0:1], 0x20
	v_bfe_u32 v78, v0, 4, 1
	v_or_b32_e32 v77, 62, v3
	v_or_b32_e32 v76, 0x7e, v3
	v_dual_mov_b32 v12, 0 :: v_dual_lshlrev_b32 v83, 4, v0
	v_bfe_i32 v81, v0, 3, 1
	v_dual_mov_b32 v14, 0 :: v_dual_add_nc_u32 v79, 0, v11
	v_or_b32_e32 v80, 0x3f0, v0
	v_or_b32_e32 v82, 0x7f0, v0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v38, 0
	v_mov_b32_e32 v73, 0
	v_mov_b32_e32 v75, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s5, s6, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_add_i32 s35, s19, 16
	v_dual_mov_b32 v74, 0 :: v_dual_lshlrev_b32 v5, 1, v76
	v_sub_nc_u32_e32 v87, s20, v2
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v2, s35, v2
	v_dual_mov_b32 v38, 0 :: v_dual_and_b32 v3, 0x70, v83
	s_lshl_b32 s0, s17, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v2, s27, v2
	v_subrev_nc_u32_e32 v88, s0, v5
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v5, s34, v11
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v6, s35, v11
	v_and_or_b32 v3, 0x88, v81, v3
	v_mul_lo_u32 v5, s6, v5
	v_dual_mov_b32 v70, 0 :: v_dual_lshlrev_b32 v7, 1, v78
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v6, s26, v6
	v_dual_mov_b32 v71, 0 :: v_dual_lshlrev_b32 v8, 1, v77
	s_lshl_b32 s1, s18, 7
	v_xor_b32_e32 v4, 8, v3
	v_add3_u32 v2, v2, s1, v9
	s_mov_b32 s16, 0
	v_subrev_nc_u32_e32 v89, s0, v7
	v_subrev_nc_u32_e32 v90, s0, v8
	s_lshl_b32 s0, s17, 7
	v_sub_nc_u32_e32 v86, s20, v11
	s_lshl_b32 s48, s18, 8
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_dual_mov_b32 v68, 0 :: v_dual_lshlrev_b32 v91, 1, v5
	v_subrev_nc_u32_e32 v92, s0, v2
	v_add3_u32 v93, v6, s34, v1
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v94, 0, v3
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v95, 0, v4
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v96, 0, v80
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v97, 0, v82
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v8, s23
	v_mov_b32_e32 v5, s20
	v_mov_b32_e32 v7, s22
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_max_i32 s7, s5, 1
	s_mov_b64 s[28:29], s[12:13]
	s_lshl_b32 s49, s27, 1
	s_lshl_b32 s50, s27, 4
	s_lshl_b32 s26, s26, 4
	s_mov_b32 s44, s12
	s_mov_b32 s45, s13
	s_mov_b32 s46, s30
	s_mov_b32 s47, s31
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	buffer_load_u16 v99, v91, s[44:47], 0 offen
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_lt_i32_e32 vcc_lo, s35, v86
	v_cmp_lt_i32_e64 s0, s35, v87
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s7, s7, -1
	s_add_i32 s35, s35, 16
	v_add_nc_u32_e32 v91, 2, v91
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 s1, vcc_lo, s3
	s_and_b32 vcc_lo, s0, s4
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	v_cndmask_b32_e64 v98, 0x80000000, v93, s1
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v93, s26, v93
	s_cmp_lg_u32 s7, 0
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	buffer_load_u8 v98, v98, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
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
	ds_load_u8 v100, v79 offset:640
	ds_load_u8 v101, v79 offset:512
	ds_load_u8 v102, v79 offset:768
	ds_load_u8 v103, v79 offset:784
	ds_load_u8 v104, v79 offset:800
	ds_load_u8 v105, v79 offset:816
	ds_load_u8 v106, v79 offset:896
	ds_load_u8 v107, v79 offset:912
	ds_load_u8 v108, v79 offset:928
	ds_load_u8 v109, v79 offset:944
	ds_load_u8 v110, v79 offset:960
	ds_load_u8 v117, v79 offset:976
	ds_load_u8 v126, v79 offset:992
	ds_load_u8 v111, v79 offset:656
	ds_load_u8 v112, v79 offset:672
	ds_load_u8 v113, v79 offset:688
	ds_load_u8 v114, v79 offset:704
	ds_load_u8 v115, v79 offset:720
	ds_load_u8 v125, v79 offset:736
	ds_load_u8 v135, v79 offset:752
	ds_load_u8 v119, v79 offset:528
	ds_load_u8 v120, v79 offset:544
	ds_load_u8 v121, v79 offset:560
	ds_load_u8 v122, v79 offset:576
	ds_load_u8 v123, v79 offset:592
	ds_load_u8 v127, v79 offset:608
	ds_load_u8 v136, v79 offset:624
	ds_load_u8 v124, v79 offset:832
	ds_load_u8 v128, v79 offset:848
	ds_load_u8 v129, v79 offset:864
	ds_load_u8 v137, v79 offset:880
	ds_load_u8 v130, v79
	ds_load_u8 v131, v79 offset:128
	ds_load_u8 v132, v79 offset:144
	ds_load_u8 v133, v79 offset:160
	ds_load_u8 v134, v79 offset:176
	ds_load_u8 v142, v79 offset:192
	ds_load_u8 v143, v79 offset:208
	ds_load_u8 v144, v79 offset:224
	ds_load_u8 v147, v79 offset:240
	ds_load_u8 v149, v79 offset:16
	ds_load_u8 v151, v79 offset:32
	ds_load_u8 v153, v79 offset:48
	ds_load_u8 v156, v79 offset:64
	ds_load_u8 v157, v79 offset:80
	ds_load_u8 v158, v79 offset:96
	ds_load_u8 v159, v79 offset:112
	ds_load_u8 v160, v79 offset:256
	ds_load_u8 v161, v79 offset:384
	ds_load_u8 v162, v79 offset:400
	ds_load_u8 v163, v79 offset:416
	ds_load_u8 v164, v79 offset:432
	ds_load_u8 v165, v79 offset:448
	ds_load_u8 v166, v79 offset:464
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v216, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(47)
	v_perm_b32 v218, v102, v106, 0xc0c0004
	ds_load_u8 v100, v79 offset:1040
	ds_load_u8 v101, v79 offset:1168
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v219, v130, v131, 0xc0c0004
	ds_load_u8 v102, v79 offset:1296
	ds_load_u8 v131, v79 offset:1200
	ds_load_u8 v106, v79 offset:1424
	ds_load_u8 v130, v79 offset:1184
	ds_load_u8 v221, v79 offset:1120
	ds_load_u8 v191, v96
	ds_load_u8 v192, v97
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	ds_load_b64 v[138:139], v94 offset:2048
	ds_load_b64 v[140:141], v95 offset:2048
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v193, v79 offset:1552
	ds_load_u8 v194, v79 offset:1680
	ds_load_u8 v195, v79 offset:1696
	ds_load_u8 v196, v79 offset:1712
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
	ds_load_u8 v167, v79 offset:480
	ds_load_u8 v168, v79 offset:496
	ds_load_u8 v169, v79 offset:272
	ds_load_u8 v170, v79 offset:288
	ds_load_u8 v171, v79 offset:304
	ds_load_u8 v172, v79 offset:320
	ds_load_u8 v173, v79 offset:336
	ds_load_u8 v174, v79 offset:352
	ds_load_u8 v197, v79 offset:1728
	ds_load_u8 v198, v79 offset:1744
	ds_load_u8 v199, v79 offset:1760
	ds_load_u8 v200, v79 offset:1568
	ds_load_u8 v201, v79 offset:1584
	ds_load_u8 v202, v79 offset:1600
	ds_load_u8 v203, v79 offset:1616
	ds_load_u8 v204, v79 offset:1632
	s_waitcnt lgkmcnt(47)
	v_perm_b32 v160, v160, v161, 0xc0c0004
	v_perm_b32 v161, v177, v176, 0xc0c0004
	v_perm_b32 v176, v181, v180, 0xc0c0004
	v_perm_b32 v180, v188, v187, 0xc0c0004
	v_perm_b32 v187, v103, v107, 0xc0c0004
	ds_load_u8 v103, v79 offset:1056
	ds_load_u8 v217, v79 offset:2016
	v_perm_b32 v177, v184, v185, 0xc0c0004
	ds_load_u8 v181, v79 offset:1216
	ds_load_u8 v185, v79 offset:1232
	v_perm_b32 v184, v119, v111, 0xc0c0004
	v_perm_b32 v149, v149, v132, 0xc0c0004
	ds_load_u8 v107, v79 offset:1440
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v162, v169, v162, 0xc0c0004
	v_perm_b32 v169, v193, v194, 0xc0c0004
	ds_load_u8 v111, v79 offset:1312
	v_perm_b32 v193, v206, v205, 0xc0c0004
	ds_load_u8 v119, v79 offset:1072
	ds_load_u8 v132, v79 offset:1088
	ds_load_u8 v205, v79 offset:1104
	v_perm_b32 v220, v120, v112, 0xc0c0004
	v_perm_b32 v222, v104, v108, 0xc0c0004
	v_perm_b32 v151, v151, v133, 0xc0c0004
	ds_load_u8 v120, v79 offset:1472
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v163, v170, v163, 0xc0c0004
	ds_load_u8 v133, v79 offset:1488
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v170, v200, v195, 0xc0c0004
	ds_load_u8 v108, v79 offset:1328
	v_perm_b32 v195, v207, v212, 0xc0c0004
	ds_load_u8 v200, v79 offset:1504
	ds_load_u8 v207, v79 offset:1360
	ds_load_u8 v225, v79 offset:1376
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v212, v103, v130, 0xc0c0004
	ds_load_u8 v130, v79 offset:1344
	ds_load_u8 v188, v79 offset:1248
	v_perm_b32 v206, v102, v106, 0xc0c0004
	ds_load_u8 v106, v79 offset:1456
	v_perm_b32 v224, v121, v113, 0xc0c0004
	v_perm_b32 v226, v105, v109, 0xc0c0004
	v_perm_b32 v153, v153, v134, 0xc0c0004
	v_perm_b32 v164, v171, v164, 0xc0c0004
	v_perm_b32 v227, v122, v114, 0xc0c0004
	v_perm_b32 v228, v124, v110, 0xc0c0004
	v_perm_b32 v156, v156, v142, 0xc0c0004
	v_perm_b32 v165, v172, v165, 0xc0c0004
	v_perm_b32 v231, v123, v115, 0xc0c0004
	v_perm_b32 v232, v128, v117, 0xc0c0004
	v_perm_b32 v157, v157, v143, 0xc0c0004
	v_perm_b32 v166, v173, v166, 0xc0c0004
	v_perm_b32 v144, v158, v144, 0xc0c0004
	v_perm_b32 v158, v174, v167, 0xc0c0004
	v_perm_b32 v147, v159, v147, 0xc0c0004
	v_perm_b32 v159, v175, v168, 0xc0c0004
	v_lshl_or_b32 v143, v218, 16, v216
	v_lshl_or_b32 v142, v160, 16, v219
	v_perm_b32 v194, v100, v101, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v223, v111, v107, 0xc0c0004
	v_perm_b32 v171, v201, v196, 0xc0c0004
	v_perm_b32 v201, v208, v213, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v208, v119, v131, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v213, v108, v106, 0xc0c0004
	v_perm_b32 v202, v202, v197, 0xc0c0004
	v_perm_b32 v214, v209, v214, 0xc0c0004
	v_perm_b32 v229, v132, v181, 0xc0c0004
	v_perm_b32 v230, v130, v120, 0xc0c0004
	v_perm_b32 v203, v203, v198, 0xc0c0004
	v_perm_b32 v215, v210, v215, 0xc0c0004
	v_perm_b32 v185, v205, v185, 0xc0c0004
	v_perm_b32 v233, v207, v133, 0xc0c0004
	v_perm_b32 v234, v127, v125, 0xc0c0004
	v_perm_b32 v235, v129, v126, 0xc0c0004
	v_perm_b32 v167, v204, v199, 0xc0c0004
	v_perm_b32 v174, v211, v217, 0xc0c0004
	v_perm_b32 v236, v221, v188, 0xc0c0004
	v_perm_b32 v200, v225, v200, 0xc0c0004
	v_perm_b32 v168, v136, v135, 0xc0c0004
	v_perm_b32 v175, v137, v191, 0xc0c0004
	v_perm_b32 v186, v186, v189, 0xc0c0004
	v_perm_b32 v178, v190, v178, 0xc0c0004
	v_perm_b32 v179, v179, v182, 0xc0c0004
	v_perm_b32 v182, v183, v192, 0xc0c0004
	v_lshl_or_b32 v197, v176, 16, v161
	v_lshl_or_b32 v196, v180, 16, v177
	v_lshl_or_b32 v173, v187, 16, v184
	v_lshl_or_b32 v172, v162, 16, v149
	v_lshl_or_b32 v181, v222, 16, v220
	v_lshl_or_b32 v180, v163, 16, v151
	v_lshl_or_b32 v189, v226, 16, v224
	v_lshl_or_b32 v188, v164, 16, v153
	v_lshl_or_b32 v199, v228, 16, v227
	v_lshl_or_b32 v198, v165, 16, v156
	v_lshl_or_b32 v211, v232, 16, v231
	v_lshl_or_b32 v210, v166, 16, v157
	v_lshl_or_b32 v216, v158, 16, v144
	v_lshl_or_b32 v222, v159, 16, v147
	v_wmma_i32_16x16x16_iu4 v[156:163], v[142:143], v[138:139], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v205, v193, 16, v169
	v_lshl_or_b32 v204, v206, 16, v194
	v_lshl_or_b32 v207, v195, 16, v170
	v_lshl_or_b32 v206, v223, 16, v212
	v_lshl_or_b32 v209, v201, 16, v171
	v_lshl_or_b32 v208, v213, 16, v208
	v_lshl_or_b32 v213, v214, 16, v202
	v_lshl_or_b32 v212, v230, 16, v229
	v_lshl_or_b32 v215, v215, 16, v203
	v_lshl_or_b32 v214, v233, 16, v185
	v_lshl_or_b32 v217, v235, 16, v234
	v_lshl_or_b32 v221, v174, 16, v167
	v_lshl_or_b32 v220, v200, 16, v236
	v_lshl_or_b32 v223, v175, 16, v168
	v_lshl_or_b32 v224, v178, 16, v186
	v_lshl_or_b32 v225, v182, 16, v179
	v_wmma_i32_16x16x16_iu4 v[164:171], v[172:173], v[138:139], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[172:179], v[180:181], v[138:139], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[180:187], v[188:189], v[138:139], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[188:195], v[198:199], v[138:139], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[156:163], v[196:197], v[140:141], v[156:163] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[196:203], v[210:211], v[138:139], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[164:171], v[204:205], v[140:141], v[164:171] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[172:179], v[206:207], v[140:141], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[180:187], v[208:209], v[140:141], v[180:187] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[204:211], v[216:217], v[138:139], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[188:195], v[212:213], v[140:141], v[188:195] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[196:203], v[214:215], v[140:141], v[196:203] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[212:219], v[222:223], v[138:139], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[204:211], v[220:221], v[140:141], v[204:211] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v147, v156
	v_cvt_f32_i32_e32 v153, v159
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[212:219], v[224:225], v[140:141], v[212:219] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v159, v163
	v_cvt_f32_i32_e32 v163, v167
	v_cvt_f32_i32_e32 v167, v171
	v_cvt_f32_i32_e32 v171, v175
	v_cvt_f32_i32_e32 v175, v179
	v_cvt_f32_i32_e32 v179, v183
	v_cvt_f32_i32_e32 v183, v187
	v_cvt_f32_i32_e32 v187, v191
	v_cvt_f32_i32_e32 v191, v195
	v_cvt_f32_i32_e32 v195, v199
	v_cvt_f32_i32_e32 v199, v203
	v_cvt_f32_i32_e32 v203, v207
	v_cvt_f32_i32_e32 v207, v211
	v_cvt_f32_i32_e32 v211, v215
	v_cvt_f32_i32_e32 v215, v216
	v_cvt_f32_i32_e32 v216, v217
	v_cvt_f32_i32_e32 v217, v218
	v_cvt_f32_i32_e32 v218, v219
	v_cvt_f32_i32_e32 v149, v157
	v_cvt_f32_i32_e32 v151, v158
	v_cvt_f32_i32_e32 v156, v160
	v_cvt_f32_i32_e32 v157, v161
	v_cvt_f32_i32_e32 v158, v162
	v_cvt_f32_i32_e32 v160, v164
	v_cvt_f32_i32_e32 v161, v165
	v_cvt_f32_i32_e32 v162, v166
	v_cvt_f32_i32_e32 v164, v168
	v_cvt_f32_i32_e32 v165, v169
	v_cvt_f32_i32_e32 v166, v170
	v_cvt_f32_i32_e32 v168, v172
	v_cvt_f32_i32_e32 v169, v173
	v_cvt_f32_i32_e32 v170, v174
	v_cvt_f32_i32_e32 v172, v176
	v_cvt_f32_i32_e32 v173, v177
	v_cvt_f32_i32_e32 v174, v178
	v_cvt_f32_i32_e32 v176, v180
	v_cvt_f32_i32_e32 v177, v181
	v_cvt_f32_i32_e32 v178, v182
	v_cvt_f32_i32_e32 v180, v184
	v_cvt_f32_i32_e32 v181, v185
	v_cvt_f32_i32_e32 v182, v186
	v_cvt_f32_i32_e32 v184, v188
	v_cvt_f32_i32_e32 v185, v189
	v_cvt_f32_i32_e32 v186, v190
	v_cvt_f32_i32_e32 v188, v192
	v_cvt_f32_i32_e32 v189, v193
	v_cvt_f32_i32_e32 v190, v194
	v_cvt_f32_i32_e32 v192, v196
	v_cvt_f32_i32_e32 v193, v197
	v_cvt_f32_i32_e32 v194, v198
	v_cvt_f32_i32_e32 v196, v200
	v_cvt_f32_i32_e32 v197, v201
	v_cvt_f32_i32_e32 v198, v202
	v_cvt_f32_i32_e32 v200, v204
	v_cvt_f32_i32_e32 v201, v205
	v_cvt_f32_i32_e32 v202, v206
	v_cvt_f32_i32_e32 v204, v208
	v_cvt_f32_i32_e32 v205, v209
	v_cvt_f32_i32_e32 v206, v210
	v_cvt_f32_i32_e32 v208, v212
	v_cvt_f32_i32_e32 v209, v213
	v_cvt_f32_i32_e32 v210, v214
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v219, 16, v99
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v154, s48, v89
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v89, s49, v89
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v99, v219, v147
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x1f
	buffer_load_u16 v145, v154, s[40:43], 0 offen
	buffer_load_u16 v146, v154, s[40:43], 0 offen offset:4
	buffer_load_u16 v148, v154, s[40:43], 0 offen offset:8
	buffer_load_u16 v150, v154, s[40:43], 0 offen offset:12
	buffer_load_u16 v152, v154, s[40:43], 0 offen offset:16
	buffer_load_u16 v155, v154, s[40:43], 0 offen offset:20
	buffer_load_u16 v100, v154, s[40:43], 0 offen offset:24
	buffer_load_u16 v101, v154, s[40:43], 0 offen offset:28
	buffer_load_u16 v102, v154, s[40:43], 0 offen offset:32
	buffer_load_u16 v103, v154, s[40:43], 0 offen offset:36
	buffer_load_u16 v104, v154, s[40:43], 0 offen offset:40
	buffer_load_u16 v105, v154, s[40:43], 0 offen offset:44
	buffer_load_u16 v106, v154, s[40:43], 0 offen offset:48
	buffer_load_u16 v107, v154, s[40:43], 0 offen offset:52
	buffer_load_u16 v108, v154, s[40:43], 0 offen offset:56
	buffer_load_u16 v109, v154, s[40:43], 0 offen offset:60
	buffer_load_u16 v110, v154, s[40:43], 0 offen offset:64
	buffer_load_u16 v111, v154, s[40:43], 0 offen offset:68
	buffer_load_u16 v112, v154, s[40:43], 0 offen offset:72
	buffer_load_u16 v113, v154, s[40:43], 0 offen offset:76
	buffer_load_u16 v114, v154, s[40:43], 0 offen offset:80
	buffer_load_u16 v115, v154, s[40:43], 0 offen offset:84
	buffer_load_u16 v117, v154, s[40:43], 0 offen offset:88
	buffer_load_u16 v119, v154, s[40:43], 0 offen offset:92
	buffer_load_u16 v120, v154, s[40:43], 0 offen offset:96
	buffer_load_u16 v121, v154, s[40:43], 0 offen offset:100
	buffer_load_u16 v122, v154, s[40:43], 0 offen offset:104
	buffer_load_u16 v123, v154, s[40:43], 0 offen offset:108
	buffer_load_u16 v124, v154, s[40:43], 0 offen offset:112
	buffer_load_u16 v125, v154, s[40:43], 0 offen offset:116
	buffer_load_u16 v126, v154, s[40:43], 0 offen offset:120
	buffer_load_u16 v129, v154, s[40:43], 0 offen offset:132
	s_clause 0x11
	buffer_load_u16 v130, v154, s[40:43], 0 offen offset:136
	buffer_load_u16 v131, v154, s[40:43], 0 offen offset:140
	buffer_load_u16 v132, v154, s[40:43], 0 offen offset:144
	buffer_load_u16 v133, v154, s[40:43], 0 offen offset:148
	buffer_load_u16 v134, v154, s[40:43], 0 offen offset:152
	buffer_load_u16 v135, v154, s[40:43], 0 offen offset:156
	buffer_load_u16 v136, v154, s[40:43], 0 offen offset:160
	buffer_load_u16 v137, v154, s[40:43], 0 offen offset:164
	buffer_load_u16 v138, v154, s[40:43], 0 offen offset:168
	buffer_load_u16 v139, v154, s[40:43], 0 offen offset:172
	buffer_load_u16 v140, v154, s[40:43], 0 offen offset:176
	buffer_load_u16 v141, v154, s[40:43], 0 offen offset:180
	buffer_load_u16 v142, v154, s[40:43], 0 offen offset:184
	buffer_load_u16 v143, v154, s[40:43], 0 offen offset:188
	buffer_load_u16 v144, v154, s[40:43], 0 offen offset:192
	buffer_load_u16 v212, v154, s[40:43], 0 offen offset:236
	buffer_load_u16 v213, v154, s[40:43], 0 offen offset:240
	buffer_load_u16 v214, v154, s[40:43], 0 offen offset:244
	s_waitcnt vmcnt(47)
	v_lshlrev_b32_e32 v148, 16, v148
	v_lshlrev_b32_e32 v145, 16, v145
	s_waitcnt vmcnt(45)
	v_lshlrev_b32_e32 v152, 16, v152
	s_waitcnt vmcnt(44)
	v_lshlrev_b32_e32 v155, 16, v155
	s_waitcnt vmcnt(43)
	v_lshlrev_b32_e32 v100, 16, v100
	s_waitcnt vmcnt(42)
	v_lshlrev_b32_e32 v101, 16, v101
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v38, v99, v145
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v147, v219, v149 :: v_dual_add_nc_u32 v116, s48, v90
	v_dual_mul_f32 v149, v219, v151 :: v_dual_lshlrev_b32 v146, 16, v146
	v_dual_mul_f32 v151, v219, v153 :: v_dual_lshlrev_b32 v150, 16, v150
	v_mul_f32_e32 v153, v219, v156
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v75, v147, v146 :: v_dual_add_nc_u32 v118, s48, v88
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_clause 0x2
	buffer_load_u16 v127, v154, s[40:43], 0 offen offset:128
	buffer_load_u16 v128, v116, s[40:43], 0 offen
	buffer_load_u16 v116, v118, s[40:43], 0 offen
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v73, v151, v150
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x4
	buffer_load_u16 v118, v154, s[40:43], 0 offen offset:248
	buffer_load_u16 v99, v154, s[40:43], 0 offen offset:196
	buffer_load_u16 v145, v154, s[40:43], 0 offen offset:200
	buffer_load_u16 v146, v154, s[40:43], 0 offen offset:204
	buffer_load_u16 v147, v154, s[40:43], 0 offen offset:208
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v74, v149, v148
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x3
	buffer_load_u16 v148, v154, s[40:43], 0 offen offset:212
	buffer_load_u16 v149, v154, s[40:43], 0 offen offset:216
	buffer_load_u16 v150, v154, s[40:43], 0 offen offset:220
	buffer_load_u16 v151, v154, s[40:43], 0 offen offset:224
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v72, v153, v152
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x1
	buffer_load_u16 v152, v154, s[40:43], 0 offen offset:228
	buffer_load_u16 v153, v154, s[40:43], 0 offen offset:232
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v156, v219, v157
	v_mul_f32_e32 v154, v219, v158
	v_dual_mul_f32 v157, v219, v161 :: v_dual_add_nc_u32 v90, s49, v90
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v158, v219, v162 :: v_dual_fmac_f32 v71, v156, v155
	v_mul_f32_e32 v156, v219, v160
	v_mul_f32_e32 v160, v219, v164
	s_waitcnt vmcnt(54)
	v_dual_mul_f32 v164, v219, v168 :: v_dual_lshlrev_b32 v103, 16, v103
	s_waitcnt vmcnt(50)
	v_dual_mul_f32 v168, v219, v172 :: v_dual_lshlrev_b32 v107, 16, v107
	s_waitcnt vmcnt(46)
	v_dual_mul_f32 v172, v219, v176 :: v_dual_lshlrev_b32 v111, 16, v111
	s_waitcnt vmcnt(42)
	v_dual_mul_f32 v176, v219, v180 :: v_dual_lshlrev_b32 v115, 16, v115
	s_waitcnt vmcnt(40)
	v_dual_mul_f32 v180, v219, v184 :: v_dual_lshlrev_b32 v119, 16, v119
	s_waitcnt vmcnt(36)
	v_dual_mul_f32 v184, v219, v188 :: v_dual_lshlrev_b32 v123, 16, v123
	v_mul_f32_e32 v188, v219, v192
	s_waitcnt vmcnt(30)
	v_dual_mul_f32 v192, v219, v196 :: v_dual_lshlrev_b32 v131, 16, v131
	s_waitcnt vmcnt(26)
	v_dual_mul_f32 v196, v219, v200 :: v_dual_lshlrev_b32 v135, 16, v135
	s_waitcnt vmcnt(22)
	v_dual_mul_f32 v200, v219, v204 :: v_dual_lshlrev_b32 v139, 16, v139
	s_waitcnt vmcnt(18)
	v_dual_mul_f32 v204, v219, v208 :: v_dual_lshlrev_b32 v143, 16, v143
	v_dual_mul_f32 v208, v219, v215 :: v_dual_cndmask_b32 v215, 0x80000000, v92
	v_dual_mul_f32 v155, v219, v159 :: v_dual_add_nc_u32 v88, s49, v88
	v_dual_mul_f32 v159, v219, v163 :: v_dual_add_nc_u32 v92, s50, v92
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	buffer_load_b32 v215, v215, s[36:39], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v161, v219, v165
	v_mul_f32_e32 v162, v219, v166
	v_dual_mul_f32 v163, v219, v167 :: v_dual_lshlrev_b32 v102, 16, v102
	v_dual_mul_f32 v165, v219, v169 :: v_dual_lshlrev_b32 v104, 16, v104
	v_dual_mul_f32 v166, v219, v170 :: v_dual_lshlrev_b32 v105, 16, v105
	v_dual_mul_f32 v167, v219, v171 :: v_dual_lshlrev_b32 v106, 16, v106
	v_dual_mul_f32 v169, v219, v173 :: v_dual_lshlrev_b32 v108, 16, v108
	v_dual_mul_f32 v170, v219, v174 :: v_dual_lshlrev_b32 v109, 16, v109
	v_dual_mul_f32 v171, v219, v175 :: v_dual_lshlrev_b32 v110, 16, v110
	v_dual_mul_f32 v173, v219, v177 :: v_dual_lshlrev_b32 v112, 16, v112
	v_dual_mul_f32 v174, v219, v178 :: v_dual_lshlrev_b32 v113, 16, v113
	v_dual_mul_f32 v175, v219, v179 :: v_dual_lshlrev_b32 v114, 16, v114
	v_dual_mul_f32 v177, v219, v181 :: v_dual_lshlrev_b32 v120, 16, v120
	v_dual_mul_f32 v178, v219, v182 :: v_dual_lshlrev_b32 v117, 16, v117
	v_dual_mul_f32 v179, v219, v183 :: v_dual_lshlrev_b32 v122, 16, v122
	v_dual_mul_f32 v181, v219, v185 :: v_dual_lshlrev_b32 v124, 16, v124
	v_dual_mul_f32 v182, v219, v186 :: v_dual_lshlrev_b32 v121, 16, v121
	v_dual_mul_f32 v183, v219, v187 :: v_dual_lshlrev_b32 v126, 16, v126
	v_mul_f32_e32 v185, v219, v189
	v_dual_mul_f32 v186, v219, v190 :: v_dual_lshlrev_b32 v125, 16, v125
	v_dual_mul_f32 v187, v219, v191 :: v_dual_lshlrev_b32 v130, 16, v130
	v_dual_mul_f32 v189, v219, v193 :: v_dual_lshlrev_b32 v132, 16, v132
	v_dual_mul_f32 v190, v219, v194 :: v_dual_lshlrev_b32 v129, 16, v129
	v_dual_mul_f32 v191, v219, v195 :: v_dual_lshlrev_b32 v134, 16, v134
	v_dual_mul_f32 v193, v219, v197 :: v_dual_lshlrev_b32 v136, 16, v136
	v_dual_mul_f32 v194, v219, v198 :: v_dual_lshlrev_b32 v133, 16, v133
	v_dual_mul_f32 v195, v219, v199 :: v_dual_lshlrev_b32 v138, 16, v138
	v_dual_mul_f32 v197, v219, v201 :: v_dual_lshlrev_b32 v140, 16, v140
	v_dual_mul_f32 v198, v219, v202 :: v_dual_lshlrev_b32 v137, 16, v137
	v_dual_mul_f32 v199, v219, v203 :: v_dual_lshlrev_b32 v142, 16, v142
	s_waitcnt vmcnt(18)
	v_dual_mul_f32 v201, v219, v205 :: v_dual_lshlrev_b32 v144, 16, v144
	v_dual_mul_f32 v202, v219, v206 :: v_dual_lshlrev_b32 v141, 16, v141
	v_mul_f32_e32 v203, v219, v207
	v_mul_f32_e32 v205, v219, v209
	v_mul_f32_e32 v206, v219, v210
	v_mul_f32_e32 v207, v219, v211
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v209, v219, v216 :: v_dual_lshlrev_b32 v214, 16, v214
	v_mul_f32_e32 v210, v219, v217
	v_dual_mul_f32 v211, v219, v218 :: v_dual_lshlrev_b32 v212, 16, v212
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v69, v155, v101
	v_dual_fmac_f32 v64, v160, v106 :: v_dual_lshlrev_b32 v213, 16, v213
	v_dual_fmac_f32 v63, v161, v107 :: v_dual_fmac_f32 v62, v162, v108
	v_dual_fmac_f32 v61, v163, v109 :: v_dual_fmac_f32 v60, v164, v110
	v_dual_fmac_f32 v59, v165, v111 :: v_dual_fmac_f32 v58, v166, v112
	v_dual_fmac_f32 v57, v167, v113 :: v_dual_fmac_f32 v56, v168, v114
	v_dual_fmac_f32 v55, v169, v115 :: v_dual_fmac_f32 v54, v170, v117
	v_dual_fmac_f32 v53, v171, v119 :: v_dual_fmac_f32 v52, v172, v120
	v_dual_fmac_f32 v51, v173, v121 :: v_dual_fmac_f32 v50, v174, v122
	v_dual_fmac_f32 v49, v175, v123 :: v_dual_fmac_f32 v48, v176, v124
	v_dual_fmac_f32 v47, v177, v125 :: v_dual_fmac_f32 v46, v178, v126
	v_dual_fmac_f32 v43, v181, v129 :: v_dual_fmac_f32 v42, v182, v130
	v_dual_fmac_f32 v41, v183, v131 :: v_dual_fmac_f32 v40, v184, v132
	v_dual_fmac_f32 v37, v186, v134 :: v_dual_fmac_f32 v34, v189, v137
	v_dual_fmac_f32 v33, v190, v138 :: v_dual_fmac_f32 v30, v193, v141
	v_dual_fmac_f32 v31, v192, v140 :: v_dual_fmac_f32 v28, v195, v143
	.loc	1 187 26 is_stmt 1              ; generate_amdgcn.py:187:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v32, v191, v139
	v_fmac_f32_e32 v36, v187, v135
	v_fmac_f32_e32 v70, v154, v100
	v_dual_fmac_f32 v68, v156, v102 :: v_dual_fmac_f32 v67, v157, v103
	v_dual_fmac_f32 v65, v159, v105 :: v_dual_fmac_f32 v66, v158, v104
	v_fmac_f32_e32 v14, v209, v214
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	ds_store_b8 v84, v98 offset:2048
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v85, v215
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v128, 16, v128
	v_lshlrev_b32_e32 v127, 16, v127
	v_lshlrev_b32_e32 v99, 16, v99
	v_lshlrev_b32_e32 v145, 16, v145
	v_lshlrev_b32_e32 v146, 16, v146
	v_lshlrev_b32_e32 v147, 16, v147
	v_lshlrev_b32_e32 v148, 16, v148
	v_lshlrev_b32_e32 v149, 16, v149
	v_lshlrev_b32_e32 v150, 16, v150
	v_lshlrev_b32_e32 v151, 16, v151
	v_lshlrev_b32_e32 v152, 16, v152
	v_lshlrev_b32_e32 v153, 16, v153
	v_lshlrev_b32_e32 v118, 16, v118
	v_lshlrev_b32_e32 v116, 16, v116
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v45, v179, v128 :: v_dual_fmac_f32 v44, v180, v127
	v_fmac_f32_e32 v39, v185, v133
	v_fmac_f32_e32 v35, v188, v136
	v_dual_fmac_f32 v29, v194, v142 :: v_dual_fmac_f32 v26, v197, v99
	v_dual_fmac_f32 v27, v196, v144 :: v_dual_fmac_f32 v24, v199, v146
	v_dual_fmac_f32 v25, v198, v145 :: v_dual_fmac_f32 v22, v201, v148
	v_dual_fmac_f32 v23, v200, v147 :: v_dual_fmac_f32 v20, v203, v150
	v_dual_fmac_f32 v21, v202, v149 :: v_dual_fmac_f32 v18, v205, v152
	v_dual_fmac_f32 v19, v204, v151 :: v_dual_fmac_f32 v16, v207, v212
	v_fmac_f32_e32 v17, v206, v153
	v_dual_fmac_f32 v15, v208, v213 :: v_dual_fmac_f32 v12, v211, v116
	v_fmac_f32_e32 v13, v210, v118
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow212
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	v_mul_lo_u32 v2, s6, v11
	s_mul_i32 s1, s34, s6
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_max_i32 s0, s5, 0
	v_dual_mov_b32 v4, 0 :: v_dual_and_b32 v1, 0x1e0, v0
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	s_add_i32 s1, s1, s0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 168 18 is_stmt 0              ; generate_amdgcn.py:168:18
	v_add_lshl_u32 v2, s1, v2, 1
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v84, 0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_mov_b32_e32 v141, 0
	s_mov_b32 s4, 0
	.loc	1 194 27 is_stmt 1              ; generate_amdgcn.py:194:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	ds_load_u8 v4, v79 offset:640
	ds_load_u8 v5, v79 offset:512
	ds_load_u8 v6, v79 offset:896
	ds_load_u8 v7, v79 offset:768
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	v_and_b32_e32 v3, 0x70, v83
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_dual_mov_b32 v141, s11 :: v_dual_add_nc_u32 v122, 0, v82
	v_mov_b32_e32 v140, s10
	v_mov_b32_e32 v138, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	v_and_or_b32 v3, 0x88, v81, v3
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_dual_mov_b32 v139, s9 :: v_dual_mov_b32 v136, s6
	v_dual_mov_b32 v137, s7 :: v_dual_mov_b32 v134, s4
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	v_xad_u32 v8, v3, 8, 0
	v_add_nc_u32_e32 v81, 0, v3
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v82, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v7, v6, 0xc0c0004
	ds_load_u8 v83, v79 offset:128
	ds_load_u8 v84, v79
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	ds_load_b64 v[3:4], v8 offset:2048
	ds_load_b64 v[5:6], v81 offset:2048
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_mov_b32_e32 v135, s5
	ds_load_u8 v104, v79 offset:1664
	ds_load_u8 v105, v79 offset:1536
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v149, 0, v80
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v8, v7, 16, v82
	ds_load_u8 v7, v79 offset:384
	ds_load_u8 v81, v79 offset:256
	ds_load_u8 v93, v79 offset:144
	ds_load_u8 v100, v79 offset:160
	ds_load_u8 v120, v79 offset:176
	ds_load_u8 v121, v79 offset:192
	ds_load_u8 v127, v79 offset:208
	ds_load_u8 v132, v79 offset:224
	ds_load_u8 v153, v79 offset:240
	ds_load_u8 v94, v79 offset:16
	ds_load_u8 v101, v79 offset:32
	ds_load_u8 v128, v79 offset:48
	ds_load_u8 v129, v79 offset:64
	ds_load_u8 v130, v79 offset:80
	ds_load_u8 v133, v79 offset:96
	ds_load_u8 v154, v79 offset:112
	ds_load_u8 v88, v79 offset:656
	ds_load_u8 v96, v79 offset:672
	ds_load_u8 v108, v79 offset:688
	ds_load_u8 v109, v79 offset:704
	ds_load_u8 v112, v79 offset:720
	ds_load_u8 v123, v79 offset:736
	ds_load_u8 v150, v79 offset:752
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
	ds_load_u8 v95, v79 offset:400
	ds_load_u8 v102, v79 offset:416
	ds_load_u8 v131, v79 offset:432
	ds_load_u8 v142, v79 offset:448
	ds_load_u8 v143, v79 offset:464
	ds_load_u8 v144, v79 offset:480
	ds_load_u8 v155, v79 offset:496
	ds_load_u8 v103, v79 offset:272
	ds_load_u8 v106, v79 offset:288
	ds_load_u8 v145, v79 offset:304
	ds_load_u8 v146, v79 offset:320
	ds_load_u8 v147, v79 offset:336
	ds_load_u8 v148, v79 offset:352
	ds_load_u8 v156, v79 offset:368
	ds_load_u8 v185, v79 offset:1040
	ds_load_u8 v186, v79 offset:1056
	ds_load_u8 v187, v79 offset:1072
	ds_load_u8 v188, v79 offset:1088
	ds_load_u8 v189, v79 offset:1104
	ds_load_u8 v190, v79 offset:1120
	ds_load_u8 v191, v79 offset:1136
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v7, v81, v7, 0xc0c0004
	v_perm_b32 v82, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(41)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v89, v92, v91, 0xc0c0004
	v_perm_b32 v104, v105, v104, 0xc0c0004
	v_lshl_or_b32 v7, v7, 16, v82
	ds_load_u8 v105, v79 offset:1152
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
	v_perm_b32 v91, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v92, v103, v95, 0xc0c0004
	ds_load_u8 v103, v79 offset:1936
	ds_load_u8 v192, v79 offset:1168
	ds_load_u8 v193, v79 offset:1184
	ds_load_u8 v194, v79 offset:1200
	ds_load_u8 v195, v79 offset:1216
	ds_load_u8 v196, v79 offset:1232
	ds_load_u8 v197, v79 offset:1248
	ds_load_u8 v198, v79 offset:1264
	ds_load_u8 v199, v79 offset:1296
	ds_load_u8 v200, v79 offset:1312
	ds_load_u8 v201, v79 offset:1328
	ds_load_u8 v202, v79 offset:1344
	ds_load_u8 v203, v79 offset:1360
	ds_load_u8 v204, v79 offset:1376
	ds_load_u8 v205, v79 offset:1392
	v_wmma_i32_16x16x16_iu4 v[80:87], v[7:8], v[5:6], v[134:141] neg_lo:[1,1,0]
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
	s_waitcnt lgkmcnt(45)
	v_perm_b32 v90, v90, v105, 0xc0c0004
	v_perm_b32 v96, v97, v96, 0xc0c0004
	v_perm_b32 v97, v99, v98, 0xc0c0004
	v_perm_b32 v98, v101, v100, 0xc0c0004
	v_perm_b32 v99, v106, v102, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v184, v8, v7, 0xc0c0004
	ds_load_u8 v7, v79 offset:1408
	ds_load_u8 v8, v79 offset:1280
	v_perm_b32 v108, v110, v108, 0xc0c0004
	v_perm_b32 v110, v117, v114, 0xc0c0004
	v_lshl_or_b32 v106, v99, 16, v98
	v_lshl_or_b32 v105, v184, 16, v104
	ds_load_u8 v184, v79 offset:1952
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v100, v199, v107, 0xc0c0004
	v_lshl_or_b32 v107, v97, 16, v96
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v157, v200, v157, 0xc0c0004
	v_perm_b32 v114, v128, v120, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v128, v201, v158, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v164, v164, v171, 0xc0c0004
	v_perm_b32 v117, v145, v131, 0xc0c0004
	v_perm_b32 v120, v187, v194, 0xc0c0004
	v_perm_b32 v131, v111, v109, 0xc0c0004
	v_perm_b32 v115, v118, v115, 0xc0c0004
	v_perm_b32 v118, v129, v121, 0xc0c0004
	v_perm_b32 v129, v146, v142, 0xc0c0004
	v_perm_b32 v142, v202, v159, 0xc0c0004
	v_perm_b32 v145, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v93, v8, v7, 0xc0c0004
	v_lshl_or_b32 v8, v89, 16, v88
	v_lshl_or_b32 v7, v92, 16, v91
	v_lshl_or_b32 v121, v115, 16, v131
	v_perm_b32 v131, v188, v195, 0xc0c0004
	v_lshl_or_b32 v104, v93, 16, v90
	v_perm_b32 v146, v119, v116, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[88:95], v[7:8], v[5:6], v[134:141] neg_lo:[1,1,0]
	v_perm_b32 v7, v163, v170, 0xc0c0004
	v_perm_b32 v8, v177, v103, 0xc0c0004
	v_perm_b32 v177, v186, v193, 0xc0c0004
	ds_load_u8 v158, v122
	ds_load_u8 v163, v79 offset:1968
	ds_load_u8 v170, v79 offset:1984
	ds_load_u8 v206, v79 offset:2000
	ds_load_u8 v79, v79 offset:2016
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v171, v178, v184, 0xc0c0004
	v_lshl_or_b32 v8, v8, 16, v7
	v_perm_b32 v7, v185, v192, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[80:87], v[104:105], v[3:4], v[80:87] neg_lo:[1,1,0]
	v_perm_b32 v127, v130, v127, 0xc0c0004
	v_perm_b32 v130, v147, v143, 0xc0c0004
	v_perm_b32 v150, v151, v150, 0xc0c0004
	v_lshl_or_b32 v7, v100, 16, v7
	v_wmma_i32_16x16x16_iu4 v[96:103], v[106:107], v[5:6], v[134:141] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v157, 16, v177
	ds_load_u8 v157, v149
	v_lshl_or_b32 v107, v171, 16, v164
	v_wmma_i32_16x16x16_iu4 v[88:95], v[7:8], v[3:4], v[88:95] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v110, 16, v108
	v_lshl_or_b32 v7, v117, 16, v114
	v_perm_b32 v114, v165, v172, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[96:103], v[106:107], v[3:4], v[96:103] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v117, v179, v163, 0xc0c0004
	v_lshl_or_b32 v130, v130, 16, v127
	v_wmma_i32_16x16x16_iu4 v[104:111], v[7:8], v[5:6], v[134:141] neg_lo:[1,1,0]
	v_lshl_or_b32 v7, v128, 16, v120
	v_lshl_or_b32 v120, v129, 16, v118
	v_lshl_or_b32 v8, v117, 16, v114
	v_perm_b32 v128, v166, v173, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v129, v180, v170, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v143, v181, v206, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[112:119], v[120:121], v[5:6], v[134:141] neg_lo:[1,1,0]
	v_perm_b32 v120, v124, v123, 0xc0c0004
	v_perm_b32 v121, v126, v125, 0xc0c0004
	v_perm_b32 v123, v133, v132, 0xc0c0004
	v_perm_b32 v124, v148, v144, 0xc0c0004
	v_lshl_or_b32 v129, v129, 16, v128
	v_lshl_or_b32 v128, v142, 16, v131
	v_lshl_or_b32 v131, v146, 16, v145
	v_perm_b32 v142, v167, v174, 0xc0c0004
	v_perm_b32 v144, v189, v196, 0xc0c0004
	v_perm_b32 v145, v203, v160, 0xc0c0004
	v_lshl_or_b32 v133, v121, 16, v120
	v_lshl_or_b32 v132, v124, 16, v123
	v_wmma_i32_16x16x16_iu4 v[120:127], v[130:131], v[5:6], v[134:141] neg_lo:[1,1,0]
	v_lshl_or_b32 v131, v143, 16, v142
	v_lshl_or_b32 v130, v145, 16, v144
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[142:149], v[132:133], v[5:6], v[134:141] neg_lo:[1,1,0]
	v_perm_b32 v132, v154, v153, 0xc0c0004
	v_perm_b32 v133, v156, v155, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v157, 0xc0c0004
	v_perm_b32 v159, v168, v175, 0xc0c0004
	v_perm_b32 v79, v182, v79, 0xc0c0004
	v_perm_b32 v152, v190, v197, 0xc0c0004
	v_perm_b32 v153, v204, v161, 0xc0c0004
	v_lshl_or_b32 v132, v133, 16, v132
	v_lshl_or_b32 v133, v151, 16, v150
	v_perm_b32 v154, v191, v198, 0xc0c0004
	v_perm_b32 v155, v205, v162, 0xc0c0004
	v_perm_b32 v156, v169, v176, 0xc0c0004
	v_perm_b32 v157, v183, v158, 0xc0c0004
	v_lshl_or_b32 v151, v79, 16, v159
	v_lshl_or_b32 v150, v153, 16, v152
	v_wmma_i32_16x16x16_iu4 v[134:141], v[132:133], v[5:6], v[134:141] neg_lo:[1,1,0]
	v_lshl_or_b32 v5, v155, 16, v154
	v_lshl_or_b32 v6, v157, 16, v156
	v_wmma_i32_16x16x16_iu4 v[104:111], v[7:8], v[3:4], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[112:119], v[128:129], v[3:4], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[120:127], v[130:131], v[3:4], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[142:149], v[150:151], v[3:4], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[5:6], v[3:4], v[134:141] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v3, v80
	v_cvt_f32_i32_e32 v4, v81
	v_cvt_f32_i32_e32 v5, v82
	v_cvt_f32_i32_e32 v6, v83
	v_cvt_f32_i32_e32 v7, v84
	v_cvt_f32_i32_e32 v8, v85
	v_cvt_f32_i32_e32 v84, v86
	v_cvt_f32_i32_e32 v85, v87
	v_cvt_f32_i32_e32 v86, v88
	v_cvt_f32_i32_e32 v87, v89
	v_cvt_f32_i32_e32 v88, v90
	v_cvt_f32_i32_e32 v89, v91
	v_cvt_f32_i32_e32 v90, v92
	v_cvt_f32_i32_e32 v91, v93
	v_cvt_f32_i32_e32 v92, v94
	v_cvt_f32_i32_e32 v93, v95
	v_cvt_f32_i32_e32 v94, v96
	v_cvt_f32_i32_e32 v95, v97
	v_cvt_f32_i32_e32 v96, v98
	v_cvt_f32_i32_e32 v97, v99
	v_cvt_f32_i32_e32 v98, v100
	v_cvt_f32_i32_e32 v99, v101
	v_cvt_f32_i32_e32 v100, v102
	v_cvt_f32_i32_e32 v101, v103
	v_cvt_f32_i32_e32 v102, v104
	v_cvt_f32_i32_e32 v103, v105
	v_cvt_f32_i32_e32 v104, v106
	v_cvt_f32_i32_e32 v105, v107
	v_cvt_f32_i32_e32 v106, v108
	v_cvt_f32_i32_e32 v107, v109
	v_cvt_f32_i32_e32 v108, v110
	v_cvt_f32_i32_e32 v109, v111
	v_cvt_f32_i32_e32 v110, v112
	v_cvt_f32_i32_e32 v111, v113
	v_cvt_f32_i32_e32 v112, v114
	v_cvt_f32_i32_e32 v113, v115
	v_cvt_f32_i32_e32 v114, v116
	v_cvt_f32_i32_e32 v115, v117
	v_cvt_f32_i32_e32 v116, v118
	v_cvt_f32_i32_e32 v117, v119
	v_cvt_f32_i32_e32 v118, v120
	v_cvt_f32_i32_e32 v119, v121
	v_cvt_f32_i32_e32 v120, v122
	v_cvt_f32_i32_e32 v121, v123
	v_cvt_f32_i32_e32 v122, v124
	v_cvt_f32_i32_e32 v123, v125
	v_cvt_f32_i32_e32 v124, v126
	v_cvt_f32_i32_e32 v125, v127
	v_cvt_f32_i32_e32 v126, v142
	v_cvt_f32_i32_e32 v127, v143
	v_cvt_f32_i32_e32 v128, v144
	v_cvt_f32_i32_e32 v129, v145
	v_cvt_f32_i32_e32 v130, v146
	v_cvt_f32_i32_e32 v131, v147
	v_cvt_f32_i32_e32 v132, v148
	v_cvt_f32_i32_e32 v133, v149
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
.LBB0_8:
	.loc	1 205 36                        ; generate_amdgcn.py:205:36
	s_mul_i32 s0, s0, s27
	.loc	1 205 18 is_stmt 0              ; generate_amdgcn.py:205:18
	s_and_b32 s5, s15, 0xffff
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	s_add_i32 s0, s33, s0
	s_mov_b32 s7, 0x31027000
	v_add_lshl_u32 v78, s0, v78, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v77, s0, v77, 1
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s14
	v_add_lshl_u32 v76, s0, v76, 1
	v_add_nc_u32_e32 v176, 0xa0, v78
	v_add_nc_u32_e32 v145, 32, v78
	v_add_nc_u32_e32 v177, 0xa4, v78
	v_add_nc_u32_e32 v80, 4, v78
	v_add_nc_u32_e32 v146, 36, v78
	v_add_nc_u32_e32 v161, 0x60, v78
	v_add_nc_u32_e32 v178, 0xa8, v78
	v_add_nc_u32_e32 v184, 0xc0, v78
	v_add_nc_u32_e32 v81, 8, v78
	v_add_nc_u32_e32 v147, 40, v78
	v_add_nc_u32_e32 v162, 0x64, v78
	v_add_nc_u32_e32 v179, 0xac, v78
	v_add_nc_u32_e32 v185, 0xc4, v78
	v_add_nc_u32_e32 v82, 12, v78
	v_add_nc_u32_e32 v148, 44, v78
	v_add_nc_u32_e32 v153, 64, v78
	v_add_nc_u32_e32 v163, 0x68, v78
	v_add_nc_u32_e32 v168, 0x80, v78
	v_add_nc_u32_e32 v180, 0xb0, v78
	v_add_nc_u32_e32 v181, 0xb4, v78
	v_add_nc_u32_e32 v182, 0xb8, v78
	v_add_nc_u32_e32 v183, 0xbc, v78
	v_add_nc_u32_e32 v186, 0xc8, v78
	v_add_nc_u32_e32 v192, 0xe0, v78
	v_add_nc_u32_e32 v83, 16, v78
	v_add_nc_u32_e32 v142, 20, v78
	v_add_nc_u32_e32 v143, 24, v78
	v_add_nc_u32_e32 v144, 28, v78
	v_add_nc_u32_e32 v149, 48, v78
	v_add_nc_u32_e32 v150, 52, v78
	v_add_nc_u32_e32 v151, 56, v78
	v_add_nc_u32_e32 v152, 60, v78
	v_add_nc_u32_e32 v154, 0x44, v78
	v_add_nc_u32_e32 v164, 0x6c, v78
	v_add_nc_u32_e32 v169, 0x84, v78
	v_cndmask_b32_e64 v176, 0x80000000, v176, s2
	v_add_nc_u32_e32 v187, 0xcc, v78
	v_add_nc_u32_e32 v193, 0xe4, v78
	v_cndmask_b32_e64 v79, 0x80000000, v78, s2
	v_cndmask_b32_e64 v145, 0x80000000, v145, s2
	v_add_nc_u32_e32 v155, 0x48, v78
	v_add_nc_u32_e32 v165, 0x70, v78
	v_add_nc_u32_e32 v166, 0x74, v78
	v_add_nc_u32_e32 v167, 0x78, v78
	v_add_nc_u32_e32 v170, 0x88, v78
	v_cndmask_b32_e64 v177, 0x80000000, v177, s2
	v_add_nc_u32_e32 v188, 0xd0, v78
	v_add_nc_u32_e32 v189, 0xd4, v78
	v_add_nc_u32_e32 v190, 0xd8, v78
	v_add_nc_u32_e32 v191, 0xdc, v78
	v_add_nc_u32_e32 v194, 0xe8, v78
	v_cndmask_b32_e64 v80, 0x80000000, v80, s2
	v_cndmask_b32_e64 v146, 0x80000000, v146, s2
	v_add_nc_u32_e32 v156, 0x4c, v78
	v_cndmask_b32_e64 v161, 0x80000000, v161, s2
	v_add_nc_u32_e32 v171, 0x8c, v78
	v_cndmask_b32_e64 v178, 0x80000000, v178, s2
	v_cndmask_b32_e64 v184, 0x80000000, v184, s2
	v_add_nc_u32_e32 v195, 0xec, v78
	v_cndmask_b32_e64 v81, 0x80000000, v81, s2
	v_cndmask_b32_e64 v147, 0x80000000, v147, s2
	v_add_nc_u32_e32 v157, 0x50, v78
	v_add_nc_u32_e32 v158, 0x54, v78
	v_add_nc_u32_e32 v159, 0x58, v78
	v_add_nc_u32_e32 v160, 0x5c, v78
	v_cndmask_b32_e64 v162, 0x80000000, v162, s2
	v_add_nc_u32_e32 v172, 0x90, v78
	v_add_nc_u32_e32 v173, 0x94, v78
	v_add_nc_u32_e32 v174, 0x98, v78
	v_add_nc_u32_e32 v175, 0x9c, v78
	v_cndmask_b32_e64 v179, 0x80000000, v179, s2
	v_cndmask_b32_e64 v185, 0x80000000, v185, s2
	v_add_nc_u32_e32 v196, 0xf0, v78
	v_add_nc_u32_e32 v197, 0xf4, v78
	v_add_nc_u32_e32 v78, 0xf8, v78
	v_cndmask_b32_e64 v82, 0x80000000, v82, s2
	v_cndmask_b32_e64 v148, 0x80000000, v148, s2
	v_cndmask_b32_e64 v153, 0x80000000, v153, s2
	v_cndmask_b32_e64 v163, 0x80000000, v163, s2
	v_cndmask_b32_e64 v168, 0x80000000, v168, s2
	v_cndmask_b32_e64 v180, 0x80000000, v180, s2
	v_cndmask_b32_e64 v181, 0x80000000, v181, s2
	v_cndmask_b32_e64 v182, 0x80000000, v182, s2
	v_cndmask_b32_e64 v183, 0x80000000, v183, s2
	v_cndmask_b32_e64 v186, 0x80000000, v186, s2
	v_cndmask_b32_e64 v192, 0x80000000, v192, s2
	v_cndmask_b32_e64 v83, 0x80000000, v83, s2
	v_cndmask_b32_e64 v142, 0x80000000, v142, s2
	v_cndmask_b32_e64 v143, 0x80000000, v143, s2
	v_cndmask_b32_e64 v144, 0x80000000, v144, s2
	v_cndmask_b32_e64 v149, 0x80000000, v149, s2
	v_cndmask_b32_e64 v150, 0x80000000, v150, s2
	v_cndmask_b32_e64 v151, 0x80000000, v151, s2
	v_cndmask_b32_e64 v152, 0x80000000, v152, s2
	v_cndmask_b32_e64 v154, 0x80000000, v154, s2
	v_cndmask_b32_e64 v164, 0x80000000, v164, s2
	v_cndmask_b32_e64 v169, 0x80000000, v169, s2
	s_clause 0x7
	buffer_load_u16 v176, v176, s[4:7], 0 offen
	buffer_load_u16 v177, v177, s[4:7], 0 offen
	buffer_load_u16 v178, v178, s[4:7], 0 offen
	buffer_load_u16 v179, v179, s[4:7], 0 offen
	buffer_load_u16 v180, v180, s[4:7], 0 offen
	buffer_load_u16 v181, v181, s[4:7], 0 offen
	buffer_load_u16 v182, v182, s[4:7], 0 offen
	buffer_load_u16 v183, v183, s[4:7], 0 offen
	v_cndmask_b32_e64 v187, 0x80000000, v187, s2
	v_cndmask_b32_e64 v193, 0x80000000, v193, s2
	s_clause 0xf
	buffer_load_u16 v79, v79, s[4:7], 0 offen
	buffer_load_u16 v80, v80, s[4:7], 0 offen
	buffer_load_u16 v81, v81, s[4:7], 0 offen
	buffer_load_u16 v82, v82, s[4:7], 0 offen
	buffer_load_u16 v83, v83, s[4:7], 0 offen
	buffer_load_u16 v142, v142, s[4:7], 0 offen
	buffer_load_u16 v143, v143, s[4:7], 0 offen
	buffer_load_u16 v144, v144, s[4:7], 0 offen
	buffer_load_u16 v145, v145, s[4:7], 0 offen
	buffer_load_u16 v146, v146, s[4:7], 0 offen
	buffer_load_u16 v147, v147, s[4:7], 0 offen
	buffer_load_u16 v148, v148, s[4:7], 0 offen
	buffer_load_u16 v149, v149, s[4:7], 0 offen
	buffer_load_u16 v150, v150, s[4:7], 0 offen
	buffer_load_u16 v151, v151, s[4:7], 0 offen
	buffer_load_u16 v152, v152, s[4:7], 0 offen
	v_cndmask_b32_e64 v155, 0x80000000, v155, s2
	v_cndmask_b32_e64 v165, 0x80000000, v165, s2
	v_cndmask_b32_e64 v166, 0x80000000, v166, s2
	v_cndmask_b32_e64 v167, 0x80000000, v167, s2
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	v_cndmask_b32_e64 v170, 0x80000000, v170, s2
	v_cndmask_b32_e64 v188, 0x80000000, v188, s2
	v_cndmask_b32_e64 v189, 0x80000000, v189, s2
	v_cndmask_b32_e64 v190, 0x80000000, v190, s2
	v_cndmask_b32_e64 v191, 0x80000000, v191, s2
	v_cndmask_b32_e64 v194, 0x80000000, v194, s2
	v_cndmask_b32_e64 v156, 0x80000000, v156, s2
	s_clause 0x7
	buffer_load_u16 v161, v161, s[4:7], 0 offen
	buffer_load_u16 v162, v162, s[4:7], 0 offen
	buffer_load_u16 v163, v163, s[4:7], 0 offen
	buffer_load_u16 v164, v164, s[4:7], 0 offen
	buffer_load_u16 v165, v165, s[4:7], 0 offen
	buffer_load_u16 v166, v166, s[4:7], 0 offen
	buffer_load_u16 v167, v167, s[4:7], 0 offen
	buffer_load_u16 v77, v77, s[4:7], 0 offen
	v_cndmask_b32_e64 v171, 0x80000000, v171, s2
	s_clause 0x7
	buffer_load_u16 v184, v184, s[4:7], 0 offen
	buffer_load_u16 v185, v185, s[4:7], 0 offen
	buffer_load_u16 v186, v186, s[4:7], 0 offen
	buffer_load_u16 v187, v187, s[4:7], 0 offen
	buffer_load_u16 v188, v188, s[4:7], 0 offen
	buffer_load_u16 v189, v189, s[4:7], 0 offen
	buffer_load_u16 v190, v190, s[4:7], 0 offen
	buffer_load_u16 v191, v191, s[4:7], 0 offen
	v_cndmask_b32_e64 v195, 0x80000000, v195, s2
	v_cndmask_b32_e64 v157, 0x80000000, v157, s2
	v_cndmask_b32_e64 v158, 0x80000000, v158, s2
	v_cndmask_b32_e64 v159, 0x80000000, v159, s2
	v_cndmask_b32_e64 v160, 0x80000000, v160, s2
	v_cndmask_b32_e64 v172, 0x80000000, v172, s2
	v_cndmask_b32_e64 v173, 0x80000000, v173, s2
	v_cndmask_b32_e64 v174, 0x80000000, v174, s2
	v_cndmask_b32_e64 v175, 0x80000000, v175, s2
	v_cndmask_b32_e64 v196, 0x80000000, v196, s2
	v_cndmask_b32_e64 v197, 0x80000000, v197, s2
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	s_clause 0x17
	buffer_load_u16 v153, v153, s[4:7], 0 offen
	buffer_load_u16 v154, v154, s[4:7], 0 offen
	buffer_load_u16 v155, v155, s[4:7], 0 offen
	buffer_load_u16 v156, v156, s[4:7], 0 offen
	buffer_load_u16 v157, v157, s[4:7], 0 offen
	buffer_load_u16 v158, v158, s[4:7], 0 offen
	buffer_load_u16 v159, v159, s[4:7], 0 offen
	buffer_load_u16 v160, v160, s[4:7], 0 offen
	buffer_load_u16 v168, v168, s[4:7], 0 offen
	buffer_load_u16 v169, v169, s[4:7], 0 offen
	buffer_load_u16 v170, v170, s[4:7], 0 offen
	buffer_load_u16 v171, v171, s[4:7], 0 offen
	buffer_load_u16 v172, v172, s[4:7], 0 offen
	buffer_load_u16 v173, v173, s[4:7], 0 offen
	buffer_load_u16 v174, v174, s[4:7], 0 offen
	buffer_load_u16 v175, v175, s[4:7], 0 offen
	buffer_load_u16 v192, v192, s[4:7], 0 offen
	buffer_load_u16 v193, v193, s[4:7], 0 offen
	buffer_load_u16 v194, v194, s[4:7], 0 offen
	buffer_load_u16 v195, v195, s[4:7], 0 offen
	buffer_load_u16 v196, v196, s[4:7], 0 offen
	buffer_load_u16 v197, v197, s[4:7], 0 offen
	buffer_load_u16 v78, v78, s[4:7], 0 offen
	buffer_load_u16 v76, v76, s[4:7], 0 offen
	v_mov_b16_e64 v198.l, 0
	.loc	1 168 18 is_stmt 1              ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(62)
	v_mov_b16_e64 v198.h, v2.l
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v2, 0x180, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_lshl_or_b32 v9, v11, 9, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v3, v3, v198
	v_mul_f32_e32 v4, v4, v198
	v_mul_f32_e32 v6, v6, v198
	v_mul_f32_e32 v84, v84, v198
	v_mul_f32_e32 v85, v85, v198
	v_mul_f32_e32 v87, v87, v198
	v_mul_f32_e32 v89, v89, v198
	v_mul_f32_e32 v92, v92, v198
	v_mul_f32_e32 v94, v94, v198
	v_mul_f32_e32 v97, v97, v198
	v_mul_f32_e32 v102, v102, v198
	v_mul_f32_e32 v107, v107, v198
	v_mul_f32_e32 v113, v113, v198
	v_mul_f32_e32 v114, v114, v198
	v_mul_f32_e32 v119, v119, v198
	v_mul_f32_e32 v120, v120, v198
	v_mul_f32_e32 v125, v125, v198
	v_mul_f32_e32 v126, v126, v198
	v_mul_f32_e32 v131, v131, v198
	v_mul_f32_e32 v132, v132, v198
	v_mul_f32_e32 v137, v137, v198
	v_mul_f32_e32 v138, v138, v198
	v_mul_f32_e32 v7, v7, v198
	v_mul_f32_e32 v8, v8, v198
	v_mul_f32_e32 v88, v88, v198
	v_mul_f32_e32 v93, v93, v198
	v_mul_f32_e32 v95, v95, v198
	v_mul_f32_e32 v98, v98, v198
	v_mul_f32_e32 v99, v99, v198
	v_mul_f32_e32 v103, v103, v198
	v_mul_f32_e32 v104, v104, v198
	v_mul_f32_e32 v108, v108, v198
	v_mul_f32_e32 v110, v110, v198
	v_mul_f32_e32 v5, v5, v198
	v_mul_f32_e32 v90, v90, v198
	v_mul_f32_e32 v100, v100, v198
	v_mul_f32_e32 v105, v105, v198
	v_mul_f32_e32 v109, v109, v198
	v_mul_f32_e32 v111, v111, v198
	v_mul_f32_e32 v112, v112, v198
	v_mul_f32_e32 v115, v115, v198
	v_mul_f32_e32 v116, v116, v198
	v_mul_f32_e32 v121, v121, v198
	v_mul_f32_e32 v122, v122, v198
	v_mul_f32_e32 v127, v127, v198
	v_mul_f32_e32 v128, v128, v198
	v_mul_f32_e32 v86, v86, v198
	v_mul_f32_e32 v91, v91, v198
	v_mul_f32_e32 v96, v96, v198
	v_mul_f32_e32 v101, v101, v198
	v_mul_f32_e32 v106, v106, v198
	v_mul_f32_e32 v117, v117, v198
	v_mul_f32_e32 v118, v118, v198
	v_mul_f32_e32 v123, v123, v198
	v_mul_f32_e32 v124, v124, v198
	v_mul_f32_e32 v129, v129, v198
	v_mul_f32_e32 v130, v130, v198
	v_mul_f32_e32 v133, v133, v198
	v_mul_f32_e32 v134, v134, v198
	v_mul_f32_e32 v135, v135, v198
	v_mul_f32_e32 v136, v136, v198
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_lshrrev_b32_e32 v2, 5, v2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v139, v139, v198
	v_mul_f32_e32 v140, v140, v198
	v_mul_f32_e32 v141, v141, v198
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v199, 7, v0
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_mul_i32 s0, s34, s27
	s_lshl_b32 s1, s27, 2
	s_add_i32 s0, s0, s33
	.loc	1 218 9 is_stmt 0               ; generate_amdgcn.py:218:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, s6
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v176, 16, v176
	v_lshlrev_b32_e32 v177, 16, v177
	s_waitcnt vmcnt(61)
	v_lshlrev_b32_e32 v178, 16, v178
	s_waitcnt vmcnt(55)
	v_lshlrev_b32_e32 v79, 16, v79
	s_waitcnt vmcnt(54)
	v_lshlrev_b32_e32 v80, 16, v80
	s_waitcnt vmcnt(46)
	v_lshlrev_b32_e32 v146, 16, v146
	v_lshlrev_b32_e32 v82, 16, v82
	s_waitcnt vmcnt(44)
	v_lshlrev_b32_e32 v148, 16, v148
	v_lshlrev_b32_e32 v183, 16, v183
	v_lshlrev_b32_e32 v143, 16, v143
	s_waitcnt vmcnt(41)
	v_lshlrev_b32_e32 v151, 16, v151
	v_lshlrev_b32_e32 v83, 16, v83
	v_lshlrev_b32_e32 v147, 16, v147
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v152, 16, v152
	v_lshlrev_b32_e32 v144, 16, v144
	v_lshlrev_b32_e32 v149, 16, v149
	v_lshlrev_b32_e32 v179, 16, v179
	s_waitcnt vmcnt(39)
	v_lshlrev_b32_e32 v161, 16, v161
	s_waitcnt vmcnt(38)
	v_lshlrev_b32_e32 v162, 16, v162
	s_waitcnt vmcnt(37)
	v_lshlrev_b32_e32 v163, 16, v163
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v184, 16, v184
	v_lshlrev_b32_e32 v164, 16, v164
	v_lshlrev_b32_e32 v166, 16, v166
	v_lshlrev_b32_e32 v167, 16, v167
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v189, 16, v189
	v_lshlrev_b32_e32 v77, 16, v77
	v_lshlrev_b32_e32 v185, 16, v185
	v_lshlrev_b32_e32 v81, 16, v81
	v_lshlrev_b32_e32 v145, 16, v145
	v_lshlrev_b32_e32 v150, 16, v150
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v3, v3, v79, v38
	v_fma_f32 v6, v6, v82, v73
	v_fma_f32 v79, v84, v143, v70
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v153, 16, v153
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v168, 16, v168
	v_lshlrev_b32_e32 v154, 16, v154
	v_lshlrev_b32_e32 v156, 16, v156
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v171, 16, v171
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v195, 16, v195
	v_lshlrev_b32_e32 v157, 16, v157
	v_lshlrev_b32_e32 v158, 16, v158
	v_lshlrev_b32_e32 v172, 16, v172
	v_lshlrev_b32_e32 v159, 16, v159
	v_lshlrev_b32_e32 v169, 16, v169
	v_lshlrev_b32_e32 v173, 16, v173
	v_lshlrev_b32_e32 v155, 16, v155
	v_lshlrev_b32_e32 v192, 16, v192
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v82, v87, v146, v67
	v_fma_f32 v84, v89, v148, v65
	v_fma_f32 v87, v92, v151, v62
	v_fma_f32 v89, v94, v153, v60
	v_fma_f32 v92, v97, v156, v57
	v_fma_f32 v97, v102, v161, v52
	v_fma_f32 v102, v107, v166, v47
	v_fma_f32 v107, v113, v171, v41
	v_fma_f32 v113, v119, v177, v34
	v_fma_f32 v119, v125, v183, v28
	v_fma_f32 v125, v131, v189, v22
	v_fma_f32 v131, v137, v195, v16
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v160, 16, v160
	v_lshlrev_b32_e32 v165, 16, v165
	v_lshlrev_b32_e32 v170, 16, v170
	v_lshlrev_b32_e32 v174, 16, v174
	v_lshlrev_b32_e32 v180, 16, v180
	v_lshlrev_b32_e32 v186, 16, v186
	v_lshlrev_b32_e32 v175, 16, v175
	v_lshlrev_b32_e32 v181, 16, v181
	v_lshlrev_b32_e32 v187, 16, v187
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v7, v7, v83, v72
	v_fma_f32 v83, v88, v147, v66
	v_fma_f32 v88, v93, v152, v61
	v_fma_f32 v93, v98, v157, v56
	v_fma_f32 v94, v99, v158, v55
	v_fma_f32 v98, v103, v162, v51
	v_fma_f32 v99, v104, v163, v50
	v_fma_f32 v103, v108, v167, v46
	v_fma_f32 v104, v110, v168, v44
	v_fma_f32 v108, v114, v172, v40
	v_fma_f32 v114, v120, v178, v33
	v_fma_f32 v120, v126, v184, v27
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v188, 16, v188
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v196, 16, v196
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v76, 16, v76
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v4, v4, v80, v75
	v_fma_f32 v80, v85, v144, v69
	v_fma_f32 v85, v90, v149, v64
	v_fma_f32 v90, v95, v154, v59
	v_fma_f32 v95, v100, v159, v54
	v_fma_f32 v100, v105, v164, v49
	v_fma_f32 v77, v109, v77, v45
	v_fma_f32 v105, v111, v169, v43
	v_fma_f32 v109, v115, v173, v39
	v_fma_f32 v115, v121, v179, v32
	v_fma_f32 v121, v127, v185, v26
	v_fma_f32 v5, v5, v81, v74
	v_fma_f32 v81, v86, v145, v68
	v_fma_f32 v86, v91, v150, v63
	v_fma_f32 v91, v96, v155, v58
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v3, v38, v3, s2
	v_cndmask_b32_e64 v60, v60, v89, s2
	v_cndmask_b32_e64 v11, v16, v131, s2
	v_add_nc_u32_e32 v16, 0, v9
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v182, 16, v182
	v_lshlrev_b32_e32 v142, 16, v142
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v96, v101, v160, v53
	v_fma_f32 v101, v106, v165, v48
	v_fma_f32 v106, v112, v170, v42
	v_fma_f32 v110, v116, v174, v37
	v_fma_f32 v116, v122, v180, v31
	v_fma_f32 v122, v128, v186, v25
	v_fma_f32 v111, v117, v175, v36
	v_fma_f32 v117, v123, v181, v30
	v_fma_f32 v123, v129, v187, v24
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v44, v44, v104, s2
	v_cndmask_b32_e64 v27, v27, v120, s2
	v_cndmask_b32_e64 v4, v75, v4, s2
	v_cndmask_b32_e64 v38, v70, v79, s2
	v_cndmask_b32_e64 v59, v59, v90, s2
	v_cndmask_b32_e64 v43, v43, v105, s2
	v_cndmask_b32_e64 v26, v26, v121, s2
	v_xad_u32 v70, v9, 4, 0
	v_cndmask_b32_e64 v5, v74, v5, s2
	v_cndmask_b32_e64 v58, v58, v91, s2
	ds_store_2addr_b32 v16, v3, v60 offset1:32
	v_xad_u32 v3, v9, 8, 0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v190, 16, v190
	v_lshlrev_b32_e32 v191, 16, v191
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v112, v118, v176, v35
	v_fma_f32 v118, v124, v182, v29
	v_fma_f32 v124, v130, v188, v23
	v_fma_f32 v8, v8, v142, v71
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v42, v42, v106, s2
	v_cndmask_b32_e64 v25, v25, v122, s2
	v_cndmask_b32_e64 v6, v73, v6, s2
	v_cndmask_b32_e64 v57, v57, v92, s2
	v_cndmask_b32_e64 v41, v41, v107, s2
	v_cndmask_b32_e64 v24, v24, v123, s2
	ds_store_2addr_b32 v16, v44, v27 offset0:64 offset1:96
	ds_store_2addr_b32 v70, v4, v59 offset1:32
	v_xad_u32 v4, v9, 12, 0
	v_cndmask_b32_e64 v7, v72, v7, s2
	v_cndmask_b32_e64 v56, v56, v93, s2
	ds_store_2addr_b32 v70, v43, v26 offset0:64 offset1:96
	ds_store_2addr_b32 v3, v5, v58 offset1:32
	v_xad_u32 v5, v9, 16, 0
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v126, v132, v190, v21
	v_fma_f32 v127, v133, v191, v20
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v40, v40, v108, s2
	v_cndmask_b32_e64 v23, v23, v124, s2
	v_cndmask_b32_e64 v8, v71, v8, s2
	v_cndmask_b32_e64 v55, v55, v94, s2
	v_cndmask_b32_e64 v39, v39, v109, s2
	v_cndmask_b32_e64 v22, v22, v125, s2
	ds_store_2addr_b32 v3, v42, v25 offset0:64 offset1:96
	ds_store_2addr_b32 v4, v6, v57 offset1:32
	v_xad_u32 v3, v9, 20, 0
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v128, v134, v192, v19
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v54, v54, v95, s2
	ds_store_2addr_b32 v4, v41, v24 offset0:64 offset1:96
	ds_store_2addr_b32 v5, v7, v56 offset1:32
	v_xad_u32 v4, v9, 24, 0
	v_cndmask_b32_e64 v37, v37, v110, s2
	v_cndmask_b32_e64 v36, v36, v111, s2
	v_cndmask_b32_e64 v21, v21, v126, s2
	v_cndmask_b32_e64 v20, v20, v127, s2
	ds_store_2addr_b32 v5, v40, v23 offset0:64 offset1:96
	ds_store_2addr_b32 v3, v8, v55 offset1:32
	v_xad_u32 v5, v9, 28, 0
	v_cndmask_b32_e64 v69, v69, v80, s2
	v_cndmask_b32_e64 v68, v68, v81, s2
	v_cndmask_b32_e64 v53, v53, v96, s2
	v_cndmask_b32_e64 v52, v52, v97, s2
	ds_store_2addr_b32 v3, v39, v22 offset0:64 offset1:96
	ds_store_2addr_b32 v4, v38, v54 offset1:32
	v_xad_u32 v3, v9, 32, 0
	v_cndmask_b32_e64 v35, v35, v112, s2
	v_cndmask_b32_e64 v19, v19, v128, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v193, 16, v193
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	ds_store_2addr_b32 v4, v37, v21 offset0:64 offset1:96
	ds_store_2addr_b32 v5, v69, v53 offset1:32
	ds_store_2addr_b32 v5, v36, v20 offset0:64 offset1:96
	ds_store_2addr_b32 v3, v68, v52 offset1:32
	ds_store_2addr_b32 v3, v35, v19 offset0:64 offset1:96
	v_lshlrev_b32_e32 v5, 1, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v194, 16, v194
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v129, v135, v193, v18
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v67, v67, v82, s2
	v_cndmask_b32_e64 v51, v51, v98, s2
	v_and_b32_e32 v5, 60, v5
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v130, v136, v194, v17
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_xad_u32 v4, v9, 36, 0
	v_cndmask_b32_e64 v34, v34, v113, s2
	v_cndmask_b32_e64 v18, v18, v129, s2
	v_lshl_or_b32 v1, v1, 2, v5
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v197, 16, v197
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v132, v138, v196, v15
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v66, v66, v83, s2
	v_cndmask_b32_e64 v50, v50, v99, s2
	v_xad_u32 v3, v9, 40, 0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v78, 16, v78
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v65, v65, v84, s2
	v_cndmask_b32_e64 v49, v49, v100, s2
	v_cndmask_b32_e64 v33, v33, v114, s2
	v_cndmask_b32_e64 v32, v32, v115, s2
	v_cndmask_b32_e64 v17, v17, v130, s2
	ds_store_2addr_b32 v4, v67, v51 offset1:32
	ds_store_2addr_b32 v4, v34, v18 offset0:64 offset1:96
	v_xad_u32 v4, v9, 44, 0
	v_lshlrev_b32_e32 v0, 6, v0
	v_xor_b32_e32 v1, v1, v2
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v133, v139, v197, v14
	v_fma_f32 v76, v141, v76, v12
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v64, v64, v85, s2
	v_cndmask_b32_e64 v48, v48, v101, s2
	v_cndmask_b32_e64 v31, v31, v116, s2
	v_cndmask_b32_e64 v15, v15, v132, s2
	ds_store_2addr_b32 v3, v66, v50 offset1:32
	ds_store_2addr_b32 v3, v33, v17 offset0:64 offset1:96
	v_xad_u32 v3, v9, 48, 0
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v78, v140, v78, v13
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v63, v63, v86, s2
	v_cndmask_b32_e64 v47, v47, v102, s2
	ds_store_2addr_b32 v4, v65, v49 offset1:32
	ds_store_2addr_b32 v4, v32, v11 offset0:64 offset1:96
	v_xad_u32 v4, v9, 52, 0
	v_and_or_b32 v0, v0, 64, v1
	v_cndmask_b32_e64 v61, v61, v88, s2
	v_cndmask_b32_e64 v45, v45, v77, s2
	v_cndmask_b32_e64 v30, v30, v117, s2
	v_cndmask_b32_e64 v14, v14, v133, s2
	v_xad_u32 v2, v9, 60, 0
	v_cndmask_b32_e64 v62, v62, v87, s2
	v_cndmask_b32_e64 v46, v46, v103, s2
	v_cndmask_b32_e64 v28, v28, v119, s2
	v_cndmask_b32_e64 v12, v12, v76, s2
	ds_store_2addr_b32 v3, v64, v48 offset1:32
	ds_store_2addr_b32 v3, v31, v15 offset0:64 offset1:96
	ds_store_2addr_b32 v4, v63, v47 offset1:32
	v_xad_u32 v3, v9, 56, 0
	v_cndmask_b32_e64 v29, v29, v118, s2
	v_cndmask_b32_e64 v13, v13, v78, s2
	v_add_nc_u32_e32 v1, 0, v0
	ds_store_2addr_b32 v4, v30, v14 offset0:64 offset1:96
	ds_store_2addr_b32 v3, v62, v46 offset1:32
	ds_store_2addr_b32 v3, v29, v13 offset0:64 offset1:96
	ds_store_2addr_b32 v2, v61, v45 offset1:32
	ds_store_2addr_b32 v2, v28, v12 offset0:64 offset1:96
	v_xad_u32 v2, 0x810, v0, 0
	v_xad_u32 v3, 0x1020, v0, 0
	v_xad_u32 v0, 0x1830, v0, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	ds_load_b32 v2, v2
	ds_load_b32 v3, v3
	ds_load_b32 v0, v0
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	v_mul_lo_u32 v4, s27, v199
	s_lshl_b32 s2, s27, 3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v4, s0, v10, v4
	s_mul_i32 s0, s27, 12
	.loc	1 218 9 is_stmt 0               ; generate_amdgcn.py:218:9
	s_mov_b32 s27, s7
	v_lshlrev_b32_e32 v5, 2, v4
	v_add_lshl_u32 v6, v4, s1, 2
	v_add_lshl_u32 v7, v4, s2, 2
	v_add_lshl_u32 v4, v4, s0, 2
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v1, v5, s[24:27], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v2, v6, s[24:27], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v3, v7, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_atomic_add_f32 v0, v4, s[24:27], 0 offen
	.loc	1 80 1 is_stmt 1                ; generate_amdgcn.py:80:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk
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
		.amdhsa_next_free_vgpr 237
		.amdhsa_next_free_sgpr 51
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk.num_vgpr, 237
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12704
; TotalNumSgprs: 53
; NumVgprs: 237
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 29
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 237
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
	.byte	88                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	154                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     237
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
