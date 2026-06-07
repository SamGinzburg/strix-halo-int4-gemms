	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
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
	s_add_i32 s4, s28, 15
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
	s_ashr_i32 s28, s4, 4
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
; %bb.1:                                ; %.lr.ph10
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s14, s[0:1], 0x38
	s_load_b64 s[12:13], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 258 43 is_stmt 1              ; generate_amdgcn.py:258:43
	s_lshl_b32 s33, s3, 6
	v_dual_mov_b32 v249, 0 :: v_dual_and_b32 v2, 16, v0
	v_lshlrev_b32_e32 v1, 2, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v99, 15, v0
	v_dual_mov_b32 v13, 0x5410 :: v_dual_lshlrev_b32 v100, 4, v0
	.loc	1 250 28                        ; generate_amdgcn.py:250:28
	v_lshrrev_b32_e32 v102, 3, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v4, 56, v1
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v1, 1, v2
	.loc	1 250 28                        ; generate_amdgcn.py:250:28
	v_lshlrev_b32_e32 v3, 1, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v98, 5, v0
	v_and_b32_e32 v5, 56, v102
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_bfe_u32 v101, v0, 4, 1
	v_or_b32_e32 v11, 0x3f0, v0
	.loc	1 250 28                        ; generate_amdgcn.py:250:28
	v_and_b32_e32 v64, 62, v3
	v_or_b32_e32 v12, 0x7f0, v0
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
	s_mov_b32 s16, s4
	s_ashr_i32 s35, s1, 8
	s_cmpk_gt_i32 s0, 0xff
	v_cmp_eq_u32_e64 s0, 0, v2
	s_cselect_b32 s1, -1, 0
	s_abs_i32 s36, s30
	v_mov_b32_e32 v2, 0x7632
	s_cvt_f32_u32 s3, s36
	v_cndmask_b32_e64 v13, 0x1054, v13, s0
	v_lshl_or_b32 v103, v99, 6, v4
	s_sub_i32 s4, 0, s36
	v_rcp_iflag_f32_e32 v16, s3
	v_cndmask_b32_e64 v2, 0x3276, v2, s0
	v_lshl_or_b32 v13, v13, 8, v13
	v_xor_b32_e32 v3, v3, v5
	v_xor_b32_e32 v4, 8, v103
	v_xor_b32_e32 v5, 16, v103
	v_lshl_or_b32 v2, v2, 8, v2
	v_and_b32_e32 v13, 0x540054, v13
	v_xor_b32_e32 v6, 24, v103
	v_xor_b32_e32 v7, 32, v103
	v_readfirstlane_b32 s3, v16
	v_and_b32_e32 v2, 0x760076, v2
	v_xor_b32_e32 v8, 40, v103
	v_xor_b32_e32 v9, 48, v103
	v_xor_b32_e32 v10, 56, v103
	s_mul_f32 s3, s3, 0x4f7ffffe
	v_mad_u64_u32 v[65:66], null, s29, v99, v[1:2]
	v_lshl_or_b32 v1, v13, 4, v13
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cvt_u32_f32 s3, s3
	v_or_b32_e32 v14, 0xbf0, v0
	v_or_b32_e32 v15, 0xff0, v0
	v_or_b32_e32 v17, 0x13f0, v0
	v_or_b32_e32 v18, 0x17f0, v0
	v_or_b32_e32 v19, 0x1bf0, v0
	v_or_b32_e32 v20, 0x1ff0, v0
	v_lshl_or_b32 v2, v2, 4, v2
	v_and_b32_e32 v105, 0x5040504, v1
	v_and_b32_e32 v0, 0x1e0, v0
	v_cndmask_b32_e64 v1, 0, 1, s1
	s_mul_i32 s4, s4, s3
	v_add_nc_u32_e32 v104, 0, v99
	s_mul_hi_u32 s4, s3, s4
	v_and_b32_e32 v106, 0x7060706, v2
	v_cmp_eq_u32_e64 s1, 0, v0
	s_add_i32 s38, s3, s4
	v_cmp_ne_u32_e64 s3, 1, v1
	v_add_nc_u32_e32 v107, 0, v3
	v_add_nc_u32_e32 v108, 0, v4
	v_add_nc_u32_e32 v109, 0, v5
	v_add_nc_u32_e32 v110, 0, v6
	v_add_nc_u32_e32 v111, 0, v7
	v_add_nc_u32_e32 v112, 0, v8
	v_add_nc_u32_e32 v113, 0, v9
	v_add_nc_u32_e32 v114, 0, v10
	v_add_nc_u32_e32 v115, 0, v11
	v_add_nc_u32_e32 v116, 0, v12
	v_add_nc_u32_e32 v117, 0, v14
	v_add_nc_u32_e32 v118, 0, v15
	v_add_nc_u32_e32 v119, 0, v17
	v_add_nc_u32_e32 v120, 0, v18
	v_add_nc_u32_e32 v121, 0, v19
	v_add_nc_u32_e32 v122, 0, v20
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s17, s5, 0xffff
	s_and_b32 s21, s7, 0xffff
	s_mov_b32 s20, s6
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s25, s11, 0xffff
	s_mov_b32 s24, s10
	s_and_b32 s13, s13, 0xffff
	s_ashr_i32 s37, s30, 31
	s_mov_b32 s39, 0x76543210
	s_mov_b32 s14, s18
	s_mov_b32 s15, s19
	s_branch .LBB0_3
