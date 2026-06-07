	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
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
	s_ashr_i32 s4, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s34, s4, s33
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s34
	s_cbranch_scc1 .LBB0_6
; %bb.1:                                ; %.lr.ph4
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s5, s[0:1], 0x38
	s_load_b64 s[24:25], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 221 36 is_stmt 1              ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v8, 2, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v5, 15, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v9, 0xe0, v0
	.loc	1 250 28                        ; generate_amdgcn.py:250:28
	v_lshlrev_b32_e32 v3, 2, v0
	v_lshlrev_b32_e32 v12, 1, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v7, 3, v0
	v_and_or_b32 v10, v1, 16, v5
	v_and_b32_e32 v1, 24, v8
	v_lshlrev_b32_e32 v5, 5, v5
	.loc	1 250 28                        ; generate_amdgcn.py:250:28
	v_lshlrev_b32_e32 v4, 3, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v6, 1, v0
	v_and_b32_e32 v0, 16, v0
	v_xor_b32_e32 v15, v3, v1
	v_and_or_b32 v16, 0x218, v12, v5
	v_lshlrev_b32_e32 v1, 4, v9
	v_and_b32_e32 v12, 24, v12
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s5, 63
.Ltmp12:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_lshr_b32 s6, s5, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s1, s0, 31
.Ltmp14:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s5, s5, s6
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_lshr_b32 s1, s1, 26
.Ltmp16:
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s44, s4, 2
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s1, s0, s1
.Ltmp18:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s45, s5, 1
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s46, s1, 6
	s_cmp_gt_i32 s0, 63
	v_or3_b32 v5, v1, v12, v5
	s_cselect_b32 s1, -1, 0
	s_and_b32 s29, s9, 0xffff
	v_mov_b32_e32 v1, 0x5410
	s_abs_i32 s9, s44
	v_mov_b32_e32 v12, 0x7632
	v_cmp_eq_u32_e64 s0, 0, v0
	s_cvt_f32_u32 s5, s9
