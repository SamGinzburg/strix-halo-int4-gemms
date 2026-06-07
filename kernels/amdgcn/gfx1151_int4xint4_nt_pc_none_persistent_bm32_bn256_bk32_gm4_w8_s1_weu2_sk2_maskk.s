	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 196 0                         ; generate_amdgcn.py:196:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[20:21], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:205:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s20, 31
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s21, 0xff
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_lshr_b32 s6, s6, 27
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_lshr_b32 s7, s7, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_add_i32 s4, s4, s6
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s5, s7
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_ashr_i32 s20, s4, 5
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s18, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s24, s18, s20
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s24
	s_cbranch_scc1 .LBB0_71
; %bb.1:                                ; %.lr.ph6
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s13, s[0:1], 0x38
	s_load_b64 s[22:23], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 208 24 is_stmt 1              ; generate_amdgcn.py:208:24
	s_lshl_b32 s25, s18, 2
	.loc	1 228 27                        ; generate_amdgcn.py:228:27
	s_lshl_b32 s3, s3, 4
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_bfe_i32 v3, v0, 0, 1
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v4, 0xfe, v0
	v_lshlrev_b32_e32 v5, 1, v0
	v_bfe_i32 v6, v0, 6, 1
	v_bfe_u32 v8, v0, 4, 1
	v_and_b32_e32 v3, 0x840, v3
	v_lshlrev_b32_e32 v4, 2, v4
	v_and_b32_e32 v9, 0x17e, v5
	v_and_b32_e32 v6, 0x88, v6
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_and_b32_e32 v1, 7, v0
	v_and_b32_e32 v2, 1, v0
	v_and_or_b32 v5, v5, 30, v8
	v_and_b32_e32 v8, 0xf0, v0
	v_xor_b32_e32 v6, v6, v9
	v_and_b32_e32 v9, 14, v0
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s0, s13, 31
	v_xor_b32_e32 v3, v3, v4
	s_add_i32 s0, s13, s0
	s_mov_b32 s12, s4
	s_ashr_i32 s26, s0, 1
	s_mov_b32 s4, s6
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:226:36 ]
	s_add_i32 s0, s26, 31
	v_bfe_i32 v7, v0, 3, 1
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_ashr_i32 s1, s0, 31
.Ltmp12:
	.loc	1 213 14 is_stmt 1              ; generate_amdgcn.py:213:14
	v_lshlrev_b32_e32 v33, 1, v1
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_lshr_b32 s1, s1, 27
.Ltmp14:
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_lshlrev_b32_e32 v34, 3, v2
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_add_i32 s0, s0, s1
	v_lshlrev_b32_e32 v1, 4, v1
	s_ashr_i32 s1, s0, 5
	s_cmp_gt_i32 s13, 1
	v_lshlrev_b32_e32 v44, 2, v5
	s_cselect_b32 s27, -1, 0
	s_abs_i32 s38, s25
	v_and_b32_e32 v5, 16, v0
	s_cvt_f32_u32 s6, s38
	v_lshlrev_b32_e32 v10, 5, v2
	v_lshlrev_b32_e32 v4, 1, v9
	v_lshl_or_b32 v46, v9, 11, v3
	v_rcp_iflag_f32_e32 v29, s6
	v_lshlrev_b32_e32 v3, 3, v8
	v_lshlrev_b32_e32 v9, 2, v9
	v_lshlrev_b32_e32 v2, 6, v2
	v_and_or_b32 v1, 0x88, v7, v1
	v_cmp_eq_u32_e64 s0, 0, v5
	v_lshlrev_b32_e32 v5, 2, v8
