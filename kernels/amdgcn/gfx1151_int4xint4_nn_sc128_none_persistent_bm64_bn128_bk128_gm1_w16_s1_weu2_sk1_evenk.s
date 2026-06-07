	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk
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
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v3, 1, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v4, 15, v0
	v_and_b32_e32 v10, 16, v0
	v_dual_mov_b32 v14, 0x5410 :: v_dual_lshlrev_b32 v5, 2, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v7, 0x70, v3
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_or_b32 v34, v1, 16, v4
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v1, 0x78, v3
	v_and_b32_e32 v3, 56, v3
	v_and_b32_e32 v5, 0x438, v5
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v33, 3, v0
	v_add3_u32 v36, 0, v4, v7
	v_and_b32_e32 v2, 7, v0
	v_or_b32_e32 v35, 32, v34
	v_lshl_or_b32 v5, v4, 6, v5
	v_lshlrev_b32_e32 v6, 3, v0
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s4, 0x7f
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
	s_lshr_b32 s1, s1, 25
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s45, s4, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s1, s0, s1
.Ltmp18:
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[28:29], null, s35, v34, v[1:2]
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s46, s1, 7
	s_cmpk_gt_i32 s0, 0x7f
	v_cmp_eq_u32_e64 s0, 0, v10
	s_cselect_b32 s1, -1, 0
	s_and_b32 s29, s9, 0xffff
	s_abs_i32 s9, s34
	v_mov_b32_e32 v10, 0x7632
	s_cvt_f32_u32 s4, s9
	v_cndmask_b32_e64 v14, 0x1054, v14, s0
