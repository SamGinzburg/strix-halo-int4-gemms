	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
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
	s_ashr_i32 s30, s4, 6
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s14, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s31, s14, s30
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s31
	s_cbranch_scc1 .LBB0_8
; %bb.1:                                ; %.lr.ph8
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s15, s[0:1], 0x38
	s_load_b64 s[12:13], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v3, 1, v0
	.loc	1 258 43                        ; generate_amdgcn.py:258:43
	s_lshl_b32 s34, s3, 6
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s33, s14, 2
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v2, 4, v0
	v_and_b32_e32 v4, 15, v0
	v_dual_mov_b32 v58, 0 :: v_dual_and_b32 v5, 16, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v6, 0x70, v3
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v1, 7, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v22, v2, 16, v4
	v_lshrrev_b32_e32 v20, 3, v0
	v_lshlrev_b32_e32 v0, 3, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_or_b32 v24, v2, 1, v6
	v_dual_mov_b32 v2, 0x5410 :: v_dual_lshlrev_b32 v21, 3, v1
	v_lshlrev_b32_e32 v23, 4, v1
	v_and_b32_e32 v1, 0x78, v3
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s15, 0xff
.Ltmp12:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_lshr_b32 s3, s15, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s1, s0, 31
.Ltmp14:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s15, s15, s3
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_lshr_b32 s1, s1, 24
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s35, s15, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s1, s0, s1
	v_mov_b32_e32 v3, 0x7632
	s_ashr_i32 s36, s1, 8
	s_cmpk_gt_i32 s0, 0xff
	v_cmp_eq_u32_e64 s0, 0, v5
	s_cselect_b32 s1, -1, 0
	s_and_b32 s21, s7, 0xffff
	s_abs_i32 s7, s33