.Ltmp16:
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v40, 15, v0
	v_or3_b32 v47, v3, v2, v9
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v41, 1, v0
	v_readfirstlane_b32 s6, v29
	v_xor_b32_e32 v7, 8, v1
	v_add3_u32 v5, 0, v5, v10
	v_lshlrev_b32_e32 v8, 1, v8
	v_xor_b32_e32 v10, 8, v46
	s_mul_f32 s6, s6, 0x4f7ffffe
	v_xor_b32_e32 v11, 16, v46
	v_xor_b32_e32 v12, 24, v46
	v_xor_b32_e32 v2, 32, v46
	v_xor_b32_e32 v3, 40, v46
	v_xor_b32_e32 v9, 48, v46
	v_xor_b32_e32 v13, 56, v46
	v_xor_b32_e32 v14, 0x840, v47
	v_xor_b32_e32 v15, 0x1008, v47
	v_xor_b32_e32 v16, 0x1848, v47
	v_xor_b32_e32 v17, 0x2010, v47
	v_xor_b32_e32 v18, 0x2850, v47
	v_xor_b32_e32 v19, 0x3018, v47
	v_xor_b32_e32 v20, 0x3858, v47
	v_xor_b32_e32 v21, 0x4020, v47
	v_xor_b32_e32 v22, 0x4860, v47
	v_xor_b32_e32 v23, 0x5028, v47
	v_xor_b32_e32 v24, 0x5868, v47
	v_xor_b32_e32 v25, 0x6030, v47
	v_xor_b32_e32 v26, 0x6870, v47
	v_xor_b32_e32 v27, 0x7038, v47
	v_xor_b32_e32 v28, 0x7878, v47
	s_cvt_u32_f32 s6, s6
	s_and_b32 s13, s5, 0xffff
	s_and_b32 s5, s7, 0xffff
	s_sub_i32 s7, 0, s38
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v39, 3, v0
	s_mul_i32 s7, s7, s6
	v_or_b32_e32 v42, 16, v40
	v_sub_nc_u32_e32 v43, s26, v33
	v_xor_b32_e32 v45, 4, v44
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_or_b32_e32 v48, 0x80, v41
	v_add_nc_u32_e32 v49, 0, v6
	v_add_nc_u32_e32 v50, 0, v1
	v_add_nc_u32_e32 v51, 0, v7
	v_add_nc_u32_e32 v52, v5, v4
	v_add_nc_u32_e32 v53, 0, v8
	v_add_nc_u32_e32 v54, 0, v10
	v_add_nc_u32_e32 v55, 0, v11
	v_add_nc_u32_e32 v56, 0, v12
	v_add_nc_u32_e32 v57, 0, v2
	v_add_nc_u32_e32 v58, 0, v3
	v_add_nc_u32_e32 v59, 0, v9
	v_add_nc_u32_e32 v60, 0, v13
	v_add_nc_u32_e32 v61, 0, v14
	v_add_nc_u32_e32 v62, 0, v15
	v_add_nc_u32_e32 v63, 0, v16
	v_add_nc_u32_e32 v64, 0, v17
	v_add_nc_u32_e32 v65, 0, v18
	v_add_nc_u32_e32 v66, 0, v19
	v_add_nc_u32_e32 v67, 0, v20
	v_add_nc_u32_e32 v68, 0, v21
	v_add_nc_u32_e32 v69, 0, v22
	v_add_nc_u32_e32 v70, 0, v23
	v_add_nc_u32_e32 v71, 0, v24
	v_add_nc_u32_e32 v72, 0, v25
	v_add_nc_u32_e32 v73, 0, v26
	v_add_nc_u32_e32 v74, 0, v27
	v_add_nc_u32_e32 v75, 0, v28
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_max_i32 s60, s1, 1
	s_mul_hi_u32 s1, s6, s7
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s17, s11, 0xffff
	s_mov_b32 s16, s10
	s_lshl_b32 s28, s21, 1
	s_mul_i32 s29, s21, 3
	s_lshl_b32 s30, s21, 2
	s_mul_i32 s31, s21, 5
	s_mul_i32 s33, s21, 6
	s_mul_i32 s34, s21, 7
	s_lshl_b32 s35, s21, 3
	s_mul_i32 s36, s21, 9
	s_mul_i32 s37, s21, 10
	s_mul_i32 s39, s21, 11
	s_mul_i32 s40, s21, 12
	s_mul_i32 s41, s21, 13
	s_mul_i32 s42, s21, 14
	s_mul_i32 s43, s21, 15
	s_lshl_b32 s44, s21, 4
	s_mul_i32 s45, s21, 17
	s_mul_i32 s46, s21, 18
	s_mul_i32 s47, s21, 19
	s_mul_i32 s48, s21, 20
	s_mul_i32 s49, s21, 21
	s_mul_i32 s50, s21, 22
	s_mul_i32 s51, s21, 23
	s_mul_i32 s52, s21, 24
	s_mul_i32 s53, s21, 25
	s_mul_i32 s54, s21, 26
	s_mul_i32 s55, s21, 27
	s_mul_i32 s56, s21, 28
	s_mul_i32 s57, s21, 29
	s_mul_i32 s58, s21, 30
	s_mul_i32 s59, s21, 31
	s_bfe_i32 s61, s18, 0x1001d
	s_add_i32 s62, s6, s1
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
                                        ;     Child Loop BB0_7 Depth 2
                                        ;     Child Loop BB0_9 Depth 2
                                        ;     Child Loop BB0_11 Depth 2
                                        ;     Child Loop BB0_13 Depth 2
                                        ;     Child Loop BB0_15 Depth 2
                                        ;     Child Loop BB0_17 Depth 2
                                        ;     Child Loop BB0_19 Depth 2
                                        ;     Child Loop BB0_21 Depth 2
                                        ;     Child Loop BB0_23 Depth 2
                                        ;     Child Loop BB0_25 Depth 2
                                        ;     Child Loop BB0_27 Depth 2
                                        ;     Child Loop BB0_29 Depth 2
                                        ;     Child Loop BB0_31 Depth 2
                                        ;     Child Loop BB0_33 Depth 2
                                        ;     Child Loop BB0_35 Depth 2
                                        ;     Child Loop BB0_37 Depth 2
                                        ;     Child Loop BB0_39 Depth 2
                                        ;     Child Loop BB0_41 Depth 2
                                        ;     Child Loop BB0_43 Depth 2
                                        ;     Child Loop BB0_45 Depth 2
                                        ;     Child Loop BB0_47 Depth 2
                                        ;     Child Loop BB0_49 Depth 2
                                        ;     Child Loop BB0_51 Depth 2
                                        ;     Child Loop BB0_53 Depth 2
                                        ;     Child Loop BB0_55 Depth 2
                                        ;     Child Loop BB0_57 Depth 2
                                        ;     Child Loop BB0_59 Depth 2
                                        ;     Child Loop BB0_61 Depth 2
                                        ;     Child Loop BB0_63 Depth 2
                                        ;     Child Loop BB0_65 Depth 2
                                        ;     Child Loop BB0_67 Depth 2
                                        ;     Child Loop BB0_69 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s1, s2
	s_ashr_i32 s7, s2, 31
	s_mul_hi_u32 s6, s1, s62
	s_xor_b32 s7, s7, s61
	s_mul_i32 s10, s6, s38
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	s_sub_i32 s1, s1, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s1, s38
	s_cmp_ge_u32 s1, s38
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s1, s11, s1
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s1, s38
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	s_cselect_b32 s1, s10, s6
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	s_xor_b32 s1, s1, s7
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	s_sub_i32 s1, s1, s7
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s7, s1, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s1, s1, s25
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s6, s20, s7
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s19, s2, s1
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s11, s6, 4
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s6, s11
	v_mov_b32_e32 v15, 0
	s_cvt_f32_u32 s10, s6
	s_sub_i32 s18, 0, s6
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v16, s10
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s10, v16
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_mov_b32_e32 v90, 0
	s_mul_f32 s10, s10, 0x4f7ffffe
	s_cvt_u32_f32 s10, s10
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s18, s18, s10
	s_mul_hi_u32 s1, s10, s18
	s_abs_i32 s18, s19
	s_add_i32 s10, s10, s1
	s_xor_b32 s1, s19, s11
	s_mul_hi_u32 s10, s18, s10
	s_ashr_i32 s1, s1, 31
	s_mul_i32 s63, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s18, s18, s63
	s_add_i32 s63, s10, 1
	s_sub_i32 s64, s18, s6
	s_cmp_ge_u32 s18, s6
	s_cselect_b32 s10, s63, s10
	s_cselect_b32 s18, s64, s18
	s_add_i32 s63, s10, 1
	s_cmp_ge_u32 s18, s6
	s_cselect_b32 s6, s63, s10
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_and_not1_b32 vcc_lo, exec_lo, s27
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_xor_b32 s6, s6, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s10, s6, s1
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s11, s10, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s11, s19, s11
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s11, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 18 is_stmt 1              ; generate_amdgcn.py:221:18
	s_lshl_b32 s63, s11, 5
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_vccnz .LBB0_6
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v4, s63, v39
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_lshl_b32 s6, s6, 8
	s_lshl_b32 s1, s1, 8
	v_or_b32_e32 v2, s6, v48
	v_or_b32_e32 v3, s6, v41
	v_mad_u64_u32 v[35:36], null, s26, v4, v[33:34]
	v_mov_b32_e32 v4, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v2, s1, v2
	v_subrev_nc_u32_e32 v3, s1, v3
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mad_u64_u32 v[36:37], null, s26, v2, v[34:35]
	v_mad_u64_u32 v[37:38], null, s26, v3, v[34:35]
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	s_mov_b32 s11, s3
	s_mov_b32 s18, s60
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 229 27 is_stmt 1              ; generate_amdgcn.py:229:27
	v_add_nc_u32_e32 v38, s11, v34
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	v_add_nc_u32_e32 v76, s11, v35
	.loc	1 229 27                        ; generate_amdgcn.py:229:27
	v_cmp_lt_i32_e32 vcc_lo, s11, v43
	.loc	1 237 34                        ; generate_amdgcn.py:237:34
	v_add_nc_u32_e32 v77, s11, v37
	.loc	1 237 26 is_stmt 0              ; generate_amdgcn.py:237:26
	v_add_nc_u32_e32 v78, s11, v36
	.loc	1 230 27 is_stmt 1              ; generate_amdgcn.py:230:27
	v_cmp_gt_i32_e64 s1, s26, v38
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	s_mov_b32 s6, s14
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	v_cndmask_b32_e32 v38, 0x80000000, v76, vcc_lo
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	s_mov_b32 s7, s15
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_add_i32 s18, s18, -1
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	v_cndmask_b32_e64 v76, 0x80000000, v77, s1
	v_cndmask_b32_e64 v78, 0x80000000, v78, s1
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_add_i32 s11, s11, 32
	s_cmp_lg_u32 s18, 0
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	s_clause 0x1
	buffer_load_b64 v[76:77], v76, s[4:7], 0 offen
	buffer_load_b64 v[78:79], v78, s[4:7], 0 offen
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	buffer_load_u16 v38, v38, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	s_waitcnt vmcnt(2)
	ds_bpermute_b32 v87, v44, v77
	ds_bpermute_b32 v85, v45, v76
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v49, v38
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	ds_bpermute_b32 v38, v44, v76
	ds_bpermute_b32 v88, v45, v77
	ds_bpermute_b32 v90, v44, v78
	ds_bpermute_b32 v91, v44, v79
	ds_bpermute_b32 v92, v45, v78
	ds_bpermute_b32 v93, v45, v79
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[76:79], v50 offset1:32
	ds_load_2addr_b64 v[80:83], v51 offset1:32
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	v_cndmask_b32_e64 v84, v85, v38, s0
	v_cndmask_b32_e64 v86, v38, v85, s0
	v_cndmask_b32_e64 v85, v88, v87, s0
	v_cndmask_b32_e64 v87, v87, v88, s0
	v_cndmask_b32_e64 v88, v92, v90, s0
	v_cndmask_b32_e64 v89, v93, v91, s0
	v_cndmask_b32_e64 v90, v90, v92, s0
	v_cndmask_b32_e64 v91, v91, v93, s0
	.loc	1 240 27                        ; generate_amdgcn.py:240:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[84:85], v[76:77], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[84:85], v[78:79], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[88:89], v[76:77], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[88:89], v[78:79], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[86:87], v[80:81], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[86:87], v[82:83], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[90:91], v[80:81], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[90:91], v[82:83], v[25:32] neg_lo:[1,1,0]
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_cvt_f32_i32_e32 v90, v1
	v_cvt_f32_i32_e32 v89, v2
	v_cvt_f32_i32_e32 v88, v3
	v_cvt_f32_i32_e32 v87, v4
	v_cvt_f32_i32_e32 v86, v5
	v_cvt_f32_i32_e32 v85, v6
	v_cvt_f32_i32_e32 v84, v7
	v_cvt_f32_i32_e32 v83, v8
	v_cvt_f32_i32_e32 v82, v9
	v_cvt_f32_i32_e32 v81, v10
	v_cvt_f32_i32_e32 v80, v11
	v_cvt_f32_i32_e32 v79, v12
	v_cvt_f32_i32_e32 v78, v13
	v_cvt_f32_i32_e32 v77, v14
	v_cvt_f32_i32_e32 v38, v15
	v_cvt_f32_i32_e32 v37, v16
	v_cvt_f32_i32_e32 v16, v17
	v_cvt_f32_i32_e32 v15, v18
	v_cvt_f32_i32_e32 v14, v19
	v_cvt_f32_i32_e32 v13, v20
	v_cvt_f32_i32_e32 v12, v21
	v_cvt_f32_i32_e32 v11, v22
	v_cvt_f32_i32_e32 v10, v23
	v_cvt_f32_i32_e32 v9, v24
	v_cvt_f32_i32_e32 v8, v25
	v_cvt_f32_i32_e32 v7, v26
	v_cvt_f32_i32_e32 v6, v27
	v_cvt_f32_i32_e32 v5, v28
	v_cvt_f32_i32_e32 v4, v29
	v_cvt_f32_i32_e32 v3, v30
	v_cvt_f32_i32_e32 v2, v31
	v_cvt_f32_i32_e32 v1, v32