.Ltmp18:
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v0.h, 0
	v_mov_b16_e64 v0.l, v186.h
	v_mov_b16_e64 v1.l, v185.h
	v_mov_b16_e64 v3.l, v183.h
	v_cmp_o_f32_e32 vcc_lo, v186, v186
	v_mov_b16_e32 v1.h, v0.h
	v_and_b32_e32 v2, 1, v0
	v_mov_b16_e32 v3.h, v0.h
	v_mov_b16_e64 v0.l, v184.h
	v_cmp_o_f32_e64 s5, v183, v183
	v_and_b32_e32 v1, 1, v1
	v_add3_u32 v2, v186, v2, 0x7fff
	v_and_b32_e32 v3, 1, v3
	v_and_b32_e32 v4, 1, v0
	v_mov_b16_e64 v0.l, v182.h
	v_add3_u32 v5, v185, v1, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v2.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v185, v185
	v_add3_u32 v3, v183, v3, 0x7fff
	v_add3_u32 v2, v184, v4, 0x7fff
	v_mov_b16_e64 v4.l, v181.h
	v_mov_b16_e32 v4.h, v0.h
	v_and_b32_e32 v6, 1, v0
	v_cndmask_b16 v1.l, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v2.l, 0x7fff, v3.h, s5
	v_cmp_o_f32_e32 vcc_lo, v182, v182
	v_and_b32_e32 v3, 1, v4
	v_add3_u32 v4, v182, v6, 0x7fff
	v_mov_b16_e64 v0.l, v180.h
	v_cmp_o_f32_e64 s4, v184, v184
	v_mov_b16_e64 v5.l, v179.h
	v_mov_b16_e32 v5.h, v0.h
	v_add3_u32 v6, v181, v3, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v181, v181
	v_and_b32_e32 v4, 1, v0
	v_mov_b16_e64 v7.l, v177.h
	v_mov_b16_e32 v7.h, v0.h
	v_mov_b16_e64 v0.l, v178.h
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s4
	v_and_b32_e32 v5, 1, v5
	v_add3_u32 v4, v180, v4, 0x7fff
	v_cmp_o_f32_e64 s4, v180, v180
	v_cndmask_b16 v3.l, 0x7fff, v6.h, vcc_lo
	v_and_b32_e32 v6, 1, v7
	v_and_b32_e32 v7, 1, v0
	v_mov_b16_e64 v0.l, v176.h
	v_add3_u32 v5, v179, v5, 0x7fff
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s4
	v_cmp_o_f32_e32 vcc_lo, v179, v179
	v_add3_u32 v6, v177, v6, 0x7fff
	v_add3_u32 v7, v178, v7, 0x7fff
	v_cmp_o_f32_e64 s4, v178, v178
	v_cmp_o_f32_e64 s5, v177, v177
	v_mov_b16_e64 v8.l, v175.h
	v_mov_b16_e32 v8.h, v0.h
	v_and_b32_e32 v9, 1, v0
	v_cndmask_b16 v4.l, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v5.h, 0x7fff, v7.h, s4
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s5
	v_and_b32_e32 v6, 1, v8
	v_add3_u32 v7, v176, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v176, v176
	v_mov_b16_e64 v0.l, v174.h
	v_mov_b16_e64 v8.l, v173.h
	v_add3_u32 v9, v175, v6, 0x7fff
	v_mov_b16_e64 v10.l, v171.h
	v_cndmask_b16 v6.h, 0x7fff, v7.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v175, v175
	v_and_b32_e32 v7, 1, v0
	v_mov_b16_e32 v10.h, v0.h
	v_mov_b16_e64 v0.l, v172.h
	v_and_b32_e32 v8, 1, v8
	v_cmp_o_f32_e64 s4, v174, v174
	v_add3_u32 v7, v174, v7, 0x7fff
	v_cndmask_b16 v6.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v10
	v_and_b32_e32 v10, 1, v0
	v_mov_b16_e64 v0.l, v170.h
	v_add3_u32 v8, v173, v8, 0x7fff
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s4
	v_cmp_o_f32_e32 vcc_lo, v173, v173
	v_add3_u32 v9, v171, v9, 0x7fff
	v_add3_u32 v10, v172, v10, 0x7fff
	v_cmp_o_f32_e64 s4, v172, v172
	v_cmp_o_f32_e64 s5, v171, v171
	v_mov_b16_e64 v11.l, v169.h
	v_mov_b16_e32 v11.h, v0.h
	v_and_b32_e32 v12, 1, v0
	v_cndmask_b16 v7.l, 0x7fff, v8.h, vcc_lo
	v_cndmask_b16 v8.h, 0x7fff, v10.h, s4
	v_cndmask_b16 v8.l, 0x7fff, v9.h, s5
	v_and_b32_e32 v9, 1, v11
	v_add3_u32 v10, v170, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v170, v170
	v_mov_b16_e64 v0.l, v168.h
	v_mov_b16_e64 v11.l, v167.h
	v_add3_u32 v9, v169, v9, 0x7fff
	v_mov_b16_e64 v13.l, v165.h
	v_cndmask_b16 v10.h, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v169, v169
	v_and_b32_e32 v12, 1, v0
	v_mov_b16_e32 v13.h, v0.h
	v_mov_b16_e64 v0.l, v166.h
	v_and_b32_e32 v11, 1, v11
	v_cmp_o_f32_e64 s4, v168, v168
	v_add3_u32 v12, v168, v12, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v13
	v_and_b32_e32 v13, 1, v0
	v_mov_b16_e64 v0.l, v164.h
	v_add3_u32 v11, v167, v11, 0x7fff
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s4
	v_cmp_o_f32_e32 vcc_lo, v167, v167
	v_add3_u32 v9, v165, v9, 0x7fff
	v_add3_u32 v13, v166, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v166, v166
	v_cmp_o_f32_e64 s5, v165, v165
	v_mov_b16_e64 v14.l, v163.h
	v_mov_b16_e32 v14.h, v0.h
	v_and_b32_e32 v15, 1, v0
	v_cndmask_b16 v12.l, 0x7fff, v11.h, vcc_lo
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s4
	v_cndmask_b16 v11.l, 0x7fff, v9.h, s5
	v_and_b32_e32 v9, 1, v14
	v_add3_u32 v13, v164, v15, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v164, v164
	v_mov_b16_e64 v0.l, v162.h
	v_mov_b16_e64 v14.l, v161.h
	v_add3_u32 v9, v163, v9, 0x7fff
	v_mov_b16_e64 v16.l, v160.h
	v_cndmask_b16 v13.h, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v163, v163
	v_and_b32_e32 v15, 1, v0
	v_mov_b16_e32 v16.h, v0.h
	v_mov_b16_e64 v0.l, v159.h
	v_and_b32_e32 v14, 1, v14
	v_cmp_o_f32_e64 s4, v162, v162
	v_add3_u32 v15, v162, v15, 0x7fff
	v_cndmask_b16 v13.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v16
	v_and_b32_e32 v16, 1, v0
	v_mov_b16_e64 v0.l, v158.h
	v_add3_u32 v14, v161, v14, 0x7fff
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s4
	v_cmp_o_f32_e32 vcc_lo, v161, v161
	v_add3_u32 v9, v160, v9, 0x7fff
	v_add3_u32 v16, v159, v16, 0x7fff
	v_cmp_o_f32_e64 s4, v159, v159
	v_cmp_o_f32_e64 s5, v160, v160
	v_mov_b16_e64 v17.l, v157.h
	v_mov_b16_e32 v17.h, v0.h
	v_and_b32_e32 v18, 1, v0
	v_cndmask_b16 v15.l, 0x7fff, v14.h, vcc_lo
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s4
	v_cndmask_b16 v14.l, 0x7fff, v9.h, s5
	v_and_b32_e32 v9, 1, v17
	v_add3_u32 v16, v158, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v158, v158
	v_mov_b16_e64 v0.l, v156.h
	v_mov_b16_e64 v17.l, v155.h
	v_add3_u32 v9, v157, v9, 0x7fff
	v_mov_b16_e64 v19.l, v154.h
	v_cndmask_b16 v16.h, 0x7fff, v16.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v157, v157
	v_and_b32_e32 v18, 1, v0
	v_mov_b16_e32 v19.h, v0.h
	v_mov_b16_e64 v0.l, v153.h
	v_and_b32_e32 v17, 1, v17
	v_cmp_o_f32_e64 s4, v156, v156
	v_add3_u32 v18, v156, v18, 0x7fff
	v_cndmask_b16 v16.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v19
	v_and_b32_e32 v19, 1, v0
	v_mov_b16_e64 v0.l, v152.h
	v_add3_u32 v17, v155, v17, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s4
	v_cmp_o_f32_e32 vcc_lo, v155, v155
	v_add3_u32 v9, v154, v9, 0x7fff
	v_add3_u32 v19, v153, v19, 0x7fff
	v_cmp_o_f32_e64 s4, v153, v153
	v_cmp_o_f32_e64 s5, v154, v154
	v_mov_b16_e64 v20.l, v151.h
	v_mov_b16_e32 v20.h, v0.h
	v_and_b32_e32 v21, 1, v0
	v_cndmask_b16 v18.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v17.h, 0x7fff, v19.h, s4
	v_cndmask_b16 v17.l, 0x7fff, v9.h, s5
	v_and_b32_e32 v9, 1, v20
	v_add3_u32 v19, v152, v21, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v152, v152
	v_mov_b16_e64 v0.l, v149.h
	v_mov_b16_e64 v20.l, v150.h
	v_add3_u32 v9, v151, v9, 0x7fff
	v_mov_b16_e64 v22.l, v148.h
	v_cndmask_b16 v19.h, 0x7fff, v19.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v151, v151
	v_and_b32_e32 v21, 1, v0
	v_mov_b16_e32 v22.h, v0.h
	v_mov_b16_e64 v0.l, v147.h
	v_and_b32_e32 v20, 1, v20
	v_cmp_o_f32_e64 s4, v149, v149
	v_add3_u32 v21, v149, v21, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v22
	v_and_b32_e32 v22, 1, v0
	v_mov_b16_e64 v0.l, v146.h
	v_add3_u32 v20, v150, v20, 0x7fff
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s4
	v_cmp_o_f32_e32 vcc_lo, v150, v150
	v_add3_u32 v9, v148, v9, 0x7fff
	v_add3_u32 v22, v147, v22, 0x7fff
	v_cmp_o_f32_e64 s4, v147, v147
	v_cmp_o_f32_e64 s5, v148, v148
	v_mov_b16_e64 v23.l, v145.h
	v_mov_b16_e32 v23.h, v0.h
	v_and_b32_e32 v24, 1, v0
	v_cndmask_b16 v21.l, 0x7fff, v20.h, vcc_lo
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s4
	v_cndmask_b16 v20.l, 0x7fff, v9.h, s5
	v_and_b32_e32 v9, 1, v23
	v_add3_u32 v22, v146, v24, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v146, v146
	v_mov_b16_e64 v0.l, v144.h
	v_mov_b16_e64 v23.l, v143.h
	v_add3_u32 v9, v145, v9, 0x7fff
	v_mov_b16_e64 v25.l, v142.h
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v145, v145
	v_and_b32_e32 v24, 1, v0
	v_mov_b16_e32 v25.h, v0.h
	v_mov_b16_e64 v0.l, v141.h
	v_and_b32_e32 v23, 1, v23
	v_cmp_o_f32_e64 s4, v144, v144
	v_add3_u32 v24, v144, v24, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v25
	v_and_b32_e32 v25, 1, v0
	v_mov_b16_e64 v0.l, v140.h
	v_add3_u32 v23, v143, v23, 0x7fff
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s4
	v_cmp_o_f32_e32 vcc_lo, v143, v143
	v_add3_u32 v9, v142, v9, 0x7fff
	v_add3_u32 v25, v141, v25, 0x7fff
	v_cmp_o_f32_e64 s4, v141, v141
	v_cmp_o_f32_e64 s5, v142, v142
	v_mov_b16_e64 v26.l, v139.h
	v_mov_b16_e32 v26.h, v0.h
	v_and_b32_e32 v27, 1, v0
	v_cndmask_b16 v24.l, 0x7fff, v23.h, vcc_lo
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s4
	v_cndmask_b16 v23.l, 0x7fff, v9.h, s5
	v_and_b32_e32 v9, 1, v26
	v_add3_u32 v25, v140, v27, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v140, v140
	v_mov_b16_e64 v0.l, v138.h
	v_mov_b16_e64 v26.l, v137.h
	v_add3_u32 v9, v139, v9, 0x7fff
	v_mov_b16_e64 v28.l, v135.h
	v_cndmask_b16 v25.h, 0x7fff, v25.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v139, v139
	v_and_b32_e32 v27, 1, v0
	v_mov_b16_e32 v28.h, v0.h
	v_mov_b16_e64 v0.l, v136.h
	v_and_b32_e32 v26, 1, v26
	v_cmp_o_f32_e64 s4, v138, v138
	v_add3_u32 v27, v138, v27, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v28
	v_and_b32_e32 v28, 1, v0
	v_mov_b16_e64 v0.l, v134.h
	v_add3_u32 v26, v137, v26, 0x7fff
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s4
	v_cmp_o_f32_e32 vcc_lo, v137, v137
	v_add3_u32 v9, v135, v9, 0x7fff
	v_add3_u32 v28, v136, v28, 0x7fff
	v_cmp_o_f32_e64 s4, v136, v136
	v_cmp_o_f32_e64 s5, v135, v135
	v_mov_b16_e64 v29.l, v133.h
	v_mov_b16_e32 v29.h, v0.h
	v_and_b32_e32 v30, 1, v0
	v_cndmask_b16 v27.l, 0x7fff, v26.h, vcc_lo
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s4
	v_cndmask_b16 v26.l, 0x7fff, v9.h, s5
	v_and_b32_e32 v9, 1, v29
	v_add3_u32 v28, v134, v30, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v134, v134
	v_mov_b16_e64 v0.l, v132.h
	v_mov_b16_e64 v29.l, v131.h
	v_add3_u32 v9, v133, v9, 0x7fff
	v_mov_b16_e64 v31.l, v129.h
	v_cndmask_b16 v28.h, 0x7fff, v28.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v133, v133
	v_and_b32_e32 v30, 1, v0
	v_mov_b16_e32 v31.h, v0.h
	v_mov_b16_e64 v0.l, v130.h
	v_and_b32_e32 v29, 1, v29
	v_cmp_o_f32_e64 s4, v132, v132
	v_add3_u32 v30, v132, v30, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v31
	v_and_b32_e32 v31, 1, v0
	v_add3_u32 v29, v131, v29, 0x7fff
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s4
	v_cmp_o_f32_e32 vcc_lo, v131, v131
	v_cmp_o_f32_e64 s4, v130, v130
	v_add3_u32 v31, v130, v31, 0x7fff
	v_mov_b16_e64 v0.l, v128.h
	v_add3_u32 v9, v129, v9, 0x7fff
	v_cmp_o_f32_e64 s5, v129, v129
	v_mov_b16_e32 v32.l, v127.h
	v_mov_b16_e32 v32.h, v0.h
	v_cndmask_b16 v30.l, 0x7fff, v29.h, vcc_lo
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s4
	v_and_b32_e32 v31, 1, v0
	v_mov_b16_e32 v0.l, v125.h
	v_cndmask_b16 v29.l, 0x7fff, v9.h, s5
	v_and_b32_e32 v9, 1, v32
	v_mov_b16_e32 v32.l, v126.h
	v_mov_b16_e32 v34.l, v124.h
	v_and_b32_e32 v33, 1, v0
	v_mov_b16_e32 v34.h, v0.h
	v_mov_b16_e32 v0.l, v123.h
	v_add3_u32 v31, v128, v31, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v128, v128
	v_and_b32_e32 v32, 1, v32
	v_and_b32_e32 v34, 1, v34
	v_and_b32_e32 v0, 1, v0
	.loc	1 277 22 is_stmt 0              ; generate_amdgcn.py:277:22
	s_mul_i32 s10, s40, s29
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v9, v127, v9, 0x7fff
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_add_i32 s10, s10, s7
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v31.h, 0x7fff, v31.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v127, v127
	v_add3_u32 v32, v126, v32, 0x7fff
	v_add3_u32 v33, v125, v33, 0x7fff
	v_cmp_o_f32_e64 s4, v125, v125
	v_cmp_o_f32_e64 s5, v126, v126
	v_add3_u32 v34, v124, v34, 0x7fff
	v_add3_u32 v0, v123, v0, 0x7fff
	v_cmp_o_f32_e64 s6, v123, v123
	v_cmp_o_f32_e64 s7, v124, v124
	v_cndmask_b16 v31.l, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v9.h, 0x7fff, v33.h, s4
	v_cndmask_b16 v9.l, 0x7fff, v32.h, s5
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s6
	v_cndmask_b16 v0.l, 0x7fff, v34.h, s7
	v_cndmask_b32_e64 v32, v3, v1, s0
	v_cndmask_b32_e64 v1, v1, v3, s0
	v_cndmask_b32_e64 v3, v4, v2, s0
	v_cndmask_b32_e64 v2, v2, v4, s0
	v_cndmask_b32_e64 v33, v7, v5, s0
	v_cndmask_b32_e64 v4, v5, v7, s0
	v_cndmask_b32_e64 v7, v8, v6, s0
	v_cndmask_b32_e64 v5, v6, v8, s0
	v_cndmask_b32_e64 v8, v12, v13, s0
	v_cndmask_b32_e64 v34, v11, v10, s0
	v_cndmask_b32_e64 v6, v10, v11, s0
	v_cndmask_b32_e64 v11, v13, v12, s0
	v_cndmask_b32_e64 v13, v16, v15, s0
	v_cndmask_b32_e64 v10, v15, v16, s0
	v_cndmask_b32_e64 v15, v18, v14, s0
	v_cndmask_b32_e64 v12, v14, v18, s0
	v_cndmask_b32_e64 v18, v21, v17, s0
	v_cndmask_b32_e64 v14, v17, v21, s0
	v_cndmask_b32_e64 v21, v20, v19, s0
	v_cndmask_b32_e64 v16, v19, v20, s0
	v_cndmask_b32_e64 v35, v23, v22, s0
	v_cndmask_b32_e64 v17, v22, v23, s0
	v_cndmask_b32_e64 v23, v25, v24, s0
	v_cndmask_b32_e64 v19, v24, v25, s0
	v_cndmask_b32_e64 v25, v28, v27, s0
	v_cndmask_b32_e64 v20, v27, v28, s0
	v_cndmask_b32_e64 v27, v30, v26, s0
	v_cndmask_b32_e64 v22, v26, v30, s0
	v_cndmask_b32_e64 v30, v9, v29, s0
	v_cndmask_b32_e64 v9, v29, v9, s0
	v_cndmask_b32_e64 v36, v0, v31, s0
	v_cndmask_b32_e64 v0, v31, v0, s0
	v_permlanex16_b32 v26, v4, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v8, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v1, v1, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v2, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v5, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v6, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v10, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v14, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v16, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v17, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v9, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v0, s39, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v26, v33, v105
	v_perm_b32 v5, v26, v33, v106
	v_perm_b32 v10, v31, v11, v105
	v_perm_b32 v11, v31, v11, v106
	v_add_nc_u32_e32 v31, 16, v65
	v_add_lshl_u32 v33, s10, v65, 1
	v_permlanex16_b32 v42, v19, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v20, s39, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v32, v105
	v_perm_b32 v1, v1, v32, v106
	v_perm_b32 v2, v24, v3, v105
	v_perm_b32 v3, v24, v3, v106
	v_perm_b32 v6, v28, v7, v105
	v_perm_b32 v7, v28, v7, v106
	v_perm_b32 v8, v29, v34, v105
	v_perm_b32 v9, v29, v34, v106
	v_perm_b32 v16, v39, v18, v105
	v_perm_b32 v17, v39, v18, v106
	v_perm_b32 v18, v40, v21, v105
	v_perm_b32 v19, v40, v21, v106
	v_perm_b32 v20, v41, v35, v105
	v_perm_b32 v21, v41, v35, v106
	v_add_nc_u32_e32 v32, 32, v65
	v_perm_b32 v28, v45, v30, v105
	v_perm_b32 v29, v45, v30, v106
	v_add_lshl_u32 v34, v31, s10, 1
	v_perm_b32 v30, v46, v36, v105
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	v_add_nc_u32_e32 v35, 48, v65
	v_perm_b32 v31, v46, v36, v106
	v_add_nc_u32_e32 v36, 64, v65
	v_permlanex16_b32 v38, v12, s39, 0xfedcba98 op_sel:[1,0]
	v_add_lshl_u32 v32, v32, s10, 1
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	v_add_lshl_u32 v35, v35, s10, 1
	buffer_store_b128 v[0:3], v33, s[12:15], 0 offen
	v_add_lshl_u32 v0, v36, s10, 1
	v_add_nc_u32_e32 v1, 0x50, v65
	v_add_nc_u32_e32 v2, 0x60, v65
	v_add_nc_u32_e32 v3, 0x70, v65
	v_permlanex16_b32 v44, v22, s39, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v12, v37, v13, v105
	v_perm_b32 v13, v37, v13, v106
	v_perm_b32 v14, v38, v15, v105
	v_perm_b32 v15, v38, v15, v106
	v_cndmask_b32_e64 v32, 0x80000000, v32, s1
	buffer_store_b128 v[4:7], v34, s[12:15], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v35, s1
	v_add_lshl_u32 v1, v1, s10, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	v_add_lshl_u32 v2, v2, s10, 1
	v_add_lshl_u32 v3, v3, s10, 1
	v_perm_b32 v22, v42, v23, v105
	v_perm_b32 v23, v42, v23, v106
	v_perm_b32 v24, v43, v25, v105
	v_perm_b32 v25, v43, v25, v106
	v_perm_b32 v26, v44, v27, v105
	v_perm_b32 v27, v44, v27, v106
	s_clause 0x1
	buffer_store_b128 v[8:11], v32, s[12:15], 0 offen
	buffer_store_b128 v[12:15], v4, s[12:15], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	buffer_store_b128 v[16:19], v0, s[12:15], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v2, s1
	v_cndmask_b32_e64 v2, 0x80000000, v3, s1
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	buffer_store_b128 v[20:23], v1, s[12:15], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_lt_i32 s2, s31
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	s_clause 0x1
	buffer_store_b128 v[24:27], v0, s[12:15], 0 offen
	buffer_store_b128 v[28:31], v2, s[12:15], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cbranch_scc0 .LBB0_8
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
                                        ;       Child Loop BB0_6 Depth 3
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s4, s2
	s_ashr_i32 s5, s2, 31
	s_mul_hi_u32 s6, s4, s38
	s_xor_b32 s5, s5, s37
	s_mul_i32 s7, s6, s36
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	s_sub_i32 s4, s4, s7
	s_add_i32 s7, s6, 1
	s_sub_i32 s10, s4, s36
	s_cmp_ge_u32 s4, s36
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v127, 0
	s_cselect_b32 s6, s7, s6
	s_cselect_b32 s4, s10, s4
	s_add_i32 s7, s6, 1
	s_cmp_ge_u32 s4, s36
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	s_cselect_b32 s4, s7, s6
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v129, 0
	s_xor_b32 s4, s4, s5
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v131, 0
	s_sub_i32 s4, s4, s5
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v135, 0
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s5, s28, s4
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s11, s4, s30
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s5, s5, 1
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s11, s2, s11
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s6, s5
	s_abs_i32 s22, s11
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v133, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v0, s7
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v145, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s7, v0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v151, 0
	s_mul_f32 s7, s7, 0x4f7ffffe
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v154, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s7, s7
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v160, 0
	s_mul_i32 s10, s10, s7
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v157, 0
	s_mul_hi_u32 s10, s7, s10
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v161, 0
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s11, s5
	s_mul_hi_u32 s7, s22, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s23, s7, s6
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v163, 0
	s_sub_i32 s22, s22, s23
	s_add_i32 s23, s7, 1
	s_sub_i32 s26, s22, s6
	s_cmp_ge_u32 s22, s6
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v167, 0
	s_cselect_b32 s7, s23, s7
	s_cselect_b32 s22, s26, s22
	s_add_i32 s23, s7, 1
	s_cmp_ge_u32 s22, s6
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v165, 0
	s_cselect_b32 s6, s23, s7
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v169, 0
	s_xor_b32 s6, s6, s10
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v171, 0
	s_sub_i32 s6, s6, s10
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v175, 0
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s5, s6, s5
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v173, 0
	s_sub_i32 s5, s11, s5
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v185, 0
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s5, s5, s4
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_and_b32 vcc_lo, exec_lo, s3
	.loc	1 221 18                        ; generate_amdgcn.py:221:18
	s_lshl_b32 s40, s5, 4
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s7, s6, 7
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_or_b32_e32 v0, s40, v98
	v_or_b32_e32 v1, s40, v99
	v_or_b32_e32 v187, s7, v101
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v186, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[66:67], null, v0, s34, v[64:65]
	v_dual_mov_b32 v127, 0 :: v_dual_and_b32 v0, 0x70, v100
	v_mul_lo_u32 v188, v1, s35
	v_or_b32_e32 v189, 8, v187
	v_or_b32_e32 v190, 10, v187
	v_or_b32_e32 v191, 12, v187
	v_or_b32_e32 v192, 14, v187
	v_or_b32_e32 v193, 16, v187
	v_or_b32_e32 v194, 18, v187
	v_or_b32_e32 v195, 20, v187
	v_or_b32_e32 v196, 22, v187
	v_or_b32_e32 v197, 24, v187
	v_or_b32_e32 v198, 26, v187
	v_or_b32_e32 v199, 28, v187
	v_or_b32_e32 v200, 30, v187
	v_or_b32_e32 v201, 32, v187
	v_or_b32_e32 v202, 34, v187
	v_or_b32_e32 v203, 36, v187
	v_or_b32_e32 v204, 38, v187
	v_or_b32_e32 v205, 40, v187
	v_or_b32_e32 v206, 42, v187
	v_or_b32_e32 v207, 44, v187
	v_or_b32_e32 v208, 46, v187
	v_or_b32_e32 v209, 48, v187
	v_or_b32_e32 v210, 50, v187
	v_or_b32_e32 v211, 52, v187
	v_or_b32_e32 v212, 54, v187
	v_or_b32_e32 v213, 56, v187
	v_or_b32_e32 v214, 58, v187
	v_or_b32_e32 v215, 60, v187
	v_or_b32_e32 v216, 62, v187
	v_or_b32_e32 v217, 64, v187
	v_or_b32_e32 v218, 0x42, v187
	v_or_b32_e32 v219, 0x44, v187
	v_or_b32_e32 v220, 0x46, v187
	v_or_b32_e32 v221, 0x48, v187
	v_or_b32_e32 v222, 0x4a, v187
	v_or_b32_e32 v223, 0x4c, v187
	v_or_b32_e32 v224, 0x4e, v187
	v_or_b32_e32 v225, 0x50, v187
	v_or_b32_e32 v226, 0x52, v187
	v_or_b32_e32 v227, 0x54, v187
	v_or_b32_e32 v228, 0x56, v187
	v_or_b32_e32 v229, 0x58, v187
	v_or_b32_e32 v230, 0x5a, v187
	v_or_b32_e32 v231, 0x5c, v187
	v_or_b32_e32 v232, 0x5e, v187
	v_or_b32_e32 v233, 0x60, v187
	v_or_b32_e32 v234, 0x62, v187
	v_or_b32_e32 v235, 0x64, v187
	v_or_b32_e32 v236, 0x66, v187
	v_or_b32_e32 v237, 0x68, v187
	v_or_b32_e32 v238, 0x6a, v187
	v_or_b32_e32 v239, 0x6c, v187
	v_or_b32_e32 v240, 0x6e, v187
	v_or_b32_e32 v241, 0x70, v187
	v_or_b32_e32 v242, 0x72, v187
	v_or_b32_e32 v243, 0x74, v187
	v_or_b32_e32 v244, 0x76, v187
	v_or_b32_e32 v245, 0x78, v187
	v_or_b32_e32 v246, 0x7a, v187
	v_or_b32_e32 v247, 0x7c, v187
	v_or_b32_e32 v248, 0x7e, v187
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v123, 0
	v_mov_b32_e32 v124, 0
	v_or_b32_e32 v67, s7, v0
	s_mov_b32 s41, 0
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_6 Depth 3
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, v249
	v_mov_b32_e32 v2, v249
	v_dual_mov_b32 v3, v249 :: v_dual_mov_b32 v8, 0
	v_mov_b32_e32 v4, v249
	v_dual_mov_b32 v5, v249 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v6, v249
	v_dual_mov_b32 v7, v249 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v9, v249 :: v_dual_mov_b32 v32, 0
	v_mov_b32_e32 v10, v249
	v_dual_mov_b32 v11, v249 :: v_dual_mov_b32 v40, 0
	v_mov_b32_e32 v12, v249
	v_dual_mov_b32 v13, v249 :: v_dual_mov_b32 v48, 0
	v_mov_b32_e32 v14, v249
	v_dual_mov_b32 v15, v249 :: v_dual_mov_b32 v56, 0
	v_mov_b32_e32 v17, v249
	v_mov_b32_e32 v18, v249
	v_mov_b32_e32 v19, v249
	v_mov_b32_e32 v20, v249
	v_mov_b32_e32 v21, v249
	v_mov_b32_e32 v22, v249
	v_mov_b32_e32 v23, v249
	v_mov_b32_e32 v25, v249
	v_mov_b32_e32 v26, v249
	v_mov_b32_e32 v27, v249
	v_mov_b32_e32 v28, v249
	v_mov_b32_e32 v29, v249
	v_mov_b32_e32 v30, v249
	v_mov_b32_e32 v31, v249
	v_mov_b32_e32 v33, v249
	v_mov_b32_e32 v34, v249
	v_mov_b32_e32 v35, v249
	v_mov_b32_e32 v36, v249
	v_mov_b32_e32 v37, v249
	v_mov_b32_e32 v38, v249
	v_mov_b32_e32 v39, v249
	v_mov_b32_e32 v41, v249
	v_mov_b32_e32 v42, v249
	v_mov_b32_e32 v43, v249
	v_mov_b32_e32 v44, v249
	v_mov_b32_e32 v45, v249
	v_mov_b32_e32 v46, v249
	v_mov_b32_e32 v47, v249
	v_mov_b32_e32 v49, v249
	v_mov_b32_e32 v50, v249
	v_mov_b32_e32 v51, v249
	v_mov_b32_e32 v52, v249
	v_mov_b32_e32 v53, v249
	v_mov_b32_e32 v54, v249
	v_mov_b32_e32 v55, v249
	v_mov_b32_e32 v57, v249
	v_mov_b32_e32 v58, v249
	v_mov_b32_e32 v59, v249
	v_mov_b32_e32 v60, v249
	v_mov_b32_e32 v61, v249
	v_mov_b32_e32 v62, v249
	v_mov_b32_e32 v63, v249
	.loc	1 256 28 is_stmt 1              ; generate_amdgcn.py:256:28
	s_lshl_b32 s10, s41, 7
	s_mov_b32 s11, -1
	s_mov_b32 s4, 0