.Ltmp20:
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v2, 0x78, v6
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_or_b32_e32 v11, 32, v10
	v_and_b32_e32 v6, 24, v6
	v_cndmask_b32_e64 v0, 0x1054, v1, s0
	v_cndmask_b32_e64 v12, 0x3276, v12, s0
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s3, s3, 5
	v_xor_b32_e32 v17, 8, v16
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v12, v12, 8, v12
	v_xor_b32_e32 v18, 16, v16
	v_xor_b32_e32 v19, 24, v16
	v_xor_b32_e32 v6, v4, v6
	v_and_b32_e32 v13, 0x540054, v0
	v_and_b32_e32 v12, 0x760076, v12
	v_readfirstlane_b32 s5, v1
	v_mad_u64_u32 v[0:1], null, s35, v10, v[2:3]
	v_mad_u64_u32 v[1:2], null, s35, v11, v[2:3]
	v_lshl_or_b32 v13, v13, 4, v13
	v_lshl_or_b32 v2, v12, 4, v12
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_xor_b32_e32 v22, 8, v5
	v_xor_b32_e32 v23, 16, v5
	v_xor_b32_e32 v24, 24, v5
	s_cvt_u32_f32 s5, s5
	v_and_b32_e32 v12, 0x5040504, v13
	v_and_b32_e32 v13, 0x7060706, v2
	v_cndmask_b32_e64 v20, 0, 1, s1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_and_or_b32 v2, v3, 28, s3
	v_and_or_b32 v3, v4, 24, s3
	s_sub_i32 s6, 0, s9
	s_mov_b32 s36, s10
	s_mul_i32 s6, s6, s5
	s_bfe_i32 s10, s4, 0x1001d
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_and_b32_e32 v14, 2, v7
	v_cmp_ne_u32_e64 s1, 1, v20
	v_cmp_gt_i32_e64 s3, 32, v2
	v_cmp_gt_i32_e64 s4, 32, v3
	v_add_nc_u32_e32 v15, 0, v15
	v_add_nc_u32_e32 v16, 0, v16
	v_add_nc_u32_e32 v17, 0, v17
	v_add_nc_u32_e32 v18, 0, v18
	v_add_nc_u32_e32 v19, 0, v19
	v_add_nc_u32_e32 v20, 0, v6
	v_add_nc_u32_e32 v21, 0, v5
	v_add_nc_u32_e32 v22, 0, v22
	v_add_nc_u32_e32 v23, 0, v23
	v_add_nc_u32_e32 v24, 0, v24
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mul_hi_u32 s6, s5, s6
	s_mov_b32 s28, s8
	s_and_b32 s37, s11, 0xffff
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_mov_b32 s16, 0
	s_and_b32 s25, s25, 0xffff
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
	v_bfe_u32 v4, v38, 16, 1
	v_bfe_u32 v5, v39, 16, 1
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s5, s6, 7
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_mul_i32 s6, s7, s35
	.loc	1 277 13 is_stmt 0              ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_add_i32 s14, s6, s5
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v4, v38, v4, 0x7fff
	v_add3_u32 v5, v39, v5, 0x7fff
	v_cmp_o_f32_e64 s5, v39, v39
	v_bfe_u32 v39, v37, 16, 1
	v_bfe_u32 v40, v36, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v4.h, vcc_lo
	v_mov_b16_e32 v38.h, 0
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s5
	v_bfe_u32 v5, v35, 16, 1
	v_add3_u32 v39, v37, v39, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_add3_u32 v37, v36, v40, 0x7fff
	v_cmp_o_f32_e64 s5, v36, v36
	v_add3_u32 v5, v35, v5, 0x7fff
	v_cmp_o_f32_e64 s6, v35, v35
	v_bfe_u32 v35, v34, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v39.h, vcc_lo
	v_bfe_u32 v39, v33, 16, 1
	v_cndmask_b16 v36.h, 0x7fff, v37.h, s5
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	v_add3_u32 v35, v34, v35, 0x7fff
	v_mov_b16_e32 v37.l, v31.h
	v_mov_b16_e32 v37.h, v38.h
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s6
	v_add3_u32 v34, v33, v39, 0x7fff
	v_mov_b16_e32 v38.l, v30.h
	v_cmp_o_f32_e64 s5, v33, v33
	v_bfe_u32 v33, v32, 16, 1
	v_cndmask_b16 v5.h, 0x7fff, v35.h, vcc_lo
	v_and_b32_e32 v35, 1, v37
	v_and_b32_e32 v37, 1, v38
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	v_add3_u32 v33, v32, v33, 0x7fff
	v_cmp_o_f32_e64 s6, v31, v31
	v_add3_u32 v32, v31, v35, 0x7fff
	v_mov_b16_e32 v38.l, v29.h
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s5
	v_add3_u32 v35, v30, v37, 0x7fff
	v_cmp_o_f32_e64 s5, v30, v30
	v_mov_b16_e32 v30.l, v28.h
	v_mov_b16_e32 v30.h, v38.h
	v_cndmask_b16 v34.h, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v31.l, 0x7fff, v32.h, s6
	v_and_b32_e32 v32, 1, v38
	v_mov_b16_e32 v38.l, v27.h
	v_mov_b16_e32 v33.l, v26.h
	v_mov_b16_e32 v33.h, v38.h
	v_cndmask_b16 v31.h, 0x7fff, v35.h, s5
	v_and_b32_e32 v30, 1, v30
	v_add3_u32 v32, v29, v32, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_and_b32_e32 v29, 1, v38
	v_and_b32_e32 v33, 1, v33
	v_mov_b16_e32 v35.l, v25.h
	v_mov_b16_e32 v35.h, v38.h
	v_mov_b16_e32 v38.l, v6.h
	v_add3_u32 v30, v28, v30, 0x7fff
	v_cndmask_b16 v32.h, 0x7fff, v32.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_add3_u32 v28, v26, v33, 0x7fff
	v_and_b32_e32 v33, 1, v35
	v_and_b32_e32 v35, 1, v38
	v_add3_u32 v29, v27, v29, 0x7fff
	v_cmp_o_f32_e64 s5, v27, v27
	v_cmp_o_f32_e64 s6, v26, v26
	v_add3_u32 v26, v25, v33, 0x7fff
	v_add3_u32 v27, v6, v35, 0x7fff
	v_cmp_o_f32_e64 s7, v6, v6
	v_cmp_o_f32_e64 s8, v25, v25
	v_cndmask_b16 v32.l, 0x7fff, v30.h, vcc_lo
	v_cndmask_b16 v6.h, 0x7fff, v29.h, s5
	v_cndmask_b16 v6.l, 0x7fff, v28.h, s6
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s7
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s8
	v_cndmask_b32_e64 v26, v5, v4, s0
	v_cndmask_b32_e64 v4, v4, v5, s0
	v_cndmask_b32_e64 v27, v36, v34, s0
	v_cndmask_b32_e64 v30, v6, v31, s0
	v_cndmask_b32_e64 v6, v31, v6, s0
	v_cndmask_b32_e64 v28, v32, v25, s0
	v_cndmask_b32_e64 v5, v34, v36, s0
	v_permlanex16_b32 v4, v4, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v27, s49, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v32, v25, v32, s0
	v_permlanex16_b32 v6, v6, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v28, s49, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v25, v4, v26, v12
	v_perm_b32 v26, v4, v26, v13
	v_perm_b32 v27, v29, v5, v12
	v_perm_b32 v28, v29, v5, v13
	v_add_lshl_u32 v4, s14, v0, 1
	v_perm_b32 v29, v6, v30, v12
	v_perm_b32 v30, v6, v30, v13
	v_perm_b32 v31, v33, v32, v12
	v_perm_b32 v32, v33, v32, v13
	v_add_lshl_u32 v5, s14, v1, 1
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	s_clause 0x1
	buffer_store_b128 v[25:28], v4, s[24:27], 0 offen
	buffer_store_b128 v[29:32], v5, s[24:27], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_lt_i32 s2, s34
	s_cbranch_scc0 .LBB0_6
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s5, s2
	s_ashr_i32 s7, s2, 31
	s_mul_hi_u32 s6, s5, s11
	s_xor_b32 s7, s7, s10
	s_mul_i32 s8, s6, s9
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v25, 0
	s_sub_i32 s5, s5, s8
	s_add_i32 s8, s6, 1
	s_sub_i32 s14, s5, s9
	s_cmp_ge_u32 s5, s9
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	s_cselect_b32 s6, s8, s6
	s_cselect_b32 s5, s14, s5
	s_add_i32 s8, s6, 1
	s_cmp_ge_u32 s5, s9
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	s_cselect_b32 s5, s8, s6
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	s_xor_b32 s5, s5, s7
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	s_sub_i32 s5, s5, s7
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s7, s5, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s5, s5, s44
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s6, s33, s7
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s17, s2, s5
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s14, s6, 4
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s6, s14
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	s_cvt_f32_u32 s8, s6
	s_sub_i32 s15, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v4, s8
	v_readfirstlane_b32 s8, v4
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s8, s8
	s_mul_i32 s15, s15, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s8, s15
	s_abs_i32 s15, s17
	s_add_i32 s8, s8, s5
	s_xor_b32 s5, s17, s14
	s_mul_hi_u32 s8, s15, s8
	s_ashr_i32 s5, s5, 31
	s_mul_i32 s18, s8, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s15, s15, s18
	s_add_i32 s18, s8, 1
	s_sub_i32 s19, s15, s6
	s_cmp_ge_u32 s15, s6
	s_cselect_b32 s8, s18, s8
	s_cselect_b32 s15, s19, s15
	s_add_i32 s18, s8, 1
	s_cmp_ge_u32 s15, s6
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
	s_sub_i32 s14, s17, s14
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s14, s14, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 18 is_stmt 1              ; generate_amdgcn.py:221:18
	s_lshl_b32 s7, s14, 6
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_or_b32 v4, s8, 8, v9
	s_lshl_b32 s14, s5, 8
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v5, s7, v11
	v_lshl_or_b32 v25, s8, 7, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v40, s14, v4
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v4, s7, v7
	v_mul_lo_u32 v41, s48, v5
	s_lshl_b32 s5, s5, 7
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v6, s7, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[4:5], null, s45, v4, v[2:3]
	v_subrev_nc_u32_e32 v25, s5, v25
	v_mul_lo_u32 v42, s48, v6
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[5:6], null, s45, v25, v[3:4]
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v6, 0
	s_mov_b32 s8, 0
	s_mov_b32 s50, s46
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
	v_add_nc_u32_e32 v43, s8, v2
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_add_nc_u32_e32 v44, s8, v3
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_add_nc_u32_e32 v45, s8, v4
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	v_add_nc_u32_e32 v46, s8, v5
	s_mov_b32 s38, s30
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e32 vcc_lo, s45, v43
	v_cmp_gt_i32_e64 s5, s45, v44
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_mov_b32 s39, s31
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s14, s30
	s_mov_b32 s15, s31
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s42, s30
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_cndmask_b32_e32 v43, 0x80000000, v45, vcc_lo
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, s5, s4
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s43, s31
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	v_cndmask_b32_e32 v44, 0x80000000, v46, vcc_lo
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	buffer_load_b32 v45, v43, s[28:31], 0 offen
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	buffer_load_b64 v[43:44], v44, s[36:39], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_nc_u32_e32 v46, v14, v40
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v40, s47, v40
	s_add_i32 s50, s50, -1
	s_add_i32 s8, s8, 32
	s_cmp_lg_u32 s50, 0
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt vmcnt(1)
	ds_store_b32 v15, v45
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[59:62], v16 offset1:2
	ds_load_2addr_stride64_b64 v[63:66], v17 offset1:2
	ds_load_2addr_stride64_b64 v[67:70], v18 offset1:2
	ds_load_2addr_stride64_b64 v[71:74], v19 offset1:2
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v20, v[43:44]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_clause 0x1
	buffer_load_u16 v83, v42, s[12:15], 0 offen
	buffer_load_u16 v84, v41, s[12:15], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x7
	buffer_load_u16 v85, v46, s[40:43], 0 offen offset:4
	buffer_load_u16 v86, v46, s[40:43], 0 offen
	buffer_load_u16 v87, v46, s[40:43], 0 offen offset:12
	buffer_load_u16 v88, v46, s[40:43], 0 offen offset:8
	buffer_load_u16 v89, v46, s[40:43], 0 offen offset:20
	buffer_load_u16 v90, v46, s[40:43], 0 offen offset:16
	buffer_load_u16 v91, v46, s[40:43], 0 offen offset:28
	buffer_load_u16 v92, v46, s[40:43], 0 offen offset:24
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_b64 v[75:76], v21
	ds_load_b64 v[77:78], v22
	ds_load_b64 v[79:80], v23
	ds_load_b64 v[81:82], v24
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v50, s23 :: v_dual_add_nc_u32 v41, 2, v41
	v_dual_mov_b32 v49, s22 :: v_dual_mov_b32 v48, s21
	v_dual_mov_b32 v47, s20 :: v_dual_mov_b32 v46, s19
	v_dual_mov_b32 v45, s18 :: v_dual_mov_b32 v44, s17
	v_mov_b32_e32 v43, s16
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[51:58], v[75:76], v[59:60], v[43:50] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[51:58], v[77:78], v[63:64], v[51:58] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[51:58], v[79:80], v[67:68], v[51:58] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[51:58], v[81:82], v[71:72], v[51:58] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v59, 16, v83
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[43:50], v[75:76], v[61:62], v[43:50] neg_lo:[1,1,0]
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v60, 16, v84
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v42, 2, v42
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v52, v52, v59 :: v_dual_lshlrev_b32 v61, 16, v85
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[43:50], v[77:78], v[65:66], v[43:50] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v55, v55, v59 :: v_dual_lshlrev_b32 v62, 16, v86
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v57, v57, v59 :: v_dual_lshlrev_b32 v64, 16, v88
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[43:50], v[79:80], v[69:70], v[43:50] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v54, v54, v59 :: v_dual_lshlrev_b32 v65, 16, v89
	v_mul_f32_e32 v51, v51, v59
	v_mul_f32_e32 v53, v53, v59
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[43:50], v[81:82], v[73:74], v[43:50] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v56, v56, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v38, v51, v62 :: v_dual_fmac_f32 v37, v53, v64
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_dual_mul_f32 v44, v60, v44 :: v_dual_lshlrev_b32 v63, 16, v87
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v43, v60, v43 :: v_dual_lshlrev_b32 v66, 16, v90
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v46, v60, v46 :: v_dual_lshlrev_b32 v67, 16, v91
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v45, v60, v45 :: v_dual_lshlrev_b32 v68, 16, v92
	v_dual_mul_f32 v58, v58, v59 :: v_dual_mul_f32 v49, v60, v49
	v_dual_mul_f32 v48, v60, v48 :: v_dual_fmac_f32 v35, v55, v66
	v_mul_f32_e32 v47, v60, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v50, v60, v50 :: v_dual_fmac_f32 v33, v57, v68
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v39, v52, v61 :: v_dual_fmac_f32 v36, v54, v63
	v_dual_fmac_f32 v34, v56, v65 :: v_dual_fmac_f32 v31, v43, v62
	v_dual_fmac_f32 v32, v58, v67 :: v_dual_fmac_f32 v27, v48, v65
	v_dual_fmac_f32 v30, v44, v61 :: v_dual_fmac_f32 v29, v46, v63
	v_fmac_f32_e32 v28, v45, v64
	v_dual_fmac_f32 v26, v47, v66 :: v_dual_fmac_f32 v25, v49, v68
	v_fmac_f32_e32 v6, v50, v67
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_2
.LBB0_6:                                ; %._crit_edge5
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp21:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 93
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
		.amdhsa_inst_pref_size 22
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.num_vgpr, 93
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 2776
; TotalNumSgprs: 53
; NumVgprs: 93
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 93
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     93
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
