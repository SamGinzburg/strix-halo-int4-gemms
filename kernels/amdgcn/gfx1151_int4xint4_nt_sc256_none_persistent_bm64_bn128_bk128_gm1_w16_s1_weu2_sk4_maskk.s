	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 196 0                         ; generate_amdgcn.py:196:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[28:29], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:205:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s28, 63
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s29, 0x7f
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_lshr_b32 s6, s6, 26
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_lshr_b32 s7, s7, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_add_i32 s4, s4, s6
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s5, s7
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_ashr_i32 s28, s4, 6
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s33, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s34, s33, s28
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s34
	s_cbranch_scc1 .LBB0_38
; %bb.1:                                ; %.lr.ph4
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s12, s[0:1], 0x38
	s_load_b64 s[30:31], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_and_b32_e32 v31, 0xe0, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v6, 15, v0
	v_lshlrev_b32_e32 v18, 2, v0
	v_lshrrev_b32_e32 v16, 1, v0
	v_lshlrev_b32_e32 v2, 3, v0
	v_lshlrev_b32_e32 v19, 5, v31
	v_lshlrev_b32_e32 v17, 6, v6
	v_and_b32_e32 v20, 56, v18
	v_and_b32_e32 v16, 56, v16
	v_bfe_i32 v21, v0, 7, 1
	v_lshrrev_b32_e32 v30, 3, v0
	v_and_or_b32 v27, 0x438, v18, v17
	v_or3_b32 v48, v19, v20, v17
	v_bfe_i32 v17, v0, 0, 1
	v_and_b32_e32 v18, 0x78, v18
	v_and_b32_e32 v20, 1, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v1, 0x7f, v0
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s12, 0xff
.Ltmp12:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_lshr_b32 s13, s12, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s1, s0, 31
.Ltmp14:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s12, s12, s13
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_lshr_b32 s1, s1, 24
.Ltmp16:
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v3, 7, v0
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s13, s0, s1
.Ltmp18:
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v4, 0x100, v0
	v_bfe_i32 v5, v0, 8, 1
	v_and_b32_e32 v7, 56, v2
	v_xor_b32_e32 v2, v2, v16
	v_and_b32_e32 v16, 14, v0
	v_and_b32_e32 v17, 0x840, v17
	v_lshl_or_b32 v18, v31, 3, v18
	v_lshlrev_b32_e32 v0, 4, v0
	v_lshlrev_b32_e32 v20, 6, v20
	v_and_b32_e32 v21, 0x840, v21
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s1, s12, 1
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s35, s13, 8
	s_cmpk_gt_i32 s0, 0xff