.LBB0_6:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 242 26                        ; generate_amdgcn.py:242:26
	v_or_b32_e32 v18, s63, v40
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	v_lshl_or_b32 v76, s10, 8, v0
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	s_mov_b32 s10, s14
	s_mov_b32 s11, s15
	.loc	1 242 26 is_stmt 0              ; generate_amdgcn.py:242:26
	v_or_b32_e32 v19, s63, v42
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	v_lshlrev_b32_e32 v18, 1, v18
	.loc	1 243 18 is_stmt 1              ; generate_amdgcn.py:243:18
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	s_mul_i32 s1, s63, s21
	s_mov_b32 s6, 0
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	buffer_load_u16 v29, v18, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v93, 16, v29
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v17, 1, v76
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	v_lshlrev_b32_e32 v18, 1, v19
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	buffer_load_u16 v17, v17, s[16:19], 0 offen
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	buffer_load_u16 v91, v18, s[8:11], 0 offen
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v91, 16, v91
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	ds_store_b32 v52, v17
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v53
	ds_load_b128 v[21:24], v53 offset:16
	ds_load_b128 v[29:32], v53 offset:528
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v112, v20, v91 :: v_dual_add_nc_u32 v25, s1, v76
	v_mul_f32_e32 v94, v17, v93
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v98, v21, v93
	v_dual_mul_f32 v100, v23, v93 :: v_dual_mul_f32 v109, v17, v91
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v26, 31, v25
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v101, v24, v93 :: v_dual_mul_f32 v114, v22, v91
	v_dual_mul_f32 v95, v18, v93 :: v_dual_add_nc_u32 v92, 0, v46
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_lshlrev_b64 v[35:36], 2, v[25:26]
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	ds_load_b128 v[25:28], v53 offset:512
	v_mul_f32_e32 v99, v22, v93
	v_mul_f32_e32 v110, v18, v91
	v_mul_f32_e32 v96, v19, v93
	v_mul_f32_e32 v97, v20, v93
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_add_co_u32 v35, vcc_lo, s22, v35
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v36, null, s23, v36, vcc_lo
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 244 20 is_stmt 0              ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v108, v31, v93 :: v_dual_mul_f32 v113, v21, v91
	v_mul_f32_e32 v111, v19, v91
	v_mul_f32_e32 v116, v24, v91
	v_dual_mul_f32 v106, v29, v93 :: v_dual_mul_f32 v115, v23, v91
	v_dual_mul_f32 v107, v30, v93 :: v_dual_mul_f32 v124, v32, v91
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v17, v94, v90 :: v_dual_mul_f32 v102, v25, v93
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v117, v25, v91
	v_mul_f32_e32 v103, v26, v93
	v_mul_f32_e32 v104, v27, v93
	v_dual_mul_f32 v105, v28, v93 :: v_dual_mul_f32 v118, v26, v91
	v_dual_mul_f32 v119, v27, v91 :: v_dual_mul_f32 v82, v102, v82
	v_mul_f32_e32 v120, v28, v91
	v_mul_f32_e32 v121, v29, v91
	v_dual_mul_f32 v93, v32, v93 :: v_dual_mul_f32 v122, v30, v91
	v_dual_mul_f32 v123, v31, v91 :: v_dual_mul_f32 v80, v104, v80
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v25, v98, v86 :: v_dual_mul_f32 v18, v109, v16
	v_dual_mul_f32 v31, v101, v83 :: v_dual_mul_f32 v22, v111, v14
	v_dual_mul_f32 v24, v112, v13 :: v_dual_mul_f32 v83, v117, v8
	v_dual_mul_f32 v19, v95, v89 :: v_dual_mul_f32 v86, v105, v79
	v_dual_mul_f32 v27, v99, v85 :: v_dual_mul_f32 v90, v108, v38
	v_dual_mul_f32 v29, v100, v84 :: v_dual_mul_f32 v20, v110, v15
	v_mul_f32_e32 v84, v103, v81
	v_dual_mul_f32 v26, v113, v12 :: v_dual_mul_f32 v85, v118, v7
	v_dual_mul_f32 v21, v96, v88 :: v_dual_mul_f32 v78, v106, v78
	v_dual_mul_f32 v32, v116, v9 :: v_dual_mul_f32 v81, v119, v6
	v_dual_mul_f32 v23, v97, v87 :: v_dual_mul_f32 v88, v107, v77
	v_dual_mul_f32 v30, v115, v10 :: v_dual_mul_f32 v87, v120, v5
	v_dual_mul_f32 v79, v121, v4 :: v_dual_mul_f32 v38, v124, v1
	v_dual_mul_f32 v37, v93, v37 :: v_dual_mul_f32 v28, v114, v11
	v_mul_f32_e32 v89, v122, v3
	v_mul_f32_e32 v91, v123, v2
	ds_store_2addr_stride64_b64 v92, v[17:18], v[82:83] offset1:2
	ds_store_2addr_stride64_b64 v54, v[19:20], v[84:85] offset1:2
	ds_store_2addr_stride64_b64 v55, v[21:22], v[80:81] offset1:2
	ds_store_2addr_stride64_b64 v56, v[23:24], v[86:87] offset1:2
	ds_store_2addr_stride64_b64 v57, v[25:26], v[78:79] offset1:2
	ds_store_2addr_stride64_b64 v58, v[27:28], v[88:89] offset1:2
	ds_store_2addr_stride64_b64 v59, v[29:30], v[90:91] offset1:2
	ds_store_2addr_stride64_b64 v60, v[31:32], v[37:38] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 279 13 is_stmt 1              ; generate_amdgcn.py:279:13
	global_load_b32 v38, v[35:36], off
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_add_nc_u32_e32 v1, 0, v47
	ds_load_b64 v[31:32], v1
	ds_load_b64 v[29:30], v61
	ds_load_b64 v[27:28], v62
	ds_load_b64 v[25:26], v63
	ds_load_b64 v[23:24], v64
	ds_load_b64 v[21:22], v65
	ds_load_b64 v[19:20], v66
	ds_load_b64 v[17:18], v67
	ds_load_b64 v[15:16], v68
	ds_load_b64 v[13:14], v69
	ds_load_b64 v[11:12], v70
	ds_load_b64 v[9:10], v71
	ds_load_b64 v[7:8], v72
	ds_load_b64 v[5:6], v73
	ds_load_b64 v[3:4], v74
	ds_load_b64 v[1:2], v75
