	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
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
	s_ashr_i32 s30, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s31, s30, s28
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s31
	s_cbranch_scc1 .LBB0_8
; %bb.1:                                ; %.lr.ph8
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s14, s[0:1], 0x38
	s_load_b64 s[12:13], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 258 43 is_stmt 1              ; generate_amdgcn.py:258:43
	s_lshl_b32 s33, s3, 6
	v_and_b32_e32 v8, 16, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v3, 1, v0
	v_dual_mov_b32 v12, 0x5410 :: v_dual_and_b32 v1, 7, v0
	v_lshlrev_b32_e32 v5, 3, v0
	v_lshlrev_b32_e32 v6, 2, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v2, 4, v0
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v4, 15, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v7, 0x70, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v6, 0x438, v6
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshlrev_b32_e32 v40, 3, v1
	v_and_or_b32 v47, v2, 16, v4
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshlrev_b32_e32 v46, 4, v1
	v_and_or_b32 v48, v2, 1, v7
	v_and_b32_e32 v2, 56, v3
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s14, 0xff
.Ltmp12:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_lshr_b32 s3, s14, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s1, s0, 31
.Ltmp14:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s14, s14, s3
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_lshr_b32 s1, s1, 24
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s34, s14, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s1, s0, s1
.Ltmp18:
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v1, 0x78, v3
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s35, s1, 8
	s_cmpk_gt_i32 s0, 0xff
	v_cmp_eq_u32_e64 s0, 0, v8
	s_cselect_b32 s1, -1, 0
	s_and_b32 s21, s7, 0xffff
	s_abs_i32 s7, s30
	v_mov_b32_e32 v8, 0x7632
	s_cvt_f32_u32 s3, s7
	v_cndmask_b32_e64 v12, 0x1054, v12, s0
	v_lshl_or_b32 v3, v4, 6, v6
	v_add3_u32 v50, 0, v4, v7
	v_rcp_iflag_f32_e32 v15, s3
	v_cndmask_b32_e64 v8, 0x3276, v8, s0
	v_lshl_or_b32 v4, v12, 8, v12
	v_xor_b32_e32 v2, v5, v2