.Ltmp20:
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v26, 4, v4
	s_cselect_b32 s36, -1, 0
	s_abs_i32 s42, s33
	v_lshlrev_b32_e32 v19, 11, v16
	v_lshrrev_b32_e32 v4, 1, v4
	v_xor_b32_e32 v17, v18, v17
	v_and_b32_e32 v0, 0x700, v0
	v_lshlrev_b32_e32 v16, 2, v16
	v_xor_b32_e32 v18, v21, v20
	s_cvt_f32_u32 s0, s42
	v_or_b32_e32 v8, 60, v3
	v_or_b32_e32 v9, 52, v3
	v_or_b32_e32 v10, 44, v3
	v_or_b32_e32 v11, 36, v3
	v_or_b32_e32 v12, 28, v3
	v_or_b32_e32 v13, 20, v3
	v_or_b32_e32 v14, 12, v3
	v_or_b32_e32 v15, 4, v3
	v_or3_b32 v33, v19, v4, v17
	v_or3_b32 v0, v0, v16, v18
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[16:17], null, s29, v3, v[1:2]
	v_rcp_iflag_f32_e32 v3, s0
	v_and_b32_e32 v4, 0x1008, v5
	v_mad_u64_u32 v[17:18], null, s29, v15, v[1:2]
	v_mad_u64_u32 v[18:19], null, s29, v14, v[1:2]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_xor_b32_e32 v34, v0, v4
	v_lshl_or_b32 v35, s3, 6, v7
	v_mad_u64_u32 v[19:20], null, s29, v13, v[1:2]
	v_readfirstlane_b32 s0, v3
	v_mad_u64_u32 v[20:21], null, s29, v12, v[1:2]
	v_mad_u64_u32 v[21:22], null, s29, v11, v[1:2]
	s_mul_f32 s3, s0, 0x4f7ffffe
	s_mov_b32 s20, s4
	s_mov_b32 s4, s6
	v_xor_b32_e32 v28, 8, v27
	v_xor_b32_e32 v29, 16, v27
	v_xor_b32_e32 v43, 24, v27
	v_xor_b32_e32 v44, 32, v27
	v_xor_b32_e32 v45, 40, v27
	v_xor_b32_e32 v46, 48, v27
	v_xor_b32_e32 v47, 56, v27
	v_xor_b32_e32 v49, 8, v48
	v_xor_b32_e32 v50, 16, v48
	v_xor_b32_e32 v51, 24, v48
	v_xor_b32_e32 v52, 32, v48
	v_xor_b32_e32 v53, 40, v48
	v_xor_b32_e32 v54, 48, v48
	v_xor_b32_e32 v55, 56, v48
	v_xor_b32_e32 v5, 8, v33
	v_xor_b32_e32 v57, 16, v33
	v_xor_b32_e32 v58, 24, v33
	v_xor_b32_e32 v0, 32, v33
	v_xor_b32_e32 v4, 40, v33
	v_xor_b32_e32 v61, 48, v33
	v_xor_b32_e32 v62, 56, v33
	v_xor_b32_e32 v63, 0x2010, v34
	v_xor_b32_e32 v64, 0x4020, v34
	v_xor_b32_e32 v65, 0x6030, v34
	v_mad_u64_u32 v[22:23], null, s29, v10, v[1:2]
	s_cvt_u32_f32 s6, s3
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_or_b32_e32 v36, v26, v6
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[23:24], null, s29, v9, v[1:2]
	s_and_b32 s21, s5, 0xffff
	s_and_b32 s5, s7, 0xffff
	v_mad_u64_u32 v[24:25], null, s29, v8, v[1:2]
	s_sub_i32 s7, 0, s42
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v32, 64, v30
	s_mul_i32 s7, s7, s6
	v_cmp_gt_i32_e64 s0, 0x80, v35
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_and_b32_e32 v37, 2, v30
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_or_b32_e32 v38, 32, v36
	v_add_nc_u32_e32 v39, 0, v2
	v_add_nc_u32_e32 v40, 0, v27
	v_add_nc_u32_e32 v41, 0, v28
	v_add_nc_u32_e32 v42, 0, v29
	v_add_nc_u32_e32 v43, 0, v43
	v_add_nc_u32_e32 v44, 0, v44
	v_add_nc_u32_e32 v45, 0, v45
	v_add_nc_u32_e32 v46, 0, v46
	v_add_nc_u32_e32 v47, 0, v47
	v_add_nc_u32_e32 v48, 0, v48
	v_add_nc_u32_e32 v49, 0, v49
	v_add_nc_u32_e32 v50, 0, v50
	v_add_nc_u32_e32 v51, 0, v51
	v_add_nc_u32_e32 v52, 0, v52
	v_add_nc_u32_e32 v53, 0, v53
	v_add_nc_u32_e32 v54, 0, v54
	v_add_nc_u32_e32 v55, 0, v55
	v_add_nc_u32_e32 v56, 0, v5
	v_add_nc_u32_e32 v57, 0, v57
	v_add_nc_u32_e32 v58, 0, v58
	v_add_nc_u32_e32 v59, 0, v0
	v_add_nc_u32_e32 v60, 0, v4
	v_add_nc_u32_e32 v61, 0, v61
	v_add_nc_u32_e32 v62, 0, v62
	v_add_nc_u32_e32 v63, 0, v63
	v_add_nc_u32_e32 v64, 0, v64
	v_add_nc_u32_e32 v65, 0, v65
	s_mul_hi_u32 s7, s6, s7
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s25, s11, 0xffff
	s_mov_b32 s24, s10
	s_lshl_b32 s37, s29, 3
	s_lshl_b32 s38, s29, 4
	s_mul_i32 s39, s29, 24
	s_lshl_b32 s40, s29, 5
	s_mul_i32 s41, s29, 40
	s_mul_i32 s43, s29, 48
	s_mul_i32 s44, s29, 56
	s_ashr_i32 s3, s33, 31
	s_mov_b32 s12, 0
	s_add_i32 s45, s6, s7
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s46, s29, 1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_lshl_b32 s47, s35, 1
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
                                        ;     Child Loop BB0_6 Depth 2
                                        ;     Child Loop BB0_8 Depth 2
                                        ;     Child Loop BB0_10 Depth 2
                                        ;     Child Loop BB0_12 Depth 2
                                        ;     Child Loop BB0_14 Depth 2
                                        ;     Child Loop BB0_16 Depth 2
                                        ;     Child Loop BB0_18 Depth 2
                                        ;     Child Loop BB0_20 Depth 2
                                        ;     Child Loop BB0_22 Depth 2
                                        ;     Child Loop BB0_24 Depth 2
                                        ;     Child Loop BB0_26 Depth 2
                                        ;     Child Loop BB0_28 Depth 2
                                        ;     Child Loop BB0_30 Depth 2
                                        ;     Child Loop BB0_32 Depth 2
                                        ;     Child Loop BB0_34 Depth 2
                                        ;     Child Loop BB0_36 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s6, s2
	s_ashr_i32 s10, s2, 31
	s_mul_hi_u32 s7, s6, s45
	s_xor_b32 s10, s10, s3
	s_mul_i32 s11, s7, s42
	v_mov_b32_e32 v1, 0
	s_sub_i32 s6, s6, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s13, s6, s42
	s_cmp_ge_u32 s6, s42
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v2, 0
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s6, s13, s6
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s6, s42
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v4, 0
	s_cselect_b32 s6, s11, s7
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v6, 0
	s_xor_b32 s6, s6, s10
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v8, 0
	s_sub_i32 s10, s6, s10
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v10, 0
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s6, s28, s10
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s14, s10, s33
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s11, s6, 1
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s14, s2, s14
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s7, s11
	s_abs_i32 s15, s14
	s_cvt_f32_u32 s6, s7
	s_sub_i32 s13, 0, s7
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v12, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s6
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_readfirstlane_b32 s6, v0
	v_mov_b32_e32 v0, 0
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s13, s13, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s13, s6, s13
	s_add_i32 s6, s6, s13
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s13, s15, s6
	s_xor_b32 s6, s14, s11
	s_mul_i32 s16, s13, s7
	s_ashr_i32 s6, s6, 31
	s_sub_i32 s15, s15, s16
	s_add_i32 s16, s13, 1
	s_sub_i32 s17, s15, s7
	s_cmp_ge_u32 s15, s7
	s_cselect_b32 s13, s16, s13
	s_cselect_b32 s15, s17, s15
	s_add_i32 s16, s13, 1
	s_cmp_ge_u32 s15, s7
	s_cselect_b32 s7, s16, s13
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_and_not1_b32 vcc_lo, exec_lo, s36
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_xor_b32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s49, s7, s6
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s11, s49, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s11, s14, s11
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s11, s11, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 18 is_stmt 1              ; generate_amdgcn.py:221:18
	s_lshl_b32 s48, s11, 6
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_5
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	v_lshl_or_b32 v0, s7, 8, v31
	s_lshl_b32 s10, s6, 8
	s_lshl_b32 s7, s7, 7
	s_lshl_b32 s6, s6, 7
	v_or_b32_e32 v2, s7, v32
	v_subrev_nc_u32_e32 v25, s10, v0
	v_or_b32_e32 v0, s7, v30
	v_dual_mov_b32 v14, 0 :: v_dual_add_nc_u32 v1, s48, v38
	v_dual_mov_b32 v12, 0 :: v_dual_add_nc_u32 v3, s48, v36
	v_dual_mov_b32 v67, v35 :: v_dual_add_nc_u32 v4, s48, v30
	v_subrev_nc_u32_e32 v2, s6, v2
	v_subrev_nc_u32_e32 v0, s6, v0
	v_mul_lo_u32 v26, s47, v1
	v_mul_lo_u32 v27, s47, v3
	v_mul_lo_u32 v28, s1, v4
	v_mul_lo_u32 v29, s1, v2
	v_mul_lo_u32 v66, s1, v0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v5, 0
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v1, 0
	s_mov_b32 s50, s35
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e32 vcc_lo, s1, v67
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 268 38                        ; generate_amdgcn.py:268:38
	v_add_nc_u32_e32 v69, v66, v67
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_add_nc_u32_e32 v68, v28, v67
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	v_dual_cndmask_b32 v71, 0x80000000, v69 :: v_dual_add_nc_u32 v70, v29, v67
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_mov_b32 s6, s22
	s_mov_b32 s7, s23
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v72, 0x80000000, v70, vcc_lo
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	buffer_load_b64 v[68:69], v68, s[20:23], 0 offen
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_clause 0x1
	buffer_load_b64 v[70:71], v71, s[4:7], 0 offen
	buffer_load_b64 v[72:73], v72, s[4:7], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_nc_u32_e32 v74, v37, v25
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s10, s22
	s_mov_b32 s11, s23
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v25, s46, v25
	v_add_nc_u32_e32 v67, 0x80, v67
	s_add_i32 s50, s50, -1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s50, 0
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt vmcnt(2)
	ds_store_b64 v39, v[68:69]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[84:87], v40 offset1:4
	ds_load_2addr_stride64_b64 v[88:91], v41 offset1:4
	ds_load_2addr_stride64_b64 v[92:95], v42 offset1:4
	ds_load_2addr_stride64_b64 v[96:99], v43 offset1:4
	ds_load_2addr_stride64_b64 v[100:103], v44 offset1:4
	ds_load_2addr_stride64_b64 v[104:107], v45 offset1:4
	ds_load_2addr_stride64_b64 v[108:111], v46 offset1:4
	ds_load_2addr_stride64_b64 v[112:115], v47 offset1:4
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v39, v[70:71], v[72:73] offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_clause 0x1
	buffer_load_u16 v132, v27, s[8:11], 0 offen
	buffer_load_u16 v133, v26, s[8:11], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x7
	buffer_load_u16 v134, v74, s[24:27], 0 offen
	buffer_load_u16 v135, v74, s[24:27], 0 offen offset:4
	buffer_load_u16 v136, v74, s[24:27], 0 offen offset:8
	buffer_load_u16 v137, v74, s[24:27], 0 offen offset:12
	buffer_load_u16 v138, v74, s[24:27], 0 offen offset:16
	buffer_load_u16 v139, v74, s[24:27], 0 offen offset:20
	buffer_load_u16 v140, v74, s[24:27], 0 offen offset:24
	buffer_load_u16 v141, v74, s[24:27], 0 offen offset:28
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_b64 v[116:117], v48
	ds_load_b64 v[118:119], v49
	ds_load_b64 v[120:121], v50
	ds_load_b64 v[122:123], v51
	ds_load_b64 v[124:125], v52
	ds_load_b64 v[126:127], v53
	ds_load_b64 v[128:129], v54
	ds_load_b64 v[130:131], v55
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v75, s19 :: v_dual_mov_b32 v70, s14
	v_dual_mov_b32 v74, s18 :: v_dual_mov_b32 v73, s17
	v_dual_mov_b32 v72, s16 :: v_dual_mov_b32 v71, s15
	v_dual_mov_b32 v69, s13 :: v_dual_mov_b32 v68, s12
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v27, 2, v27
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(7)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[76:83], v[116:117], v[84:85], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[68:75], v[116:117], v[86:87], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[76:83], v[118:119], v[88:89], v[76:83] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[68:75], v[118:119], v[90:91], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[76:83], v[120:121], v[92:93], v[76:83] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[68:75], v[120:121], v[94:95], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[76:83], v[122:123], v[96:97], v[76:83] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[68:75], v[122:123], v[98:99], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[76:83], v[124:125], v[100:101], v[76:83] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[68:75], v[124:125], v[102:103], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[76:83], v[126:127], v[104:105], v[76:83] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[68:75], v[126:127], v[106:107], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[76:83], v[128:129], v[108:109], v[76:83] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[68:75], v[128:129], v[110:111], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[76:83], v[130:131], v[112:113], v[76:83] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[68:75], v[130:131], v[114:115], v[68:75] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v76, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v85, 16, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v69, v69, v85 :: v_dual_lshlrev_b32 v84, 16, v132
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v78, v78, v84 :: v_dual_lshlrev_b32 v87, 16, v135
	v_dual_mul_f32 v77, v77, v84 :: v_dual_add_nc_u32 v26, 2, v26
	v_dual_mul_f32 v79, v79, v84 :: v_dual_lshlrev_b32 v86, 16, v134
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v80, v80, v84 :: v_dual_lshlrev_b32 v89, 16, v137
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v81, v81, v84 :: v_dual_lshlrev_b32 v90, 16, v138
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v82, v82, v84 :: v_dual_lshlrev_b32 v91, 16, v139
	v_mul_f32_e32 v76, v76, v84
	v_dual_mul_f32 v71, v71, v85 :: v_dual_lshlrev_b32 v88, 16, v136
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v73, v73, v85 :: v_dual_lshlrev_b32 v92, 16, v140
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v14, v76, v86 :: v_dual_lshlrev_b32 v93, 16, v141
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v83, v83, v84 :: v_dual_mul_f32 v68, v68, v85
	v_mul_f32_e32 v70, v70, v85
	v_dual_mul_f32 v72, v72, v85 :: v_dual_fmac_f32 v13, v69, v87
	v_mul_f32_e32 v74, v74, v85
	v_dual_mul_f32 v75, v75, v85 :: v_dual_fmac_f32 v12, v77, v87
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v10, v78, v88 :: v_dual_fmac_f32 v9, v71, v89
	v_dual_fmac_f32 v6, v80, v90 :: v_dual_fmac_f32 v5, v73, v91
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v2, v82, v92 :: v_dual_fmac_f32 v1, v75, v93
	v_dual_fmac_f32 v0, v83, v93 :: v_dual_fmac_f32 v15, v68, v86
	v_dual_fmac_f32 v8, v79, v89 :: v_dual_fmac_f32 v11, v70, v88
	v_dual_fmac_f32 v7, v72, v90 :: v_dual_fmac_f32 v4, v81, v91
	v_fmac_f32_e32 v3, v74, v92
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_4
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s6, s49, 7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	s_mul_i32 s7, s48, s29
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v27, 0, v33
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	s_add_i32 s6, s7, s6
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v25, s6, v16
	s_barrier
	ds_store_b64 v27, v[14:15]
	ds_store_b64 v56, v[12:13]
	ds_store_b64 v57, v[10:11]
	ds_store_b64 v58, v[8:9]
	ds_store_b64 v59, v[6:7]
	ds_store_b64 v60, v[4:5]
	ds_store_b64 v61, v[2:3]
	ds_store_b64 v62, v[0:1]
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v26, 31, v25
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v0, 0, v34
	s_mov_b32 s7, 0
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_lshlrev_b64 v[12:13], 2, v[25:26]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v26, vcc_lo, s30, v12
	v_add_co_ci_u32_e64 v27, null, s31, v13, vcc_lo
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	ds_load_2addr_b64 v[12:15], v0 offset1:16
	ds_load_2addr_b64 v[8:11], v63 offset1:16
	ds_load_2addr_b64 v[4:7], v64 offset1:16
	ds_load_2addr_b64 v[0:3], v65 offset1:16
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	global_load_b32 v29, v[26:27], off
.LBB0_6:                                ; %atomicrmw.start86
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v28, v29, v12
	global_atomic_cmpswap_b32 v28, v[26:27], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v28, v29
	v_mov_b32_e32 v29, v28
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_6
; %bb.7:                                ; %atomicrmw.end85
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v26, s6, v17
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v27, 31, v26
	v_lshlrev_b64 v[26:27], 2, v[26:27]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v26, vcc_lo, s30, v26
	v_add_co_ci_u32_e64 v27, null, s31, v27, vcc_lo
	global_load_b32 v29, v[26:27], off