.LBB0_7:                                ; %atomicrmw.start182
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	s_waitcnt vmcnt(0) lgkmcnt(15)
	v_add_f32_e32 v37, v38, v31
	global_atomic_cmpswap_b32 v37, v[35:36], v[37:38], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v37, v38
	v_mov_b32_e32 v38, v37
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_7
; %bb.8:                                ; %atomicrmw.end181
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v35, s1, s21, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v36, 31, v35
	v_lshlrev_b64 v[35:36], 2, v[35:36]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v35, vcc_lo, s22, v35
	v_add_co_ci_u32_e64 v36, null, s23, v36, vcc_lo
	global_load_b32 v38, v[35:36], off
.LBB0_9:                                ; %atomicrmw.start176
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(14)
	v_add_f32_e32 v37, v38, v29
	global_atomic_cmpswap_b32 v31, v[35:36], v[37:38], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v31, v38
	v_mov_b32_e32 v38, v31
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_9
; %bb.10:                               ; %atomicrmw.end175
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v35, s1, s28, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v36, 31, v35
	v_lshlrev_b64 v[35:36], 2, v[35:36]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v35, vcc_lo, s22, v35
	v_add_co_ci_u32_e64 v36, null, s23, v36, vcc_lo
	global_load_b32 v38, v[35:36], off