.Ltmp18:
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_or_b32_e32 v25, 32, v22
	s_cvt_f32_u32 s3, s7
	v_cndmask_b32_e64 v2, 0x1054, v2, s0
	v_cndmask_b32_e64 v3, 0x3276, v3, s0
	s_mov_b32 s16, s4
	v_rcp_iflag_f32_e32 v5, s3
	s_sub_i32 s4, 0, s7
	v_lshl_or_b32 v2, v2, 8, v2
	v_lshl_or_b32 v3, v3, 8, v3
	v_add_nc_u32_e32 v26, 0, v0
	v_add_nc_u32_e32 v27, 0, v22
	v_add3_u32 v28, 0, v4, v6
	v_and_b32_e32 v2, 0x540054, v2
	v_and_b32_e32 v3, 0x760076, v3
	v_add_nc_u32_e32 v31, v26, v0
	v_readfirstlane_b32 s3, v5
	s_mov_b32 s19, 0x31027000
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[16:17], null, s29, v22, v[1:2]
	v_lshl_or_b32 v2, v2, 4, v2
	s_mul_f32 s3, s3, 0x4f7ffffe
	v_lshl_or_b32 v3, v3, 4, v3
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s17, s5, 0xffff
	s_cvt_u32_f32 s3, s3
	v_mad_u64_u32 v[17:18], null, s29, v25, v[1:2]
	v_cndmask_b32_e64 v1, 0, 1, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s4, s4, s3
	v_and_b32_e32 v29, 0x5040504, v2
	s_mul_hi_u32 s1, s3, s4
	v_and_b32_e32 v30, 0x7060706, v3
	s_add_i32 s38, s3, s1
	v_cmp_ne_u32_e64 s1, 1, v1
	s_mov_b32 s20, s6
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s25, s11, 0xffff
	s_mov_b32 s24, s10
	s_and_b32 s13, s13, 0xffff
	s_bfe_i32 s37, s14, 0x1001d
	s_mov_b32 s39, 0x76543210
	s_mov_b32 s14, s18
	s_mov_b32 s15, s19
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_bfe_u32 v0, v47, 16, 1
	v_bfe_u32 v1, v46, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	v_cmp_o_f32_e64 s3, v46, v46
	v_bfe_u32 v3, v45, 16, 1
	v_add3_u32 v0, v47, v0, 0x7fff
	v_add3_u32 v1, v46, v1, 0x7fff
	v_bfe_u32 v4, v44, 16, 1
	v_mov_b16_e32 v2.h, 0
	v_add3_u32 v3, v45, v3, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v1.h, s3
	v_bfe_u32 v1, v43, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	v_add3_u32 v4, v44, v4, 0x7fff
	v_cmp_o_f32_e64 s3, v44, v44
	v_bfe_u32 v5, v42, 16, 1
	v_bfe_u32 v6, v41, 16, 1
	.loc	1 277 22 is_stmt 0              ; generate_amdgcn.py:277:22
	s_mul_i32 s5, s5, s29
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v1, v43, v1, 0x7fff
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_add_i32 s10, s5, s4
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s4, v43, v43
	v_cndmask_b16 v3.l, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s3
	v_add3_u32 v4, v42, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_add3_u32 v5, v41, v6, 0x7fff
	v_mov_b16_e32 v6.l, v38.h
	v_mov_b16_e32 v6.h, v2.h
	v_mov_b16_e32 v2.l, v39.h
	v_bfe_u32 v7, v40, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v1.h, s4
	v_cmp_o_f32_e64 s3, v41, v41
	v_cndmask_b16 v1.h, 0x7fff, v4.h, vcc_lo
	v_and_b32_e32 v4, 1, v6
	v_and_b32_e32 v6, 1, v2
	v_add3_u32 v7, v40, v7, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	v_mov_b16_e32 v2.l, v37.h
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s3
	v_add3_u32 v4, v38, v4, 0x7fff
	v_cmp_o_f32_e64 s4, v38, v38
	v_mov_b16_e32 v8.l, v36.h
	v_mov_b16_e32 v8.h, v2.h
	v_cndmask_b16 v5.h, 0x7fff, v7.h, vcc_lo
	v_and_b32_e32 v7, 1, v2
	v_mov_b16_e32 v2.l, v35.h
	v_add3_u32 v6, v39, v6, 0x7fff
	v_cndmask_b16 v6.l, 0x7fff, v4.h, s4
	v_and_b32_e32 v4, 1, v8
	v_mov_b16_e32 v8.l, v34.h
	v_and_b32_e32 v9, 1, v2
	v_mov_b16_e32 v10.l, v33.h
	v_mov_b16_e32 v10.h, v2.h
	v_mov_b16_e32 v2.l, v32.h
	v_cmp_o_f32_e64 s3, v39, v39
	v_add3_u32 v7, v37, v7, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_and_b32_e32 v8, 1, v8
	v_and_b32_e32 v10, 1, v10
	v_and_b32_e32 v2, 1, v2
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s3
	v_add3_u32 v4, v36, v4, 0x7fff
	v_cndmask_b16 v7.h, 0x7fff, v7.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	v_add3_u32 v8, v34, v8, 0x7fff
	v_add3_u32 v9, v35, v9, 0x7fff
	v_cmp_o_f32_e64 s3, v35, v35
	v_cmp_o_f32_e64 s4, v34, v34
	v_add3_u32 v10, v33, v10, 0x7fff
	v_add3_u32 v2, v32, v2, 0x7fff
	v_cmp_o_f32_e64 s5, v32, v32
	v_cmp_o_f32_e64 s6, v33, v33
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
	v_permlanex16_b32 v6, v0, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v1, s39, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v7, v2, v7, s0
	v_permlanex16_b32 v11, v3, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v4, s39, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v6, v8, v29
	v_perm_b32 v1, v6, v8, v30
	v_perm_b32 v2, v10, v9, v29
	v_perm_b32 v3, v10, v9, v30
	v_add_lshl_u32 v8, s10, v16, 1
	v_perm_b32 v4, v11, v5, v29
	v_perm_b32 v5, v11, v5, v30
	v_perm_b32 v6, v12, v7, v29
	v_perm_b32 v7, v12, v7, v30
	v_add_lshl_u32 v9, s10, v17, 1
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
	s_mul_hi_u32 s4, s3, s38
	s_xor_b32 s5, s5, s37
	s_mul_i32 s6, s4, s7
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	s_sub_i32 s3, s3, s6
	s_add_i32 s6, s4, 1
	s_sub_i32 s10, s3, s7
	s_cmp_ge_u32 s3, s7
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s3, s10, s3
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s3, s7
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	s_cselect_b32 s3, s6, s4
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	s_xor_b32 s3, s3, s5
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	s_sub_i32 s3, s3, s5
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s4, s3, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s3, s3, s33
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s5, s30, s4
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s3, s2, s3
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s5, s5, 4
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s22, s3
	s_abs_i32 s6, s5
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	s_cvt_f32_u32 s10, s6
	s_sub_i32 s11, 0, s6
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s10
	v_readfirstlane_b32 s10, v0
	s_mul_f32 s10, s10, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s10, s10
	s_mul_i32 s11, s11, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s11, s10, s11
	s_add_i32 s10, s10, s11
	s_xor_b32 s11, s3, s5
	s_mul_hi_u32 s10, s22, s10
	s_ashr_i32 s11, s11, 31
	s_mul_i32 s23, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s22, s22, s23
	s_add_i32 s23, s10, 1
	s_sub_i32 s26, s22, s6
	s_cmp_ge_u32 s22, s6
	s_cselect_b32 s10, s23, s10
	s_cselect_b32 s22, s26, s22
	s_add_i32 s23, s10, 1
	s_cmp_ge_u32 s22, s6
	s_cselect_b32 s6, s23, s10
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_and_b32 vcc_lo, exec_lo, s1
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_xor_b32 s6, s6, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s11
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s5, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s3, s3, s5
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s3, s3, s4
	.loc	1 222 18 is_stmt 1              ; generate_amdgcn.py:222:18
	s_lshl_b32 s4, s6, 7
	.loc	1 221 18                        ; generate_amdgcn.py:221:18
	s_lshl_b32 s5, s3, 6
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_or_b32_e32 v0, s5, v22
	v_or_b32_e32 v1, s5, v25
	v_or_b32_e32 v48, s4, v24
	v_or_b32_e32 v18, s5, v21
	v_or_b32_e32 v19, s4, v23
	v_mul_lo_u32 v49, v0, s36
	v_mul_lo_u32 v50, v1, s36
	v_or_b32_e32 v51, 2, v48
	v_or_b32_e32 v52, 4, v48
	v_or_b32_e32 v53, 6, v48
	v_or_b32_e32 v54, 8, v48
	v_or_b32_e32 v55, 10, v48
	v_or_b32_e32 v56, 12, v48
	v_or_b32_e32 v57, 14, v48
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	s_mov_b32 s6, 0
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_6 Depth 3
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, v58
	v_mov_b32_e32 v2, v58
	v_dual_mov_b32 v3, v58 :: v_dual_mov_b32 v8, 0
	v_mov_b32_e32 v4, v58
	v_mov_b32_e32 v5, v58
	v_mov_b32_e32 v6, v58
	v_mov_b32_e32 v7, v58
	v_mov_b32_e32 v9, v58
	v_mov_b32_e32 v10, v58
	v_mov_b32_e32 v11, v58
	v_mov_b32_e32 v12, v58
	v_mov_b32_e32 v13, v58
	v_mov_b32_e32 v14, v58
	v_mov_b32_e32 v15, v58
	.loc	1 256 28 is_stmt 1              ; generate_amdgcn.py:256:28
	s_lshl_b32 s10, s6, 7
	s_mov_b32 s11, -1
	s_mov_b32 s3, 0