.Ltmp20:
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_or_b32_e32 v49, 32, v47
	s_mov_b32 s16, s4
	v_lshl_or_b32 v7, v8, 8, v8
	v_and_b32_e32 v4, 0x540054, v4
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[41:42], null, s29, v47, v[1:2]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_readfirstlane_b32 s3, v15
	v_and_b32_e32 v7, 0x760076, v7
	s_sub_i32 s4, 0, s7
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v45, 3, v0
	v_xor_b32_e32 v5, 8, v3
	s_mul_f32 s3, s3, 0x4f7ffffe
	v_xor_b32_e32 v6, 16, v3
	v_xor_b32_e32 v9, 24, v3
	v_xor_b32_e32 v10, 32, v3
	s_cvt_u32_f32 s3, s3
	v_xor_b32_e32 v11, 40, v3
	v_xor_b32_e32 v13, 48, v3
	v_xor_b32_e32 v14, 56, v3
	v_lshlrev_b32_e32 v0, 4, v0
	v_lshl_or_b32 v4, v4, 4, v4
	v_lshl_or_b32 v7, v7, 4, v7
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[42:43], null, s29, v49, v[1:2]
	v_cndmask_b32_e64 v1, 0, 1, s1
	s_mul_i32 s4, s4, s3
	v_and_b32_e32 v51, 0x5040504, v4
	s_mul_hi_u32 s1, s3, s4
	v_and_b32_e32 v52, 0x7060706, v7
	s_add_i32 s37, s3, s1
	v_cmp_ne_u32_e64 s1, 1, v1
	v_add_nc_u32_e32 v53, 0, v2
	v_add_nc_u32_e32 v54, 0, v3
	v_add_nc_u32_e32 v55, 0, v5
	v_add_nc_u32_e32 v56, 0, v6
	v_add_nc_u32_e32 v57, 0, v9
	v_add_nc_u32_e32 v58, 0, v10
	v_add_nc_u32_e32 v59, 0, v11
	v_add_nc_u32_e32 v60, 0, v13
	v_add_nc_u32_e32 v61, 0, v14
	v_add_nc_u32_e32 v62, 0, v0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s17, s5, 0xffff
	s_mov_b32 s20, s6
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s25, s11, 0xffff
	s_mov_b32 s24, s10
	s_and_b32 s13, s13, 0xffff
	s_ashr_i32 s36, s30, 31
	s_mov_b32 s38, 0x76543210
	s_mov_b32 s14, s18
	s_mov_b32 s15, s19
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_bfe_u32 v0, v78, 16, 1
	v_bfe_u32 v1, v77, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v78, v78
	v_cmp_o_f32_e64 s3, v77, v77
	v_bfe_u32 v3, v76, 16, 1
	v_add3_u32 v0, v78, v0, 0x7fff
	v_add3_u32 v1, v77, v1, 0x7fff
	v_bfe_u32 v4, v75, 16, 1
	v_mov_b16_e32 v2.h, 0
	v_add3_u32 v3, v76, v3, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v1.h, s3
	v_bfe_u32 v1, v74, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v76, v76
	v_add3_u32 v4, v75, v4, 0x7fff
	v_cmp_o_f32_e64 s3, v75, v75
	v_bfe_u32 v5, v73, 16, 1
	v_bfe_u32 v6, v72, 16, 1
	.loc	1 277 22 is_stmt 0              ; generate_amdgcn.py:277:22
	s_mul_i32 s4, s39, s29
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v1, v74, v1, 0x7fff
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_add_i32 s10, s4, s6
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s4, v74, v74
	v_cndmask_b16 v3.l, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s3
	v_add3_u32 v4, v73, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_add3_u32 v5, v72, v6, 0x7fff
	v_mov_b16_e32 v6.l, v69.h
	v_mov_b16_e32 v6.h, v2.h
	v_mov_b16_e32 v2.l, v70.h
	v_bfe_u32 v7, v71, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v1.h, s4
	v_cmp_o_f32_e64 s3, v72, v72
	v_cndmask_b16 v1.h, 0x7fff, v4.h, vcc_lo
	v_and_b32_e32 v4, 1, v6
	v_and_b32_e32 v6, 1, v2
	v_add3_u32 v7, v71, v7, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v71, v71
	v_mov_b16_e32 v2.l, v68.h
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s3
	v_add3_u32 v4, v69, v4, 0x7fff
	v_cmp_o_f32_e64 s4, v69, v69
	v_mov_b16_e32 v8.l, v67.h
	v_mov_b16_e32 v8.h, v2.h
	v_cndmask_b16 v5.h, 0x7fff, v7.h, vcc_lo
	v_and_b32_e32 v7, 1, v2
	v_mov_b16_e32 v2.l, v66.h
	v_add3_u32 v6, v70, v6, 0x7fff
	v_cndmask_b16 v6.l, 0x7fff, v4.h, s4
	v_and_b32_e32 v4, 1, v8
	v_mov_b16_e32 v8.l, v65.h
	v_and_b32_e32 v9, 1, v2
	v_mov_b16_e32 v10.l, v64.h
	v_mov_b16_e32 v10.h, v2.h
	v_mov_b16_e32 v2.l, v63.h
	v_cmp_o_f32_e64 s3, v70, v70
	v_add3_u32 v7, v68, v7, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	v_and_b32_e32 v8, 1, v8
	v_and_b32_e32 v10, 1, v10
	v_and_b32_e32 v2, 1, v2
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s3
	v_add3_u32 v4, v67, v4, 0x7fff
	v_cndmask_b16 v7.h, 0x7fff, v7.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	v_add3_u32 v8, v65, v8, 0x7fff
	v_add3_u32 v9, v66, v9, 0x7fff
	v_cmp_o_f32_e64 s3, v66, v66
	v_cmp_o_f32_e64 s4, v65, v65
	v_add3_u32 v10, v64, v10, 0x7fff
	v_add3_u32 v2, v63, v2, 0x7fff
	v_cmp_o_f32_e64 s5, v63, v63
	v_cmp_o_f32_e64 s6, v64, v64
	v_cndmask_b16 v7.l, 0x7fff, v4.h, vcc_lo
	v_cndmask_b16 v4.h, 0x7fff, v9.h, s3
	v_cndmask_b16 v4.l, 0x7fff, v8.h, s4
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s5
	v_cndmask_b16 v2.l, 0x7fff, v10.h, s6
	v_cndmask_b32_e64 v8, v1, v0, s0
	v_cndmask_b32_e64 v0, v0, v1, s0
	v_cndmask_b32_e64 v1, v3, v5, s0
	v_cndmask_b32_e64 v9, v5, v3, s0
	v_cndmask_b32_e64 v5, v4, v6, s0
	v_cndmask_b32_e64 v3, v6, v4, s0
	v_cndmask_b32_e64 v4, v7, v2, s0
	v_permlanex16_b32 v6, v0, s38, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v1, s38, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v7, v2, v7, s0
	v_permlanex16_b32 v11, v3, s38, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v4, s38, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v6, v8, v51
	v_perm_b32 v1, v6, v8, v52
	v_perm_b32 v2, v10, v9, v51
	v_perm_b32 v3, v10, v9, v52
	v_add_lshl_u32 v8, s10, v41, 1
	v_perm_b32 v4, v11, v5, v51
	v_perm_b32 v5, v11, v5, v52
	v_perm_b32 v6, v12, v7, v51
	v_perm_b32 v7, v12, v7, v52
	v_add_lshl_u32 v9, s10, v42, 1
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	s_clause 0x1
	buffer_store_b128 v[0:3], v8, s[12:15], 0 offen
	buffer_store_b128 v[4:7], v9, s[12:15], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_lt_i32 s2, s31
	s_cbranch_scc0 .LBB0_8
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
                                        ;       Child Loop BB0_6 Depth 3
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s3, s2
	s_ashr_i32 s5, s2, 31
	s_mul_hi_u32 s4, s3, s37
	s_xor_b32 s5, s5, s36
	s_mul_i32 s6, s4, s7
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	s_sub_i32 s3, s3, s6
	s_add_i32 s6, s4, 1
	s_sub_i32 s10, s3, s7
	s_cmp_ge_u32 s3, s7
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s3, s10, s3
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s3, s7
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	s_cselect_b32 s3, s6, s4
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	s_xor_b32 s3, s3, s5
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	s_sub_i32 s3, s3, s5
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s4, s28, s3
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s11, s3, s30
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s4, s4, 1
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s11, s2, s11
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s5, s4
	s_abs_i32 s22, s11
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s10, 0, s5
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s6
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_readfirstlane_b32 s6, v0
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s10, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s6, s10
	s_add_i32 s6, s6, s10
	s_xor_b32 s10, s11, s4
	s_mul_hi_u32 s6, s22, s6
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s23, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s22, s22, s23
	s_add_i32 s23, s6, 1
	s_sub_i32 s26, s22, s5
	s_cmp_ge_u32 s22, s5
	s_cselect_b32 s6, s23, s6
	s_cselect_b32 s22, s26, s22
	s_add_i32 s23, s6, 1
	s_cmp_ge_u32 s22, s5
	s_cselect_b32 s5, s23, s6
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_and_b32 vcc_lo, exec_lo, s1
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_xor_b32 s5, s5, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s10
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s4, s5, s4
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s6, s5, 7
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_sub_i32 s4, s11, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s4, s4, s3
	.loc	1 221 18 is_stmt 1              ; generate_amdgcn.py:221:18
	s_lshl_b32 s39, s4, 6
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_or_b32_e32 v0, s39, v45
	v_or_b32_e32 v1, s39, v47
	v_or_b32_e32 v2, s39, v49
	v_or_b32_e32 v79, s6, v48
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_mad_u64_u32 v[43:44], null, v0, s34, v[40:41]
	v_mul_lo_u32 v80, v1, s35
	v_mul_lo_u32 v81, v2, s35
	v_or_b32_e32 v44, s6, v46
	v_or_b32_e32 v82, 2, v79
	v_or_b32_e32 v83, 4, v79
	v_or_b32_e32 v84, 6, v79
	v_or_b32_e32 v85, 8, v79
	v_or_b32_e32 v86, 10, v79
	v_or_b32_e32 v87, 12, v79
	v_or_b32_e32 v88, 14, v79
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	s_mov_b32 s40, 0
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_6 Depth 3
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, v89
	v_mov_b32_e32 v2, v89
	v_dual_mov_b32 v3, v89 :: v_dual_mov_b32 v8, 0
	v_mov_b32_e32 v4, v89
	v_mov_b32_e32 v5, v89
	v_mov_b32_e32 v6, v89
	v_mov_b32_e32 v7, v89
	v_mov_b32_e32 v9, v89
	v_mov_b32_e32 v10, v89
	v_mov_b32_e32 v11, v89
	v_mov_b32_e32 v12, v89
	v_mov_b32_e32 v13, v89
	v_mov_b32_e32 v14, v89
	v_mov_b32_e32 v15, v89
	.loc	1 256 28 is_stmt 1              ; generate_amdgcn.py:256:28
	s_lshl_b32 s10, s40, 7
	s_mov_b32 s11, -1
	s_mov_b32 s3, 0
