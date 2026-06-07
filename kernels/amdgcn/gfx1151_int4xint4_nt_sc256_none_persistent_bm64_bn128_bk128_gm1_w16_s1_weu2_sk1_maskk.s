	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 196 0                         ; generate_amdgcn.py:196:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:205:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 63
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s35, 0x7f
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
	s_ashr_i32 s33, s4, 6
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s34, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s44, s34, s33
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s44
	s_cbranch_scc1 .LBB0_6
; %bb.1:                                ; %.lr.ph6
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s4, s[0:1], 0x38
	s_load_b64 s[24:25], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 221 36 is_stmt 1              ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v19, 3, v0
	v_lshlrev_b32_e32 v2, 3, v0
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v20, 0xe0, v0
	v_lshrrev_b32_e32 v3, 1, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v4, 15, v0
	v_dual_mov_b32 v16, 0x5410 :: v_dual_lshlrev_b32 v5, 2, v0
	v_and_b32_e32 v0, 16, v0
	v_and_b32_e32 v6, 56, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v22, v1, 16, v4
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v1, 0x78, v3
	v_and_b32_e32 v3, 56, v3
	v_lshlrev_b32_e32 v4, 6, v4
	v_lshlrev_b32_e32 v8, 5, v20
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_or_b32_e32 v23, 32, v22
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v21, 64, v19
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s4, 0xff
.Ltmp12:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_lshr_b32 s5, s4, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s1, s0, 31
.Ltmp14:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s4, s4, s5
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_lshr_b32 s1, s1, 24
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s45, s4, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s1, s0, s1
	v_and_or_b32 v7, 0x438, v5, v4
	s_ashr_i32 s46, s1, 8
	s_cmpk_gt_i32 s0, 0xff
	v_cmp_eq_u32_e64 s0, 0, v0
	v_mov_b32_e32 v0, 0x7632
	s_cselect_b32 s4, -1, 0
	s_and_b32 s29, s9, 0xffff
	s_abs_i32 s9, s34
	v_cndmask_b32_e64 v16, 0x1054, v16, s0
	v_cndmask_b32_e64 v0, 0x3276, v0, s0
	s_cvt_f32_u32 s1, s9
	v_xor_b32_e32 v2, v2, v3
	v_and_b32_e32 v5, 56, v5
	v_lshl_or_b32 v16, v16, 8, v16
	v_lshl_or_b32 v0, v0, 8, v0
	v_rcp_iflag_f32_e32 v24, s1
	v_xor_b32_e32 v3, 8, v7
	v_or3_b32 v4, v8, v5, v4
	v_and_b32_e32 v25, 0x540054, v16
	v_and_b32_e32 v0, 0x760076, v0