.LBB0_11:                               ; %atomicrmw.start170
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(13)
	v_add_f32_e32 v37, v38, v27
	global_atomic_cmpswap_b32 v29, v[35:36], v[37:38], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v29, v38
	v_mov_b32_e32 v38, v29
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_11
; %bb.12:                               ; %atomicrmw.end169
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v35, s1, s29, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v36, 31, v35
	v_lshlrev_b64 v[35:36], 2, v[35:36]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v35, vcc_lo, s22, v35
	v_add_co_ci_u32_e64 v36, null, s23, v36, vcc_lo
	global_load_b32 v38, v[35:36], off
.LBB0_13:                               ; %atomicrmw.start164
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(12)
	v_add_f32_e32 v37, v38, v25
	global_atomic_cmpswap_b32 v27, v[35:36], v[37:38], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v27, v38
	v_mov_b32_e32 v38, v27
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end163
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v35, s1, s30, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v36, 31, v35
	v_lshlrev_b64 v[35:36], 2, v[35:36]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v35, vcc_lo, s22, v35
	v_add_co_ci_u32_e64 v36, null, s23, v36, vcc_lo
	global_load_b32 v38, v[35:36], off
.LBB0_15:                               ; %atomicrmw.start158
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(11)
	v_add_f32_e32 v37, v38, v23
	global_atomic_cmpswap_b32 v25, v[35:36], v[37:38], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v25, v38
	v_mov_b32_e32 v38, v25
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end157
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v35, s1, s31, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v36, 31, v35
	v_lshlrev_b64 v[35:36], 2, v[35:36]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v35, vcc_lo, s22, v35
	v_add_co_ci_u32_e64 v36, null, s23, v36, vcc_lo
	global_load_b32 v38, v[35:36], off