.LBB0_8:                                ; %atomicrmw.start80
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v28, v29, v8
	global_atomic_cmpswap_b32 v12, v[26:27], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v12, v29
	v_mov_b32_e32 v29, v12
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_8
; %bb.9:                                ; %atomicrmw.end79
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v26, s37, v25
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v27, 31, v26
	v_lshlrev_b64 v[26:27], 2, v[26:27]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v26, vcc_lo, s30, v26
	v_add_co_ci_u32_e64 v27, null, s31, v27, vcc_lo
	global_load_b32 v29, v[26:27], off
.LBB0_10:                               ; %atomicrmw.start74
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v28, v29, v4
	global_atomic_cmpswap_b32 v8, v[26:27], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v8, v29
	v_mov_b32_e32 v29, v8
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end73
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v26, s6, v18
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v27, 31, v26
	v_lshlrev_b64 v[26:27], 2, v[26:27]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v26, vcc_lo, s30, v26
	v_add_co_ci_u32_e64 v27, null, s31, v27, vcc_lo
	global_load_b32 v29, v[26:27], off
.LBB0_12:                               ; %atomicrmw.start68
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v28, v29, v0
	global_atomic_cmpswap_b32 v4, v[26:27], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v29
	v_mov_b32_e32 v29, v4
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end67
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v26, s38, v25
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v27, 31, v26
	v_lshlrev_b64 v[26:27], 2, v[26:27]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v26, vcc_lo, s30, v26
	v_add_co_ci_u32_e64 v27, null, s31, v27, vcc_lo
	global_load_b32 v29, v[26:27], off