.Ltmp20:
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s3, s3, 6
	v_mad_u64_u32 v[29:30], null, s35, v35, v[1:2]
	v_rcp_iflag_f32_e32 v17, s4
	v_cndmask_b32_e64 v10, 0x3276, v10, s0
	v_lshl_or_b32 v4, v14, 8, v14
	v_or_b32_e32 v39, s3, v33
	s_sub_i32 s5, 0, s9
	v_xor_b32_e32 v3, v6, v3
	v_lshl_or_b32 v7, v10, 8, v10
	v_and_b32_e32 v4, 0x540054, v4
	v_mul_lo_u32 v1, s35, v39
	v_xor_b32_e32 v6, 8, v5
	v_readfirstlane_b32 s4, v17
	v_and_b32_e32 v7, 0x760076, v7
	v_xor_b32_e32 v8, 16, v5
	v_xor_b32_e32 v9, 24, v5
	v_xor_b32_e32 v11, 32, v5
	s_mul_f32 s4, s4, 0x4f7ffffe
	v_xor_b32_e32 v12, 40, v5
	v_xor_b32_e32 v13, 48, v5
	v_xor_b32_e32 v15, 56, v5
	s_cvt_u32_f32 s4, s4
	v_lshlrev_b32_e32 v16, 4, v0
	v_lshl_or_b32 v4, v4, 4, v4
	v_lshl_or_b32 v7, v7, 4, v7
	v_and_b32_e32 v41, 0xe0, v0
	v_cndmask_b32_e64 v0, 0, 1, s1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_lshl_or_b32 v30, v2, 3, s3
	s_mul_i32 s5, s5, s4
	s_and_b32 s37, s11, 0xffff
	s_mul_hi_u32 s5, s4, s5
	v_and_b32_e32 v37, 0x5040504, v4
	v_and_b32_e32 v38, 0x7060706, v7
	s_add_i32 s11, s4, s5
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_and_b32_e32 v40, 2, v33
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_lshl_add_u32 v42, v2, 4, v1
	v_cmp_ne_u32_e64 s1, 1, v0
	v_cmp_gt_i32_e64 s3, 64, v30
	v_cmp_gt_i32_e64 s4, 64, v39
	v_add_nc_u32_e32 v43, 0, v3
	v_add_nc_u32_e32 v44, 0, v5
	v_add_nc_u32_e32 v45, 0, v6
	v_add_nc_u32_e32 v46, 0, v8
	v_add_nc_u32_e32 v47, 0, v9
	v_add_nc_u32_e32 v48, 0, v11
	v_add_nc_u32_e32 v49, 0, v12
	v_add_nc_u32_e32 v50, 0, v13
	v_add_nc_u32_e32 v51, 0, v15
	v_add_nc_u32_e32 v52, 0, v16
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b32 s28, s8
	s_mov_b32 s36, s10
	s_mov_b32 s16, 0
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_and_b32 s25, s25, 0xffff
	s_ashr_i32 s10, s34, 31
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s47, s35, 1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_lshl_b32 s48, s46, 1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s49, s35, 6
	s_mov_b32 s50, 0x76543210
	s_mov_b32 s26, s30
	s_mov_b32 s27, s31
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_bfe_u32 v0, v66, 16, 1
	v_bfe_u32 v1, v67, 16, 1
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s5, s6, 7
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_mul_i32 s6, s7, s35
	.loc	1 277 13 is_stmt 0              ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_add_i32 s14, s6, s5
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v0, v66, v0, 0x7fff
	v_add3_u32 v1, v67, v1, 0x7fff
	v_cmp_o_f32_e64 s5, v67, v67
	v_bfe_u32 v3, v65, 16, 1
	v_bfe_u32 v4, v64, 16, 1
	v_mov_b16_e32 v2.h, 0
	v_cndmask_b16 v0.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v1.h, s5
	v_bfe_u32 v1, v63, 16, 1
	v_add3_u32 v3, v65, v3, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	v_add3_u32 v4, v64, v4, 0x7fff
	v_cmp_o_f32_e64 s5, v64, v64
	v_bfe_u32 v5, v62, 16, 1
	v_bfe_u32 v6, v61, 16, 1
	v_add3_u32 v1, v63, v1, 0x7fff
	v_cmp_o_f32_e64 s6, v63, v63
	v_cndmask_b16 v3.l, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s5
	v_add3_u32 v4, v62, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v62, v62
	v_add3_u32 v5, v61, v6, 0x7fff
	v_mov_b16_e32 v6.l, v59.h
	v_mov_b16_e32 v6.h, v2.h
	v_mov_b16_e32 v2.l, v58.h
	v_bfe_u32 v7, v60, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v1.h, s6
	v_cmp_o_f32_e64 s5, v61, v61
	v_cndmask_b16 v1.h, 0x7fff, v4.h, vcc_lo
	v_and_b32_e32 v4, 1, v6
	v_and_b32_e32 v6, 1, v2
	v_add3_u32 v7, v60, v7, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	v_mov_b16_e32 v2.l, v57.h
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s5
	v_add3_u32 v4, v59, v4, 0x7fff
	v_cmp_o_f32_e64 s6, v59, v59
	v_mov_b16_e32 v8.l, v56.h
	v_mov_b16_e32 v8.h, v2.h
	v_cndmask_b16 v5.h, 0x7fff, v7.h, vcc_lo
	v_and_b32_e32 v7, 1, v2
	v_mov_b16_e32 v2.l, v55.h
	v_add3_u32 v6, v58, v6, 0x7fff
	v_cndmask_b16 v6.l, 0x7fff, v4.h, s6
	v_and_b32_e32 v4, 1, v8
	v_mov_b16_e32 v8.l, v54.h
	v_and_b32_e32 v9, 1, v2
	v_mov_b16_e32 v10.l, v53.h
	v_mov_b16_e32 v10.h, v2.h
	v_mov_b16_e32 v2.l, v32.h
	v_cmp_o_f32_e64 s5, v58, v58
	v_add3_u32 v7, v57, v7, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v57, v57
	v_and_b32_e32 v8, 1, v8
	v_and_b32_e32 v10, 1, v10
	v_and_b32_e32 v2, 1, v2
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s5
	v_add3_u32 v4, v56, v4, 0x7fff
	v_cndmask_b16 v7.h, 0x7fff, v7.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	v_add3_u32 v8, v54, v8, 0x7fff
	v_add3_u32 v9, v55, v9, 0x7fff
	v_cmp_o_f32_e64 s5, v55, v55
	v_cmp_o_f32_e64 s6, v54, v54
	v_add3_u32 v10, v53, v10, 0x7fff
	v_add3_u32 v2, v32, v2, 0x7fff
	v_cmp_o_f32_e64 s7, v32, v32
	v_cmp_o_f32_e64 s8, v53, v53
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
	v_permlanex16_b32 v6, v0, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v1, s50, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v7, v2, v7, s0
	v_permlanex16_b32 v11, v3, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v4, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v6, v8, v37
	v_perm_b32 v1, v6, v8, v38
	v_perm_b32 v2, v10, v9, v37
	v_perm_b32 v3, v10, v9, v38
	v_add_lshl_u32 v8, s14, v28, 1
	v_perm_b32 v4, v11, v5, v37
	v_perm_b32 v5, v11, v5, v38
	v_perm_b32 v6, v12, v7, v37
	v_perm_b32 v7, v12, v7, v38
	v_add_lshl_u32 v9, s14, v29, 1
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
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v53, 0
	s_sub_i32 s5, s5, s8
	s_add_i32 s8, s6, 1
	s_sub_i32 s14, s5, s9
	s_cmp_ge_u32 s5, s9
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	s_cselect_b32 s6, s8, s6
	s_cselect_b32 s5, s14, s5
	s_add_i32 s8, s6, 1
	s_cmp_ge_u32 s5, s9
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	s_cselect_b32 s5, s8, s6
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	s_xor_b32 s5, s5, s7
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	s_sub_i32 s7, s5, s7
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s5, s33, s7
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s15, s7, s34
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s14, s5, 1
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s15, s2, s15
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s6, s14
	s_abs_i32 s17, s15
	s_cvt_f32_u32 s5, s6
	s_sub_i32 s8, 0, s6
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s5
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_readfirstlane_b32 s5, v0
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s17, s5
	s_xor_b32 s5, s15, s14
	s_mul_i32 s18, s8, s6
	s_ashr_i32 s5, s5, 31
	s_sub_i32 s17, s17, s18
	s_add_i32 s18, s8, 1
	s_sub_i32 s19, s17, s6
	s_cmp_ge_u32 s17, s6
	s_cselect_b32 s8, s18, s8
	s_cselect_b32 s17, s19, s17
	s_add_i32 s18, s8, 1
	s_cmp_ge_u32 s17, s6
	s_cselect_b32 s6, s18, s8
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_and_b32 vcc_lo, exec_lo, s1
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_xor_b32 s8, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s6, s8, s5
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s14, s6, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s14, s15, s14
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s14, s14, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 18 is_stmt 1              ; generate_amdgcn.py:221:18
	s_lshl_b32 s7, s14, 6
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_or_b32 v0, s8, 8, v41
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v1, s7, v35
	s_lshl_b32 s14, s5, 8
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v2, s7, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v68, s14, v0
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v0, s7, v33
	v_mul_lo_u32 v69, s48, v1
	v_lshl_add_u32 v1, s8, 7, v42
	v_mul_lo_u32 v70, s48, v2
	v_mad_u64_u32 v[31:32], null, s45, v0, v[30:31]
	s_lshl_b32 s5, s5, 7
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_subrev_nc_u32_e32 v71, s5, v1
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v53, 0
	v_mov_b32_e32 v32, 0
	s_mov_b32 s8, 0
	s_mov_b32 s51, s46
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 258 26                        ; generate_amdgcn.py:258:26
	v_add_nc_u32_e32 v0, s8, v30
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_add_nc_u32_e32 v1, s8, v39
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_add_nc_u32_e32 v2, s8, v31
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e32 vcc_lo, s45, v0
	v_cmp_gt_i32_e64 s5, s45, v1
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s14, s30
	s_mov_b32 s15, s31
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s42, s30
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s5, s5, s4
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	v_cndmask_b32_e64 v1, 0x80000000, v71, s5
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	buffer_load_b64 v[12:13], v0, s[28:31], 0 offen
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	buffer_load_b128 v[8:11], v1, s[36:39], 0 offen
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v0, s16 :: v_dual_mov_b32 v5, s21
	v_dual_mov_b32 v1, s17 :: v_dual_mov_b32 v2, s18
	v_dual_mov_b32 v3, s19 :: v_dual_mov_b32 v4, s20
	v_dual_mov_b32 v7, s23 :: v_dual_mov_b32 v6, s22
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v71, s49, v71
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s43, s31
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s51, s51, -1
	s_add_i32 s8, s8, 64
	s_cmp_lg_u32 s51, 0
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt vmcnt(1)
	ds_store_b64 v43, v[12:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[72:75], v44 offset1:4
	ds_load_2addr_stride64_b64 v[76:79], v45 offset1:4
	ds_load_2addr_stride64_b64 v[80:83], v46 offset1:4
	ds_load_2addr_stride64_b64 v[84:87], v47 offset1:4
	ds_load_2addr_stride64_b64 v[88:91], v48 offset1:4
	ds_load_2addr_stride64_b64 v[24:27], v49 offset1:4
	ds_load_2addr_stride64_b64 v[20:23], v50 offset1:4
	ds_load_2addr_stride64_b64 v[16:19], v51 offset1:4
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v52, v[8:11]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v8, v36 offset:640
	ds_load_u8 v9, v36 offset:896
	ds_load_u8 v10, v36 offset:768
	ds_load_u8 v11, v36 offset:512
	ds_load_u8 v12, v36 offset:128
	ds_load_u8 v13, v36 offset:256
	ds_load_u8 v14, v36
	ds_load_u8 v15, v36 offset:384
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v8, v11, v8, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v14, v12, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v13, v15, 0xc0c0004
	v_lshl_or_b32 v93, v9, 16, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v92, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[8:15], v[92:93], v[72:73], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[92:93], v[74:75], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v72, v36 offset:1664
	ds_load_u8 v73, v36 offset:1536
	ds_load_u8 v74, v36 offset:1920
	ds_load_u8 v75, v36 offset:1792
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v36 offset:1152
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v36 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v75, v73, 0xc0c0004
	ds_load_u8 v73, v36 offset:1280
	ds_load_u8 v92, v36 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v73, v92, 0xc0c0004
	v_lshl_or_b32 v73, v74, 16, v72
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_nc_u32_e32 v74, v40, v68
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_lshl_or_b32 v72, v92, 16, v75
	ds_load_u8 v75, v36 offset:2688
	ds_load_u8 v92, v36 offset:4096
	v_wmma_i32_16x16x16_iu4 v[8:15], v[72:73], v[76:77], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[72:73], v[78:79], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v72, v36 offset:2560
	ds_load_u8 v73, v36 offset:2944
	ds_load_u8 v76, v36 offset:2816
	ds_load_u8 v77, v36 offset:2176
	ds_load_u8 v78, v36 offset:2304
	ds_load_u8 v79, v36 offset:2048
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v73, v76, v73, 0xc0c0004
	ds_load_u8 v76, v36 offset:3712
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v77, v79, v77, 0xc0c0004
	ds_load_u8 v79, v36 offset:3968
	v_perm_b32 v72, v72, v75, 0xc0c0004
	ds_load_u8 v75, v36 offset:2432
	v_lshl_or_b32 v73, v73, 16, v72
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v78, v75, 0xc0c0004
	ds_load_u8 v78, v36 offset:3840
	v_lshl_or_b32 v72, v75, 16, v77
	ds_load_u8 v75, v36 offset:3584
	ds_load_u8 v77, v36 offset:3200
	v_wmma_i32_16x16x16_iu4 v[8:15], v[72:73], v[80:81], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[72:73], v[82:83], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v72, v36 offset:3072
	ds_load_u8 v73, v36 offset:3456
	ds_load_u8 v80, v36 offset:3328
	ds_load_u8 v81, v36 offset:4736
	ds_load_u8 v82, v36 offset:4992
	ds_load_u8 v83, v36 offset:4864
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v75, v75, v76, 0xc0c0004
	ds_load_u8 v76, v36 offset:4608
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v72, v72, v77, 0xc0c0004
	ds_load_u8 v77, v36 offset:4480
	v_perm_b32 v78, v78, v79, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v80, v80, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v78, 16, v75
	ds_load_u8 v75, v36 offset:4352
	ds_load_u8 v78, v36 offset:5760
	v_lshl_or_b32 v72, v80, 16, v72
	v_wmma_i32_16x16x16_iu4 v[8:15], v[72:73], v[84:85], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[72:73], v[86:87], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v80, v36 offset:6016
	ds_load_u8 v84, v36 offset:5888
	ds_load_u8 v85, v36 offset:5632
	ds_load_u8 v86, v36 offset:5248
	ds_load_u8 v87, v36 offset:5504
	ds_load_u8 v93, v36 offset:5376
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v73, v83, v82, 0xc0c0004
	ds_load_u8 v82, v36 offset:7040
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v75, v75, v77, 0xc0c0004
	ds_load_u8 v77, v36 offset:6912
	ds_load_u8 v79, v36 offset:4224
	v_perm_b32 v72, v76, v81, 0xc0c0004
	ds_load_u8 v76, v36 offset:5120
	ds_load_u8 v81, v36 offset:6784
	v_lshl_or_b32 v73, v73, 16, v72
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v79, v92, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v75, 16, v79
	ds_load_u8 v75, v36 offset:6656
	ds_load_u8 v79, v36 offset:6272
	v_wmma_i32_16x16x16_iu4 v[8:15], v[72:73], v[88:89], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[72:73], v[90:91], v[0:7] neg_lo:[1,1,0]
	v_perm_b32 v72, v85, v78, 0xc0c0004
	ds_load_u8 v78, v36 offset:7680
	v_perm_b32 v73, v84, v80, 0xc0c0004
	ds_load_u8 v80, v36 offset:7296
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v76, v76, v86, 0xc0c0004
	v_perm_b32 v85, v93, v87, 0xc0c0004
	ds_load_u8 v83, v36 offset:6528
	ds_load_u8 v88, v36 offset:6400
	ds_load_u8 v89, v36 offset:6144
	ds_load_u8 v90, v36 offset:7808
	ds_load_u8 v91, v36 offset:8064
	ds_load_u8 v92, v36 offset:7936
	ds_load_u8 v84, v36 offset:7424
	v_lshl_or_b32 v73, v73, 16, v72
	v_perm_b32 v77, v77, v82, 0xc0c0004
	v_lshl_or_b32 v72, v85, 16, v76
	ds_load_u8 v76, v36 offset:7552
	ds_load_u8 v86, v36 offset:7168
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	buffer_load_u16 v85, v70, s[12:15], 0 offen
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v75, v75, v81, 0xc0c0004
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	buffer_load_u16 v81, v69, s[12:15], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v82, v74, s[40:43], 0 offen
	buffer_load_u16 v87, v74, s[40:43], 0 offen offset:4
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[8:15], v[72:73], v[24:25], v[8:15] neg_lo:[1,1,0]
	v_lshl_or_b32 v75, v77, 16, v75
	v_wmma_i32_16x16x16_iu4 v[0:7], v[72:73], v[26:27], v[0:7] neg_lo:[1,1,0]
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v69, 2, v69
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v83, v88, v83, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v79, v89, v79, 0xc0c0004
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v88, v74, s[40:43], 0 offen offset:8
	buffer_load_u16 v89, v74, s[40:43], 0 offen offset:12
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v78, v78, v90, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v90, v92, v91, 0xc0c0004
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v91, v74, s[40:43], 0 offen offset:16
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v76, v84, v76, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v86, v80, 0xc0c0004
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x2
	buffer_load_u16 v86, v74, s[40:43], 0 offen offset:20
	buffer_load_u16 v84, v74, s[40:43], 0 offen offset:28
	buffer_load_u16 v92, v74, s[40:43], 0 offen offset:24
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_lshl_or_b32 v74, v83, 16, v79
	v_lshl_or_b32 v77, v90, 16, v78
	v_lshl_or_b32 v76, v76, 16, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[8:15], v[74:75], v[20:21], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[74:75], v[22:23], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[76:77], v[16:17], v[8:15] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[76:77], v[18:19], v[0:7] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v9, v9
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
	v_lshlrev_b32_e32 v17, 16, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v7, v17, v7 :: v_dual_lshlrev_b32 v16, 16, v85
	v_dual_mul_f32 v9, v9, v16 :: v_dual_add_nc_u32 v70, 2, v70
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v11, v11, v16 :: v_dual_lshlrev_b32 v18, 16, v87
	v_dual_mul_f32 v10, v10, v16 :: v_dual_lshlrev_b32 v19, 16, v82
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v13, v13, v16 :: v_dual_lshlrev_b32 v20, 16, v89
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v12, v12, v16 :: v_dual_lshlrev_b32 v23, 16, v91
	v_mul_f32_e32 v8, v8, v16
	v_dual_mul_f32 v3, v17, v3 :: v_dual_add_nc_u32 v68, s47, v68
	v_dual_mul_f32 v2, v17, v2 :: v_dual_lshlrev_b32 v21, 16, v88
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v15, v15, v16 :: v_dual_lshlrev_b32 v22, 16, v86
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v5, v17, v5 :: v_dual_lshlrev_b32 v24, 16, v84
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v6, v17, v6 :: v_dual_lshlrev_b32 v25, 16, v92
	v_dual_mul_f32 v14, v14, v16 :: v_dual_fmac_f32 v67, v9, v18
	v_mul_f32_e32 v1, v17, v1
	v_dual_mul_f32 v0, v17, v0 :: v_dual_fmac_f32 v65, v10, v21
	v_dual_mul_f32 v4, v17, v4 :: v_dual_fmac_f32 v63, v12, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v66, v8, v19 :: v_dual_fmac_f32 v61, v14, v25
	v_dual_fmac_f32 v64, v11, v20 :: v_dual_fmac_f32 v59, v0, v19
	v_dual_fmac_f32 v62, v13, v22 :: v_dual_fmac_f32 v57, v3, v20
	v_dual_fmac_f32 v60, v15, v24 :: v_dual_fmac_f32 v55, v5, v22
	v_dual_fmac_f32 v58, v1, v18 :: v_dual_fmac_f32 v53, v6, v25
	v_fmac_f32_e32 v56, v2, v21
	v_fmac_f32_e32 v54, v4, v23
	v_fmac_f32_e32 v32, v7, v24
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_2
.LBB0_6:                                ; %._crit_edge7
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp21:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 94
		.amdhsa_next_free_sgpr 52
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
		.amdhsa_inst_pref_size 31
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.num_vgpr, 94
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3944
; TotalNumSgprs: 54
; NumVgprs: 94
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 54
; NumVGPRsForWavesPerEU: 94
; Occupancy: 16
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     94
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