.LBB0_17:                               ; %atomicrmw.start152
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(10)
	v_add_f32_e32 v37, v38, v21
	global_atomic_cmpswap_b32 v23, v[35:36], v[37:38], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v23, v38
	v_mov_b32_e32 v38, v23
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end151
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v35, s1, s33, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v36, 31, v35
	v_lshlrev_b64 v[35:36], 2, v[35:36]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v35, vcc_lo, s22, v35
	v_add_co_ci_u32_e64 v36, null, s23, v36, vcc_lo
	global_load_b32 v38, v[35:36], off
.LBB0_19:                               ; %atomicrmw.start146
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(9)
	v_add_f32_e32 v37, v38, v19
	global_atomic_cmpswap_b32 v21, v[35:36], v[37:38], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v21, v38
	v_mov_b32_e32 v38, v21
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end145
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v35, s1, s34, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v36, 31, v35
	v_lshlrev_b64 v[35:36], 2, v[35:36]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v35, vcc_lo, s22, v35
	v_add_co_ci_u32_e64 v36, null, s23, v36, vcc_lo
	global_load_b32 v38, v[35:36], off
.LBB0_21:                               ; %atomicrmw.start140
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(8)
	v_add_f32_e32 v37, v38, v17
	global_atomic_cmpswap_b32 v19, v[35:36], v[37:38], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v19, v38
	v_mov_b32_e32 v38, v19
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end139
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v35, s1, s35, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v36, 31, v35
	v_lshlrev_b64 v[35:36], 2, v[35:36]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v35, vcc_lo, s22, v35
	v_add_co_ci_u32_e64 v36, null, s23, v36, vcc_lo
	global_load_b32 v38, v[35:36], off
.LBB0_23:                               ; %atomicrmw.start134
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v37, v38, v15
	global_atomic_cmpswap_b32 v17, v[35:36], v[37:38], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v17, v38
	v_mov_b32_e32 v38, v17
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end133
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v35, s1, s36, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v36, 31, v35
	v_lshlrev_b64 v[35:36], 2, v[35:36]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v35, vcc_lo, s22, v35
	v_add_co_ci_u32_e64 v36, null, s23, v36, vcc_lo
	global_load_b32 v38, v[35:36], off
.LBB0_25:                               ; %atomicrmw.start128
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v37, v38, v13
	global_atomic_cmpswap_b32 v15, v[35:36], v[37:38], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v15, v38
	v_mov_b32_e32 v38, v15
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end127
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v35, s1, s37, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v36, 31, v35
	v_lshlrev_b64 v[35:36], 2, v[35:36]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v35, vcc_lo, s22, v35
	v_add_co_ci_u32_e64 v36, null, s23, v36, vcc_lo
	global_load_b32 v38, v[35:36], off
.LBB0_27:                               ; %atomicrmw.start122
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v37, v38, v11
	global_atomic_cmpswap_b32 v13, v[35:36], v[37:38], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v13, v38
	v_mov_b32_e32 v38, v13
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end121
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v35, s1, s39, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v36, 31, v35
	v_lshlrev_b64 v[35:36], 2, v[35:36]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v35, vcc_lo, s22, v35
	v_add_co_ci_u32_e64 v36, null, s23, v36, vcc_lo
	global_load_b32 v38, v[35:36], off
.LBB0_29:                               ; %atomicrmw.start116
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v37, v38, v9
	global_atomic_cmpswap_b32 v11, v[35:36], v[37:38], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v11, v38
	v_mov_b32_e32 v38, v11
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_29
; %bb.30:                               ; %atomicrmw.end115
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v35, s1, s40, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v36, 31, v35
	v_lshlrev_b64 v[35:36], 2, v[35:36]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v35, vcc_lo, s22, v35
	v_add_co_ci_u32_e64 v36, null, s23, v36, vcc_lo
	global_load_b32 v38, v[35:36], off
.LBB0_31:                               ; %atomicrmw.start110
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v37, v38, v7
	global_atomic_cmpswap_b32 v9, v[35:36], v[37:38], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v9, v38
	v_mov_b32_e32 v38, v9
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_31
; %bb.32:                               ; %atomicrmw.end109
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v35, s1, s41, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v36, 31, v35
	v_lshlrev_b64 v[35:36], 2, v[35:36]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v35, vcc_lo, s22, v35
	v_add_co_ci_u32_e64 v36, null, s23, v36, vcc_lo
	global_load_b32 v38, v[35:36], off