.LBB0_14:                               ; %atomicrmw.start62
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v14
	global_atomic_cmpswap_b32 v0, v[26:27], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end61
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v26, s6, v19
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v27, 31, v26
	v_lshlrev_b64 v[26:27], 2, v[26:27]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v26, vcc_lo, s30, v26
	v_add_co_ci_u32_e64 v27, null, s31, v27, vcc_lo
	global_load_b32 v29, v[26:27], off
.LBB0_16:                               ; %atomicrmw.start56
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v10
	global_atomic_cmpswap_b32 v0, v[26:27], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end55
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v26, s39, v25
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v27, 31, v26
	v_lshlrev_b64 v[26:27], 2, v[26:27]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v26, vcc_lo, s30, v26
	v_add_co_ci_u32_e64 v27, null, s31, v27, vcc_lo
	global_load_b32 v29, v[26:27], off
.LBB0_18:                               ; %atomicrmw.start50
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v6
	global_atomic_cmpswap_b32 v0, v[26:27], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end49
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v26, s6, v20
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v27, 31, v26
	v_lshlrev_b64 v[26:27], 2, v[26:27]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v26, vcc_lo, s30, v26
	v_add_co_ci_u32_e64 v27, null, s31, v27, vcc_lo
	global_load_b32 v29, v[26:27], off
