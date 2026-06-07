	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
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
	s_add_i32 s4, s34, 15
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
	s_lshr_b32 s6, s6, 28
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
	s_ashr_i32 s33, s4, 4
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
; %bb.1:                                ; %.lr.ph6
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s5, s[0:1], 0x38
	s_load_b64 s[24:25], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_and_b32_e32 v4, 16, v0
	v_lshlrev_b32_e32 v1, 4, v0
	v_bfe_i32 v5, v0, 7, 1
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v7, 15, v0
	v_and_b32_e32 v2, 0x7f, v0
	v_lshlrev_b32_e32 v3, 2, v0
	v_and_b32_e32 v10, 0x70, v1
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v1, 1, v4
	v_and_b32_e32 v5, 0x88, v5
	v_bfe_i32 v9, v0, 3, 1
	v_bfe_i32 v11, v0, 5, 1
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s44, s4, 2
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_bfe_u32 v6, v0, 4, 4
	v_xor_b32_e32 v5, v5, v2
	v_mad_u64_u32 v[1:2], null, s35, v7, v[1:2]
	v_and_or_b32 v20, 0x88, v9, v10
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s5, 31
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
	s_lshr_b32 s1, s1, 27
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s45, s5, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s1, s0, s1
	v_and_b32_e32 v10, 0x88, v11
	s_ashr_i32 s46, s1, 5
	s_cmp_gt_i32 s0, 31
	v_mov_b32_e32 v2, 0x5410
	v_and_b32_e32 v9, 0x77c, v3
	s_cselect_b32 s5, -1, 0
	s_mov_b32 s36, s10
	s_abs_i32 s10, s44