.LBB0_6:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_5 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 258 26 is_stmt 1              ; generate_amdgcn.py:258:26
	s_or_b32 s3, s3, s10
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_mov_b32 s22, s18
	.loc	1 258 26                        ; generate_amdgcn.py:258:26
	s_add_i32 s3, s3, s34
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_mov_b32 s23, s19
	.loc	1 258 26                        ; generate_amdgcn.py:258:26
	v_or_b32_e32 v61, s3, v20
	.loc	1 259 56                        ; generate_amdgcn.py:259:56
	v_subrev_nc_u32_e32 v62, s10, v61
	.loc	1 263 38                        ; generate_amdgcn.py:263:38
	v_mad_u64_u32 v[59:60], null, v61, s28, v[18:19]
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e32 vcc_lo, s35, v61
	.loc	1 270 38                        ; generate_amdgcn.py:270:38
	v_mad_u64_u32 v[60:61], null, v61, s29, v[19:20]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 259 55                        ; generate_amdgcn.py:259:55
	v_cmp_gt_i32_e64 s3, 0x80, v62
	.loc	1 259 30 is_stmt 0              ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s3
	s_mov_b32 s3, 64
	.loc	1 263 30 is_stmt 1              ; generate_amdgcn.py:263:30
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	v_cndmask_b32_e32 v61, 0x80000000, v60, vcc_lo
	.loc	1 257 17                        ; generate_amdgcn.py:257:17
	s_and_b32 vcc_lo, exec_lo, s11
	s_mov_b32 s11, 0
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	buffer_load_b64 v[59:60], v59, s[16:19], 0 offen
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	buffer_load_b128 v[123:126], v61, s[20:23], 0 offen
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b64 v26, v[59:60]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v127, v27 offset:448
	ds_load_u8 v128, v27 offset:384
	ds_load_u8 v129, v27 offset:320
	ds_load_u8 v130, v27 offset:256
	ds_load_u8 v118, v27 offset:480
	ds_load_u8 v120, v27 offset:416
	ds_load_u8 v121, v27 offset:352
	ds_load_u8 v122, v27 offset:288
	ds_load_u8 v131, v27 offset:192
	ds_load_u8 v132, v27 offset:128
	ds_load_u8 v133, v27 offset:64
	ds_load_u8 v110, v27 offset:224
	ds_load_u8 v112, v27 offset:160
	ds_load_u8 v115, v27 offset:96
	ds_load_u8 v134, v27
	ds_load_u8 v116, v27 offset:32
	ds_load_u8 v135, v27 offset:704
	ds_load_u8 v136, v27 offset:640
	ds_load_u8 v137, v27 offset:576
	ds_load_u8 v138, v27 offset:512
	ds_load_u8 v103, v27 offset:736
	ds_load_u8 v104, v27 offset:672
	ds_load_u8 v107, v27 offset:608
	ds_load_u8 v108, v27 offset:544
	ds_load_u8 v139, v27 offset:960
	ds_load_u8 v140, v27 offset:896
	ds_load_u8 v141, v27 offset:832
	ds_load_u8 v142, v27 offset:768
	ds_load_u8 v113, v27 offset:992
	ds_load_u8 v114, v27 offset:928
	ds_load_u8 v117, v27 offset:864
	ds_load_u8 v119, v27 offset:800
	ds_load_u8 v143, v27 offset:1216
	ds_load_u8 v144, v27 offset:1152
	ds_load_u8 v145, v27 offset:1088
	ds_load_u8 v146, v27 offset:1024
	ds_load_u8 v93, v27 offset:1248
	ds_load_u8 v94, v27 offset:1184
	ds_load_u8 v97, v27 offset:1120
	ds_load_u8 v98, v27 offset:1056
	ds_load_u8 v147, v27 offset:1472
	ds_load_u8 v148, v27 offset:1408
	ds_load_u8 v149, v27 offset:1344
	ds_load_u8 v150, v27 offset:1280
	ds_load_u8 v105, v27 offset:1504
	ds_load_u8 v106, v27 offset:1440
	ds_load_u8 v109, v27 offset:1376
	ds_load_u8 v111, v27 offset:1312
	ds_load_u8 v151, v27 offset:1728
	ds_load_u8 v152, v27 offset:1664
	ds_load_u8 v153, v27 offset:1600
	ds_load_u8 v154, v27 offset:1536
	ds_load_u8 v87, v27 offset:1760
	ds_load_u8 v88, v27 offset:1696
	ds_load_u8 v89, v27 offset:1632
	ds_load_u8 v90, v27 offset:1568
	ds_load_u8 v155, v27 offset:1984
	ds_load_u8 v156, v27 offset:1920
	ds_load_u8 v157, v27 offset:1856
	ds_load_u8 v158, v27 offset:1792
	ds_load_u8 v99, v27 offset:2016
	ds_load_u8 v100, v27 offset:1952
	ds_load_u8 v101, v27 offset:1888
	ds_load_u8 v102, v27 offset:1824
	ds_load_u8 v159, v27 offset:2240
	ds_load_u8 v160, v27 offset:2176
	ds_load_u8 v161, v27 offset:2112
	ds_load_u8 v162, v27 offset:2048
	ds_load_u8 v83, v27 offset:2272
	ds_load_u8 v84, v27 offset:2208
	ds_load_u8 v85, v27 offset:2144
	ds_load_u8 v86, v27 offset:2080
	ds_load_u8 v163, v27 offset:2496
	ds_load_u8 v164, v27 offset:2432
	ds_load_u8 v165, v27 offset:2368
	ds_load_u8 v166, v27 offset:2304
	ds_load_u8 v91, v27 offset:2528
	ds_load_u8 v92, v27 offset:2464
	ds_load_u8 v95, v27 offset:2400
	ds_load_u8 v96, v27 offset:2336
	ds_load_u8 v167, v27 offset:2752
	ds_load_u8 v168, v27 offset:2688
	ds_load_u8 v169, v27 offset:2624
	ds_load_u8 v170, v27 offset:2560
	ds_load_u8 v59, v27 offset:2784
	ds_load_u8 v60, v27 offset:2720
	ds_load_u8 v61, v27 offset:2656
	ds_load_u8 v62, v27 offset:2592
	ds_load_u8 v171, v27 offset:3008
	ds_load_u8 v172, v27 offset:2944
	ds_load_u8 v173, v27 offset:2880
	ds_load_u8 v174, v27 offset:2816
	ds_load_u8 v63, v27 offset:3040
	ds_load_u8 v64, v27 offset:2976
	ds_load_u8 v66, v27 offset:2912
	ds_load_u8 v68, v27 offset:2848
	ds_load_u8 v175, v27 offset:3264
	ds_load_u8 v176, v27 offset:3200
	ds_load_u8 v177, v27 offset:3136
	ds_load_u8 v178, v27 offset:3072
	ds_load_u8 v65, v27 offset:3296
	ds_load_u8 v67, v27 offset:3232
	ds_load_u8 v69, v27 offset:3168
	ds_load_u8 v70, v27 offset:3104
	ds_load_u8 v179, v27 offset:3520
	ds_load_u8 v180, v27 offset:3456
	ds_load_u8 v181, v27 offset:3392
	ds_load_u8 v182, v27 offset:3328
	ds_load_u8 v71, v27 offset:3552
	ds_load_u8 v72, v27 offset:3488
	ds_load_u8 v74, v27 offset:3424
	ds_load_u8 v76, v27 offset:3360
	ds_load_u8 v183, v27 offset:3776
	ds_load_u8 v184, v27 offset:3712
	ds_load_u8 v185, v27 offset:3648
	ds_load_u8 v186, v27 offset:3584
	ds_load_u8 v73, v27 offset:3808
	ds_load_u8 v75, v27 offset:3744
	ds_load_u8 v77, v27 offset:3680
	ds_load_u8 v78, v27 offset:3616
	ds_load_u8 v187, v27 offset:4032
	ds_load_u8 v188, v27 offset:3968
	ds_load_u8 v189, v27 offset:3904
	ds_load_u8 v190, v27 offset:3840
	ds_load_u8 v79, v27 offset:4064
	ds_load_u8 v80, v27 offset:4000
	ds_load_u8 v81, v27 offset:3936
	ds_load_u8 v82, v27 offset:3872
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v31, v[123:126]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v28 offset:128
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v28 offset:384
	v_perm_b32 v133, v134, v133, 0xc0c0004
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v28 offset:1664
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v28 offset:1920
	v_perm_b32 v137, v138, v137, 0xc0c0004
	v_perm_b32 v135, v136, v135, 0xc0c0004
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v28 offset:1152
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v28 offset:1408
	v_perm_b32 v145, v146, v145, 0xc0c0004
	ds_load_u8 v146, v28 offset:1280
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v28 offset:1024
	ds_load_u8 v134, v28 offset:256
	v_perm_b32 v165, v166, v165, 0xc0c0004
	ds_load_u8 v166, v28 offset:2176
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v28 offset:2432
	v_perm_b32 v161, v162, v161, 0xc0c0004
	ds_load_u8 v162, v28 offset:2304
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v28 offset:2048
	ds_load_u8 v138, v28 offset:1792
	ds_load_u8 v136, v28 offset:1536
	ds_load_u8 v123, v28 offset:640
	ds_load_u8 v124, v28 offset:896
	ds_load_u8 v125, v28 offset:768
	ds_load_u8 v126, v28 offset:512
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v28
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v28 offset:6272
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v28 offset:6400
	v_perm_b32 v191, v84, v83, 0xc0c0004
	ds_load_u8 v83, v28 offset:6528
	v_perm_b32 v157, v158, v157, 0xc0c0004
	ds_load_u8 v158, v28 offset:2688
	v_perm_b32 v155, v156, v155, 0xc0c0004
	ds_load_u8 v156, v28 offset:2944
	v_perm_b32 v153, v154, v153, 0xc0c0004
	v_perm_b32 v151, v152, v151, 0xc0c0004
	v_perm_b32 v181, v182, v181, 0xc0c0004
	ds_load_u8 v182, v28 offset:3200
	v_perm_b32 v179, v180, v179, 0xc0c0004
	ds_load_u8 v180, v28 offset:3456
	v_perm_b32 v177, v178, v177, 0xc0c0004
	ds_load_u8 v178, v28 offset:3328
	v_perm_b32 v175, v176, v175, 0xc0c0004
	ds_load_u8 v176, v28 offset:3072
	ds_load_u8 v154, v28 offset:2816
	ds_load_u8 v152, v28 offset:2560
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v28 offset:6784
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v28 offset:7040
	v_perm_b32 v89, v90, v89, 0xc0c0004
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v128, v134, v128, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v134, v136, v142, 0xc0c0004
	ds_load_u8 v136, v28 offset:7552
	v_perm_b32 v138, v138, v140, 0xc0c0004
	ds_load_u8 v140, v28 offset:7296
	v_perm_b32 v142, v144, v150, 0xc0c0004
	ds_load_u8 v144, v28 offset:7424
	v_perm_b32 v146, v146, v148, 0xc0c0004
	ds_load_u8 v148, v28 offset:7168
	ds_load_u8 v90, v28 offset:6912
	ds_load_u8 v88, v28 offset:6656
	v_perm_b32 v173, v174, v173, 0xc0c0004
	ds_load_u8 v174, v28 offset:3712
	v_perm_b32 v171, v172, v171, 0xc0c0004
	ds_load_u8 v172, v28 offset:3968
	v_perm_b32 v169, v170, v169, 0xc0c0004
	v_perm_b32 v167, v168, v167, 0xc0c0004
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v28 offset:4224
	v_perm_b32 v118, v120, v118, 0xc0c0004
	ds_load_u8 v120, v28 offset:4480
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v28 offset:4352
	v_perm_b32 v110, v112, v110, 0xc0c0004
	ds_load_u8 v112, v28 offset:4096
	ds_load_u8 v170, v28 offset:3840
	ds_load_u8 v168, v28 offset:3584
	v_perm_b32 v189, v190, v189, 0xc0c0004
	ds_load_u8 v190, v28 offset:4736
	v_perm_b32 v187, v188, v187, 0xc0c0004
	ds_load_u8 v188, v28 offset:4992
	v_perm_b32 v185, v186, v185, 0xc0c0004
	v_perm_b32 v183, v184, v183, 0xc0c0004
	v_perm_b32 v109, v111, v109, 0xc0c0004
	ds_load_u8 v111, v28 offset:5248
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v28 offset:5504
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v28 offset:5376
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v28 offset:5120
	ds_load_u8 v186, v28 offset:4864
	ds_load_u8 v184, v28 offset:4608
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v84, v126, v123, 0xc0c0004
	v_perm_b32 v124, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v126, v132, v130, 0xc0c0004
	v_perm_b32 v117, v119, v117, 0xc0c0004
	ds_load_u8 v119, v28 offset:5760
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v28 offset:5888
	v_perm_b32 v107, v108, v107, 0xc0c0004
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v28 offset:6016
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v28 offset:6144
	ds_load_u8 v108, v28 offset:5632
	v_perm_b32 v194, v60, v59, 0xc0c0004
	v_perm_b32 v195, v76, v74, 0xc0c0004
	v_perm_b32 v202, v75, v73, 0xc0c0004
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v92, v92, v83, 0xc0c0004
	v_lshl_or_b32 v60, v127, 16, v129
	v_lshl_or_b32 v59, v131, 16, v133
	v_lshl_or_b32 v76, v118, 16, v121
	v_lshl_or_b32 v75, v110, 16, v115
	v_lshl_or_b32 v84, v124, 16, v84
	v_lshl_or_b32 v83, v128, 16, v126
	v_perm_b32 v193, v62, v61, 0xc0c0004
	v_perm_b32 v199, v82, v81, 0xc0c0004
	v_perm_b32 v201, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v152, v152, v158, 0xc0c0004
	v_perm_b32 v154, v154, v156, 0xc0c0004
	v_perm_b32 v156, v160, v166, 0xc0c0004
	v_perm_b32 v158, v162, v164, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v102, v88, v102, 0xc0c0004
	v_lshl_or_b32 v62, v139, 16, v141
	v_lshl_or_b32 v61, v135, 16, v137
	v_lshl_or_b32 v78, v113, 16, v117
	v_lshl_or_b32 v77, v103, 16, v107
	v_lshl_or_b32 v81, v87, 16, v89
	v_lshl_or_b32 v88, v138, 16, v134
	v_lshl_or_b32 v87, v146, 16, v142
	v_wmma_i32_16x16x16_iu4 v[0:7], v[83:84], v[59:60], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[83:84], v[75:76], v[8:15] neg_lo:[1,1,0]
	ds_load_u8 v123, v28 offset:7808
	ds_load_u8 v125, v28 offset:7936
	ds_load_u8 v132, v28 offset:8064
	ds_load_u8 v130, v28 offset:7680
	v_perm_b32 v192, v64, v63, 0xc0c0004
	v_perm_b32 v200, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v160, v168, v174, 0xc0c0004
	v_perm_b32 v162, v170, v172, 0xc0c0004
	v_perm_b32 v164, v176, v182, 0xc0c0004
	v_perm_b32 v166, v178, v180, 0xc0c0004
	v_lshl_or_b32 v64, v147, 16, v149
	v_lshl_or_b32 v63, v143, 16, v145
	v_lshl_or_b32 v80, v105, 16, v109
	v_lshl_or_b32 v79, v93, 16, v97
	v_lshl_or_b32 v76, v154, 16, v152
	v_lshl_or_b32 v75, v158, 16, v156
	v_wmma_i32_16x16x16_iu4 v[0:7], v[87:88], v[61:62], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[87:88], v[77:78], v[8:15] neg_lo:[1,1,0]
	v_perm_b32 v150, v68, v66, 0xc0c0004
	v_perm_b32 v198, v67, v65, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v168, v184, v190, 0xc0c0004
	v_perm_b32 v170, v186, v188, 0xc0c0004
	v_perm_b32 v112, v112, v122, 0xc0c0004
	v_perm_b32 v116, v116, v120, 0xc0c0004
	v_lshl_or_b32 v66, v155, 16, v157
	v_lshl_or_b32 v65, v151, 16, v153
	v_lshl_or_b32 v82, v99, 16, v101
	v_lshl_or_b32 v62, v162, 16, v160
	v_lshl_or_b32 v61, v166, 16, v164
	v_wmma_i32_16x16x16_iu4 v[0:7], v[75:76], v[63:64], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[75:76], v[79:80], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v108, v108, v119, 0xc0c0004
	v_perm_b32 v104, v114, v104, 0xc0c0004
	v_perm_b32 v94, v94, v111, 0xc0c0004
	v_perm_b32 v98, v98, v106, 0xc0c0004
	v_perm_b32 v96, v86, v96, 0xc0c0004
	v_lshl_or_b32 v68, v163, 16, v165
	v_lshl_or_b32 v67, v159, 16, v161
	v_lshl_or_b32 v86, v91, 16, v95
	v_lshl_or_b32 v85, v191, 16, v85
	v_lshl_or_b32 v76, v170, 16, v168
	v_lshl_or_b32 v75, v116, 16, v112
	v_wmma_i32_16x16x16_iu4 v[0:7], v[61:62], v[65:66], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[61:62], v[81:82], v[8:15] neg_lo:[1,1,0]
	v_perm_b32 v196, v72, v71, 0xc0c0004
	v_perm_b32 v197, v70, v69, 0xc0c0004
	v_perm_b32 v90, v90, v100, 0xc0c0004
	v_lshl_or_b32 v70, v171, 16, v173
	v_lshl_or_b32 v69, v167, 16, v169
	v_lshl_or_b32 v60, v192, 16, v150
	v_lshl_or_b32 v59, v194, 16, v193
	v_lshl_or_b32 v65, v104, 16, v108
	v_lshl_or_b32 v64, v98, 16, v94
	v_wmma_i32_16x16x16_iu4 v[0:7], v[75:76], v[67:68], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[75:76], v[85:86], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v130, v123, 0xc0c0004
	v_perm_b32 v106, v125, v132, 0xc0c0004
	v_perm_b32 v111, v148, v140, 0xc0c0004
	v_perm_b32 v114, v144, v136, 0xc0c0004
	v_lshl_or_b32 v72, v179, 16, v181
	v_lshl_or_b32 v71, v175, 16, v177
	v_lshl_or_b32 v63, v196, 16, v195
	v_lshl_or_b32 v62, v198, 16, v197
	v_lshl_or_b32 v67, v90, 16, v102
	v_lshl_or_b32 v66, v92, 16, v96
	v_wmma_i32_16x16x16_iu4 v[0:7], v[64:65], v[69:70], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[64:65], v[59:60], v[8:15] neg_lo:[1,1,0]
	v_lshl_or_b32 v74, v187, 16, v189
	v_lshl_or_b32 v73, v183, 16, v185
	v_lshl_or_b32 v61, v200, 16, v199
	v_lshl_or_b32 v60, v202, 16, v201
	v_lshl_or_b32 v65, v106, 16, v100
	v_lshl_or_b32 v64, v114, 16, v111
	v_wmma_i32_16x16x16_iu4 v[0:7], v[66:67], v[71:72], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[66:67], v[62:63], v[8:15] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[64:65], v[73:74], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[64:65], v[60:61], v[8:15] neg_lo:[1,1,0]
	.loc	1 257 17                        ; generate_amdgcn.py:257:17
	s_cbranch_vccnz .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=2
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	v_add_lshl_u32 v59, v49, s6, 1
	v_add_lshl_u32 v60, v50, s6, 1
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	.loc	1 273 40                        ; generate_amdgcn.py:273:40
	s_mul_i32 s3, s6, s29
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_clause 0x1
	buffer_load_u16 v59, v59, s[8:11], 0 offen
	buffer_load_u16 v60, v60, s[8:11], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v62, v51, s3, 1
	v_add_lshl_u32 v61, v48, s3, 1
	v_add_lshl_u32 v64, v53, s3, 1
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	v_add_lshl_u32 v63, v52, s3, 1
	v_add_lshl_u32 v65, v54, s3, 1
	v_add_lshl_u32 v66, v55, s3, 1
	v_add_lshl_u32 v67, v56, s3, 1
	v_add_lshl_u32 v68, v57, s3, 1
	s_clause 0x7
	buffer_load_u16 v62, v62, s[24:27], 0 offen
	buffer_load_u16 v61, v61, s[24:27], 0 offen
	buffer_load_u16 v64, v64, s[24:27], 0 offen
	buffer_load_u16 v63, v63, s[24:27], 0 offen
	buffer_load_u16 v66, v66, s[24:27], 0 offen
	buffer_load_u16 v65, v65, s[24:27], 0 offen
	buffer_load_u16 v68, v68, s[24:27], 0 offen
	buffer_load_u16 v67, v67, s[24:27], 0 offen
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
	s_add_i32 s6, s6, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	s_cmp_lg_u32 s6, s36
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v60, 16, v60
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v8, v60, v8 :: v_dual_lshlrev_b32 v59, 16, v59
	s_waitcnt vmcnt(7)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v3, v3, v59 :: v_dual_lshlrev_b32 v62, 16, v62
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v0, v0, v59 :: v_dual_lshlrev_b32 v61, 16, v61
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v5, v5, v59 :: v_dual_lshlrev_b32 v64, 16, v64
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v7, v7, v59 :: v_dual_lshlrev_b32 v66, 16, v66
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v2, v2, v59 :: v_dual_lshlrev_b32 v65, 16, v65
	v_mul_f32_e32 v1, v1, v59
	v_dual_mul_f32 v10, v60, v10 :: v_dual_lshlrev_b32 v63, 16, v63
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v9, v60, v9 :: v_dual_lshlrev_b32 v68, 16, v68
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v12, v60, v12 :: v_dual_lshlrev_b32 v67, 16, v67
	v_mul_f32_e32 v4, v4, v59
	v_dual_mul_f32 v6, v6, v59 :: v_dual_mul_f32 v13, v60, v13
	v_dual_mul_f32 v11, v60, v11 :: v_dual_fmac_f32 v46, v1, v62
	v_dual_mul_f32 v15, v60, v15 :: v_dual_fmac_f32 v44, v3, v64
	v_dual_mul_f32 v14, v60, v14 :: v_dual_fmac_f32 v45, v2, v63
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v47, v0, v61 :: v_dual_fmac_f32 v42, v5, v66
	v_dual_fmac_f32 v41, v6, v67 :: v_dual_fmac_f32 v38, v8, v61
	v_dual_fmac_f32 v40, v7, v68 :: v_dual_fmac_f32 v39, v9, v62
	v_dual_fmac_f32 v43, v4, v65 :: v_dual_fmac_f32 v36, v10, v63
	v_dual_fmac_f32 v37, v11, v64 :: v_dual_fmac_f32 v34, v12, v65
	v_fmac_f32_e32 v35, v13, v66
	v_dual_fmac_f32 v33, v14, v67 :: v_dual_fmac_f32 v32, v15, v68
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_2
.LBB0_8:                                ; %._crit_edge9
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 203
		.amdhsa_next_free_sgpr 40
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
		.amdhsa_inst_pref_size 46
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.num_vgpr, 203
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5832
; TotalNumSgprs: 42
; NumVgprs: 203
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 203
; Occupancy: 7
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     203
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