.LBB0_20:                               ; %atomicrmw.start44
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v2
	global_atomic_cmpswap_b32 v0, v[26:27], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end43
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v26, s40, v25
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v27, 31, v26
	v_lshlrev_b64 v[26:27], 2, v[26:27]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v26, vcc_lo, s30, v26
	v_add_co_ci_u32_e64 v27, null, s31, v27, vcc_lo
	global_load_b32 v29, v[26:27], off
.LBB0_22:                               ; %atomicrmw.start38
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v13
	global_atomic_cmpswap_b32 v0, v[26:27], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ; %atomicrmw.end37
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v12, s6, v21
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v13, 31, v12
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v12, vcc_lo, s30, v12
	v_add_co_ci_u32_e64 v13, null, s31, v13, vcc_lo
	global_load_b32 v27, v[12:13], off
.LBB0_24:                               ; %atomicrmw.start32
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v26, v27, v9
	global_atomic_cmpswap_b32 v0, v[12:13], v[26:27], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v27
	v_mov_b32_e32 v27, v0
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_24
; %bb.25:                               ; %atomicrmw.end31
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v8, s41, v25
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v9, 31, v8
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v8, vcc_lo, s30, v8
	v_add_co_ci_u32_e64 v9, null, s31, v9, vcc_lo
	global_load_b32 v13, v[8:9], off