.Ltmp18:
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v8, 2, v0
	s_cvt_f32_u32 s1, s10
	v_xor_b32_e32 v22, v10, v9
	v_mov_b32_e32 v9, 0x7632
	v_cmp_eq_u32_e64 s0, 0, v4
	v_rcp_iflag_f32_e32 v14, s1
	v_and_b32_e32 v0, 0x1e0, v0
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s3, s3, 4
	v_xor_b32_e32 v21, 8, v20
	v_cndmask_b32_e64 v2, 0x1054, v2, s0
	v_cndmask_b32_e64 v11, 0x3276, v9, s0
	v_lshrrev_b32_e32 v18, 3, v4
	v_cndmask_b32_e64 v4, 0, 1, s5
	s_and_b32 s37, s11, 0xffff
	v_lshl_or_b32 v2, v2, 8, v2
	v_readfirstlane_b32 s1, v14
	v_lshl_or_b32 v15, v11, 8, v11
	v_add_nc_u32_e32 v9, 16, v1
	v_add_nc_u32_e32 v10, 32, v1
	v_and_b32_e32 v2, 0x540054, v2
	s_mul_f32 s1, s1, 0x4f7ffffe
	v_and_b32_e32 v16, 0x760076, v15
	v_add_nc_u32_e32 v11, 48, v1
	v_add_nc_u32_e32 v12, 64, v1
	v_lshl_or_b32 v2, v2, 4, v2
	s_cvt_u32_f32 s6, s1
	s_sub_i32 s1, 0, s10
	v_lshl_or_b32 v17, v16, 4, v16
	v_add_nc_u32_e32 v13, 0x50, v1
	v_and_b32_e32 v16, 0x5040504, v2
	s_mul_i32 s7, s1, s6
	v_cmp_eq_u32_e64 s1, 0, v0
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_and_or_b32 v0, v3, 12, s3
	v_or_b32_e32 v2, s3, v7
	v_add_nc_u32_e32 v14, 0x60, v1
	v_add_nc_u32_e32 v15, 0x70, v1
	v_and_b32_e32 v17, 0x7060706, v17
	s_bfe_i32 s11, s4, 0x1001d
	v_cmp_ne_u32_e64 s3, 1, v4
	v_cmp_gt_i32_e64 s4, 16, v0
	v_cmp_gt_i32_e64 s5, 16, v2
	v_add_nc_u32_e32 v19, 0, v5
	v_add_nc_u32_e32 v20, 0, v20
	v_add_nc_u32_e32 v21, 0, v21
	v_add_nc_u32_e32 v22, 0, v22
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mul_hi_u32 s7, s6, s7
	s_mov_b32 s28, s8
	s_and_b32 s29, s9, 0xffff
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_mov_b32 s16, 0
	s_and_b32 s25, s25, 0xffff
	s_add_i32 s47, s6, s7
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s48, s35, 1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_lshl_b32 s49, s46, 1
	s_mov_b32 s50, 0x76543210
	s_mov_b32 s26, s30
	s_mov_b32 s27, s31
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v3.h, 0
	v_mov_b16_e32 v3.l, v85.h
	v_mov_b16_e32 v4.l, v84.h
	v_mov_b16_e32 v87.l, v82.h
	v_cmp_o_f32_e32 vcc_lo, v85, v85
	v_mov_b16_e32 v4.h, v3.h
	v_and_b32_e32 v86, 1, v3
	v_mov_b16_e32 v3.l, v83.h
	v_mov_b16_e32 v87.h, v3.h
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s6, s7, 7
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v4, 1, v4
	v_add3_u32 v86, v85, v86, 0x7fff
	.loc	1 277 22 is_stmt 0              ; generate_amdgcn.py:277:22
	s_mul_i32 s14, s8, s35
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v85, 1, v87
	v_and_b32_e32 v87, 1, v3
	v_mov_b16_e32 v3.l, v81.h
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_add_i32 s14, s14, s6
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v88, v84, v4, 0x7fff
	v_cndmask_b16 v4.h, 0x7fff, v86.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v84, v84
	v_add3_u32 v84, v82, v85, 0x7fff
	v_add3_u32 v85, v83, v87, 0x7fff
	v_cmp_o_f32_e64 s6, v83, v83
	v_cmp_o_f32_e64 s7, v82, v82
	v_mov_b16_e32 v83.l, v80.h
	v_mov_b16_e32 v83.h, v3.h
	v_and_b32_e32 v86, 1, v3
	v_cndmask_b16 v4.l, 0x7fff, v88.h, vcc_lo
	v_cndmask_b16 v82.h, 0x7fff, v85.h, s6
	v_cndmask_b16 v82.l, 0x7fff, v84.h, s7
	v_and_b32_e32 v83, 1, v83
	v_add3_u32 v84, v81, v86, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v81, v81
	v_mov_b16_e32 v3.l, v79.h
	v_mov_b16_e32 v85.l, v78.h
	v_mov_b16_e32 v85.h, v3.h
	v_add3_u32 v83, v80, v83, 0x7fff
	v_cndmask_b16 v81.h, 0x7fff, v84.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v80, v80
	v_and_b32_e32 v80, 1, v3
	v_and_b32_e32 v84, 1, v85
	v_mov_b16_e32 v85.l, v76.h
	v_mov_b16_e32 v3.l, v77.h
	v_cmp_o_f32_e64 s6, v79, v79
	v_add3_u32 v80, v79, v80, 0x7fff
	v_cndmask_b16 v81.l, 0x7fff, v83.h, vcc_lo
	v_and_b32_e32 v83, 1, v85
	v_and_b32_e32 v85, 1, v3
	v_mov_b16_e32 v3.l, v75.h
	v_add3_u32 v84, v78, v84, 0x7fff
	v_cndmask_b16 v79.h, 0x7fff, v80.h, s6
	v_cmp_o_f32_e32 vcc_lo, v78, v78
	v_add3_u32 v78, v76, v83, 0x7fff
	v_add3_u32 v80, v77, v85, 0x7fff
	v_cmp_o_f32_e64 s6, v77, v77
	v_cmp_o_f32_e64 s7, v76, v76
	v_mov_b16_e32 v77.l, v74.h
	v_mov_b16_e32 v77.h, v3.h
	v_and_b32_e32 v83, 1, v3
	v_cndmask_b16 v79.l, 0x7fff, v84.h, vcc_lo
	v_cndmask_b16 v76.h, 0x7fff, v80.h, s6
	v_cndmask_b16 v76.l, 0x7fff, v78.h, s7
	v_and_b32_e32 v77, 1, v77
	v_add3_u32 v78, v75, v83, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v75, v75
	v_mov_b16_e32 v3.l, v73.h
	v_mov_b16_e32 v80.l, v72.h
	v_mov_b16_e32 v80.h, v3.h
	v_add3_u32 v77, v74, v77, 0x7fff
	v_cndmask_b16 v75.h, 0x7fff, v78.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	v_and_b32_e32 v74, 1, v3
	v_and_b32_e32 v78, 1, v80
	v_mov_b16_e32 v80.l, v70.h
	v_mov_b16_e32 v3.l, v71.h
	v_cmp_o_f32_e64 s6, v73, v73
	v_add3_u32 v74, v73, v74, 0x7fff
	v_cndmask_b16 v75.l, 0x7fff, v77.h, vcc_lo
	v_and_b32_e32 v77, 1, v80
	v_and_b32_e32 v80, 1, v3
	v_mov_b16_e32 v3.l, v69.h
	v_add3_u32 v78, v72, v78, 0x7fff
	v_cndmask_b16 v73.h, 0x7fff, v74.h, s6
	v_cmp_o_f32_e32 vcc_lo, v72, v72
	v_add3_u32 v72, v70, v77, 0x7fff
	v_add3_u32 v74, v71, v80, 0x7fff
	v_cmp_o_f32_e64 s6, v71, v71
	v_cmp_o_f32_e64 s7, v70, v70
	v_mov_b16_e32 v71.l, v68.h
	v_mov_b16_e32 v71.h, v3.h
	v_and_b32_e32 v77, 1, v3
	v_cndmask_b16 v73.l, 0x7fff, v78.h, vcc_lo
	v_cndmask_b16 v70.l, 0x7fff, v72.h, s7
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	v_and_b32_e32 v71, 1, v71
	v_add3_u32 v72, v69, v77, 0x7fff
	v_mov_b16_e32 v3.l, v67.h
	v_cndmask_b16 v70.h, 0x7fff, v74.h, s6
	v_mov_b16_e32 v69.l, v66.h
	v_mov_b16_e32 v69.h, v3.h
	v_add3_u32 v71, v68, v71, 0x7fff
	v_cndmask_b16 v72.h, 0x7fff, v72.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	v_and_b32_e32 v68, 1, v3
	v_mov_b16_e32 v74.l, v64.h
	v_mov_b16_e32 v74.h, v3.h
	v_mov_b16_e32 v3.l, v65.h
	v_and_b32_e32 v69, 1, v69
	v_add3_u32 v68, v67, v68, 0x7fff
	v_cmp_o_f32_e64 s6, v67, v67
	v_cndmask_b16 v72.l, 0x7fff, v71.h, vcc_lo
	v_and_b32_e32 v67, 1, v74
	v_and_b32_e32 v71, 1, v3
	v_mov_b16_e32 v3.l, v63.h
	v_add3_u32 v69, v66, v69, 0x7fff
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s6
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_add3_u32 v66, v64, v67, 0x7fff
	v_add3_u32 v67, v65, v71, 0x7fff
	v_cmp_o_f32_e64 s6, v65, v65
	v_cmp_o_f32_e64 s7, v64, v64
	v_mov_b16_e32 v64.l, v62.h
	v_mov_b16_e32 v64.h, v3.h
	v_and_b32_e32 v65, 1, v3
	v_cndmask_b16 v68.l, 0x7fff, v69.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v63, v63
	v_mov_b16_e32 v3.l, v61.h
	v_and_b32_e32 v64, 1, v64
	v_add3_u32 v65, v63, v65, 0x7fff
	v_cndmask_b16 v67.l, 0x7fff, v66.h, s7
	v_mov_b16_e32 v63.l, v60.h
	v_mov_b16_e32 v63.h, v3.h
	v_add3_u32 v64, v62, v64, 0x7fff
	v_cndmask_b16 v65.h, 0x7fff, v65.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v62, v62
	v_and_b32_e32 v62, 1, v3
	v_mov_b16_e32 v66.l, v59.h
	v_mov_b16_e32 v66.h, v3.h
	v_mov_b16_e32 v3.l, v58.h
	v_cndmask_b16 v67.h, 0x7fff, v67.h, s6
	v_and_b32_e32 v63, 1, v63
	v_add3_u32 v62, v61, v62, 0x7fff
	v_cmp_o_f32_e64 s6, v61, v61
	v_cndmask_b16 v65.l, 0x7fff, v64.h, vcc_lo
	v_and_b32_e32 v61, 1, v66
	v_and_b32_e32 v64, 1, v3
	v_mov_b16_e32 v3.l, v57.h
	v_add3_u32 v63, v60, v63, 0x7fff
	v_cndmask_b16 v62.h, 0x7fff, v62.h, s6
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	v_add3_u32 v60, v59, v61, 0x7fff
	v_add3_u32 v61, v58, v64, 0x7fff
	v_cmp_o_f32_e64 s6, v58, v58
	v_cmp_o_f32_e64 s7, v59, v59
	v_mov_b16_e32 v58.l, v56.h
	v_mov_b16_e32 v58.h, v3.h
	v_and_b32_e32 v59, 1, v3
	v_cndmask_b16 v62.l, 0x7fff, v63.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v57, v57
	v_mov_b16_e32 v3.l, v55.h
	v_and_b32_e32 v58, 1, v58
	v_add3_u32 v59, v57, v59, 0x7fff
	v_cndmask_b16 v61.l, 0x7fff, v60.h, s7
	v_mov_b16_e32 v57.l, v54.h
	v_mov_b16_e32 v57.h, v3.h
	v_add3_u32 v58, v56, v58, 0x7fff
	v_cndmask_b16 v59.h, 0x7fff, v59.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	v_and_b32_e32 v56, 1, v3
	v_mov_b16_e32 v60.l, v53.h
	v_mov_b16_e32 v60.h, v3.h
	v_mov_b16_e32 v3.l, v52.h
	v_cndmask_b16 v61.h, 0x7fff, v61.h, s6
	v_and_b32_e32 v57, 1, v57
	v_add3_u32 v56, v55, v56, 0x7fff
	v_cmp_o_f32_e64 s6, v55, v55
	v_cndmask_b16 v59.l, 0x7fff, v58.h, vcc_lo
	v_and_b32_e32 v55, 1, v60
	v_and_b32_e32 v58, 1, v3
	v_mov_b16_e32 v3.l, v51.h
	v_add3_u32 v57, v54, v57, 0x7fff
	v_cndmask_b16 v56.h, 0x7fff, v56.h, s6
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	v_add3_u32 v54, v53, v55, 0x7fff
	v_add3_u32 v55, v52, v58, 0x7fff
	v_cmp_o_f32_e64 s6, v52, v52
	v_cmp_o_f32_e64 s7, v53, v53
	v_mov_b16_e32 v52.l, v50.h
	v_mov_b16_e32 v52.h, v3.h
	v_and_b32_e32 v53, 1, v3
	v_cndmask_b16 v56.l, 0x7fff, v57.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	v_mov_b16_e32 v3.l, v49.h
	v_and_b32_e32 v52, 1, v52
	v_add3_u32 v53, v51, v53, 0x7fff
	v_cndmask_b16 v55.l, 0x7fff, v54.h, s7
	v_mov_b16_e32 v51.l, v48.h
	v_mov_b16_e32 v51.h, v3.h
	v_add3_u32 v52, v50, v52, 0x7fff
	v_cndmask_b16 v53.h, 0x7fff, v53.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	v_and_b32_e32 v50, 1, v3
	v_mov_b16_e32 v54.l, v46.h
	v_mov_b16_e32 v54.h, v3.h
	v_mov_b16_e32 v3.l, v47.h
	v_cndmask_b16 v55.h, 0x7fff, v55.h, s6
	v_and_b32_e32 v51, 1, v51
	v_add3_u32 v50, v49, v50, 0x7fff
	v_cmp_o_f32_e64 s6, v49, v49
	v_cndmask_b16 v53.l, 0x7fff, v52.h, vcc_lo
	v_and_b32_e32 v49, 1, v54
	v_and_b32_e32 v52, 1, v3
	v_mov_b16_e32 v3.l, v45.h
	v_add3_u32 v51, v48, v51, 0x7fff
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s6
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	v_add3_u32 v48, v46, v49, 0x7fff
	v_add3_u32 v49, v47, v52, 0x7fff
	v_cmp_o_f32_e64 s6, v47, v47
	v_cmp_o_f32_e64 s7, v46, v46
	v_mov_b16_e32 v46.l, v44.h
	v_mov_b16_e32 v46.h, v3.h
	v_and_b32_e32 v47, 1, v3
	v_cndmask_b16 v50.l, 0x7fff, v51.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	v_mov_b16_e32 v3.l, v43.h
	v_and_b32_e32 v46, 1, v46
	v_add3_u32 v47, v45, v47, 0x7fff
	v_cndmask_b16 v49.l, 0x7fff, v48.h, s7
	v_mov_b16_e32 v45.l, v42.h
	v_mov_b16_e32 v45.h, v3.h
	v_add3_u32 v46, v44, v46, 0x7fff
	v_cndmask_b16 v47.h, 0x7fff, v47.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	v_and_b32_e32 v44, 1, v3
	v_mov_b16_e32 v48.l, v40.h
	v_mov_b16_e32 v48.h, v3.h
	v_mov_b16_e32 v3.l, v41.h
	v_cndmask_b16 v49.h, 0x7fff, v49.h, s6
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v44, v43, v44, 0x7fff
	v_cmp_o_f32_e64 s6, v43, v43
	v_cndmask_b16 v47.l, 0x7fff, v46.h, vcc_lo
	v_and_b32_e32 v43, 1, v48
	v_and_b32_e32 v46, 1, v3
	v_mov_b16_e32 v3.l, v39.h
	v_add3_u32 v45, v42, v45, 0x7fff
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s6
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_add3_u32 v42, v40, v43, 0x7fff
	v_add3_u32 v43, v41, v46, 0x7fff
	v_cmp_o_f32_e64 s6, v41, v41
	v_cmp_o_f32_e64 s7, v40, v40
	v_mov_b16_e32 v40.l, v38.h
	v_mov_b16_e32 v40.h, v3.h
	v_and_b32_e32 v41, 1, v3
	v_cndmask_b16 v44.l, 0x7fff, v45.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	v_mov_b16_e32 v3.l, v37.h
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v41, v39, v41, 0x7fff
	v_cndmask_b16 v43.l, 0x7fff, v42.h, s7
	v_mov_b16_e32 v39.l, v36.h
	v_mov_b16_e32 v39.h, v3.h
	v_add3_u32 v40, v38, v40, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v41.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	v_and_b32_e32 v38, 1, v3
	v_mov_b16_e32 v42.l, v34.h
	v_mov_b16_e32 v42.h, v3.h
	v_mov_b16_e32 v3.l, v35.h
	v_cndmask_b16 v43.h, 0x7fff, v43.h, s6
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v38, v37, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v37, v37
	v_cndmask_b16 v41.l, 0x7fff, v40.h, vcc_lo
	v_and_b32_e32 v37, 1, v42
	v_and_b32_e32 v40, 1, v3
	v_mov_b16_e32 v3.l, v33.h
	v_add3_u32 v39, v36, v39, 0x7fff
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s6
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	v_add3_u32 v36, v34, v37, 0x7fff
	v_add3_u32 v37, v35, v40, 0x7fff
	v_cmp_o_f32_e64 s6, v35, v35
	v_cmp_o_f32_e64 s7, v34, v34
	v_mov_b16_e32 v34.l, v32.h
	v_mov_b16_e32 v34.h, v3.h
	v_and_b32_e32 v35, 1, v3
	v_cndmask_b16 v38.l, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_mov_b16_e32 v3.l, v31.h
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v35, v33, v35, 0x7fff
	v_cndmask_b16 v37.l, 0x7fff, v36.h, s7
	v_mov_b16_e32 v33.l, v30.h
	v_mov_b16_e32 v33.h, v3.h
	v_add3_u32 v34, v32, v34, 0x7fff
	v_cndmask_b16 v35.h, 0x7fff, v35.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	v_and_b32_e32 v32, 1, v3
	v_mov_b16_e32 v36.l, v28.h
	v_mov_b16_e32 v36.h, v3.h
	v_mov_b16_e32 v3.l, v29.h
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s6
	v_and_b32_e32 v33, 1, v33
	v_add3_u32 v32, v31, v32, 0x7fff
	v_cmp_o_f32_e64 s6, v31, v31
	v_cndmask_b16 v35.l, 0x7fff, v34.h, vcc_lo
	v_and_b32_e32 v31, 1, v36
	v_and_b32_e32 v34, 1, v3
	v_add3_u32 v33, v30, v33, 0x7fff
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s6
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_add3_u32 v30, v28, v31, 0x7fff
	v_add3_u32 v31, v29, v34, 0x7fff
	v_cmp_o_f32_e64 s6, v29, v29
	v_cmp_o_f32_e64 s7, v28, v28
	v_mov_b16_e32 v3.l, v27.h
	v_mov_b16_e32 v28.l, v26.h
	v_mov_b16_e32 v28.h, v3.h
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s6
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s7
	v_and_b32_e32 v30, 1, v3
	v_mov_b16_e32 v31.l, v25.h
	v_mov_b16_e32 v31.h, v3.h
	v_mov_b16_e32 v3.l, v24.h
	v_cndmask_b16 v32.l, 0x7fff, v33.h, vcc_lo
	v_and_b32_e32 v28, 1, v28
	v_add3_u32 v30, v27, v30, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_and_b32_e32 v31, 1, v31
	v_mov_b16_e32 v33.l, v23.h
	v_mov_b16_e32 v33.h, v3.h
	v_and_b32_e32 v27, 1, v3
	v_mov_b16_e32 v3.l, v5.h
	v_add3_u32 v28, v26, v28, 0x7fff
	v_cndmask_b16 v30.h, 0x7fff, v30.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_add3_u32 v26, v25, v31, 0x7fff
	v_and_b32_e32 v31, 1, v33
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v27, v24, v27, 0x7fff
	v_cmp_o_f32_e64 s6, v24, v24
	v_cmp_o_f32_e64 s7, v25, v25
	v_add3_u32 v24, v23, v31, 0x7fff
	v_cmp_o_f32_e64 s9, v23, v23
	v_add3_u32 v3, v5, v3, 0x7fff
	v_cmp_o_f32_e64 s8, v5, v5
	v_cndmask_b16 v5.h, 0x7fff, v27.h, s6
	v_cndmask_b16 v5.l, 0x7fff, v26.h, s7
	v_cndmask_b16 v3.l, 0x7fff, v24.h, s9
	v_cndmask_b32_e64 v24, v81, v4, s0
	v_cndmask_b32_e64 v4, v4, v81, s0
	v_cndmask_b16 v30.l, 0x7fff, v28.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s8
	v_cndmask_b32_e64 v23, v82, v79, s0
	v_cndmask_b32_e64 v25, v76, v73, s0
	v_cndmask_b32_e64 v27, v75, v70, s0
	v_cndmask_b32_e64 v34, v72, v67, s0
	v_cndmask_b32_e64 v39, v68, v65, s0
	v_cndmask_b32_e64 v42, v62, v59, s0
	v_cndmask_b32_e64 v46, v61, v56, s0
	v_cndmask_b32_e64 v48, v50, v55, s0
	v_cndmask_b32_e64 v50, v55, v50, s0
	v_cndmask_b32_e64 v51, v49, v53, s0
	v_cndmask_b32_e64 v49, v53, v49, s0
	v_cndmask_b32_e64 v52, v43, v47, s0
	v_cndmask_b32_e64 v43, v47, v43, s0
	v_cndmask_b32_e64 v55, v5, v29, s0
	v_cndmask_b32_e64 v5, v29, v5, s0
	v_permlanex16_b32 v4, v4, s50, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v26, v79, v82, s0
	v_cndmask_b32_e64 v28, v73, v76, s0
	v_cndmask_b32_e64 v31, v70, v75, s0
	v_cndmask_b32_e64 v33, v67, v72, s0
	v_cndmask_b32_e64 v36, v65, v68, s0
	v_cndmask_b32_e64 v40, v59, v62, s0
	v_cndmask_b32_e64 v45, v56, v61, s0
	v_cndmask_b32_e64 v47, v41, v44, s0
	v_cndmask_b32_e64 v41, v44, v41, s0
	v_cndmask_b32_e64 v53, v35, v38, s0
	v_cndmask_b32_e64 v35, v38, v35, s0
	v_cndmask_b32_e64 v54, v32, v37, s0
	v_cndmask_b32_e64 v32, v37, v32, s0
	v_cndmask_b32_e64 v56, v3, v30, s0
	v_cndmask_b32_e64 v3, v30, v3, s0
	v_permlanex16_b32 v29, v23, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v25, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v27, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v34, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v39, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v42, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v46, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v50, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v49, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v49, v43, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v23, v4, v24, v16
	v_perm_b32 v24, v4, v24, v17
	v_add_lshl_u32 v4, s14, v1, 1
	v_permlanex16_b32 v50, v41, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v57, v35, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v58, v32, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v25, v29, v26, v16
	v_perm_b32 v26, v29, v26, v17
	v_perm_b32 v27, v30, v28, v16
	v_perm_b32 v28, v30, v28, v17
	v_perm_b32 v29, v37, v31, v16
	v_perm_b32 v30, v37, v31, v17
	v_perm_b32 v31, v34, v33, v16
	v_perm_b32 v32, v34, v33, v17
	v_perm_b32 v33, v38, v36, v16
	v_perm_b32 v34, v38, v36, v17
	v_perm_b32 v35, v39, v40, v16
	v_perm_b32 v36, v39, v40, v17
	v_perm_b32 v37, v42, v45, v16
	v_perm_b32 v38, v42, v45, v17
	v_perm_b32 v39, v44, v48, v16
	v_perm_b32 v40, v44, v48, v17
	v_perm_b32 v41, v46, v51, v16
	v_perm_b32 v42, v46, v51, v17
	v_perm_b32 v43, v49, v52, v16
	v_perm_b32 v44, v49, v52, v17
	v_perm_b32 v51, v5, v55, v16
	v_perm_b32 v52, v5, v55, v17
	v_add_lshl_u32 v5, v9, s14, 1
	v_add_lshl_u32 v55, v10, s14, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s1
	v_perm_b32 v45, v50, v47, v16
	v_perm_b32 v46, v50, v47, v17
	v_perm_b32 v47, v57, v53, v16
	v_perm_b32 v48, v57, v53, v17
	v_perm_b32 v49, v58, v54, v16
	v_perm_b32 v50, v58, v54, v17
	v_perm_b32 v53, v3, v56, v16
	v_perm_b32 v54, v3, v56, v17
	v_cndmask_b32_e64 v3, 0x80000000, v5, s1
	v_cndmask_b32_e64 v5, 0x80000000, v55, s1
	v_add_lshl_u32 v55, v11, s14, 1
	buffer_store_b128 v[23:26], v4, s[24:27], 0 offen
	v_add_lshl_u32 v4, v12, s14, 1
	s_clause 0x1
	buffer_store_b128 v[27:30], v3, s[24:27], 0 offen
	buffer_store_b128 v[31:34], v5, s[24:27], 0 offen
	v_add_lshl_u32 v5, v13, s14, 1
	v_cndmask_b32_e64 v3, 0x80000000, v55, s1
	v_add_lshl_u32 v23, v14, s14, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s1
	v_add_lshl_u32 v24, v15, s14, 1
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	buffer_store_b128 v[35:38], v3, s[24:27], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v5, s1
	buffer_store_b128 v[39:42], v4, s[24:27], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v23, s1
	v_cndmask_b32_e64 v5, 0x80000000, v24, s1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_lt_i32 s2, s34
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	s_clause 0x2
	buffer_store_b128 v[43:46], v3, s[24:27], 0 offen
	buffer_store_b128 v[47:50], v4, s[24:27], 0 offen
	buffer_store_b128 v[51:54], v5, s[24:27], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cbranch_scc0 .LBB0_6
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s6, s2
	s_ashr_i32 s7, s2, 31
	s_mul_hi_u32 s8, s6, s47
	s_xor_b32 s7, s7, s11
	s_mul_i32 s9, s8, s10
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v26, 0
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s8, 1
	s_sub_i32 s14, s6, s10
	s_cmp_ge_u32 s6, s10
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	s_cselect_b32 s8, s9, s8
	s_cselect_b32 s6, s14, s6
	s_add_i32 s9, s8, 1
	s_cmp_ge_u32 s6, s10
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	s_cselect_b32 s6, s9, s8
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v30, 0
	s_xor_b32 s6, s6, s7
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v34, 0
	s_sub_i32 s6, s6, s7
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s8, s6, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s6, s6, s44
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s7, s33, s8
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s17, s2, s6
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s14, s7, 4
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s7, s14
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v38, 0
	s_cvt_f32_u32 s9, s7
	s_sub_i32 s15, 0, s7
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v42, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v3, s9
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s9, v3
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v54, 0
	s_mul_f32 s9, s9, 0x4f7ffffe
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s9, s9
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v62, 0
	s_mul_i32 s15, s15, s9
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v66, 0
	s_mul_hi_u32 s6, s9, s15
	s_abs_i32 s15, s17
	s_add_i32 s9, s9, s6
	s_xor_b32 s6, s17, s14
	s_mul_hi_u32 s9, s15, s9
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s18, s9, s7
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	s_sub_i32 s15, s15, s18
	s_add_i32 s18, s9, 1
	s_sub_i32 s19, s15, s7
	s_cmp_ge_u32 s15, s7
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	s_cselect_b32 s9, s18, s9
	s_cselect_b32 s15, s19, s15
	s_add_i32 s18, s9, 1
	s_cmp_ge_u32 s15, s7
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v70, 0
	s_cselect_b32 s7, s18, s9
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v74, 0
	s_xor_b32 s9, s7, s6
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	s_sub_i32 s7, s9, s6
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s14, s7, s14
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v78, 0
	s_sub_i32 s14, s17, s14
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_mov_b32_e32 v81, 0
	v_mov_b32_e32 v85, 0
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s14, s14, s8
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_and_b32 vcc_lo, exec_lo, s3
	.loc	1 221 18                        ; generate_amdgcn.py:221:18
	s_lshl_b32 s8, s14, 4
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_or_b32 v3, s9, 7, v8
	s_lshl_b32 s14, s9, 8
	s_lshl_b32 s9, s6, 7
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v4, s8, v7
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v5, s8, v6
	v_subrev_nc_u32_e32 v23, s9, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v86, s49, v4
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_mad_u64_u32 v[3:4], null, s45, v5, v[2:3]
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[4:5], null, s45, v23, v[0:1]
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v5, 0
	s_lshl_b32 s6, s6, 8
	s_mov_b32 s51, 0
	s_sub_i32 s9, s14, s6
	s_mov_b32 s52, s46
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
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_add_nc_u32_e32 v88, s51, v2
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v160, s23 :: v_dual_add_nc_u32 v87, s51, v0
	v_mov_b32_e32 v159, s22
	v_dual_mov_b32 v158, s21 :: v_dual_add_nc_u32 v89, s51, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e32 vcc_lo, s45, v88
	v_cmp_gt_i32_e64 s6, s45, v87
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v157, s20 :: v_dual_add_nc_u32 v90, s51, v4
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_mov_b32 s38, s30
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s5
	s_and_b32 s6, s6, s4
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_cndmask_b32_e32 v87, 0x80000000, v89, vcc_lo
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	v_cndmask_b32_e64 v88, 0x80000000, v90, s6
	s_mov_b32 s39, s31
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	buffer_load_u8 v87, v87, s[28:31], 0 offen
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	buffer_load_b32 v88, v88, s[36:39], 0 offen
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s14, s30
	s_mov_b32 s15, s31
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v156, s19 :: v_dual_mov_b32 v155, s18
	v_dual_mov_b32 v154, s17 :: v_dual_mov_b32 v153, s16
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s52, s52, -1
	s_add_i32 s51, s51, 16
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt vmcnt(1)
	ds_store_b8 v19, v87
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[165:166], v20
	ds_load_b64 v[167:168], v21
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b32 v22, v88
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	buffer_load_u16 v129, v86, s[12:15], 0 offen
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_b64 v[101:104], v20 offset1:32
	ds_load_2addr_b64 v[118:121], v20 offset0:64 offset1:96
	ds_load_2addr_b64 v[111:114], v21 offset1:32
	ds_load_2addr_b64 v[122:125], v21 offset0:64 offset1:96
	ds_load_2addr_b64 v[161:164], v20 offset0:128 offset1:160
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v86, 2, v86
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[101:102], v[165:166], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[95:102], v[103:104], v[165:166], v[153:160] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[103:110], v[118:119], v[165:166], v[153:160] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[111:112], v[167:168], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[95:102], v[113:114], v[167:168], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[112:119], v[120:121], v[165:166], v[153:160] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[103:110], v[122:123], v[167:168], v[103:110] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v152, v87
	v_cvt_f32_i32_e32 v143, v96
	v_cvt_f32_i32_e32 v142, v97
	v_cvt_f32_i32_e32 v141, v98
	v_cvt_f32_i32_e32 v140, v99
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_b64 v[96:99], v21 offset0:128 offset1:160
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[112:119], v[124:125], v[167:168], v[112:119] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v132, v106
	v_cvt_f32_i32_e32 v131, v107
	v_cvt_f32_i32_e32 v130, v108
	v_cvt_f32_i32_e32 v128, v109
	v_cvt_f32_i32_e32 v127, v110
	v_cvt_f32_i32_e32 v126, v112
	v_cvt_f32_i32_e32 v125, v113
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_b64 v[106:109], v20 offset0:192 offset1:224
	ds_load_2addr_b64 v[110:113], v21 offset0:192 offset1:224
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v151, v88
	v_cvt_f32_i32_e32 v150, v89
	v_cvt_f32_i32_e32 v149, v90
	v_cvt_f32_i32_e32 v148, v91
	v_cvt_f32_i32_e32 v147, v92
	v_cvt_f32_i32_e32 v146, v93
	v_cvt_f32_i32_e32 v145, v94
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[161:162], v[165:166], v[153:160] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v144, v95
	v_cvt_f32_i32_e32 v124, v114
	v_cvt_f32_i32_e32 v123, v115
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[96:97], v[167:168], v[87:94] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v122, v116
	v_cvt_f32_i32_e32 v120, v117
	v_cvt_f32_i32_e32 v116, v119
	v_cvt_f32_i32_e32 v139, v100
	v_cvt_f32_i32_e32 v121, v87
	v_cvt_f32_i32_e32 v119, v88
	v_cvt_f32_i32_e32 v117, v89
	v_cvt_f32_i32_e32 v115, v90
	v_cvt_f32_i32_e32 v114, v91
	v_cvt_f32_i32_e32 v87, v92
	v_cvt_f32_i32_e32 v88, v93
	v_cvt_f32_i32_e32 v89, v94
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[90:97], v[163:164], v[165:166], v[153:160] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v137, v101
	v_cvt_f32_i32_e32 v136, v102
	v_cvt_f32_i32_e32 v135, v103
	v_cvt_f32_i32_e32 v134, v104
	v_cvt_f32_i32_e32 v133, v105
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[90:97], v[98:99], v[167:168], v[90:97] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[98:105], v[106:107], v[165:166], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[153:160], v[108:109], v[165:166], v[153:160] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v90, v90
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[98:105], v[110:111], v[167:168], v[98:105] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v91, v91
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[153:160], v[112:113], v[167:168], v[153:160] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v109, v153
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v110, v154
	v_cvt_f32_i32_e32 v106, v155
	v_cvt_f32_i32_e32 v111, v156
	v_cvt_f32_i32_e32 v107, v157
	v_cvt_f32_i32_e32 v112, v158
	v_cvt_f32_i32_e32 v108, v159
	v_cvt_f32_i32_e32 v113, v160
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v129, 16, v129
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_nc_u32_e32 v138, s9, v18
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s9, s9, s48
	s_cmp_lg_u32 s52, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v151, v129, v151
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v153, v138, s[40:43], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v152, v129, v152
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v150, v129, v150 :: v_dual_lshlrev_b32 v153, 16, v153
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v84, v152, v153
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v152, v138, s[40:43], 0 offen offset:4
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v152, 16, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v85, v151, v152
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v151, v138, s[40:43], 0 offen offset:8
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v151, 16, v151
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v82, v150, v151
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v150, v138, s[40:43], 0 offen offset:12
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v149, v129, v149
	v_mul_f32_e32 v148, v129, v148
	v_mul_f32_e32 v135, v129, v135
	v_mul_f32_e32 v115, v129, v115
	v_mul_f32_e32 v147, v129, v147
	v_mul_f32_e32 v146, v129, v146
	v_mul_f32_e32 v145, v129, v145
	v_mul_f32_e32 v144, v129, v144
	v_mul_f32_e32 v143, v129, v143
	v_mul_f32_e32 v142, v129, v142
	v_mul_f32_e32 v141, v129, v141
	v_mul_f32_e32 v140, v129, v140
	v_mul_f32_e32 v139, v129, v139
	v_mul_f32_e32 v136, v129, v136
	v_mul_f32_e32 v137, v129, v137
	v_mul_f32_e32 v134, v129, v134
	v_mul_f32_e32 v128, v129, v128
	v_mul_f32_e32 v132, v129, v132
	v_mul_f32_e32 v126, v129, v126
	v_mul_f32_e32 v130, v129, v130
	v_mul_f32_e32 v122, v129, v122
	v_mul_f32_e32 v118, v129, v118
	v_mul_f32_e32 v124, v129, v124
	v_mul_f32_e32 v120, v129, v120
	v_mul_f32_e32 v116, v129, v116
	v_mul_f32_e32 v90, v129, v90
	v_mul_f32_e32 v96, v129, v96
	v_mul_f32_e32 v110, v129, v110
	v_mul_f32_e32 v89, v129, v89
	v_mul_f32_e32 v92, v129, v92
	v_mul_f32_e32 v103, v129, v103
	v_mul_f32_e32 v88, v129, v88
	v_mul_f32_e32 v114, v129, v114
	v_mul_f32_e32 v117, v129, v117
	v_mul_f32_e32 v91, v129, v91
	v_mul_f32_e32 v93, v129, v93
	v_mul_f32_e32 v87, v129, v87
	v_mul_f32_e32 v94, v129, v94
	v_mul_f32_e32 v95, v129, v95
	v_mul_f32_e32 v97, v129, v97
	v_mul_f32_e32 v98, v129, v98
	v_mul_f32_e32 v100, v129, v100
	v_mul_f32_e32 v99, v129, v99
	v_mul_f32_e32 v101, v129, v101
	v_mul_f32_e32 v102, v129, v102
	v_mul_f32_e32 v106, v129, v106
	v_mul_f32_e32 v112, v129, v112
	v_mul_f32_e32 v104, v129, v104
	v_mul_f32_e32 v105, v129, v105
	v_mul_f32_e32 v108, v129, v108
	v_mul_f32_e32 v109, v129, v109
	v_mul_f32_e32 v111, v129, v111
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v107, v129, v107 :: v_dual_lshlrev_b32 v150, 16, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v83, v149, v150
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v149, v138, s[40:43], 0 offen offset:16
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v149, 16, v149
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v80, v148, v149
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v148, v138, s[40:43], 0 offen offset:20
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v148, 16, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v81, v147, v148
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v147, v138, s[40:43], 0 offen offset:24
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v147, 16, v147
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v78, v146, v147
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v146, v138, s[40:43], 0 offen offset:28
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v146, 16, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v79, v145, v146
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v145, v138, s[40:43], 0 offen offset:32
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v145, 16, v145
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v76, v144, v145
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v144, v138, s[40:43], 0 offen offset:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v144, 16, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v77, v143, v144
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v143, v138, s[40:43], 0 offen offset:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v143, 16, v143
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v74, v142, v143
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v142, v138, s[40:43], 0 offen offset:44
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v142, 16, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v75, v141, v142
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v141, v138, s[40:43], 0 offen offset:48
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v141, 16, v141
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v72, v140, v141
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v140, v138, s[40:43], 0 offen offset:52
	buffer_load_u16 v141, v138, s[40:43], 0 offen offset:56
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v140, 16, v140
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v141, 16, v141
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v73, v139, v140
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v139, v138, s[40:43], 0 offen offset:60
	buffer_load_u16 v140, v138, s[40:43], 0 offen offset:64
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v139, 16, v139
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v71, v136, v139 :: v_dual_lshlrev_b32 v140, 16, v140
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v136, v138, s[40:43], 0 offen offset:76
	buffer_load_u16 v139, v138, s[40:43], 0 offen offset:80
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v136, 16, v136
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v68, v135, v140
	v_fmac_f32_e32 v70, v137, v141
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x3
	buffer_load_u16 v137, v138, s[40:43], 0 offen offset:68
	buffer_load_u16 v141, v138, s[40:43], 0 offen offset:72
	buffer_load_u16 v135, v138, s[40:43], 0 offen offset:84
	buffer_load_u16 v140, v138, s[40:43], 0 offen offset:88
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v133, v129, v133
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v139, 16, v139
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v67, v132, v136
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v132, v138, s[40:43], 0 offen offset:108
	buffer_load_u16 v136, v138, s[40:43], 0 offen offset:112
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v125, v129, v125
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v137, 16, v137
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v141, 16, v141
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v140, 16, v140
	v_lshlrev_b32_e32 v135, 16, v135
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v131, v129, v131 :: v_dual_lshlrev_b32 v132, 16, v132
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v66, v133, v141
	v_dual_fmac_f32 v62, v128, v140 :: v_dual_fmac_f32 v69, v134, v137
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v64, v131, v139
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v134, v138, s[40:43], 0 offen offset:92
	buffer_load_u16 v137, v138, s[40:43], 0 offen offset:96
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v65, v130, v135
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x3
	buffer_load_u16 v130, v138, s[40:43], 0 offen offset:124
	buffer_load_u16 v135, v138, s[40:43], 0 offen offset:128
	buffer_load_u16 v133, v138, s[40:43], 0 offen offset:100
	buffer_load_u16 v141, v138, s[40:43], 0 offen offset:104
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v123, v129, v123
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x3
	buffer_load_u16 v128, v138, s[40:43], 0 offen offset:132
	buffer_load_u16 v140, v138, s[40:43], 0 offen offset:136
	buffer_load_u16 v131, v138, s[40:43], 0 offen offset:116
	buffer_load_u16 v139, v138, s[40:43], 0 offen offset:120
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v121, v129, v121 :: v_dual_lshlrev_b32 v136, 16, v136
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v119, v129, v119 :: v_dual_fmac_f32 v56, v122, v136
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v122, v138, s[40:43], 0 offen offset:180
	buffer_load_u16 v136, v138, s[40:43], 0 offen offset:184
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v134, 16, v134
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v130, 16, v130
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v58, v123, v132 :: v_dual_lshlrev_b32 v137, 16, v137
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v127, v129, v127
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v133, 16, v133
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v141, 16, v141
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v60, v126, v137 :: v_dual_lshlrev_b32 v131, 16, v131
	v_fmac_f32_e32 v63, v127, v134
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v127, v138, s[40:43], 0 offen offset:140
	buffer_load_u16 v134, v138, s[40:43], 0 offen offset:144
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v61, v125, v133
	v_dual_fmac_f32 v59, v124, v141 :: v_dual_lshlrev_b32 v140, 16, v140
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v135, 16, v135
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v57, v120, v131 :: v_dual_lshlrev_b32 v128, 16, v128
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v50, v117, v140 :: v_dual_lshlrev_b32 v139, 16, v139
	v_fmac_f32_e32 v53, v121, v135
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x9
	buffer_load_u16 v126, v138, s[40:43], 0 offen offset:148
	buffer_load_u16 v137, v138, s[40:43], 0 offen offset:152
	buffer_load_u16 v125, v138, s[40:43], 0 offen offset:156
	buffer_load_u16 v133, v138, s[40:43], 0 offen offset:160
	buffer_load_u16 v124, v138, s[40:43], 0 offen offset:164
	buffer_load_u16 v141, v138, s[40:43], 0 offen offset:168
	buffer_load_u16 v123, v138, s[40:43], 0 offen offset:172
	buffer_load_u16 v132, v138, s[40:43], 0 offen offset:176
	buffer_load_u16 v120, v138, s[40:43], 0 offen offset:188
	buffer_load_u16 v131, v138, s[40:43], 0 offen offset:192
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v55, v116, v130
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x3
	buffer_load_u16 v116, v138, s[40:43], 0 offen offset:204
	buffer_load_u16 v130, v138, s[40:43], 0 offen offset:208
	buffer_load_u16 v121, v138, s[40:43], 0 offen offset:212
	buffer_load_u16 v135, v138, s[40:43], 0 offen offset:216
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v52, v119, v128
	v_fmac_f32_e32 v54, v118, v139
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x5
	buffer_load_u16 v118, v138, s[40:43], 0 offen offset:196
	buffer_load_u16 v139, v138, s[40:43], 0 offen offset:200
	buffer_load_u16 v119, v138, s[40:43], 0 offen offset:220
	buffer_load_u16 v128, v138, s[40:43], 0 offen offset:224
	buffer_load_u16 v117, v138, s[40:43], 0 offen offset:228
	buffer_load_u16 v140, v138, s[40:43], 0 offen offset:236
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v122, 16, v122
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v136, 16, v136
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(21)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v38, v96, v136 :: v_dual_lshlrev_b32 v127, 16, v127
	s_waitcnt vmcnt(20)
	v_dual_fmac_f32 v51, v115, v127 :: v_dual_lshlrev_b32 v134, 16, v134
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v115, v138, s[40:43], 0 offen offset:232
	buffer_load_u16 v127, v138, s[40:43], 0 offen offset:244
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v48, v114, v134
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x2
	buffer_load_u16 v114, v138, s[40:43], 0 offen offset:240
	buffer_load_u16 v134, v138, s[40:43], 0 offen offset:252
	buffer_load_u16 v138, v138, s[40:43], 0 offen offset:248
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v126, 16, v126
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v137, 16, v137
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v125, 16, v125
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v133, 16, v133
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v124, 16, v124
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v141, 16, v141
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v123, 16, v123
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v132, 16, v132
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v120, 16, v120
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v131, 16, v131
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v118, 16, v118
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v139, 16, v139
	v_lshlrev_b32_e32 v116, 16, v116
	v_lshlrev_b32_e32 v130, 16, v130
	v_lshlrev_b32_e32 v121, 16, v121
	v_lshlrev_b32_e32 v135, 16, v135
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v119, 16, v119
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v128, 16, v128
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v117, 16, v117
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v113, v129, v113 :: v_dual_lshlrev_b32 v140, 16, v140
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v40, v94, v132 :: v_dual_fmac_f32 v49, v87, v126
	v_fmac_f32_e32 v46, v88, v137
	v_fmac_f32_e32 v47, v89, v125
	v_dual_fmac_f32 v44, v90, v133 :: v_dual_fmac_f32 v45, v91, v124
	v_dual_fmac_f32 v42, v92, v141 :: v_dual_fmac_f32 v43, v93, v123
	v_dual_fmac_f32 v41, v95, v122 :: v_dual_fmac_f32 v36, v98, v131
	v_dual_fmac_f32 v39, v97, v120 :: v_dual_fmac_f32 v34, v100, v139
	v_dual_fmac_f32 v37, v99, v118 :: v_dual_fmac_f32 v30, v104, v135
	v_dual_fmac_f32 v35, v101, v116 :: v_dual_fmac_f32 v32, v102, v130
	v_dual_fmac_f32 v33, v103, v121 :: v_dual_fmac_f32 v28, v109, v128
	v_fmac_f32_e32 v31, v105, v119
	v_fmac_f32_e32 v27, v111, v140
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v115, 16, v115
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v127, 16, v127
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v114, 16, v114
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v134, 16, v134
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v29, v110, v117 :: v_dual_lshlrev_b32 v138, 16, v138
	v_fmac_f32_e32 v24, v112, v127
	v_dual_fmac_f32 v26, v106, v115 :: v_dual_fmac_f32 v25, v107, v114
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v23, v108, v138
	v_fmac_f32_e32 v5, v113, v134
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 169
		.amdhsa_next_free_sgpr 53
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
		.amdhsa_inst_pref_size 58
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.num_vgpr, 169
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7388
; TotalNumSgprs: 55
; NumVgprs: 169
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 55
; NumVGPRsForWavesPerEU: 169
; Occupancy: 8
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     169
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