.LBB0_6:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_5 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 258 26 is_stmt 1              ; generate_amdgcn.py:258:26
	s_or_b32 s4, s4, s10
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_mov_b32 s22, s18
	.loc	1 258 26                        ; generate_amdgcn.py:258:26
	s_add_i32 s26, s4, s33
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_mov_b32 s23, s19
	.loc	1 258 26                        ; generate_amdgcn.py:258:26
	v_or_b32_e32 v68, s26, v64
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	v_add_nc_u32_e32 v88, 0, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e32 vcc_lo, s34, v68
	.loc	1 259 56 is_stmt 0              ; generate_amdgcn.py:259:56
	v_subrev_nc_u32_e32 v68, s10, v68
	.loc	1 259 55                        ; generate_amdgcn.py:259:55
	v_cmp_gt_i32_e64 s4, 0x80, v68
	.loc	1 258 26 is_stmt 1              ; generate_amdgcn.py:258:26
	v_or_b32_e32 v68, s26, v102
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 259 56 is_stmt 0              ; generate_amdgcn.py:259:56
	v_subrev_nc_u32_e32 v69, s10, v68
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e64 s6, s34, v68
	s_mov_b32 s4, 64
	.loc	1 259 55                        ; generate_amdgcn.py:259:55
	v_cmp_gt_i32_e64 s5, 0x80, v69
	.loc	1 270 38 is_stmt 1              ; generate_amdgcn.py:270:38
	v_mad_u64_u32 v[68:69], null, v68, s29, v[67:68]
	.loc	1 265 38                        ; generate_amdgcn.py:265:38
	v_add_nc_u32_e32 v69, s26, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 s5, s6, s5
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	v_cndmask_b32_e64 v68, 0x80000000, v68, s5
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	buffer_load_u16 v69, v69, s[16:19], 0 offen
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	buffer_load_b128 v[84:87], v68, s[20:23], 0 offen
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_add_nc_u32_e32 v68, 0, v103
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 257 17                        ; generate_amdgcn.py:257:17
	s_and_b32 vcc_lo, exec_lo, s11
	s_mov_b32 s11, 0
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt vmcnt(1)
	ds_store_b16 v107, v69
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[82:83], v68
	ds_load_b64 v[80:81], v108
	ds_load_b64 v[78:79], v109
	ds_load_b64 v[76:77], v110
	ds_load_b64 v[74:75], v111
	ds_load_b64 v[72:73], v112
	ds_load_b64 v[70:71], v113
	ds_load_b64 v[68:69], v114
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v88, v[84:87]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v84, v104 offset:640
	ds_load_u8 v85, v104 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v104 offset:896
	ds_load_u8 v86, v104 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v104 offset:128
	ds_load_u8 v87, v104
	v_lshl_or_b32 v85, v85, 16, v84
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v104 offset:384
	ds_load_u8 v88, v104 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v87, 16, v86
	ds_load_u8 v86, v104 offset:656
	ds_load_u8 v87, v104 offset:528
	v_wmma_i32_16x16x16_iu4 v[0:7], v[84:85], v[82:83], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v104 offset:912
	ds_load_u8 v88, v104 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v104 offset:16
	ds_load_u8 v89, v104 offset:144
	v_lshl_or_b32 v87, v87, 16, v86
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v88, v89, 0xc0c0004
	ds_load_u8 v89, v104 offset:400
	ds_load_u8 v90, v104 offset:272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v89, 16, v88
	ds_load_u8 v88, v104 offset:672
	ds_load_u8 v89, v104 offset:544
	v_wmma_i32_16x16x16_iu4 v[8:15], v[86:87], v[82:83], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v104 offset:928
	ds_load_u8 v90, v104 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v104 offset:32
	ds_load_u8 v91, v104 offset:160
	v_lshl_or_b32 v89, v89, 16, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v90, v91, 0xc0c0004
	ds_load_u8 v91, v104 offset:416
	ds_load_u8 v92, v104 offset:288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v88, v91, 16, v90
	ds_load_u8 v90, v104 offset:688
	ds_load_u8 v91, v104 offset:560
	v_wmma_i32_16x16x16_iu4 v[16:23], v[88:89], v[82:83], v[16:23] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v104 offset:944
	ds_load_u8 v92, v104 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v104 offset:48
	ds_load_u8 v93, v104 offset:176
	v_lshl_or_b32 v91, v91, 16, v90
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v92, v93, 0xc0c0004
	ds_load_u8 v93, v104 offset:432
	ds_load_u8 v94, v104 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v93, 16, v92
	ds_load_u8 v92, v104 offset:704
	ds_load_u8 v93, v104 offset:576
	v_wmma_i32_16x16x16_iu4 v[24:31], v[90:91], v[82:83], v[24:31] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v104 offset:960
	ds_load_u8 v94, v104 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v104 offset:192
	ds_load_u8 v95, v104 offset:64
	v_lshl_or_b32 v93, v93, 16, v92
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v104 offset:448
	ds_load_u8 v96, v104 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v95, 16, v94
	ds_load_u8 v94, v104 offset:720
	ds_load_u8 v95, v104 offset:592
	v_wmma_i32_16x16x16_iu4 v[32:39], v[92:93], v[82:83], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v104 offset:976
	ds_load_u8 v96, v104 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v104 offset:208
	ds_load_u8 v97, v104 offset:80
	v_lshl_or_b32 v95, v95, 16, v94
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	ds_load_u8 v97, v104 offset:464
	ds_load_u8 v250, v104 offset:336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v250, v97, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v94, v97, 16, v96
	ds_load_u8 v96, v104 offset:736
	ds_load_u8 v97, v104 offset:608
	v_wmma_i32_16x16x16_iu4 v[40:47], v[94:95], v[82:83], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	ds_load_u8 v97, v104 offset:992
	ds_load_u8 v250, v104 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v250, v97, 0xc0c0004
	ds_load_u8 v250, v104 offset:224
	ds_load_u8 v251, v104 offset:96
	v_lshl_or_b32 v97, v97, 16, v96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v250, v251, v250, 0xc0c0004
	ds_load_u8 v251, v104 offset:480
	ds_load_u8 v252, v104 offset:352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v251, v252, v251, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v251, 16, v250
	ds_load_u8 v250, v104 offset:240
	ds_load_u8 v251, v104 offset:112
	v_wmma_i32_16x16x16_iu4 v[48:55], v[96:97], v[82:83], v[48:55] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v250, v251, v250, 0xc0c0004
	ds_load_u8 v251, v104 offset:496
	ds_load_u8 v252, v104 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v251, v252, v251, 0xc0c0004
	ds_load_u8 v252, v104 offset:752
	ds_load_u8 v253, v104 offset:624
	v_lshl_or_b32 v250, v251, 16, v250
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v252, v253, v252, 0xc0c0004
	ds_load_u8 v253, v115
	ds_load_u8 v254, v104 offset:880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v253, v254, v253, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v251, v253, 16, v252
	v_wmma_i32_16x16x16_iu4 v[56:63], v[250:251], v[82:83], v[56:63] neg_lo:[1,1,0]
	ds_load_u8 v82, v104 offset:1664
	ds_load_u8 v83, v104 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v104 offset:1920
	ds_load_u8 v84, v104 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v104 offset:1152
	ds_load_u8 v85, v104 offset:1024
	v_lshl_or_b32 v83, v83, 16, v82
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v104 offset:1408
	ds_load_u8 v86, v104 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v85, 16, v84
	ds_load_u8 v84, v104 offset:1680
	ds_load_u8 v85, v104 offset:1552
	v_wmma_i32_16x16x16_iu4 v[0:7], v[82:83], v[80:81], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v104 offset:1936
	ds_load_u8 v86, v104 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v104 offset:1168
	ds_load_u8 v87, v104 offset:1040
	v_lshl_or_b32 v85, v85, 16, v84
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v104 offset:1424
	ds_load_u8 v88, v104 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v87, 16, v86
	ds_load_u8 v86, v104 offset:1696
	ds_load_u8 v87, v104 offset:1568
	v_wmma_i32_16x16x16_iu4 v[8:15], v[84:85], v[80:81], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v104 offset:1952
	ds_load_u8 v88, v104 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v104 offset:1184
	ds_load_u8 v89, v104 offset:1056
	v_lshl_or_b32 v87, v87, 16, v86
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v104 offset:1440
	ds_load_u8 v90, v104 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v89, 16, v88
	ds_load_u8 v88, v104 offset:1712
	ds_load_u8 v89, v104 offset:1584
	v_wmma_i32_16x16x16_iu4 v[16:23], v[86:87], v[80:81], v[16:23] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v104 offset:1968
	ds_load_u8 v90, v104 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v104 offset:1200
	ds_load_u8 v91, v104 offset:1072
	v_lshl_or_b32 v89, v89, 16, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v104 offset:1456
	ds_load_u8 v92, v104 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v88, v91, 16, v90
	ds_load_u8 v90, v104 offset:1728
	ds_load_u8 v91, v104 offset:1600
	v_wmma_i32_16x16x16_iu4 v[24:31], v[88:89], v[80:81], v[24:31] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v104 offset:1984
	ds_load_u8 v92, v104 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v104 offset:1216
	ds_load_u8 v93, v104 offset:1088
	v_lshl_or_b32 v91, v91, 16, v90
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v104 offset:1472
	ds_load_u8 v94, v104 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v93, 16, v92
	ds_load_u8 v92, v104 offset:1744
	ds_load_u8 v93, v104 offset:1616
	v_wmma_i32_16x16x16_iu4 v[32:39], v[90:91], v[80:81], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v104 offset:2000
	ds_load_u8 v94, v104 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v104 offset:1232
	ds_load_u8 v95, v104 offset:1104
	v_lshl_or_b32 v93, v93, 16, v92
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v104 offset:1488
	ds_load_u8 v96, v104 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v95, 16, v94
	ds_load_u8 v94, v104 offset:1760
	ds_load_u8 v95, v104 offset:1632
	v_wmma_i32_16x16x16_iu4 v[40:47], v[92:93], v[80:81], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v104 offset:2016
	ds_load_u8 v96, v104 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v104 offset:1248
	ds_load_u8 v97, v104 offset:1120
	v_lshl_or_b32 v95, v95, 16, v94
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	ds_load_u8 v97, v104 offset:1504
	ds_load_u8 v250, v104 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v250, v97, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v94, v97, 16, v96
	ds_load_u8 v96, v104 offset:1264
	ds_load_u8 v97, v104 offset:1136
	v_wmma_i32_16x16x16_iu4 v[48:55], v[94:95], v[80:81], v[48:55] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	ds_load_u8 v97, v104 offset:1520
	ds_load_u8 v250, v104 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v250, v97, 0xc0c0004
	ds_load_u8 v250, v104 offset:1776
	ds_load_u8 v251, v104 offset:1648
	v_lshl_or_b32 v96, v97, 16, v96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v250, v251, v250, 0xc0c0004
	ds_load_u8 v251, v116
	ds_load_u8 v252, v104 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v251, v252, v251, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v97, v251, 16, v250
	v_wmma_i32_16x16x16_iu4 v[56:63], v[96:97], v[80:81], v[56:63] neg_lo:[1,1,0]
	ds_load_u8 v80, v104 offset:2688
	ds_load_u8 v81, v104 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v104 offset:2944
	ds_load_u8 v82, v104 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v104 offset:2176
	ds_load_u8 v83, v104 offset:2048
	v_lshl_or_b32 v81, v81, 16, v80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v104 offset:2432
	ds_load_u8 v84, v104 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v83, 16, v82
	ds_load_u8 v82, v104 offset:2704
	ds_load_u8 v83, v104 offset:2576
	v_wmma_i32_16x16x16_iu4 v[0:7], v[80:81], v[78:79], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v104 offset:2960
	ds_load_u8 v84, v104 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v104 offset:2192
	ds_load_u8 v85, v104 offset:2064
	v_lshl_or_b32 v83, v83, 16, v82
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v104 offset:2448
	ds_load_u8 v86, v104 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v85, 16, v84
	ds_load_u8 v84, v104 offset:2720
	ds_load_u8 v85, v104 offset:2592
	v_wmma_i32_16x16x16_iu4 v[8:15], v[82:83], v[78:79], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v104 offset:2976
	ds_load_u8 v86, v104 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v104 offset:2208
	ds_load_u8 v87, v104 offset:2080
	v_lshl_or_b32 v85, v85, 16, v84
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v104 offset:2464
	ds_load_u8 v88, v104 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v87, 16, v86
	ds_load_u8 v86, v104 offset:2736
	ds_load_u8 v87, v104 offset:2608
	v_wmma_i32_16x16x16_iu4 v[16:23], v[84:85], v[78:79], v[16:23] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v104 offset:2992
	ds_load_u8 v88, v104 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v104 offset:2224
	ds_load_u8 v89, v104 offset:2096
	v_lshl_or_b32 v87, v87, 16, v86
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v104 offset:2480
	ds_load_u8 v90, v104 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v89, 16, v88
	ds_load_u8 v88, v104 offset:2752
	ds_load_u8 v89, v104 offset:2624
	v_wmma_i32_16x16x16_iu4 v[24:31], v[86:87], v[78:79], v[24:31] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v104 offset:3008
	ds_load_u8 v90, v104 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v104 offset:2240
	ds_load_u8 v91, v104 offset:2112
	v_lshl_or_b32 v89, v89, 16, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v104 offset:2496
	ds_load_u8 v92, v104 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v88, v91, 16, v90
	ds_load_u8 v90, v104 offset:2768
	ds_load_u8 v91, v104 offset:2640
	v_wmma_i32_16x16x16_iu4 v[32:39], v[88:89], v[78:79], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v104 offset:3024
	ds_load_u8 v92, v104 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v104 offset:2256
	ds_load_u8 v93, v104 offset:2128
	v_lshl_or_b32 v91, v91, 16, v90
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v104 offset:2512
	ds_load_u8 v94, v104 offset:2384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v93, 16, v92
	ds_load_u8 v92, v104 offset:2784
	ds_load_u8 v93, v104 offset:2656
	v_wmma_i32_16x16x16_iu4 v[40:47], v[90:91], v[78:79], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v104 offset:3040
	ds_load_u8 v94, v104 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v104 offset:2272
	ds_load_u8 v95, v104 offset:2144
	v_lshl_or_b32 v93, v93, 16, v92
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v104 offset:2528
	ds_load_u8 v96, v104 offset:2400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v95, 16, v94
	ds_load_u8 v94, v104 offset:2288
	ds_load_u8 v95, v104 offset:2160
	v_wmma_i32_16x16x16_iu4 v[48:55], v[92:93], v[78:79], v[48:55] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v104 offset:2544
	ds_load_u8 v96, v104 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v104 offset:2800
	ds_load_u8 v97, v104 offset:2672
	v_lshl_or_b32 v94, v95, 16, v94
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	ds_load_u8 v97, v117
	ds_load_u8 v250, v104 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v250, v97, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v95, v97, 16, v96
	v_wmma_i32_16x16x16_iu4 v[56:63], v[94:95], v[78:79], v[56:63] neg_lo:[1,1,0]
	ds_load_u8 v78, v104 offset:3712
	ds_load_u8 v79, v104 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v104 offset:3968
	ds_load_u8 v80, v104 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v104 offset:3200
	ds_load_u8 v81, v104 offset:3072
	v_lshl_or_b32 v79, v79, 16, v78
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v104 offset:3456
	ds_load_u8 v82, v104 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v81, 16, v80
	ds_load_u8 v80, v104 offset:3728
	ds_load_u8 v81, v104 offset:3600
	v_wmma_i32_16x16x16_iu4 v[0:7], v[78:79], v[76:77], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v104 offset:3984
	ds_load_u8 v82, v104 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v104 offset:3216
	ds_load_u8 v83, v104 offset:3088
	v_lshl_or_b32 v81, v81, 16, v80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v104 offset:3472
	ds_load_u8 v84, v104 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v83, 16, v82
	ds_load_u8 v82, v104 offset:3744
	ds_load_u8 v83, v104 offset:3616
	v_wmma_i32_16x16x16_iu4 v[8:15], v[80:81], v[76:77], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v104 offset:4000
	ds_load_u8 v84, v104 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v104 offset:3232
	ds_load_u8 v85, v104 offset:3104
	v_lshl_or_b32 v83, v83, 16, v82
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v104 offset:3488
	ds_load_u8 v86, v104 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v85, 16, v84
	ds_load_u8 v84, v104 offset:3760
	ds_load_u8 v85, v104 offset:3632
	v_wmma_i32_16x16x16_iu4 v[16:23], v[82:83], v[76:77], v[16:23] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v104 offset:4016
	ds_load_u8 v86, v104 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v104 offset:3248
	ds_load_u8 v87, v104 offset:3120
	v_lshl_or_b32 v85, v85, 16, v84
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v104 offset:3504
	ds_load_u8 v88, v104 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v87, 16, v86
	ds_load_u8 v86, v104 offset:3776
	ds_load_u8 v87, v104 offset:3648
	v_wmma_i32_16x16x16_iu4 v[24:31], v[84:85], v[76:77], v[24:31] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v104 offset:4032
	ds_load_u8 v88, v104 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v104 offset:3264
	ds_load_u8 v89, v104 offset:3136
	v_lshl_or_b32 v87, v87, 16, v86
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v104 offset:3520
	ds_load_u8 v90, v104 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v89, 16, v88
	ds_load_u8 v88, v104 offset:3792
	ds_load_u8 v89, v104 offset:3664
	v_wmma_i32_16x16x16_iu4 v[32:39], v[86:87], v[76:77], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v104 offset:4048
	ds_load_u8 v90, v104 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v104 offset:3280
	ds_load_u8 v91, v104 offset:3152
	v_lshl_or_b32 v89, v89, 16, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v104 offset:3536
	ds_load_u8 v92, v104 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v88, v91, 16, v90
	ds_load_u8 v90, v104 offset:3808
	ds_load_u8 v91, v104 offset:3680
	v_wmma_i32_16x16x16_iu4 v[40:47], v[88:89], v[76:77], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v104 offset:4064
	ds_load_u8 v92, v104 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v104 offset:3296
	ds_load_u8 v93, v104 offset:3168
	v_lshl_or_b32 v91, v91, 16, v90
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v104 offset:3552
	ds_load_u8 v94, v104 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v93, 16, v92
	ds_load_u8 v92, v104 offset:3312
	ds_load_u8 v93, v104 offset:3184
	v_wmma_i32_16x16x16_iu4 v[48:55], v[90:91], v[76:77], v[48:55] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v104 offset:3568
	ds_load_u8 v94, v104 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v104 offset:3824
	ds_load_u8 v95, v104 offset:3696
	v_lshl_or_b32 v92, v93, 16, v92
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v118
	ds_load_u8 v96, v104 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v93, v95, 16, v94
	v_wmma_i32_16x16x16_iu4 v[56:63], v[92:93], v[76:77], v[56:63] neg_lo:[1,1,0]
	ds_load_u8 v76, v104 offset:4736
	ds_load_u8 v77, v104 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v104 offset:4992
	ds_load_u8 v78, v104 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v104 offset:4224
	ds_load_u8 v79, v104 offset:4096
	v_lshl_or_b32 v77, v77, 16, v76
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v104 offset:4480
	ds_load_u8 v80, v104 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v79, 16, v78
	ds_load_u8 v78, v104 offset:4752
	ds_load_u8 v79, v104 offset:4624
	v_wmma_i32_16x16x16_iu4 v[0:7], v[76:77], v[74:75], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v104 offset:5008
	ds_load_u8 v80, v104 offset:4880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v104 offset:4240
	ds_load_u8 v81, v104 offset:4112
	v_lshl_or_b32 v79, v79, 16, v78
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v104 offset:4496
	ds_load_u8 v82, v104 offset:4368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v81, 16, v80
	ds_load_u8 v80, v104 offset:4768
	ds_load_u8 v81, v104 offset:4640
	v_wmma_i32_16x16x16_iu4 v[8:15], v[78:79], v[74:75], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v104 offset:5024
	ds_load_u8 v82, v104 offset:4896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v104 offset:4256
	ds_load_u8 v83, v104 offset:4128
	v_lshl_or_b32 v81, v81, 16, v80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v104 offset:4512
	ds_load_u8 v84, v104 offset:4384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v83, 16, v82
	ds_load_u8 v82, v104 offset:4784
	ds_load_u8 v83, v104 offset:4656
	v_wmma_i32_16x16x16_iu4 v[16:23], v[80:81], v[74:75], v[16:23] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v104 offset:5040
	ds_load_u8 v84, v104 offset:4912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v104 offset:4272
	ds_load_u8 v85, v104 offset:4144
	v_lshl_or_b32 v83, v83, 16, v82
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v104 offset:4528
	ds_load_u8 v86, v104 offset:4400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v85, 16, v84
	ds_load_u8 v84, v104 offset:4800
	ds_load_u8 v85, v104 offset:4672
	v_wmma_i32_16x16x16_iu4 v[24:31], v[82:83], v[74:75], v[24:31] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v104 offset:5056
	ds_load_u8 v86, v104 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v104 offset:4288
	ds_load_u8 v87, v104 offset:4160
	v_lshl_or_b32 v85, v85, 16, v84
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v104 offset:4544
	ds_load_u8 v88, v104 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v87, 16, v86
	ds_load_u8 v86, v104 offset:4816
	ds_load_u8 v87, v104 offset:4688
	v_wmma_i32_16x16x16_iu4 v[32:39], v[84:85], v[74:75], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v104 offset:5072
	ds_load_u8 v88, v104 offset:4944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v104 offset:4304
	ds_load_u8 v89, v104 offset:4176
	v_lshl_or_b32 v87, v87, 16, v86
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v104 offset:4560
	ds_load_u8 v90, v104 offset:4432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v89, 16, v88
	ds_load_u8 v88, v104 offset:4832
	ds_load_u8 v89, v104 offset:4704
	v_wmma_i32_16x16x16_iu4 v[40:47], v[86:87], v[74:75], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v104 offset:5088
	ds_load_u8 v90, v104 offset:4960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v104 offset:4320
	ds_load_u8 v91, v104 offset:4192
	v_lshl_or_b32 v89, v89, 16, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v104 offset:4576
	ds_load_u8 v92, v104 offset:4448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v88, v91, 16, v90
	ds_load_u8 v90, v104 offset:4336
	ds_load_u8 v91, v104 offset:4208
	v_wmma_i32_16x16x16_iu4 v[48:55], v[88:89], v[74:75], v[48:55] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v104 offset:4592
	ds_load_u8 v92, v104 offset:4464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v104 offset:4848
	ds_load_u8 v93, v104 offset:4720
	v_lshl_or_b32 v90, v91, 16, v90
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v119
	ds_load_u8 v94, v104 offset:4976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v93, 16, v92
	v_wmma_i32_16x16x16_iu4 v[56:63], v[90:91], v[74:75], v[56:63] neg_lo:[1,1,0]
	ds_load_u8 v74, v104 offset:5760
	ds_load_u8 v75, v104 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v104 offset:6016
	ds_load_u8 v76, v104 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v104 offset:5248
	ds_load_u8 v77, v104 offset:5120
	v_lshl_or_b32 v75, v75, 16, v74
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v104 offset:5504
	ds_load_u8 v78, v104 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v77, 16, v76
	ds_load_u8 v76, v104 offset:5776
	ds_load_u8 v77, v104 offset:5648
	v_wmma_i32_16x16x16_iu4 v[0:7], v[74:75], v[72:73], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v104 offset:6032
	ds_load_u8 v78, v104 offset:5904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v104 offset:5264
	ds_load_u8 v79, v104 offset:5136
	v_lshl_or_b32 v77, v77, 16, v76
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v104 offset:5520
	ds_load_u8 v80, v104 offset:5392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v79, 16, v78
	ds_load_u8 v78, v104 offset:5792
	ds_load_u8 v79, v104 offset:5664
	v_wmma_i32_16x16x16_iu4 v[8:15], v[76:77], v[72:73], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v104 offset:6048
	ds_load_u8 v80, v104 offset:5920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v104 offset:5280
	ds_load_u8 v81, v104 offset:5152
	v_lshl_or_b32 v79, v79, 16, v78
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v104 offset:5536
	ds_load_u8 v82, v104 offset:5408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v81, 16, v80
	ds_load_u8 v80, v104 offset:5808
	ds_load_u8 v81, v104 offset:5680
	v_wmma_i32_16x16x16_iu4 v[16:23], v[78:79], v[72:73], v[16:23] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v104 offset:6064
	ds_load_u8 v82, v104 offset:5936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v104 offset:5296
	ds_load_u8 v83, v104 offset:5168
	v_lshl_or_b32 v81, v81, 16, v80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v104 offset:5552
	ds_load_u8 v84, v104 offset:5424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v83, 16, v82
	ds_load_u8 v82, v104 offset:5824
	ds_load_u8 v83, v104 offset:5696
	v_wmma_i32_16x16x16_iu4 v[24:31], v[80:81], v[72:73], v[24:31] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v104 offset:6080
	ds_load_u8 v84, v104 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v104 offset:5312
	ds_load_u8 v85, v104 offset:5184
	v_lshl_or_b32 v83, v83, 16, v82
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v104 offset:5568
	ds_load_u8 v86, v104 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v85, 16, v84
	ds_load_u8 v84, v104 offset:5840
	ds_load_u8 v85, v104 offset:5712
	v_wmma_i32_16x16x16_iu4 v[32:39], v[82:83], v[72:73], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v104 offset:6096
	ds_load_u8 v86, v104 offset:5968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v104 offset:5328
	ds_load_u8 v87, v104 offset:5200
	v_lshl_or_b32 v85, v85, 16, v84
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v104 offset:5584
	ds_load_u8 v88, v104 offset:5456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v87, 16, v86
	ds_load_u8 v86, v104 offset:5856
	ds_load_u8 v87, v104 offset:5728
	v_wmma_i32_16x16x16_iu4 v[40:47], v[84:85], v[72:73], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v104 offset:6112
	ds_load_u8 v88, v104 offset:5984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v104 offset:5344
	ds_load_u8 v89, v104 offset:5216
	v_lshl_or_b32 v87, v87, 16, v86
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v104 offset:5600
	ds_load_u8 v90, v104 offset:5472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v89, 16, v88
	ds_load_u8 v88, v104 offset:5360
	ds_load_u8 v89, v104 offset:5232
	v_wmma_i32_16x16x16_iu4 v[48:55], v[86:87], v[72:73], v[48:55] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v104 offset:5616
	ds_load_u8 v90, v104 offset:5488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v104 offset:5872
	ds_load_u8 v91, v104 offset:5744
	v_lshl_or_b32 v88, v89, 16, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v120
	ds_load_u8 v92, v104 offset:6000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v91, 16, v90
	v_wmma_i32_16x16x16_iu4 v[56:63], v[88:89], v[72:73], v[56:63] neg_lo:[1,1,0]
	ds_load_u8 v72, v104 offset:6784
	ds_load_u8 v73, v104 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v104 offset:7040
	ds_load_u8 v74, v104 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v104 offset:6272
	ds_load_u8 v75, v104 offset:6144
	v_lshl_or_b32 v73, v73, 16, v72
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v104 offset:6528
	ds_load_u8 v76, v104 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v75, 16, v74
	ds_load_u8 v74, v104 offset:6800
	ds_load_u8 v75, v104 offset:6672
	v_wmma_i32_16x16x16_iu4 v[0:7], v[72:73], v[70:71], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v104 offset:7056
	ds_load_u8 v76, v104 offset:6928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v104 offset:6288
	ds_load_u8 v77, v104 offset:6160
	v_lshl_or_b32 v75, v75, 16, v74
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v104 offset:6544
	ds_load_u8 v78, v104 offset:6416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v77, 16, v76
	ds_load_u8 v76, v104 offset:6816
	ds_load_u8 v77, v104 offset:6688
	v_wmma_i32_16x16x16_iu4 v[8:15], v[74:75], v[70:71], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v104 offset:7072
	ds_load_u8 v78, v104 offset:6944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v104 offset:6304
	ds_load_u8 v79, v104 offset:6176
	v_lshl_or_b32 v77, v77, 16, v76
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v104 offset:6560
	ds_load_u8 v80, v104 offset:6432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v79, 16, v78
	ds_load_u8 v78, v104 offset:6832
	ds_load_u8 v79, v104 offset:6704
	v_wmma_i32_16x16x16_iu4 v[16:23], v[76:77], v[70:71], v[16:23] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v104 offset:7088
	ds_load_u8 v80, v104 offset:6960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v104 offset:6320
	ds_load_u8 v81, v104 offset:6192
	v_lshl_or_b32 v79, v79, 16, v78
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v104 offset:6576
	ds_load_u8 v82, v104 offset:6448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v81, 16, v80
	ds_load_u8 v80, v104 offset:6848
	ds_load_u8 v81, v104 offset:6720
	v_wmma_i32_16x16x16_iu4 v[24:31], v[78:79], v[70:71], v[24:31] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v104 offset:7104
	ds_load_u8 v82, v104 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v104 offset:6336
	ds_load_u8 v83, v104 offset:6208
	v_lshl_or_b32 v81, v81, 16, v80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v104 offset:6592
	ds_load_u8 v84, v104 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v83, 16, v82
	ds_load_u8 v82, v104 offset:6864
	ds_load_u8 v83, v104 offset:6736
	v_wmma_i32_16x16x16_iu4 v[32:39], v[80:81], v[70:71], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v104 offset:7120
	ds_load_u8 v84, v104 offset:6992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v104 offset:6352
	ds_load_u8 v85, v104 offset:6224
	v_lshl_or_b32 v83, v83, 16, v82
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v104 offset:6608
	ds_load_u8 v86, v104 offset:6480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v85, 16, v84
	ds_load_u8 v84, v104 offset:6880
	ds_load_u8 v85, v104 offset:6752
	v_wmma_i32_16x16x16_iu4 v[40:47], v[82:83], v[70:71], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v104 offset:7136
	ds_load_u8 v86, v104 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v104 offset:6368
	ds_load_u8 v87, v104 offset:6240
	v_lshl_or_b32 v85, v85, 16, v84
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v104 offset:6624
	ds_load_u8 v88, v104 offset:6496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v87, 16, v86
	ds_load_u8 v86, v104 offset:6384
	ds_load_u8 v87, v104 offset:6256
	v_wmma_i32_16x16x16_iu4 v[48:55], v[84:85], v[70:71], v[48:55] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v104 offset:6640
	ds_load_u8 v88, v104 offset:6512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v104 offset:6896
	ds_load_u8 v89, v104 offset:6768
	v_lshl_or_b32 v86, v87, 16, v86
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v121
	ds_load_u8 v90, v104 offset:7024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v87, v89, 16, v88
	v_wmma_i32_16x16x16_iu4 v[56:63], v[86:87], v[70:71], v[56:63] neg_lo:[1,1,0]
	ds_load_u8 v70, v104 offset:7808
	ds_load_u8 v71, v104 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v104 offset:8064
	ds_load_u8 v72, v104 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v104 offset:7296
	ds_load_u8 v73, v104 offset:7168
	v_lshl_or_b32 v71, v71, 16, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v104 offset:7552
	ds_load_u8 v74, v104 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v73, 16, v72
	ds_load_u8 v72, v104 offset:7824
	ds_load_u8 v73, v104 offset:7696
	v_wmma_i32_16x16x16_iu4 v[0:7], v[70:71], v[68:69], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v104 offset:8080
	ds_load_u8 v74, v104 offset:7952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v104 offset:7312
	ds_load_u8 v75, v104 offset:7184
	v_lshl_or_b32 v73, v73, 16, v72
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v104 offset:7568
	ds_load_u8 v76, v104 offset:7440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v75, 16, v74
	ds_load_u8 v74, v104 offset:7840
	ds_load_u8 v75, v104 offset:7712
	v_wmma_i32_16x16x16_iu4 v[8:15], v[72:73], v[68:69], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v104 offset:8096
	ds_load_u8 v76, v104 offset:7968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v104 offset:7328
	ds_load_u8 v77, v104 offset:7200
	v_lshl_or_b32 v75, v75, 16, v74
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v104 offset:7584
	ds_load_u8 v78, v104 offset:7456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v77, 16, v76
	ds_load_u8 v76, v104 offset:7856
	ds_load_u8 v77, v104 offset:7728
	v_wmma_i32_16x16x16_iu4 v[16:23], v[74:75], v[68:69], v[16:23] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v104 offset:8112
	ds_load_u8 v78, v104 offset:7984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v104 offset:7344
	ds_load_u8 v79, v104 offset:7216
	v_lshl_or_b32 v77, v77, 16, v76
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v104 offset:7600
	ds_load_u8 v80, v104 offset:7472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v79, 16, v78
	ds_load_u8 v78, v104 offset:7872
	ds_load_u8 v79, v104 offset:7744
	v_wmma_i32_16x16x16_iu4 v[24:31], v[76:77], v[68:69], v[24:31] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v104 offset:8128
	ds_load_u8 v80, v104 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v104 offset:7360
	ds_load_u8 v81, v104 offset:7232
	v_lshl_or_b32 v79, v79, 16, v78
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v104 offset:7616
	ds_load_u8 v82, v104 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v81, 16, v80
	ds_load_u8 v80, v104 offset:7888
	ds_load_u8 v81, v104 offset:7760
	v_wmma_i32_16x16x16_iu4 v[32:39], v[78:79], v[68:69], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v104 offset:8144
	ds_load_u8 v82, v104 offset:8016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v104 offset:7376
	ds_load_u8 v83, v104 offset:7248
	v_lshl_or_b32 v81, v81, 16, v80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v104 offset:7632
	ds_load_u8 v84, v104 offset:7504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v83, 16, v82
	ds_load_u8 v82, v104 offset:7904
	ds_load_u8 v83, v104 offset:7776
	v_wmma_i32_16x16x16_iu4 v[40:47], v[80:81], v[68:69], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v104 offset:8160
	ds_load_u8 v84, v104 offset:8032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v104 offset:7392
	ds_load_u8 v85, v104 offset:7264
	v_lshl_or_b32 v83, v83, 16, v82
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v104 offset:7648
	ds_load_u8 v86, v104 offset:7520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v85, 16, v84
	ds_load_u8 v84, v104 offset:7408
	ds_load_u8 v85, v104 offset:7280
	v_wmma_i32_16x16x16_iu4 v[48:55], v[82:83], v[68:69], v[48:55] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v104 offset:7664
	ds_load_u8 v86, v104 offset:7536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v104 offset:7920
	ds_load_u8 v87, v104 offset:7792
	v_lshl_or_b32 v84, v85, 16, v84
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v122
	ds_load_u8 v88, v104 offset:8048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v87, 16, v86
	v_wmma_i32_16x16x16_iu4 v[56:63], v[84:85], v[68:69], v[56:63] neg_lo:[1,1,0]
	.loc	1 257 17                        ; generate_amdgcn.py:257:17
	s_cbranch_vccnz .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=2
	.loc	1 273 40                        ; generate_amdgcn.py:273:40
	s_mul_i32 s4, s41, s29
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v69, v30
	v_cvt_f32_i32_e32 v68, v31
	v_cvt_f32_i32_e32 v31, v32
	v_cvt_f32_i32_e32 v30, v33
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	v_add_lshl_u32 v32, s41, v188, 1
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v187, s4, 1
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v70, v29
	v_cvt_f32_i32_e32 v29, v34
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	buffer_load_u16 v32, v32, s[8:11], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	v_or_b32_e32 v34, 2, v187
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v71, v28
	v_cvt_f32_i32_e32 v28, v35
	v_or_b32_e32 v35, 4, v187
	v_cvt_f32_i32_e32 v72, v27
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v34, v34, s4, 1
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v27, v36
	v_or_b32_e32 v36, 6, v187
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v35, v35, s4, 1
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v73, v26
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v34, v34, s[24:27], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v26, v37
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v36, v36, s4, 1
	buffer_load_u16 v35, v35, s[24:27], 0 offen
	v_add_lshl_u32 v37, v189, s4, 1
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v74, v25
	v_cvt_f32_i32_e32 v25, v38
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v36, v36, s[24:27], 0 offen
	v_add_lshl_u32 v38, v190, s4, 1
	buffer_load_u16 v37, v37, s[24:27], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v75, v24
	v_cvt_f32_i32_e32 v24, v39
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v39, v191, s4, 1
	buffer_load_u16 v38, v38, s[24:27], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v76, v23
	v_cvt_f32_i32_e32 v23, v40
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v40, v192, s4, 1
	buffer_load_u16 v39, v39, s[24:27], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v92, v0
	v_cvt_f32_i32_e32 v94, v2
	v_cvt_f32_i32_e32 v93, v1
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v40, v40, s[24:27], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v77, v22
	v_cvt_f32_i32_e32 v22, v41
	v_cvt_f32_i32_e32 v95, v3
	v_cvt_f32_i32_e32 v96, v4
	v_cvt_f32_i32_e32 v97, v5
	v_cvt_f32_i32_e32 v250, v6
	v_cvt_f32_i32_e32 v251, v7
	v_cvt_f32_i32_e32 v90, v9
	v_cvt_f32_i32_e32 v89, v10
	v_cvt_f32_i32_e32 v91, v8
	v_cvt_f32_i32_e32 v88, v11
	v_cvt_f32_i32_e32 v87, v12
	v_cvt_f32_i32_e32 v85, v14
	v_cvt_f32_i32_e32 v86, v13
	v_cvt_f32_i32_e32 v82, v17
	v_cvt_f32_i32_e32 v84, v15
	v_cvt_f32_i32_e32 v80, v19
	v_cvt_f32_i32_e32 v81, v18
	v_cvt_f32_i32_e32 v79, v20
	v_cvt_f32_i32_e32 v83, v16
	v_cvt_f32_i32_e32 v78, v21
	v_cvt_f32_i32_e32 v20, v43
	v_cvt_f32_i32_e32 v19, v44
	v_cvt_f32_i32_e32 v18, v45
	v_cvt_f32_i32_e32 v16, v47
	v_cvt_f32_i32_e32 v21, v42
	v_cvt_f32_i32_e32 v14, v49
	v_cvt_f32_i32_e32 v12, v51
	v_cvt_f32_i32_e32 v17, v46
	v_cvt_f32_i32_e32 v10, v53
	v_cvt_f32_i32_e32 v8, v55
	v_cvt_f32_i32_e32 v15, v48
	v_cvt_f32_i32_e32 v13, v50
	v_cvt_f32_i32_e32 v6, v57
	v_cvt_f32_i32_e32 v11, v52
	v_cvt_f32_i32_e32 v4, v59
	v_cvt_f32_i32_e32 v3, v60
	v_cvt_f32_i32_e32 v9, v54
	v_cvt_f32_i32_e32 v0, v63
	v_cvt_f32_i32_e32 v7, v56
	v_cvt_f32_i32_e32 v1, v62
	v_cvt_f32_i32_e32 v5, v58
	v_cvt_f32_i32_e32 v2, v61
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s41, s41, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	s_cmp_lg_u32 s41, s35
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v41, v32, v92
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v185, v41, v33
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v33, 16, v34
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v93
	v_mul_f32_e32 v27, v32, v27
	v_mul_f32_e32 v25, v32, v25
	v_mul_f32_e32 v29, v32, v29
	v_mul_f32_e32 v22, v32, v22
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v186, v34, v33 :: v_dual_lshlrev_b32 v33, 16, v35
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v94
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v35, v195, s4, 1
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v20, v32, v20
	v_mul_f32_e32 v19, v32, v19
	v_mul_f32_e32 v23, v32, v23
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v183, v34, v33 :: v_dual_mul_f32 v34, v32, v95
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v33, 16, v36
	v_add_lshl_u32 v36, v196, s4, 1
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v16, v32, v16
	v_mul_f32_e32 v10, v32, v10
	v_mul_f32_e32 v17, v32, v17
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v184, v34, v33
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v34, v32, v96 :: v_dual_lshlrev_b32 v33, 16, v37
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v37, v197, s4, 1
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v13, v32, v13
	v_mul_f32_e32 v11, v32, v11
	v_mul_f32_e32 v41, v32, v91
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v181, v34, v33
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v34, v32, v97 :: v_dual_lshlrev_b32 v33, 16, v38
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v38, v198, s4, 1
	s_clause 0x2
	buffer_load_u16 v35, v35, s[24:27], 0 offen
	buffer_load_u16 v36, v36, s[24:27], 0 offen
	buffer_load_u16 v37, v37, s[24:27], 0 offen
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v182, v34, v33 :: v_dual_lshlrev_b32 v33, 16, v39
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v250
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v38, v38, s[24:27], 0 offen
	v_add_lshl_u32 v39, v199, s4, 1
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v3, v32, v3
	v_mul_f32_e32 v9, v32, v9
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v179, v34, v33
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v34, v32, v251 :: v_dual_lshlrev_b32 v33, 16, v40
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v39, v39, s[24:27], 0 offen
	v_add_lshl_u32 v40, v200, s4, 1
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v1, v32, v1
	v_mul_f32_e32 v5, v32, v5
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v180, v34, v33
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v193, s4, 1
	v_add_lshl_u32 v34, v194, s4, 1
	buffer_load_u16 v40, v40, s[24:27], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v28, v32, v28
	v_mul_f32_e32 v30, v32, v30
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	buffer_load_u16 v34, v34, s[24:27], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v26, v32, v26
	v_mul_f32_e32 v31, v32, v31
	v_mul_f32_e32 v24, v32, v24
	v_mul_f32_e32 v18, v32, v18
	v_mul_f32_e32 v14, v32, v14
	v_mul_f32_e32 v21, v32, v21
	v_mul_f32_e32 v12, v32, v12
	v_mul_f32_e32 v8, v32, v8
	v_mul_f32_e32 v6, v32, v6
	v_mul_f32_e32 v4, v32, v4
	v_mul_f32_e32 v0, v32, v0
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v2, v32, v2 :: v_dual_lshlrev_b32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v177, v41, v33
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v34
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v90
	v_dual_mul_f32 v41, v32, v83 :: v_dual_fmac_f32 v178, v34, v33
	v_dual_mul_f32 v34, v32, v89 :: v_dual_lshlrev_b32 v33, 16, v35
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v35, v203, s4, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v175, v34, v33
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v33, 16, v36
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v88
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v35, v35, s[24:27], 0 offen
	v_add_lshl_u32 v36, v204, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v176, v34, v33
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v34, v32, v87 :: v_dual_lshlrev_b32 v33, 16, v37
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v36, v36, s[24:27], 0 offen
	v_add_lshl_u32 v37, v205, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v173, v34, v33
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v33, 16, v38
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v86
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v37, v37, s[24:27], 0 offen
	v_add_lshl_u32 v38, v206, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v174, v34, v33 :: v_dual_lshlrev_b32 v33, 16, v39
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v85
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v38, v38, s[24:27], 0 offen
	v_add_lshl_u32 v39, v207, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v171, v34, v33
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v33, 16, v40
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v84
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v39, v39, s[24:27], 0 offen
	v_add_lshl_u32 v40, v208, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v172, v34, v33
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v201, s4, 1
	v_add_lshl_u32 v34, v202, s4, 1
	s_clause 0x2
	buffer_load_u16 v40, v40, s[24:27], 0 offen
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	buffer_load_u16 v34, v34, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v169, v41, v33
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v34
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v82
	v_dual_mul_f32 v41, v32, v75 :: v_dual_fmac_f32 v170, v34, v33
	v_dual_mul_f32 v34, v32, v81 :: v_dual_lshlrev_b32 v33, 16, v35
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v35, v211, s4, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v167, v34, v33
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v33, 16, v36
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v80
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v35, v35, s[24:27], 0 offen
	v_add_lshl_u32 v36, v212, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v168, v34, v33
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v34, v32, v79 :: v_dual_lshlrev_b32 v33, 16, v37
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v36, v36, s[24:27], 0 offen
	v_add_lshl_u32 v37, v213, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v165, v34, v33
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v33, 16, v38
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v78
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v37, v37, s[24:27], 0 offen
	v_add_lshl_u32 v38, v214, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v166, v34, v33 :: v_dual_lshlrev_b32 v33, 16, v39
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v77
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v38, v38, s[24:27], 0 offen
	v_add_lshl_u32 v39, v215, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v163, v34, v33
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v33, 16, v40
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v76
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v39, v39, s[24:27], 0 offen
	v_add_lshl_u32 v40, v216, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v164, v34, v33
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v209, s4, 1
	v_add_lshl_u32 v34, v210, s4, 1
	s_clause 0x2
	buffer_load_u16 v40, v40, s[24:27], 0 offen
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	buffer_load_u16 v34, v34, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v161, v41, v33
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v34
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v74
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v162, v34, v33 :: v_dual_lshlrev_b32 v33, 16, v35
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v73
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v35, v219, s4, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v160, v34, v33 :: v_dual_lshlrev_b32 v33, 16, v36
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v72
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v35, v35, s[24:27], 0 offen
	v_add_lshl_u32 v36, v220, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v159, v34, v33
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v34, v32, v71 :: v_dual_lshlrev_b32 v33, 16, v37
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v36, v36, s[24:27], 0 offen
	v_add_lshl_u32 v37, v221, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v157, v34, v33
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v33, 16, v38
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v70
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v37, v37, s[24:27], 0 offen
	v_add_lshl_u32 v38, v222, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v158, v34, v33 :: v_dual_lshlrev_b32 v33, 16, v39
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v69
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v38, v38, s[24:27], 0 offen
	v_add_lshl_u32 v39, v223, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v155, v34, v33
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v33, 16, v40
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v34, v32, v68
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v39, v39, s[24:27], 0 offen
	v_add_lshl_u32 v40, v224, s4, 1
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v156, v34, v33
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v33, v217, s4, 1
	v_add_lshl_u32 v34, v218, s4, 1
	s_clause 0x2
	buffer_load_u16 v40, v40, s[24:27], 0 offen
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	buffer_load_u16 v34, v34, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v154, v31, v33 :: v_dual_lshlrev_b32 v31, 16, v34
	v_fmac_f32_e32 v153, v30, v31
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v30, 16, v35
	v_add_lshl_u32 v31, v232, s4, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v151, v29, v30
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v29, 16, v36
	v_add_lshl_u32 v30, v231, s4, 1
	buffer_load_u16 v31, v31, s[24:27], 0 offen
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v152, v28, v29
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v28, 16, v37
	v_add_lshl_u32 v29, v230, s4, 1
	buffer_load_u16 v30, v30, s[24:27], 0 offen
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v150, v27, v28 :: v_dual_lshlrev_b32 v27, 16, v38
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v28, v229, s4, 1
	buffer_load_u16 v29, v29, s[24:27], 0 offen
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v149, v26, v27
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v26, 16, v39
	v_add_lshl_u32 v27, v228, s4, 1
	buffer_load_u16 v28, v28, s[24:27], 0 offen
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v148, v25, v26 :: v_dual_lshlrev_b32 v25, 16, v40
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v26, v227, s4, 1
	buffer_load_u16 v27, v27, s[24:27], 0 offen
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v147, v24, v25
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v24, v225, s4, 1
	v_add_lshl_u32 v25, v226, s4, 1
	s_clause 0x2
	buffer_load_u16 v26, v26, s[24:27], 0 offen
	buffer_load_u16 v24, v24, s[24:27], 0 offen
	buffer_load_u16 v25, v25, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v145, v23, v24
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v25
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v146, v22, v23
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v22, 16, v26
	v_add_lshl_u32 v23, v240, s4, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v143, v21, v22
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v21, 16, v27
	v_add_lshl_u32 v22, v239, s4, 1
	buffer_load_u16 v23, v23, s[24:27], 0 offen
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v144, v20, v21
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v20, 16, v28
	v_add_lshl_u32 v21, v238, s4, 1
	buffer_load_u16 v22, v22, s[24:27], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v15, v32, v15 :: v_dual_fmac_f32 v142, v19, v20
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v19, 16, v29
	v_add_lshl_u32 v20, v237, s4, 1
	buffer_load_u16 v21, v21, s[24:27], 0 offen
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v141, v18, v19 :: v_dual_lshlrev_b32 v18, 16, v30
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v19, v236, s4, 1
	buffer_load_u16 v20, v20, s[24:27], 0 offen
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v139, v17, v18
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v17, 16, v31
	v_add_lshl_u32 v18, v235, s4, 1
	buffer_load_u16 v19, v19, s[24:27], 0 offen
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v140, v16, v17
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v16, v233, s4, 1
	v_add_lshl_u32 v17, v234, s4, 1
	s_clause 0x2
	buffer_load_u16 v18, v18, s[24:27], 0 offen
	buffer_load_u16 v16, v16, s[24:27], 0 offen
	buffer_load_u16 v17, v17, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v137, v15, v16
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v17
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v138, v14, v15
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v14, 16, v18
	v_add_lshl_u32 v15, v248, s4, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v135, v13, v14
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v13, 16, v19
	v_add_lshl_u32 v14, v247, s4, 1
	buffer_load_u16 v15, v15, s[24:27], 0 offen
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v136, v12, v13
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v12, 16, v20
	v_add_lshl_u32 v13, v246, s4, 1
	buffer_load_u16 v14, v14, s[24:27], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v7, v32, v7
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v133, v11, v12
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v11, 16, v21
	v_add_lshl_u32 v12, v245, s4, 1
	buffer_load_u16 v13, v13, s[24:27], 0 offen
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v134, v10, v11
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v10, 16, v22
	v_add_lshl_u32 v11, v244, s4, 1
	buffer_load_u16 v12, v12, s[24:27], 0 offen
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v131, v9, v10
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v9, 16, v23
	v_add_lshl_u32 v10, v243, s4, 1
	buffer_load_u16 v11, v11, s[24:27], 0 offen
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v132, v8, v9
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v8, v241, s4, 1
	v_add_lshl_u32 v9, v242, s4, 1
	s_clause 0x2
	buffer_load_u16 v10, v10, s[24:27], 0 offen
	buffer_load_u16 v8, v8, s[24:27], 0 offen
	buffer_load_u16 v9, v9, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v129, v7, v8
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v9
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v130, v6, v7
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v6, 16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v127, v5, v6
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v5, 16, v11
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v128, v4, v5
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v4, 16, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v126, v3, v4 :: v_dual_lshlrev_b32 v3, 16, v13
	v_dual_fmac_f32 v125, v2, v3 :: v_dual_lshlrev_b32 v2, 16, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v124, v1, v2 :: v_dual_lshlrev_b32 v1, 16, v15
	v_fmac_f32_e32 v123, v0, v1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_2
.LBB0_8:                                ; %._crit_edge11
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 255
		.amdhsa_next_free_sgpr 42
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.num_vgpr, 255
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.numbered_sgpr, 42
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18452
; TotalNumSgprs: 44
; NumVgprs: 255
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 44
; NumVGPRsForWavesPerEU: 255
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     44
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     255
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