.LBB0_33:                               ; %atomicrmw.start104
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v37, v38, v5
	global_atomic_cmpswap_b32 v7, v[35:36], v[37:38], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v7, v38
	v_mov_b32_e32 v38, v7
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_33
; %bb.34:                               ; %atomicrmw.end103
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v35, s1, s42, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v36, 31, v35
	v_lshlrev_b64 v[35:36], 2, v[35:36]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v35, vcc_lo, s22, v35
	v_add_co_ci_u32_e64 v36, null, s23, v36, vcc_lo
	global_load_b32 v38, v[35:36], off
.LBB0_35:                               ; %atomicrmw.start98
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v37, v38, v3
	global_atomic_cmpswap_b32 v5, v[35:36], v[37:38], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v5, v38
	v_mov_b32_e32 v38, v5
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_35
; %bb.36:                               ; %atomicrmw.end97
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v35, s1, s43, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v36, 31, v35
	v_lshlrev_b64 v[35:36], 2, v[35:36]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v35, vcc_lo, s22, v35
	v_add_co_ci_u32_e64 v36, null, s23, v36, vcc_lo
	global_load_b32 v38, v[35:36], off
.LBB0_37:                               ; %atomicrmw.start92
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v37, v38, v1
	global_atomic_cmpswap_b32 v3, v[35:36], v[37:38], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v38
	v_mov_b32_e32 v38, v3
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_37
; %bb.38:                               ; %atomicrmw.end91
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v35, s1, s44, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v36, 31, v35
	v_lshlrev_b64 v[35:36], 2, v[35:36]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v35, vcc_lo, s22, v35
	v_add_co_ci_u32_e64 v36, null, s23, v36, vcc_lo
	global_load_b32 v38, v[35:36], off
.LBB0_39:                               ; %atomicrmw.start86
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v37, v38, v32
	global_atomic_cmpswap_b32 v1, v[35:36], v[37:38], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v38
	v_mov_b32_e32 v38, v1
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_39
; %bb.40:                               ; %atomicrmw.end85
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v31, s1, s45, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v32, 31, v31
	v_lshlrev_b64 v[31:32], 2, v[31:32]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v31, vcc_lo, s22, v31
	v_add_co_ci_u32_e64 v32, null, s23, v32, vcc_lo
	global_load_b32 v36, v[31:32], off
.LBB0_41:                               ; %atomicrmw.start80
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v30
	global_atomic_cmpswap_b32 v1, v[31:32], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v36
	v_mov_b32_e32 v36, v1
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_41
; %bb.42:                               ; %atomicrmw.end79
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v29, s1, s46, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v30, 31, v29
	v_lshlrev_b64 v[29:30], 2, v[29:30]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v29, vcc_lo, s22, v29
	v_add_co_ci_u32_e64 v30, null, s23, v30, vcc_lo
	global_load_b32 v32, v[29:30], off
.LBB0_43:                               ; %atomicrmw.start74
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v31, v32, v28
	global_atomic_cmpswap_b32 v1, v[29:30], v[31:32], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v32
	v_mov_b32_e32 v32, v1
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_43
; %bb.44:                               ; %atomicrmw.end73
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v27, s1, s47, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v28, 31, v27
	v_lshlrev_b64 v[27:28], 2, v[27:28]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v27, vcc_lo, s22, v27
	v_add_co_ci_u32_e64 v28, null, s23, v28, vcc_lo
	global_load_b32 v30, v[27:28], off
.LBB0_45:                               ; %atomicrmw.start68
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v29, v30, v26
	global_atomic_cmpswap_b32 v1, v[27:28], v[29:30], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v30
	v_mov_b32_e32 v30, v1
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_45
; %bb.46:                               ; %atomicrmw.end67
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v25, s1, s48, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v26, 31, v25
	v_lshlrev_b64 v[25:26], 2, v[25:26]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v25, vcc_lo, s22, v25
	v_add_co_ci_u32_e64 v26, null, s23, v26, vcc_lo
	global_load_b32 v28, v[25:26], off
.LBB0_47:                               ; %atomicrmw.start62
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v27, v28, v24
	global_atomic_cmpswap_b32 v1, v[25:26], v[27:28], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v28
	v_mov_b32_e32 v28, v1
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_47
; %bb.48:                               ; %atomicrmw.end61
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v23, s1, s49, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v24, 31, v23
	v_lshlrev_b64 v[23:24], 2, v[23:24]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v23, vcc_lo, s22, v23
	v_add_co_ci_u32_e64 v24, null, s23, v24, vcc_lo
	global_load_b32 v26, v[23:24], off
.LBB0_49:                               ; %atomicrmw.start56
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v25, v26, v22
	global_atomic_cmpswap_b32 v1, v[23:24], v[25:26], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v26
	v_mov_b32_e32 v26, v1
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_49
; %bb.50:                               ; %atomicrmw.end55
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v21, s1, s50, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v22, 31, v21
	v_lshlrev_b64 v[21:22], 2, v[21:22]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v21, vcc_lo, s22, v21
	v_add_co_ci_u32_e64 v22, null, s23, v22, vcc_lo
	global_load_b32 v24, v[21:22], off
.LBB0_51:                               ; %atomicrmw.start50
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v23, v24, v20
	global_atomic_cmpswap_b32 v1, v[21:22], v[23:24], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v24
	v_mov_b32_e32 v24, v1
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_51
; %bb.52:                               ; %atomicrmw.end49
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v19, s1, s51, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v20, 31, v19
	v_lshlrev_b64 v[19:20], 2, v[19:20]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v19, vcc_lo, s22, v19
	v_add_co_ci_u32_e64 v20, null, s23, v20, vcc_lo
	global_load_b32 v22, v[19:20], off