.Ltmp18:
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[16:17], null, s35, v22, v[1:2]
	v_mad_u64_u32 v[17:18], null, s35, v23, v[1:2]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v18, s3, 6, v6
	v_readfirstlane_b32 s1, v24
	v_lshl_or_b32 v1, v25, 4, v25
	v_xor_b32_e32 v9, 16, v7
	v_and_b32_e32 v25, 0x7060706, v0
	v_add_nc_u32_e32 v0, 64, v18
	s_mul_f32 s1, s1, 0x4f7ffffe
	v_xor_b32_e32 v10, 24, v7
	v_xor_b32_e32 v5, 32, v7
	v_xor_b32_e32 v8, 40, v7
	v_xor_b32_e32 v11, 48, v7
	v_xor_b32_e32 v12, 56, v7
	v_xor_b32_e32 v13, 8, v4
	v_xor_b32_e32 v14, 16, v4
	v_xor_b32_e32 v15, 24, v4
	v_xor_b32_e32 v40, 32, v4
	v_xor_b32_e32 v41, 40, v4
	v_xor_b32_e32 v42, 48, v4
	v_xor_b32_e32 v43, 56, v4
	s_cvt_u32_f32 s5, s1
	v_cmp_gt_i32_e64 s3, 0x80, v0
	v_cndmask_b32_e64 v0, 0, 1, s4
	s_sub_i32 s6, 0, s9
	v_and_b32_e32 v24, 0x5040504, v1
	s_mul_i32 s6, s6, s5
	v_cmp_gt_i32_e64 s1, 0x80, v18
	v_and_b32_e32 v26, 2, v19
	v_cmp_ne_u32_e64 s4, 1, v0
	v_add_nc_u32_e32 v27, 0, v2
	v_add_nc_u32_e32 v28, 0, v7
	v_add_nc_u32_e32 v29, 0, v3
	v_add_nc_u32_e32 v30, 0, v9
	v_add_nc_u32_e32 v31, 0, v10
	v_add_nc_u32_e32 v32, 0, v5
	v_add_nc_u32_e32 v33, 0, v8
	v_add_nc_u32_e32 v34, 0, v11
	v_add_nc_u32_e32 v35, 0, v12
	v_add_nc_u32_e32 v36, 0, v4
	v_add_nc_u32_e32 v37, 0, v13
	v_add_nc_u32_e32 v38, 0, v14
	v_add_nc_u32_e32 v39, 0, v15
	v_add_nc_u32_e32 v40, 0, v40
	v_add_nc_u32_e32 v41, 0, v41
	v_add_nc_u32_e32 v42, 0, v42
	v_add_nc_u32_e32 v43, 0, v43
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mul_hi_u32 s6, s5, s6
	s_mov_b32 s28, s8
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_mov_b32 s16, 0
	s_and_b32 s25, s25, 0xffff
	s_ashr_i32 s10, s34, 31
	s_add_i32 s11, s5, s6
	s_lshl_b32 s47, s35, 1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_lshl_b32 s48, s46, 1
	s_mov_b32 s49, 0x76543210
	s_mov_b32 s26, s30
	s_mov_b32 s27, s31
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_bfe_u32 v0, v58, 16, 1
	v_bfe_u32 v1, v59, 16, 1
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s5, s5, 7
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_mul_i32 s6, s6, s35
	.loc	1 277 13 is_stmt 0              ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e32 vcc_lo, v58, v58
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_add_i32 s14, s6, s5
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v0, v58, v0, 0x7fff
	v_add3_u32 v1, v59, v1, 0x7fff
	v_cmp_o_f32_e64 s5, v59, v59
	v_bfe_u32 v3, v57, 16, 1
	v_bfe_u32 v4, v56, 16, 1
	v_mov_b16_e32 v2.h, 0
	v_cndmask_b16 v0.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v1.h, s5
	v_bfe_u32 v1, v55, 16, 1
	v_add3_u32 v3, v57, v3, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v57, v57
	v_add3_u32 v4, v56, v4, 0x7fff
	v_cmp_o_f32_e64 s5, v56, v56
	v_bfe_u32 v5, v54, 16, 1
	v_bfe_u32 v6, v53, 16, 1
	v_add3_u32 v1, v55, v1, 0x7fff
	v_cmp_o_f32_e64 s6, v55, v55
	v_cndmask_b16 v3.l, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s5
	v_add3_u32 v4, v54, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	v_add3_u32 v5, v53, v6, 0x7fff
	v_mov_b16_e32 v6.l, v51.h
	v_mov_b16_e32 v6.h, v2.h
	v_mov_b16_e32 v2.l, v50.h
	v_bfe_u32 v7, v52, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v1.h, s6
	v_cmp_o_f32_e64 s5, v53, v53
	v_cndmask_b16 v1.h, 0x7fff, v4.h, vcc_lo
	v_and_b32_e32 v4, 1, v6
	v_and_b32_e32 v6, 1, v2
	v_add3_u32 v7, v52, v7, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	v_mov_b16_e32 v2.l, v49.h
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s5
	v_add3_u32 v4, v51, v4, 0x7fff
	v_cmp_o_f32_e64 s6, v51, v51
	v_mov_b16_e32 v8.l, v48.h
	v_mov_b16_e32 v8.h, v2.h
	v_cndmask_b16 v5.h, 0x7fff, v7.h, vcc_lo
	v_and_b32_e32 v7, 1, v2
	v_mov_b16_e32 v2.l, v47.h
	v_add3_u32 v6, v50, v6, 0x7fff
	v_cndmask_b16 v6.l, 0x7fff, v4.h, s6
	v_and_b32_e32 v4, 1, v8
	v_mov_b16_e32 v8.l, v46.h
	v_and_b32_e32 v9, 1, v2
	v_mov_b16_e32 v10.l, v45.h
	v_mov_b16_e32 v10.h, v2.h
	v_mov_b16_e32 v2.l, v44.h
	v_cmp_o_f32_e64 s5, v50, v50
	v_add3_u32 v7, v49, v7, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_and_b32_e32 v8, 1, v8
	v_and_b32_e32 v10, 1, v10
	v_and_b32_e32 v2, 1, v2
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s5
	v_add3_u32 v4, v48, v4, 0x7fff
	v_cndmask_b16 v7.h, 0x7fff, v7.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	v_add3_u32 v8, v46, v8, 0x7fff
	v_add3_u32 v9, v47, v9, 0x7fff
	v_cmp_o_f32_e64 s5, v47, v47
	v_cmp_o_f32_e64 s6, v46, v46
	v_add3_u32 v10, v45, v10, 0x7fff
	v_add3_u32 v2, v44, v2, 0x7fff
	v_cmp_o_f32_e64 s7, v44, v44
	v_cmp_o_f32_e64 s8, v45, v45
	v_cndmask_b16 v7.l, 0x7fff, v4.h, vcc_lo
	v_cndmask_b16 v4.h, 0x7fff, v9.h, s5
	v_cndmask_b16 v4.l, 0x7fff, v8.h, s6
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s7
	v_cndmask_b16 v2.l, 0x7fff, v10.h, s8
	v_cndmask_b32_e64 v8, v1, v0, s0
	v_cndmask_b32_e64 v0, v0, v1, s0
	v_cndmask_b32_e64 v1, v3, v5, s0
	v_cndmask_b32_e64 v9, v5, v3, s0
	v_cndmask_b32_e64 v5, v4, v6, s0
	v_cndmask_b32_e64 v3, v6, v4, s0
	v_cndmask_b32_e64 v4, v7, v2, s0
	v_permlanex16_b32 v6, v0, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v1, s49, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v7, v2, v7, s0
	v_permlanex16_b32 v11, v3, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v4, s49, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v6, v8, v24
	v_perm_b32 v1, v6, v8, v25
	v_perm_b32 v2, v10, v9, v24
	v_perm_b32 v3, v10, v9, v25
	v_add_lshl_u32 v8, s14, v16, 1
	v_perm_b32 v4, v11, v5, v24
	v_perm_b32 v5, v11, v5, v25
	v_perm_b32 v6, v12, v7, v24
	v_perm_b32 v7, v12, v7, v25
	v_add_lshl_u32 v9, s14, v17, 1
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	s_clause 0x1
	buffer_store_b128 v[0:3], v8, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v9, s[24:27], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_lt_i32 s2, s44
	s_cbranch_scc0 .LBB0_6
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s5, s2
	s_ashr_i32 s7, s2, 31
	s_mul_hi_u32 s6, s5, s11
	s_xor_b32 s7, s7, s10
	s_mul_i32 s8, s6, s9
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	s_sub_i32 s5, s5, s8
	s_add_i32 s8, s6, 1
	s_sub_i32 s14, s5, s9
	s_cmp_ge_u32 s5, s9
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	s_cselect_b32 s6, s8, s6
	s_cselect_b32 s5, s14, s5
	s_add_i32 s8, s6, 1
	s_cmp_ge_u32 s5, s9
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	s_cselect_b32 s5, s8, s6
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	s_xor_b32 s5, s5, s7
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	s_sub_i32 s6, s5, s7
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s5, s33, s6
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s15, s6, s34
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s14, s5, 1
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s15, s2, s15
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s5, s14
	s_abs_i32 s17, s15
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s8, 0, s5
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s7
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_readfirstlane_b32 s7, v0
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s7, s8
	s_add_i32 s7, s7, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s17, s7
	s_xor_b32 s7, s15, s14
	s_mul_i32 s18, s8, s5
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s17, s17, s18
	s_add_i32 s18, s8, 1
	s_sub_i32 s19, s17, s5
	s_cmp_ge_u32 s17, s5
	s_cselect_b32 s8, s18, s8
	s_cselect_b32 s17, s19, s17
	s_add_i32 s18, s8, 1
	s_cmp_ge_u32 s17, s5
	s_cselect_b32 s5, s18, s8
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_and_b32 vcc_lo, exec_lo, s4
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_xor_b32 s8, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s8, s7
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s14, s5, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s14, s15, s14
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s14, s14, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 18 is_stmt 1              ; generate_amdgcn.py:221:18
	s_lshl_b32 s6, s14, 6
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_or_b32 v0, s8, 8, v20
	s_lshl_b32 s8, s8, 7
	s_lshl_b32 s14, s7, 8
	v_or_b32_e32 v1, s8, v21
	v_or_b32_e32 v2, s8, v19
	s_lshl_b32 s7, s7, 7
	v_subrev_nc_u32_e32 v60, s14, v0
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v0, s6, v23
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v3, s6, v22
	v_subrev_nc_u32_e32 v1, s7, v1
	v_subrev_nc_u32_e32 v2, s7, v2
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v4, s6, v19
	v_mul_lo_u32 v61, s48, v0
	v_mul_lo_u32 v62, s48, v3
	v_mul_lo_u32 v63, s45, v1
	v_mul_lo_u32 v64, s45, v2
	v_mul_lo_u32 v65, s45, v4
	v_dual_mov_b32 v66, v18 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v44, 0
	s_mov_b32 s7, s46
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e32 vcc_lo, s45, v66
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	v_add_nc_u32_e32 v103, v63, v66
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_add_nc_u32_e32 v101, v65, v66
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 268 38                        ; generate_amdgcn.py:268:38
	v_add_nc_u32_e32 v102, v64, v66
	.loc	1 268 30 is_stmt 0              ; generate_amdgcn.py:268:30
	v_cndmask_b32_e32 v4, 0x80000000, v103, vcc_lo
	.loc	1 265 30 is_stmt 1              ; generate_amdgcn.py:265:30
	v_cndmask_b32_e32 v0, 0x80000000, v101, vcc_lo
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	v_cndmask_b32_e32 v2, 0x80000000, v102, vcc_lo
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	buffer_load_b64 v[0:1], v0, s[28:31], 0 offen
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_clause 0x1
	buffer_load_b64 v[2:3], v2, s[36:39], 0 offen
	buffer_load_b64 v[4:5], v4, s[36:39], 0 offen
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s14, s30
	s_mov_b32 s15, s31
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s7, s7, -1
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt vmcnt(2)
	ds_store_b64 v27, v[0:1]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[67:70], v28 offset1:4
	ds_load_2addr_stride64_b64 v[71:74], v29 offset1:4
	ds_load_2addr_stride64_b64 v[75:78], v30 offset1:4
	ds_load_2addr_stride64_b64 v[79:82], v31 offset1:4
	ds_load_2addr_stride64_b64 v[83:86], v32 offset1:4
	ds_load_2addr_stride64_b64 v[87:90], v33 offset1:4
	ds_load_2addr_stride64_b64 v[91:94], v34 offset1:4
	ds_load_2addr_stride64_b64 v[95:98], v35 offset1:4
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v27, v[2:3], v[4:5] offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[99:100], v36
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v0, s16 :: v_dual_mov_b32 v3, s19
	v_dual_mov_b32 v1, s17 :: v_dual_mov_b32 v2, s18
	v_dual_mov_b32 v5, s21 :: v_dual_mov_b32 v4, s20
	v_dual_mov_b32 v7, s23 :: v_dual_mov_b32 v6, s22
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[8:15], v[99:100], v[67:68], v[0:7] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_b64 v[67:68], v37
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[0:7], v[99:100], v[69:70], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[8:15], v[67:68], v[71:72], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[67:68], v[73:74], v[0:7] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_b64 v[67:68], v38
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[8:15], v[67:68], v[75:76], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[67:68], v[77:78], v[0:7] neg_lo:[1,1,0]
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_add_nc_u32_e32 v67, 64, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_gt_i32_e32 vcc_lo, s45, v67
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_add_nc_u32_e32 v67, 64, v101
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_dual_cndmask_b32 v67, 0x80000000, v67 :: v_dual_add_nc_u32 v68, 64, v102
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	v_add_nc_u32_e32 v69, 64, v103
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cmp_lg_u32 s7, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	v_dual_cndmask_b32 v70, 0x80000000, v68 :: v_dual_cndmask_b32 v69, 0x80000000, v69
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	buffer_load_b64 v[67:68], v67, s[28:31], 0 offen
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_clause 0x1
	buffer_load_b64 v[99:100], v70, s[36:39], 0 offen
	buffer_load_b64 v[101:102], v69, s[36:39], 0 offen
	ds_load_b64 v[69:70], v39
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[8:15], v[69:70], v[79:80], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[69:70], v[81:82], v[0:7] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_b64 v[69:70], v40
	ds_load_b64 v[71:72], v41
	ds_load_b64 v[73:74], v42
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[8:15], v[69:70], v[83:84], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[69:70], v[85:86], v[0:7] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_b64 v[69:70], v43
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[8:15], v[71:72], v[87:88], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[71:72], v[89:90], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[8:15], v[73:74], v[91:92], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[73:74], v[93:94], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[8:15], v[69:70], v[95:96], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[69:70], v[97:98], v[0:7] neg_lo:[1,1,0]
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt vmcnt(2)
	ds_store_b64 v27, v[67:68]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[67:70], v28 offset1:4
	ds_load_2addr_stride64_b64 v[71:74], v29 offset1:4
	ds_load_2addr_stride64_b64 v[75:78], v30 offset1:4
	ds_load_2addr_stride64_b64 v[79:82], v31 offset1:4
	ds_load_2addr_stride64_b64 v[83:86], v32 offset1:4
	ds_load_2addr_stride64_b64 v[87:90], v33 offset1:4
	ds_load_2addr_stride64_b64 v[91:94], v34 offset1:4
	ds_load_2addr_stride64_b64 v[95:98], v35 offset1:4
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v27, v[99:100], v[101:102] offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[99:100], v36
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[8:15], v[99:100], v[67:68], v[8:15] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_b64 v[67:68], v37
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[0:7], v[99:100], v[69:70], v[0:7] neg_lo:[1,1,0]
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_nc_u32_e32 v69, v26, v60
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[8:15], v[67:68], v[71:72], v[8:15] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[67:68], v[73:74], v[0:7] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_b64 v[67:68], v38
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[8:15], v[67:68], v[75:76], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[67:68], v[77:78], v[0:7] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_b64 v[67:68], v39
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_clause 0x1
	buffer_load_u16 v73, v62, s[12:15], 0 offen
	buffer_load_u16 v74, v61, s[12:15], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x2
	buffer_load_u16 v75, v69, s[40:43], 0 offen
	buffer_load_u16 v76, v69, s[40:43], 0 offen offset:4
	buffer_load_u16 v77, v69, s[40:43], 0 offen offset:12
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v62, 2, v62
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[8:15], v[67:68], v[79:80], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[67:68], v[81:82], v[0:7] neg_lo:[1,1,0]
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x4
	buffer_load_u16 v78, v69, s[40:43], 0 offen offset:8
	buffer_load_u16 v79, v69, s[40:43], 0 offen offset:20
	buffer_load_u16 v80, v69, s[40:43], 0 offen offset:16
	buffer_load_u16 v81, v69, s[40:43], 0 offen offset:28
	buffer_load_u16 v82, v69, s[40:43], 0 offen offset:24
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_b64 v[67:68], v40
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[8:15], v[67:68], v[83:84], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[67:68], v[85:86], v[0:7] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_b64 v[67:68], v41
	ds_load_b64 v[69:70], v42
	ds_load_b64 v[71:72], v43
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[8:15], v[67:68], v[87:88], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[67:68], v[89:90], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[8:15], v[69:70], v[91:92], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[69:70], v[93:94], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[8:15], v[71:72], v[95:96], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[71:72], v[97:98], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v0, v0
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v68, 16, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v0, v68, v0 :: v_dual_lshlrev_b32 v67, 16, v73
	v_dual_mul_f32 v9, v9, v67 :: v_dual_add_nc_u32 v60, s47, v60
	v_dual_mul_f32 v11, v11, v67 :: v_dual_add_nc_u32 v66, 0x80, v66
	v_dual_mul_f32 v10, v10, v67 :: v_dual_add_nc_u32 v61, 2, v61
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v12, v12, v67 :: v_dual_lshlrev_b32 v69, 16, v76
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v14, v14, v67 :: v_dual_lshlrev_b32 v71, 16, v77
	v_mul_f32_e32 v8, v8, v67
	v_mul_f32_e32 v13, v13, v67
	v_dual_mul_f32 v1, v68, v1 :: v_dual_lshlrev_b32 v70, 16, v75
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v15, v15, v67 :: v_dual_lshlrev_b32 v72, 16, v78
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v2, v68, v2 :: v_dual_lshlrev_b32 v73, 16, v79
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v3, v68, v3 :: v_dual_lshlrev_b32 v74, 16, v80
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v4, v68, v4 :: v_dual_lshlrev_b32 v75, 16, v81
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v5, v68, v5 :: v_dual_lshlrev_b32 v76, 16, v82
	v_dual_mul_f32 v7, v68, v7 :: v_dual_fmac_f32 v54, v13, v73
	v_dual_mul_f32 v6, v68, v6 :: v_dual_fmac_f32 v59, v9, v69
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v58, v8, v70 :: v_dual_fmac_f32 v57, v10, v72
	v_dual_fmac_f32 v56, v11, v71 :: v_dual_fmac_f32 v55, v12, v74
	v_dual_fmac_f32 v53, v14, v76 :: v_dual_fmac_f32 v52, v15, v75
	v_dual_fmac_f32 v51, v0, v70 :: v_dual_fmac_f32 v50, v1, v69
	v_dual_fmac_f32 v48, v2, v72 :: v_dual_fmac_f32 v49, v3, v71
	v_dual_fmac_f32 v46, v4, v74 :: v_dual_fmac_f32 v47, v5, v73
	v_dual_fmac_f32 v45, v6, v76 :: v_dual_fmac_f32 v44, v7, v75
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_2
.LBB0_6:                                ; %._crit_edge7
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 104
		.amdhsa_next_free_sgpr 50
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
		.amdhsa_inst_pref_size 27
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.num_vgpr, 104
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3408
; TotalNumSgprs: 52
; NumVgprs: 104
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 12
; NumSGPRsForWavesPerEU: 52
; NumVGPRsForWavesPerEU: 104
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     104
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