.LBB0_6:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_5 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 258 26 is_stmt 1              ; generate_amdgcn.py:258:26
	s_or_b32 s3, s3, s10
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_mov_b32 s22, s18
	.loc	1 258 26                        ; generate_amdgcn.py:258:26
	s_add_i32 s3, s3, s33
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_mov_b32 s23, s19
	.loc	1 258 26                        ; generate_amdgcn.py:258:26
	v_or_b32_e32 v16, s3, v40
	v_or_b32_e32 v17, s3, v45
	.loc	1 265 38                        ; generate_amdgcn.py:265:38
	v_add_nc_u32_e32 v18, s3, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 259 56                        ; generate_amdgcn.py:259:56
	v_subrev_nc_u32_e32 v19, s10, v16
	v_subrev_nc_u32_e32 v20, s10, v17
	.loc	1 259 31 is_stmt 0              ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e32 vcc_lo, s34, v16
	v_cmp_gt_i32_e64 s3, s34, v17
	.loc	1 270 38 is_stmt 1              ; generate_amdgcn.py:270:38
	v_mad_u64_u32 v[16:17], null, v17, s29, v[44:45]
	.loc	1 259 55                        ; generate_amdgcn.py:259:55
	v_cmp_gt_i32_e64 s4, 0x80, v19
	v_cmp_gt_i32_e64 s5, 0x80, v20
	.loc	1 259 30 is_stmt 0              ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s4
	s_and_b32 s3, s3, s5
	.loc	1 265 30 is_stmt 1              ; generate_amdgcn.py:265:30
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	v_cndmask_b32_e64 v18, 0x80000000, v16, s3
	s_mov_b32 s3, 64
	.loc	1 257 17                        ; generate_amdgcn.py:257:17
	s_and_b32 vcc_lo, exec_lo, s11
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	buffer_load_b64 v[16:17], v17, s[16:19], 0 offen
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	buffer_load_b128 v[90:93], v18, s[20:23], 0 offen
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s11, 0
	s_waitcnt vmcnt(1)
	ds_store_b64 v53, v[16:17]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[94:97], v54 offset1:4
	ds_load_2addr_stride64_b64 v[98:101], v55 offset1:4
	ds_load_2addr_stride64_b64 v[36:39], v56 offset1:4
	ds_load_2addr_stride64_b64 v[32:35], v57 offset1:4
	ds_load_2addr_stride64_b64 v[28:31], v58 offset1:4
	ds_load_2addr_stride64_b64 v[24:27], v59 offset1:4
	ds_load_2addr_stride64_b64 v[20:23], v60 offset1:4
	ds_load_2addr_stride64_b64 v[16:19], v61 offset1:4
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v62, v[90:93]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v90, v50 offset:640
	ds_load_u8 v91, v50 offset:512
	ds_load_u8 v92, v50 offset:896
	ds_load_u8 v93, v50 offset:768
	ds_load_u8 v102, v50 offset:128
	ds_load_u8 v103, v50
	ds_load_u8 v104, v50 offset:384
	ds_load_u8 v105, v50 offset:256
	ds_load_u8 v106, v50 offset:1664
	ds_load_u8 v107, v50 offset:1536
	ds_load_u8 v108, v50 offset:1920
	ds_load_u8 v109, v50 offset:1792
	ds_load_u8 v110, v50 offset:1152
	ds_load_u8 v111, v50 offset:1024
	ds_load_u8 v112, v50 offset:1408
	ds_load_u8 v113, v50 offset:1280
	ds_load_u8 v114, v50 offset:2688
	ds_load_u8 v115, v50 offset:2560
	ds_load_u8 v116, v50 offset:2944
	ds_load_u8 v117, v50 offset:2816
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v91, v93, v92, 0xc0c0004
	ds_load_u8 v92, v50 offset:2176
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v93, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v103, v105, v104, 0xc0c0004
	v_lshl_or_b32 v91, v91, 16, v90
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v90, v103, 16, v93
	ds_load_u8 v93, v50 offset:2304
	ds_load_u8 v103, v50 offset:3712
	v_wmma_i32_16x16x16_iu4 v[0:7], v[90:91], v[94:95], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[90:91], v[96:97], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v90, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v91, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v108, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v110, v113, v112, 0xc0c0004
	ds_load_u8 v106, v50 offset:3328
	ds_load_u8 v107, v50 offset:4736
	ds_load_u8 v111, v50 offset:4992
	ds_load_u8 v109, v50 offset:4608
	ds_load_u8 v104, v50 offset:2432
	ds_load_u8 v102, v50 offset:2048
	v_lshl_or_b32 v91, v91, 16, v90
	v_lshl_or_b32 v90, v110, 16, v108
	ds_load_u8 v108, v50 offset:4864
	ds_load_u8 v110, v50 offset:4224
	ds_load_u8 v94, v50 offset:3584
	ds_load_u8 v95, v50 offset:3968
	ds_load_u8 v96, v50 offset:3840
	ds_load_u8 v97, v50 offset:3200
	ds_load_u8 v105, v50 offset:3072
	ds_load_u8 v118, v50 offset:3456
	v_wmma_i32_16x16x16_iu4 v[0:7], v[90:91], v[98:99], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[90:91], v[100:101], v[8:15] neg_lo:[1,1,0]
	ds_load_u8 v98, v50 offset:4096
	ds_load_u8 v99, v50 offset:4480
	ds_load_u8 v100, v50 offset:4352
	ds_load_u8 v101, v50 offset:5760
	ds_load_u8 v112, v50 offset:5632
	ds_load_u8 v113, v50 offset:6016
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v90, v115, v114, 0xc0c0004
	ds_load_u8 v114, v50 offset:5888
	ds_load_u8 v115, v50 offset:5248
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v91, v117, v116, 0xc0c0004
	ds_load_u8 v116, v50 offset:6272
	ds_load_u8 v117, v50 offset:7296
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v107, v109, v107, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v93, v93, v104, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v92, v102, v92, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v94, v94, v103, 0xc0c0004
	v_perm_b32 v108, v108, v111, 0xc0c0004
	ds_load_u8 v111, v50 offset:6528
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v98, v98, v110, 0xc0c0004
	ds_load_u8 v110, v50 offset:6400
	ds_load_u8 v109, v50 offset:6144
	ds_load_u8 v104, v50 offset:5504
	ds_load_u8 v102, v50 offset:5120
	ds_load_u8 v103, v50 offset:6656
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v50 offset:7040
	v_perm_b32 v97, v105, v97, 0xc0c0004
	v_perm_b32 v106, v106, v118, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v101, v112, v101, 0xc0c0004
	ds_load_u8 v112, v50 offset:7680
	v_lshl_or_b32 v91, v91, 16, v90
	v_lshl_or_b32 v90, v93, 16, v92
	ds_load_u8 v92, v50 offset:5376
	ds_load_u8 v93, v50 offset:6784
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v50 offset:7808
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v50 offset:8064
	v_wmma_i32_16x16x16_iu4 v[0:7], v[90:91], v[36:37], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[90:91], v[38:39], v[8:15] neg_lo:[1,1,0]
	v_lshl_or_b32 v37, v108, 16, v107
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v109, v109, v116, 0xc0c0004
	v_lshl_or_b32 v36, v99, 16, v98
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v102, v102, v115, 0xc0c0004
	ds_load_u8 v115, v50 offset:7936
	ds_load_u8 v116, v50 offset:7424
	ds_load_u8 v118, v50 offset:7168
	ds_load_u8 v105, v50 offset:6912
	v_perm_b32 v110, v110, v111, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v104, v92, v104, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v103, v103, v93, 0xc0c0004
	v_lshl_or_b32 v93, v95, 16, v94
	v_lshl_or_b32 v92, v106, 16, v97
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[92:93], v[32:33], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[92:93], v[34:35], v[8:15] neg_lo:[1,1,0]
	v_lshl_or_b32 v33, v113, 16, v101
	v_lshl_or_b32 v32, v104, 16, v102
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v38, v115, v114, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[0:7], v[36:37], v[28:29], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[36:37], v[30:31], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v105, v96, 0xc0c0004
	ds_load_u8 v105, v50 offset:7552
	v_perm_b32 v100, v112, v100, 0xc0c0004
	v_perm_b32 v34, v118, v117, 0xc0c0004
	v_lshl_or_b32 v28, v110, 16, v109
	v_lshl_or_b32 v29, v96, 16, v103
	v_wmma_i32_16x16x16_iu4 v[0:7], v[32:33], v[24:25], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[32:33], v[26:27], v[8:15] neg_lo:[1,1,0]
	v_lshl_or_b32 v25, v38, 16, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[28:29], v[20:21], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[28:29], v[22:23], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v116, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v24, v30, 16, v34
	v_wmma_i32_16x16x16_iu4 v[0:7], v[24:25], v[16:17], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[24:25], v[18:19], v[8:15] neg_lo:[1,1,0]
	.loc	1 257 17                        ; generate_amdgcn.py:257:17
	s_cbranch_vccnz .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=2
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	v_add_lshl_u32 v16, v80, s40, 1
	v_add_lshl_u32 v17, v81, s40, 1
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	.loc	1 273 40                        ; generate_amdgcn.py:273:40
	s_mul_i32 s3, s40, s29
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_clause 0x1
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v19, v82, s3, 1
	v_add_lshl_u32 v18, v79, s3, 1
	v_add_lshl_u32 v21, v84, s3, 1
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	v_add_lshl_u32 v20, v83, s3, 1
	v_add_lshl_u32 v22, v85, s3, 1
	v_add_lshl_u32 v23, v86, s3, 1
	v_add_lshl_u32 v24, v87, s3, 1
	v_add_lshl_u32 v25, v88, s3, 1
	s_clause 0x7
	buffer_load_u16 v19, v19, s[24:27], 0 offen
	buffer_load_u16 v18, v18, s[24:27], 0 offen
	buffer_load_u16 v21, v21, s[24:27], 0 offen
	buffer_load_u16 v20, v20, s[24:27], 0 offen
	buffer_load_u16 v23, v23, s[24:27], 0 offen
	buffer_load_u16 v22, v22, s[24:27], 0 offen
	buffer_load_u16 v25, v25, s[24:27], 0 offen
	buffer_load_u16 v24, v24, s[24:27], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v0, v0
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s40, s40, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	s_cmp_lg_u32 s40, s35
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v9, v17, v9 :: v_dual_lshlrev_b32 v16, 16, v16
	s_waitcnt vmcnt(7)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v2, v2, v16 :: v_dual_lshlrev_b32 v19, 16, v19
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v1, v1, v16 :: v_dual_lshlrev_b32 v18, 16, v18
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v4, v4, v16 :: v_dual_lshlrev_b32 v21, 16, v21
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v6, v6, v16 :: v_dual_lshlrev_b32 v23, 16, v23
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v3, v3, v16 :: v_dual_lshlrev_b32 v22, 16, v22
	v_mul_f32_e32 v0, v0, v16
	v_dual_mul_f32 v11, v17, v11 :: v_dual_lshlrev_b32 v20, 16, v20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v8, v17, v8 :: v_dual_lshlrev_b32 v25, 16, v25
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v13, v17, v13 :: v_dual_lshlrev_b32 v24, 16, v24
	v_dual_mul_f32 v5, v5, v16 :: v_dual_fmac_f32 v78, v0, v18
	v_dual_mul_f32 v7, v7, v16 :: v_dual_mul_f32 v10, v17, v10
	v_dual_mul_f32 v12, v17, v12 :: v_dual_fmac_f32 v75, v3, v21
	v_dual_mul_f32 v15, v17, v15 :: v_dual_fmac_f32 v76, v2, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v14, v17, v14 :: v_dual_fmac_f32 v71, v7, v25
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v77, v1, v19 :: v_dual_fmac_f32 v74, v4, v22
	v_dual_fmac_f32 v73, v5, v23 :: v_dual_fmac_f32 v72, v6, v24
	v_dual_fmac_f32 v69, v8, v18 :: v_dual_fmac_f32 v70, v9, v19
	v_dual_fmac_f32 v67, v10, v20 :: v_dual_fmac_f32 v68, v11, v21
	v_dual_fmac_f32 v65, v12, v22 :: v_dual_fmac_f32 v66, v13, v23
	v_dual_fmac_f32 v64, v14, v24 :: v_dual_fmac_f32 v63, v15, v25
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_2
.LBB0_8:                                ; %._crit_edge9
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp21:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 119
		.amdhsa_next_free_sgpr 41
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.num_vgpr, 119
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4032
; TotalNumSgprs: 43
; NumVgprs: 119
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 43
; NumVGPRsForWavesPerEU: 119
; Occupancy: 12
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     119
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