.LBB0_53:                               ; %atomicrmw.start44
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v21, v22, v18
	global_atomic_cmpswap_b32 v1, v[19:20], v[21:22], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v22
	v_mov_b32_e32 v22, v1
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_53
; %bb.54:                               ; %atomicrmw.end43
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v17, s1, s52, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v18, 31, v17
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v17, vcc_lo, s22, v17
	v_add_co_ci_u32_e64 v18, null, s23, v18, vcc_lo
	global_load_b32 v20, v[17:18], off
.LBB0_55:                               ; %atomicrmw.start38
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v19, v20, v16
	global_atomic_cmpswap_b32 v1, v[17:18], v[19:20], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v20
	v_mov_b32_e32 v20, v1
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_55
; %bb.56:                               ; %atomicrmw.end37
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v15, s1, s53, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v16, 31, v15
	v_lshlrev_b64 v[15:16], 2, v[15:16]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v15, vcc_lo, s22, v15
	v_add_co_ci_u32_e64 v16, null, s23, v16, vcc_lo
	global_load_b32 v18, v[15:16], off
.LBB0_57:                               ; %atomicrmw.start32
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v17, v18, v14
	global_atomic_cmpswap_b32 v1, v[15:16], v[17:18], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v18
	v_mov_b32_e32 v18, v1
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_57
; %bb.58:                               ; %atomicrmw.end31
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v13, s1, s54, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v14, 31, v13
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v13, vcc_lo, s22, v13
	v_add_co_ci_u32_e64 v14, null, s23, v14, vcc_lo
	global_load_b32 v16, v[13:14], off
.LBB0_59:                               ; %atomicrmw.start26
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v15, v16, v12
	global_atomic_cmpswap_b32 v1, v[13:14], v[15:16], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v16
	v_mov_b32_e32 v16, v1
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_59
; %bb.60:                               ; %atomicrmw.end25
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v11, s1, s55, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v12, 31, v11
	v_lshlrev_b64 v[11:12], 2, v[11:12]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v11, vcc_lo, s22, v11
	v_add_co_ci_u32_e64 v12, null, s23, v12, vcc_lo
	global_load_b32 v14, v[11:12], off
.LBB0_61:                               ; %atomicrmw.start20
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v13, v14, v10
	global_atomic_cmpswap_b32 v1, v[11:12], v[13:14], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v14
	v_mov_b32_e32 v14, v1
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_61
; %bb.62:                               ; %atomicrmw.end19
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v9, s1, s56, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v10, 31, v9
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v9, vcc_lo, s22, v9
	v_add_co_ci_u32_e64 v10, null, s23, v10, vcc_lo
	global_load_b32 v12, v[9:10], off
.LBB0_63:                               ; %atomicrmw.start14
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v11, v12, v8
	global_atomic_cmpswap_b32 v1, v[9:10], v[11:12], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v12
	v_mov_b32_e32 v12, v1
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_63
; %bb.64:                               ; %atomicrmw.end13
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v7, s1, s57, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v8, 31, v7
	v_lshlrev_b64 v[7:8], 2, v[7:8]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v7, vcc_lo, s22, v7
	v_add_co_ci_u32_e64 v8, null, s23, v8, vcc_lo
	global_load_b32 v10, v[7:8], off
.LBB0_65:                               ; %atomicrmw.start8
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v9, v10, v6
	global_atomic_cmpswap_b32 v1, v[7:8], v[9:10], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v10
	v_mov_b32_e32 v10, v1
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_65
; %bb.66:                               ; %atomicrmw.end7
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v5, s1, s58, v76
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v6, 31, v5
	v_lshlrev_b64 v[5:6], 2, v[5:6]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v5, vcc_lo, s22, v5
	v_add_co_ci_u32_e64 v6, null, s23, v6, vcc_lo
	global_load_b32 v8, v[5:6], off
.LBB0_67:                               ; %atomicrmw.start2
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v7, v8, v4
	global_atomic_cmpswap_b32 v1, v[5:6], v[7:8], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v8
	v_mov_b32_e32 v8, v1
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_67
; %bb.68:                               ; %atomicrmw.end1
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v3, s1, s59, v76
	s_mov_b32 s1, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v4, 31, v3
	v_lshlrev_b64 v[3:4], 2, v[3:4]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v3, vcc_lo, s22, v3
	v_add_co_ci_u32_e64 v4, null, s23, v4, vcc_lo
	global_load_b32 v6, v[3:4], off
.LBB0_69:                               ; %atomicrmw.start
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v2
	global_atomic_cmpswap_b32 v1, v[3:4], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v6
	v_mov_b32_e32 v6, v1
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_69
; %bb.70:                               ; %atomicrmw.end
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s2, s24
	s_cbranch_scc1 .LBB0_2
.LBB0_71:                               ; %._crit_edge7
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp17:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk
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
		.amdhsa_next_free_vgpr 241
		.amdhsa_next_free_sgpr 65
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
		.amdhsa_inst_pref_size 47
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk.num_vgpr, 125
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk.numbered_sgpr, 65
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5904
; TotalNumSgprs: 67
; NumVgprs: 125
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 67
; NumVGPRsForWavesPerEU: 241
; Occupancy: 5
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
	.byte	226                             ; DW_AT_call_line
	.byte	36                              ; DW_AT_call_column
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     67
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     125
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