.LBB0_26:                               ; %atomicrmw.start26
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v5
	global_atomic_cmpswap_b32 v0, v[8:9], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_26
; %bb.27:                               ; %atomicrmw.end25
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v4, s6, v22
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v5, 31, v4
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v4, vcc_lo, s30, v4
	v_add_co_ci_u32_e64 v5, null, s31, v5, vcc_lo
	global_load_b32 v9, v[4:5], off
.LBB0_28:                               ; %atomicrmw.start20
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v1
	global_atomic_cmpswap_b32 v0, v[4:5], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_28
; %bb.29:                               ; %atomicrmw.end19
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v0, s43, v25
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s30, v0
	v_add_co_ci_u32_e64 v1, null, s31, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_30:                               ; %atomicrmw.start14
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v15
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_30
; %bb.31:                               ; %atomicrmw.end13
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v0, s6, v23
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s30, v0
	v_add_co_ci_u32_e64 v1, null, s31, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_32:                               ; %atomicrmw.start8
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v11
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_32
; %bb.33:                               ; %atomicrmw.end7
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v0, s44, v25
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s30, v0
	v_add_co_ci_u32_e64 v1, null, s31, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_34:                               ; %atomicrmw.start2
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_34
; %bb.35:                               ; %atomicrmw.end1
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v0, s6, v24
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s30, v0
	v_add_co_ci_u32_e64 v1, null, s31, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_36:                               ; %atomicrmw.start
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v3
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_36
; %bb.37:                               ; %atomicrmw.end
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s2, s34
	s_cbranch_scc1 .LBB0_2
.LBB0_38:                               ; %._crit_edge5
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp21:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk
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
		.amdhsa_next_free_vgpr 142
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
		.amdhsa_inst_pref_size 32
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk.num_vgpr, 142
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4032
; TotalNumSgprs: 53
; NumVgprs: 142
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 142
; Occupancy: 10
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
	.byte	205                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	206                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	246                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp0-.Lfunc_begin0
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
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
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     142
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
