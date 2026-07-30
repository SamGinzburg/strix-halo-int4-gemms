	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
	v_and_b32_e32 v2, 7, v0
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v57, 1, v0
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_lshlrev_b32_e32 v16, 4, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v94, 15, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_and_b32_e32 v81, 0x70, v57
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v157, 0, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b32_e32 v148, v81, v94
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:88:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s9, s26, 63
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
	s_lshr_b32 s11, s11, 26
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
	s_ashr_i32 s9, s9, 6
.Ltmp11:
	.loc	1 89 24 is_stmt 1               ; generate_amdgcn.py:89:24
	s_lshl_b32 s5, s5, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 90 16                         ; generate_amdgcn.py:90:16
	s_abs_i32 s6, s5
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s7, s10
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_sub_i32 s6, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 91 19                         ; generate_amdgcn.py:91:19
	s_lshl_b32 s16, s6, 2
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_mul_i32 s6, s6, s5
	.loc	1 92 31                         ; generate_amdgcn.py:92:31
	s_sub_i32 s7, s9, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 92 20 is_stmt 0               ; generate_amdgcn.py:92:20
	s_min_i32 s7, s7, 4
	.loc	1 93 29 is_stmt 1               ; generate_amdgcn.py:93:29
	s_sub_i32 s2, s2, s6
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_abs_i32 s18, s7
	s_abs_i32 s6, s2
	s_cvt_f32_u32 s17, s18
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v1, 3, v2
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshlrev_b32_e32 v2, 4, v2
	s_mov_b32 s11, 0x31027000
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_mov_b32 s39, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s18
	s_mul_i32 s17, s17, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s17
	s_xor_b32 s17, s2, s7
	s_add_i32 s5, s10, s5
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s5, s6, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s19, s5, s18
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_mov_b32 s38, s10
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s6, s6, s19
	s_add_i32 s19, s5, 1
	s_sub_i32 s20, s6, s18
	s_cmp_ge_u32 s6, s18
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s6, s20, s6
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s6, s18
	s_cselect_b32 s5, s19, s5
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_lshr_b32 s6, s4, 31
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_xor_b32 s20, s5, s17
	.loc	1 102 14                        ; generate_amdgcn.py:102:14
	s_lshl_b32 s34, s27, 1
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s21, s4, 0x7f
.Ltmp13:
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_add_i32 s4, s4, s6
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s6, s20, s17
	.loc	1 170 39                        ; generate_amdgcn.py:170:39
	s_lshl_b32 s18, s3, 6
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	v_mad_u64_u32 v[4:5], null, s34, v3, v[2:3]
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_ashr_i32 s19, s4, 1
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_mul_i32 s7, s6, s7
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v7, s18, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s5, s21, 31
.Ltmp15:
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	v_mad_u64_u32 v[5:6], null, s19, v3, v[1:2]
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_sub_i32 s2, s2, s7
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v8, s18, v3
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_lshr_b32 s4, s5, 25
.Ltmp17:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_add_i32 s2, s2, s16
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	s_mul_i32 s22, s34, s18
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	s_lshl_b32 s26, s6, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s23, s21, s4
.Ltmp19:
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e32 vcc_lo, s19, v7
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s5, 64, v7
	.loc	1 99 14 is_stmt 1               ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s2, 6
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e64 s6, s19, v8
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s4, 64, v8
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s7, s23, 7
.Ltmp21:
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	v_add3_u32 v4, s26, s22, v4
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	s_mul_i32 s16, s33, s19
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmpk_gt_i32 s21, 0x7f
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	v_add3_u32 v5, s18, s16, v5
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cselect_b32 s2, -1, 0
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 s16, s5, vcc_lo
	s_and_b32 s6, s4, s6
	.loc	1 201 43                        ; generate_amdgcn.py:201:43
	v_add_nc_u32_e32 v6, s27, v4
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s6
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_and_b32 s37, s37, 0xffff
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 201 35                        ; generate_amdgcn.py:201:35
	v_cndmask_b32_e32 v10, 0x80000000, v6, vcc_lo
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	buffer_load_b64 v[14:15], v5, s[8:11], 0 offen
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_clause 0x1
	buffer_load_b128 v[6:9], v4, s[36:39], 0 offen
	buffer_load_b128 v[10:13], v10, s[36:39], 0 offen
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_lshlrev_b32_e32 v4, 3, v0
	v_and_b32_e32 v5, 56, v57
	s_mov_b32 s6, -1
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmpk_gt_i32 s21, 0xff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_xor_b32_e32 v4, v4, v5
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v5, 4, v0
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v156, 0, v4
	v_lshlrev_b32_e32 v4, 2, v0
	s_waitcnt vmcnt(2)
	ds_store_b64 v156, v[14:15] offset:16384
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v157, v[6:9]
	.loc	1 201 35                        ; generate_amdgcn.py:201:35
	s_waitcnt vmcnt(0)
	ds_store_b128 v157, v[10:13] offset:8192
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_b32_e32 v6, 0x438, v4
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_or_b32_e32 v33, v81, v94
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_mov_b64 s[30:31], s[10:11]
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_lshl_or_b32 v97, v94, 6, v6
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_or_b32_e32 v83, 0x80, v33
	v_or_b32_e32 v84, 0x100, v33
	v_or_b32_e32 v85, 0x180, v33
	v_or_b32_e32 v86, 0x200, v33
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_xor_b32_e32 v104, 8, v97
	v_xor_b32_e32 v106, 16, v97
	v_xor_b32_e32 v107, 24, v97
	v_xor_b32_e32 v102, 32, v97
	v_xor_b32_e32 v103, 40, v97
	v_xor_b32_e32 v105, 48, v97
	v_xor_b32_e32 v108, 56, v97
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_or_b32_e32 v87, 0x280, v33
	v_or_b32_e32 v88, 0x300, v33
	v_or_b32_e32 v89, 0x380, v33
	v_or_b32_e32 v90, 0x400, v33
	v_or_b32_e32 v91, 0x480, v33
	v_or_b32_e32 v92, 0x500, v33
	v_or_b32_e32 v93, 0x580, v33
	v_or_b32_e32 v95, 0x600, v33
	v_or_b32_e32 v96, 0x680, v33
	v_or_b32_e32 v98, 0x700, v33
	v_or_b32_e32 v99, 0x780, v33
	v_or_b32_e32 v100, 0x800, v33
	v_or_b32_e32 v101, 0x880, v33
	v_or_b32_e32 v109, 0x900, v33
	v_or_b32_e32 v110, 0x980, v33
	v_or_b32_e32 v111, 0xa00, v33
	v_or_b32_e32 v112, 0xa80, v33
	v_or_b32_e32 v113, 0xb00, v33
	v_or_b32_e32 v114, 0xb80, v33
	v_or_b32_e32 v115, 0xc00, v33
	v_or_b32_e32 v116, 0xc80, v33
	v_or_b32_e32 v117, 0xd00, v33
	v_or_b32_e32 v118, 0xd80, v33
	v_or_b32_e32 v119, 0xe00, v33
	v_or_b32_e32 v120, 0xe80, v33
	v_or_b32_e32 v121, 0xf00, v33
	v_or_b32_e32 v122, 0xf80, v33
	v_or_b32_e32 v123, 0x1000, v33
	v_or_b32_e32 v124, 0x1080, v33
	v_or_b32_e32 v125, 0x1100, v33
	v_or_b32_e32 v126, 0x1180, v33
	v_or_b32_e32 v127, 0x1200, v33
	v_or_b32_e32 v128, 0x1280, v33
	v_or_b32_e32 v129, 0x1300, v33
	v_or_b32_e32 v130, 0x1380, v33
	v_or_b32_e32 v131, 0x1400, v33
	v_or_b32_e32 v132, 0x1480, v33
	v_or_b32_e32 v133, 0x1500, v33
	v_or_b32_e32 v134, 0x1580, v33
	v_or_b32_e32 v135, 0x1600, v33
	v_or_b32_e32 v136, 0x1680, v33
	v_or_b32_e32 v137, 0x1700, v33
	v_or_b32_e32 v138, 0x1780, v33
	v_or_b32_e32 v139, 0x1800, v33
	v_or_b32_e32 v140, 0x1880, v33
	v_or_b32_e32 v141, 0x1900, v33
	v_or_b32_e32 v142, 0x1980, v33
	v_or_b32_e32 v143, 0x1a00, v33
	v_or_b32_e32 v144, 0x1a80, v33
	v_or_b32_e32 v145, 0x1b00, v33
	v_or_b32_e32 v146, 0x1b80, v33
	v_or_b32_e32 v147, 0x1c00, v33
	v_or_b32_e32 v149, 0x1c80, v33
	v_or_b32_e32 v150, 0x1d00, v33
	v_or_b32_e32 v151, 0x1d80, v33
	v_or_b32_e32 v152, 0x1e00, v33
	v_or_b32_e32 v153, 0x1e80, v33
	v_or_b32_e32 v154, 0x1f00, v33
	v_or_b32_e32 v155, 0x1f80, v33
	s_mov_b32 s6, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr28_sgpr29
                                        ; implicit-def: $vgpr97
                                        ; implicit-def: $vgpr104
                                        ; implicit-def: $vgpr106
                                        ; implicit-def: $vgpr107
                                        ; implicit-def: $vgpr102
                                        ; implicit-def: $vgpr103
                                        ; implicit-def: $vgpr105
                                        ; implicit-def: $vgpr108
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr83
                                        ; implicit-def: $vgpr84
                                        ; implicit-def: $vgpr85
                                        ; implicit-def: $vgpr86
                                        ; implicit-def: $vgpr87
                                        ; implicit-def: $vgpr88
                                        ; implicit-def: $vgpr89
                                        ; implicit-def: $vgpr90
                                        ; implicit-def: $vgpr91
                                        ; implicit-def: $vgpr92
                                        ; implicit-def: $vgpr93
                                        ; implicit-def: $vgpr95
                                        ; implicit-def: $vgpr96
                                        ; implicit-def: $vgpr98
                                        ; implicit-def: $vgpr99
                                        ; implicit-def: $vgpr100
                                        ; implicit-def: $vgpr101
                                        ; implicit-def: $vgpr109
                                        ; implicit-def: $vgpr110
                                        ; implicit-def: $vgpr111
                                        ; implicit-def: $vgpr112
                                        ; implicit-def: $vgpr113
                                        ; implicit-def: $vgpr114
                                        ; implicit-def: $vgpr115
                                        ; implicit-def: $vgpr116
                                        ; implicit-def: $vgpr117
                                        ; implicit-def: $vgpr118
                                        ; implicit-def: $vgpr119
                                        ; implicit-def: $vgpr120
                                        ; implicit-def: $vgpr121
                                        ; implicit-def: $vgpr122
                                        ; implicit-def: $vgpr123
                                        ; implicit-def: $vgpr124
                                        ; implicit-def: $vgpr125
                                        ; implicit-def: $vgpr126
                                        ; implicit-def: $vgpr127
                                        ; implicit-def: $vgpr128
                                        ; implicit-def: $vgpr129
                                        ; implicit-def: $vgpr130
                                        ; implicit-def: $vgpr131
                                        ; implicit-def: $vgpr132
                                        ; implicit-def: $vgpr133
                                        ; implicit-def: $vgpr134
                                        ; implicit-def: $vgpr135
                                        ; implicit-def: $vgpr136
                                        ; implicit-def: $vgpr137
                                        ; implicit-def: $vgpr138
                                        ; implicit-def: $vgpr139
                                        ; implicit-def: $vgpr140
                                        ; implicit-def: $vgpr141
                                        ; implicit-def: $vgpr142
                                        ; implicit-def: $vgpr143
                                        ; implicit-def: $vgpr144
                                        ; implicit-def: $vgpr145
                                        ; implicit-def: $vgpr146
                                        ; implicit-def: $vgpr147
                                        ; implicit-def: $vgpr149
                                        ; implicit-def: $vgpr150
                                        ; implicit-def: $vgpr151
                                        ; implicit-def: $vgpr152
                                        ; implicit-def: $vgpr153
                                        ; implicit-def: $vgpr154
                                        ; implicit-def: $vgpr155
.LBB0_3:                                ; %Flow422
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[24:25], s[0:1], 0x20
	v_dual_mov_b32 v49, 0 :: v_dual_and_b32 v158, 16, v5
	v_bfe_u32 v82, v0, 4, 1
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v79, 0
	v_mov_b32_e32 v58, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v56, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_add_i32 s1, s7, -1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v74, 0 :: v_dual_lshlrev_b32 v5, 1, v3
	v_dual_mov_b32 v79, 0 :: v_dual_and_b32 v4, 0x438, v4
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_add3_u32 v6, s33, v158, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v5, s3, 7, v5
	v_mov_b32_e32 v75, 0
	v_lshl_or_b32 v97, v94, 6, v4
	v_and_b32_e32 v4, 0xe0, v0
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v7, 32, v6
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v9, 0x81, v5
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v5, 0x80, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v4, s20, 8, v4
	v_mul_lo_u32 v9, s27, v9
	s_lshl_b32 s6, s17, 8
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v5, s27, v5
	s_lshl_b32 s20, s20, 7
	v_sub_nc_u32_e32 v161, s19, v3
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v8, s34, v4
	v_mul_lo_u32 v7, s7, v7
	v_mul_lo_u32 v6, s7, v6
	v_subrev_nc_u32_e32 v164, s6, v4
	v_add3_u32 v4, v9, s20, v2
	v_add3_u32 v2, v5, s20, v2
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v3, s33, v3
	s_max_i32 s0, s1, 1
	v_subrev_nc_u32_e32 v163, s6, v8
	s_lshl_b32 s6, s0, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_mad_u64_u32 v[45:46], null, s19, v3, v[1:2]
	s_lshl_b32 s0, s17, 7
	v_xor_b32_e32 v104, 8, v97
	v_xor_b32_e32 v106, 16, v97
	v_xor_b32_e32 v107, 24, v97
	v_xor_b32_e32 v102, 32, v97
	v_xor_b32_e32 v103, 40, v97
	v_xor_b32_e32 v105, 48, v97
	v_xor_b32_e32 v108, 56, v97
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v159, 0, v148
	v_or_b32_e32 v83, 0x80, v148
	v_or_b32_e32 v84, 0x100, v148
	v_or_b32_e32 v85, 0x180, v148
	v_or_b32_e32 v86, 0x200, v148
	v_or_b32_e32 v87, 0x280, v148
	v_or_b32_e32 v88, 0x300, v148
	v_or_b32_e32 v89, 0x380, v148
	v_or_b32_e32 v90, 0x400, v148
	v_or_b32_e32 v91, 0x480, v148
	v_or_b32_e32 v92, 0x500, v148
	v_or_b32_e32 v93, 0x580, v148
	v_or_b32_e32 v95, 0x600, v148
	v_or_b32_e32 v96, 0x680, v148
	v_or_b32_e32 v98, 0x700, v148
	v_or_b32_e32 v99, 0x780, v148
	v_or_b32_e32 v100, 0x800, v148
	v_or_b32_e32 v101, 0x880, v148
	v_or_b32_e32 v109, 0x900, v148
	v_or_b32_e32 v110, 0x980, v148
	v_or_b32_e32 v111, 0xa00, v148
	v_or_b32_e32 v112, 0xa80, v148
	v_or_b32_e32 v113, 0xb00, v148
	v_or_b32_e32 v114, 0xb80, v148
	v_or_b32_e32 v115, 0xc00, v148
	v_or_b32_e32 v116, 0xc80, v148
	v_or_b32_e32 v117, 0xd00, v148
	v_or_b32_e32 v118, 0xd80, v148
	v_or_b32_e32 v119, 0xe00, v148
	v_or_b32_e32 v120, 0xe80, v148
	v_or_b32_e32 v121, 0xf00, v148
	v_or_b32_e32 v122, 0xf80, v148
	v_or_b32_e32 v123, 0x1000, v148
	v_or_b32_e32 v124, 0x1080, v148
	v_or_b32_e32 v125, 0x1100, v148
	v_or_b32_e32 v126, 0x1180, v148
	v_or_b32_e32 v127, 0x1200, v148
	v_or_b32_e32 v128, 0x1280, v148
	v_or_b32_e32 v129, 0x1300, v148
	v_or_b32_e32 v130, 0x1380, v148
	v_or_b32_e32 v131, 0x1400, v148
	v_or_b32_e32 v132, 0x1480, v148
	v_or_b32_e32 v133, 0x1500, v148
	v_or_b32_e32 v134, 0x1580, v148
	v_or_b32_e32 v135, 0x1600, v148
	v_or_b32_e32 v136, 0x1680, v148
	v_or_b32_e32 v137, 0x1700, v148
	v_or_b32_e32 v138, 0x1780, v148
	v_or_b32_e32 v139, 0x1800, v148
	v_or_b32_e32 v140, 0x1880, v148
	v_or_b32_e32 v141, 0x1900, v148
	v_or_b32_e32 v142, 0x1980, v148
	v_or_b32_e32 v143, 0x1a00, v148
	v_or_b32_e32 v144, 0x1a80, v148
	v_or_b32_e32 v145, 0x1b00, v148
	v_or_b32_e32 v146, 0x1b80, v148
	v_or_b32_e32 v147, 0x1c00, v148
	v_or_b32_e32 v149, 0x1c80, v148
	v_or_b32_e32 v150, 0x1d00, v148
	v_or_b32_e32 v151, 0x1d80, v148
	v_or_b32_e32 v152, 0x1e00, v148
	v_or_b32_e32 v153, 0x1e80, v148
	v_or_b32_e32 v154, 0x1f00, v148
	v_or_b32_e32 v155, 0x1f80, v148
	v_sub_nc_u32_e32 v160, s19, v1
	v_dual_mov_b32 v59, 0 :: v_dual_lshlrev_b32 v162, 1, v82
	v_dual_mov_b32 v68, 0 :: v_dual_lshlrev_b32 v165, 1, v7
	v_dual_mov_b32 v67, 0 :: v_dual_lshlrev_b32 v166, 1, v6
	v_subrev_nc_u32_e32 v167, s0, v4
	v_subrev_nc_u32_e32 v168, s0, v2
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b32 s16, 0
	s_mov_b64 s[28:29], s[12:13]
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_lshl_b32 s3, s27, 2
	s_lshl_b32 s35, s27, 7
	s_add_i32 s48, s18, 64
	s_mov_b32 s44, s12
	s_mov_b32 s45, s13
	s_mov_b32 s46, s30
	s_mov_b32 s47, s31
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s12, s16
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_lt_i32_e64 s0, s48, v160
	v_cmp_lt_i32_e32 vcc_lo, s48, v161
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	v_add_nc_u32_e32 v4, s12, v166
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v6, s48, v45
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_dual_mov_b32 v40, s23 :: v_dual_add_nc_u32 v5, s12, v165
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 s0, s0, s5
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_dual_mov_b32 v38, s21 :: v_dual_add_nc_u32 v1, 0, v97
	v_dual_mov_b32 v39, s22 :: v_dual_add_nc_u32 v170, 0, v105
	v_mov_b32_e32 v37, s20
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_clause 0x1
	buffer_load_u16 v172, v4, s[44:47], 0 offen
	buffer_load_u16 v173, v5, s[44:47], 0 offen
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_cndmask_b32_e64 v4, 0x80000000, v6, s0
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_cndmask_b32_e32 v5, 0x80000000, v168, vcc_lo
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_dual_mov_b32 v35, s18 :: v_dual_add_nc_u32 v2, 0, v104
	v_dual_mov_b32 v36, s19 :: v_dual_add_nc_u32 v3, 0, v106
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	buffer_load_b64 v[46:47], v4, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[180:183], v1 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[188:191], v2 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[192:195], v3 offset0:32 offset1:36
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	buffer_load_b128 v[41:44], v5, s[36:39], 0 offen
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v1, v159 offset:640
	ds_load_u8 v2, v159 offset:896
	ds_load_u8 v3, v159 offset:768
	ds_load_u8 v4, v159 offset:512
	ds_load_u8 v5, v159 offset:128
	ds_load_u8 v6, v159 offset:384
	ds_load_u8 v7, v159 offset:256
	ds_load_u8 v8, v159
	ds_load_u8 v197, v159 offset:1664
	ds_load_u8 v198, v159 offset:1920
	ds_load_u8 v199, v159 offset:1792
	ds_load_u8 v200, v159 offset:1536
	ds_load_u8 v201, v159 offset:1152
	ds_load_u8 v202, v159 offset:1408
	ds_load_u8 v203, v159 offset:1280
	ds_load_u8 v204, v159 offset:1024
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v9, v159 offset:8832
	ds_load_u8 v10, v159 offset:9088
	ds_load_u8 v11, v159 offset:8960
	ds_load_u8 v12, v159 offset:8704
	ds_load_u8 v13, v159 offset:8320
	ds_load_u8 v14, v159 offset:8576
	ds_load_u8 v15, v159 offset:8448
	ds_load_u8 v16, v159 offset:8192
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v205, v159 offset:2688
	ds_load_u8 v206, v159 offset:2944
	ds_load_u8 v207, v159 offset:2816
	ds_load_u8 v208, v159 offset:2560
	ds_load_u8 v209, v159 offset:2176
	ds_load_u8 v210, v159 offset:2432
	ds_load_u8 v211, v159 offset:2304
	ds_load_u8 v212, v159 offset:2048
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v213, v159 offset:9856
	ds_load_u8 v214, v159 offset:10112
	ds_load_u8 v215, v159 offset:9984
	ds_load_u8 v216, v159 offset:9728
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v1, v4, v1, 0xc0c0004
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v3, v8, v5, 0xc0c0004
	v_perm_b32 v4, v7, v6, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v5, v12, v9, 0xc0c0004
	v_perm_b32 v6, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v8, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v7, v16, v13, 0xc0c0004
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_dual_mov_b32 v34, s17 :: v_dual_add_nc_u32 v175, 0, v107
	v_dual_mov_b32 v33, s16 :: v_dual_add_nc_u32 v174, 0, v102
	v_lshl_or_b32 v10, v2, 16, v1
	v_lshl_or_b32 v9, v4, 16, v3
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_lshl_or_b32 v185, v6, 16, v5
	v_lshl_or_b32 v184, v8, 16, v7
	.loc	1 201 35                        ; generate_amdgcn.py:201:35
	v_dual_cndmask_b32 v196, 0x80000000, v167 :: v_dual_add_nc_u32 v169, 0, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[180:181], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[182:183], v[33:40] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[184:185], v[180:181], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[184:185], v[182:183], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v35, v159 offset:9344
	ds_load_u8 v36, v159 offset:9600
	ds_load_u8 v185, v159 offset:9472
	ds_load_u8 v184, v159 offset:9216
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_perm_b32 v34, v199, v198, 0xc0c0004
	v_perm_b32 v182, v204, v201, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v198, v216, v213, 0xc0c0004
	v_perm_b32 v199, v215, v214, 0xc0c0004
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_perm_b32 v33, v200, v197, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v197, v159 offset:10880
	ds_load_u8 v200, v159 offset:11136
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_perm_b32 v183, v203, v202, 0xc0c0004
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v171, 0, v103
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v34, v34, 16, v33
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s12, s12, 2
	s_add_i32 s48, s48, 64
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v33, v183, 16, v182
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_lg_u32 s6, s12
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[33:34], v[188:189], v[1:8] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v201, v185, v36, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v184, v35, 0xc0c0004
	v_lshl_or_b32 v36, v199, 16, v198
	ds_load_u8 v198, v159 offset:11008
	ds_load_u8 v199, v159 offset:10752
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[33:34], v[190:191], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v33, v208, v205, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_lshl_or_b32 v35, v201, 16, v35
	ds_load_u8 v201, v159 offset:10368
	ds_load_u8 v202, v159 offset:10624
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_perm_b32 v34, v207, v206, 0xc0c0004
	ds_load_u8 v205, v159 offset:3200
	ds_load_u8 v206, v159 offset:3456
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[35:36], v[188:189], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[35:36], v[190:191], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v35, v159 offset:10496
	ds_load_u8 v36, v159 offset:10240
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v203, v159 offset:3712
	ds_load_u8 v204, v159 offset:3968
	ds_load_u8 v213, v159 offset:3840
	ds_load_u8 v214, v159 offset:3584
	v_perm_b32 v188, v212, v209, 0xc0c0004
	v_perm_b32 v189, v211, v210, 0xc0c0004
	v_lshl_or_b32 v34, v34, 16, v33
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v212, v159 offset:15616
	ds_load_u8 v209, v159 offset:11904
	ds_load_u8 v210, v159 offset:12160
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v33, v189, 16, v188
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[33:34], v[192:193], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[33:34], v[194:195], v[17:24] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v35, v35, v202, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v36, v36, v201, 0xc0c0004
	ds_load_u8 v201, v159 offset:11520
	v_perm_b32 v188, v199, v197, 0xc0c0004
	ds_load_u8 v197, v159 offset:12032
	ds_load_u8 v199, v159 offset:11392
	v_perm_b32 v189, v198, v200, 0xc0c0004
	ds_load_u8 v198, v159 offset:11776
	ds_load_u8 v200, v159 offset:11648
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v202, v159 offset:4736
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_lshl_or_b32 v189, v189, 16, v188
	v_lshl_or_b32 v188, v35, 16, v36
	.loc	1 201 35                        ; generate_amdgcn.py:201:35
	buffer_load_b128 v[33:36], v196, s[36:39], 0 offen
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[188:189], v[192:193], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[188:189], v[194:195], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v196, v159 offset:11264
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[188:191], v175 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[192:195], v174 offset0:32 offset1:36
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v174, v213, v204, 0xc0c0004
	ds_load_u8 v204, v159 offset:4992
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v175, v214, v203, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v197, v197, v210, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v198, v198, v209, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v200, v201, v200, 0xc0c0004
	ds_load_u8 v201, v159 offset:12928
	ds_load_u8 v209, v159 offset:12800
	ds_load_u8 v210, v159 offset:12416
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v175, v174, 16, v175
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_lshl_or_b32 v197, v197, 16, v198
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v196, v196, v199, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v196, v200, 16, v196
	ds_load_u8 v198, v159 offset:13184
	ds_load_u8 v200, v159 offset:13056
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[196:197], v[188:189], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v201, v209, v201, 0xc0c0004
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v209, v159 offset:6272
	ds_load_u8 v199, v159 offset:4096
	ds_load_u8 v207, v159 offset:3328
	ds_load_u8 v208, v159 offset:3072
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[196:197], v[190:191], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v198, v200, v198, 0xc0c0004
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v200, v159 offset:6912
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v203, v208, v205, 0xc0c0004
	v_perm_b32 v205, v207, v206, 0xc0c0004
	ds_load_u8 v206, v159 offset:4864
	ds_load_u8 v208, v159 offset:4352
	v_lshl_or_b32 v174, v205, 16, v203
	ds_load_u8 v203, v159 offset:4608
	ds_load_u8 v205, v159 offset:4224
	v_wmma_i32_16x16x16_iu4 v[1:8], v[174:175], v[188:189], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[174:175], v[190:191], v[17:24] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v188, v159 offset:12672
	ds_load_u8 v189, v159 offset:12544
	ds_load_u8 v190, v159 offset:12288
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v191, v159 offset:5760
	ds_load_u8 v196, v159 offset:6016
	ds_load_u8 v197, v159 offset:5888
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v174, v203, v202, 0xc0c0004
	ds_load_u8 v202, v159 offset:5632
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v199, v199, v205, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v190, v190, v210, 0xc0c0004
	v_lshl_or_b32 v189, v198, 16, v201
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v201, v159 offset:6144
	ds_load_u8 v210, v159 offset:7808
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_lshl_or_b32 v188, v188, 16, v190
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v190, v159 offset:6528
	ds_load_u8 v198, v159 offset:6400
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[188:189], v[192:193], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[188:189], v[194:195], v[25:32] neg_lo:[1,1,0]
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v198, v190, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v198, v159 offset:14976
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v203, v159 offset:5248
	ds_load_u8 v207, v159 offset:4480
	v_perm_b32 v175, v206, v204, 0xc0c0004
	ds_load_u8 v204, v159 offset:5504
	v_lshl_or_b32 v175, v175, 16, v174
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v205, v208, v207, 0xc0c0004
	ds_load_u8 v207, v159 offset:7040
	v_lshl_or_b32 v174, v205, 16, v199
	ds_load_u8 v199, v159 offset:5120
	ds_load_u8 v205, v159 offset:6784
	v_wmma_i32_16x16x16_iu4 v[1:8], v[174:175], v[192:193], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[174:175], v[194:195], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v188, v159 offset:8064
	ds_load_u8 v189, v159 offset:7936
	ds_load_u8 v192, v159 offset:7680
	ds_load_u8 v193, v159 offset:7296
	ds_load_u8 v194, v159 offset:7552
	ds_load_u8 v195, v159 offset:7424
	v_perm_b32 v174, v202, v191, 0xc0c0004
	ds_load_u8 v191, v159 offset:7168
	v_perm_b32 v175, v197, v196, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v196, v159 offset:13952
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v175, v175, 16, v174
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v197, v199, v203, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v199, v159 offset:14208
	ds_load_u8 v203, v159 offset:14080
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v189, v159 offset:14464
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v208, v159 offset:6656
	ds_load_u8 v206, v159 offset:5376
	v_perm_b32 v200, v200, v207, 0xc0c0004
	v_perm_b32 v207, v201, v209, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v191, v191, v193, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v193, v159 offset:14720
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_perm_b32 v194, v195, v194, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v195, v159 offset:14592
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_perm_b32 v192, v192, v210, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v210, v159 offset:15744
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v202, v206, v204, 0xc0c0004
	v_perm_b32 v204, v208, v205, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v206, v159 offset:13568
	ds_load_u8 v208, v159 offset:13312
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v174, v202, 16, v197
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v197, v159 offset:13824
	ds_load_u8 v202, v159 offset:13440
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v201, v200, 16, v204
	v_lshl_or_b32 v200, v190, 16, v207
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v207, v159 offset:14848
	ds_load_u8 v190, v159 offset:15232
	ds_load_u8 v204, v159 offset:15104
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v196, v197, v196, 0xc0c0004
	ds_load_u8 v197, v159 offset:14336
	ds_load_u8 v205, v159 offset:13696
	v_perm_b32 v199, v203, v199, 0xc0c0004
	ds_load_u8 v203, v159 offset:16000
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v208, v208, v202, 0xc0c0004
	ds_load_u8 v202, v159 offset:16128
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v198, v207, v198, 0xc0c0004
	ds_load_u8 v207, v159 offset:16256
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v209, v204, v190, 0xc0c0004
	ds_load_u8 v204, v159 offset:15488
	v_perm_b32 v211, v195, v193, 0xc0c0004
	ds_load_u8 v193, v159 offset:15360
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v197, v197, v189, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v206, v206, v205, 0xc0c0004
	ds_load_u8 v205, v159 offset:15872
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v207, v202, v207, 0xc0c0004
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v202, v194, 16, v191
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v214, v193, v204, 0xc0c0004
	v_lshl_or_b32 v204, v206, 16, v208
	v_perm_b32 v206, v212, v210, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v206, v206, 16, v214
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v213, v205, v203, 0xc0c0004
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v203, v188, 16, v192
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[188:191], v171 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[192:195], v170 offset0:32 offset1:36
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_lshl_or_b32 v205, v199, 16, v196
	v_lshl_or_b32 v171, v209, 16, v198
	v_lshl_or_b32 v170, v211, 16, v197
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[196:199], v169 offset0:32 offset1:36
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_lshl_or_b32 v207, v207, 16, v213
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[174:175], v[190:191], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[174:175], v[188:189], v[1:8] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[204:205], v[190:191], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[204:205], v[188:189], v[9:16] neg_lo:[1,1,0]
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[200:201], v[194:195], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[200:201], v[192:193], v[1:8] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[170:171], v[194:195], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[170:171], v[192:193], v[9:16] neg_lo:[1,1,0]
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[202:203], v[198:199], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[202:203], v[196:197], v[1:8] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[206:207], v[198:199], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[206:207], v[196:197], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v170, 16, v172
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v26, v26
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v169, 16, v173
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v18, v18
	v_mul_f32_e32 v4, v170, v4
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v186, v162, v164
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v26, v169, v26 :: v_dual_add_nc_u32 v187, v162, v163
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v17, v169, v17
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0xf
	buffer_load_u16 v178, v186, s[40:43], 0 offen
	buffer_load_u16 v179, v186, s[40:43], 0 offen offset:4
	buffer_load_u16 v176, v187, s[40:43], 0 offen
	buffer_load_u16 v177, v187, s[40:43], 0 offen offset:4
	buffer_load_u16 v37, v186, s[40:43], 0 offen offset:8
	buffer_load_u16 v39, v186, s[40:43], 0 offen offset:12
	buffer_load_u16 v38, v187, s[40:43], 0 offen offset:8
	buffer_load_u16 v180, v187, s[40:43], 0 offen offset:12
	buffer_load_u16 v40, v186, s[40:43], 0 offen offset:16
	buffer_load_u16 v182, v187, s[40:43], 0 offen offset:16
	buffer_load_u16 v183, v187, s[40:43], 0 offen offset:20
	buffer_load_u16 v181, v186, s[40:43], 0 offen offset:20
	buffer_load_u16 v184, v186, s[40:43], 0 offen offset:24
	buffer_load_u16 v186, v186, s[40:43], 0 offen offset:28
	buffer_load_u16 v185, v187, s[40:43], 0 offen offset:24
	buffer_load_u16 v187, v187, s[40:43], 0 offen offset:28
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v25, v25
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v3, v3
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_dual_mul_f32 v25, v169, v25 :: v_dual_add_nc_u32 v164, s3, v164
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v18, v169, v18
	v_mul_f32_e32 v19, v169, v19
	v_dual_mul_f32 v2, v170, v2 :: v_dual_add_nc_u32 v163, s3, v163
	v_dual_mul_f32 v1, v170, v1 :: v_dual_add_nc_u32 v168, s35, v168
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v10, v170, v10 :: v_dual_add_nc_u32 v167, s35, v167
	v_mul_f32_e32 v11, v170, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v5, v170, v5
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v14, v170, v14 :: v_dual_mul_f32 v23, v169, v23
	v_dual_mul_f32 v13, v170, v13 :: v_dual_mul_f32 v24, v169, v24
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(18)
	ds_store_b64 v156, v[46:47] offset:16384
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_waitcnt vmcnt(17)
	ds_store_b128 v157, v[41:44]
	.loc	1 201 35                        ; generate_amdgcn.py:201:35
	s_waitcnt vmcnt(16)
	ds_store_b128 v157, v[33:36] offset:8192
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v9, v170, v9 :: v_dual_mul_f32 v20, v169, v20
	v_mul_f32_e32 v27, v169, v27
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v22, v169, v22
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v28, v169, v28 :: v_dual_mul_f32 v3, v170, v3
	v_dual_mul_f32 v12, v170, v12 :: v_dual_mul_f32 v21, v169, v21
	v_mul_f32_e32 v30, v169, v30
	v_dual_mul_f32 v29, v169, v29 :: v_dual_mul_f32 v6, v170, v6
	v_mul_f32_e32 v32, v169, v32
	v_dual_mul_f32 v31, v169, v31 :: v_dual_mul_f32 v8, v170, v8
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v172, 16, v178
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v171, 16, v179
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v174, 16, v176
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v173, 16, v177
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v39, 16, v39
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v175, 16, v180
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v40, 16, v40
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v177, 16, v183
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v176, 16, v181
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v178, 16, v182
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v179, 16, v186
	v_lshlrev_b32_e32 v180, 16, v184
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v181, 16, v187
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v7, v170, v7 :: v_dual_lshlrev_b32 v182, 16, v185
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v80, v17, v172
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v16, v170, v16 :: v_dual_fmac_f32 v73, v20, v39
	v_dual_mul_f32 v15, v170, v15 :: v_dual_fmac_f32 v72, v19, v37
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v77, v18, v171 :: v_dual_fmac_f32 v68, v3, v37
	v_dual_fmac_f32 v79, v1, v172 :: v_dual_fmac_f32 v48, v24, v179
	v_dual_fmac_f32 v75, v2, v171 :: v_dual_fmac_f32 v64, v21, v40
	v_dual_fmac_f32 v69, v4, v39 :: v_dual_fmac_f32 v60, v5, v40
	v_dual_fmac_f32 v65, v22, v176 :: v_dual_fmac_f32 v56, v9, v174
	v_dual_fmac_f32 v61, v6, v176 :: v_dual_fmac_f32 v66, v11, v38
	v_dual_fmac_f32 v49, v23, v180 :: v_dual_fmac_f32 v74, v10, v173
	v_dual_fmac_f32 v50, v7, v180 :: v_dual_fmac_f32 v51, v8, v179
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v67, v12, v175 :: v_dual_fmac_f32 v58, v13, v178
	v_dual_fmac_f32 v59, v14, v177 :: v_dual_fmac_f32 v52, v15, v182
	v_dual_fmac_f32 v53, v16, v181 :: v_dual_fmac_f32 v78, v25, v174
	v_dual_fmac_f32 v76, v26, v173 :: v_dual_fmac_f32 v71, v28, v175
	v_dual_fmac_f32 v70, v27, v38 :: v_dual_fmac_f32 v63, v30, v177
	v_dual_fmac_f32 v62, v29, v178 :: v_dual_fmac_f32 v55, v32, v181
	v_fmac_f32_e32 v54, v31, v182
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v33, v148
.LBB0_7:                                ; %._crit_edge
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_or_b32_e32 v47, v158, v94
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	s_mul_i32 s0, s33, s7
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_max_i32 s1, s1, 0
	v_dual_mov_b32 v44, 0 :: v_dual_add_nc_u32 v3, 0, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v94, 32, v47
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	v_mul_lo_u32 v1, s7, v47
	s_add_i32 s0, s0, s1
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v4, 0, v107
	v_mul_lo_u32 v2, s7, v94
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_cndmask_b32_e64 v34, 0, 1, s2
	v_add_nc_u32_e32 v107, 0, v153
	v_add_nc_u32_e32 v106, 0, v147
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	v_add_lshl_u32 v1, s0, v1, 1
	v_add_nc_u32_e32 v146, 0, v146
	v_add_nc_u32_e32 v145, 0, v145
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v144, 0, v144
	v_add_lshl_u32 v2, s0, v2, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_cmp_ne_u32_e64 s0, 1, v34
	v_add_nc_u32_e32 v143, 0, v143
	v_add_nc_u32_e32 v142, 0, v142
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_add_nc_u32_e32 v141, 0, v141
	v_add_nc_u32_e32 v140, 0, v140
	s_clause 0x1
	buffer_load_u16 v148, v1, s[28:31], 0 offen
	buffer_load_u16 v156, v2, s[28:31], 0 offen
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v1, 0, v97
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v2, 0, v104
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[29:32], v1 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[25:28], v2 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[21:24], v3 offset0:32 offset1:36
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v1, 0, v102
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v2, 0, v103
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v3, 0, v105
	ds_load_2addr_stride64_b64 v[9:12], v4 offset0:32 offset1:36
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v4, 0, v108
	ds_load_2addr_stride64_b64 v[17:20], v1 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[13:16], v2 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[5:8], v3 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[1:4], v4 offset0:32 offset1:36
	v_add_nc_u32_e32 v104, 0, v155
	v_add_nc_u32_e32 v97, 0, v154
	v_add_nc_u32_e32 v108, 0, v152
	v_add_nc_u32_e32 v102, 0, v151
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v103, 0, v150
	v_add_nc_u32_e32 v105, 0, v149
	v_add_nc_u32_e32 v139, 0, v139
	v_add_nc_u32_e32 v138, 0, v138
	v_add_nc_u32_e32 v137, 0, v137
	v_add_nc_u32_e32 v136, 0, v136
	v_add_nc_u32_e32 v135, 0, v135
	v_add_nc_u32_e32 v134, 0, v134
	v_add_nc_u32_e32 v133, 0, v133
	v_add_nc_u32_e32 v132, 0, v132
	v_add_nc_u32_e32 v131, 0, v131
	v_add_nc_u32_e32 v130, 0, v130
	v_add_nc_u32_e32 v129, 0, v129
	v_add_nc_u32_e32 v128, 0, v128
	v_add_nc_u32_e32 v127, 0, v127
	v_add_nc_u32_e32 v126, 0, v126
	v_add_nc_u32_e32 v125, 0, v125
	v_add_nc_u32_e32 v124, 0, v124
	v_add_nc_u32_e32 v123, 0, v123
	v_add_nc_u32_e32 v122, 0, v122
	v_add_nc_u32_e32 v121, 0, v121
	v_add_nc_u32_e32 v120, 0, v120
	v_add_nc_u32_e32 v119, 0, v119
	v_add_nc_u32_e32 v118, 0, v118
	v_add_nc_u32_e32 v117, 0, v117
	v_add_nc_u32_e32 v116, 0, v116
	v_add_nc_u32_e32 v115, 0, v115
	v_add_nc_u32_e32 v114, 0, v114
	v_add_nc_u32_e32 v113, 0, v113
	v_add_nc_u32_e32 v112, 0, v112
	v_add_nc_u32_e32 v111, 0, v111
	v_add_nc_u32_e32 v110, 0, v110
	v_add_nc_u32_e32 v109, 0, v109
	v_add_nc_u32_e32 v101, 0, v101
	v_add_nc_u32_e32 v100, 0, v100
	v_add_nc_u32_e32 v150, 0, v99
	v_add_nc_u32_e32 v99, 0, v98
	v_add_nc_u32_e32 v153, 0, v96
	v_add_nc_u32_e32 v154, 0, v95
	v_add_nc_u32_e32 v147, 0, v93
	v_add_nc_u32_e32 v149, 0, v92
	v_add_nc_u32_e32 v151, 0, v91
	v_add_nc_u32_e32 v152, 0, v90
	v_add_nc_u32_e32 v160, 0, v89
	v_add_nc_u32_e32 v155, 0, v88
	v_add_nc_u32_e32 v162, 0, v87
	v_add_nc_u32_e32 v163, 0, v86
	v_add_nc_u32_e32 v158, 0, v85
	v_add_nc_u32_e32 v159, 0, v84
	v_add_nc_u32_e32 v157, 0, v83
	v_add_nc_u32_e32 v161, 0, v33
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v93, 0
	v_mov_b32_e32 v95, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	.loc	1 194 27 is_stmt 1              ; generate_amdgcn.py:194:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	ds_load_u8 v33, v162
	ds_load_u8 v34, v163
	ds_load_u8 v35, v160
	ds_load_u8 v36, v161
	ds_load_u8 v37, v158
	ds_load_u8 v38, v159
	ds_load_u8 v40, v155
	ds_load_u8 v41, v157
	ds_load_u8 v42, v153
	ds_load_u8 v43, v154
	ds_load_u8 v44, v150
	ds_load_u8 v45, v151
	ds_load_u8 v46, v152
	ds_load_u8 v83, v147
	ds_load_u8 v84, v149
	ds_load_u8 v85, v99
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v171, s11 :: v_dual_mov_b32 v170, s10
	v_dual_mov_b32 v169, s9 :: v_dual_mov_b32 v168, s8
	v_dual_mov_b32 v167, s7 :: v_dual_mov_b32 v166, s6
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	v_dual_mov_b32 v165, s5 :: v_dual_mov_b32 v164, s4
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v34, v40, v35, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v35, v36, v41, 0xc0c0004
	v_perm_b32 v36, v38, v37, 0xc0c0004
	ds_load_u8 v37, v112
	ds_load_u8 v38, v111
	ds_load_u8 v40, v114
	ds_load_u8 v41, v101
	ds_load_u8 v91, v100
	ds_load_u8 v92, v110
	ds_load_u8 v93, v109
	ds_load_u8 v95, v113
	v_lshl_or_b32 v34, v34, 16, v33
	v_lshl_or_b32 v33, v36, 16, v35
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v35, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v36, v85, v44, 0xc0c0004
	v_perm_b32 v42, v46, v45, 0xc0c0004
	v_perm_b32 v43, v84, v83, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[83:90], v[33:34], v[29:30], v[164:171] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v36, v36, 16, v35
	v_wmma_i32_16x16x16_iu4 v[164:171], v[33:34], v[31:32], v[164:171] neg_lo:[1,1,0]
	v_lshl_or_b32 v35, v43, 16, v42
	ds_load_u8 v42, v120
	ds_load_u8 v43, v119
	ds_load_u8 v44, v122
	ds_load_u8 v45, v115
	ds_load_u8 v46, v118
	ds_load_u8 v96, v117
	ds_load_u8 v98, v121
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[83:90], v[35:36], v[25:26], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[164:171], v[35:36], v[27:28], v[164:171] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v38, v95, v40, 0xc0c0004
	ds_load_u8 v40, v116
	v_lshl_or_b32 v38, v38, 16, v37
	v_perm_b32 v37, v91, v41, 0xc0c0004
	v_perm_b32 v41, v93, v92, 0xc0c0004
	ds_load_u8 v91, v128
	ds_load_u8 v92, v127
	ds_load_u8 v93, v130
	ds_load_u8 v95, v124
	ds_load_u8 v172, v123
	ds_load_u8 v173, v126
	ds_load_u8 v174, v125
	ds_load_u8 v175, v129
	v_lshl_or_b32 v37, v41, 16, v37
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v41, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v42, v98, v44, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[83:90], v[37:38], v[21:22], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[164:171], v[37:38], v[23:24], v[164:171] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v41, v42, 16, v41
	v_perm_b32 v42, v96, v46, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v175, v93, 0xc0c0004
	ds_load_u8 v93, v132
	v_perm_b32 v40, v45, v40, 0xc0c0004
	ds_load_u8 v44, v136
	ds_load_u8 v45, v135
	ds_load_u8 v46, v138
	ds_load_u8 v96, v131
	ds_load_u8 v98, v134
	ds_load_u8 v176, v133
	ds_load_u8 v177, v137
	v_lshl_or_b32 v40, v42, 16, v40
	v_perm_b32 v42, v92, v91, 0xc0c0004
	v_perm_b32 v91, v172, v95, 0xc0c0004
	v_perm_b32 v92, v174, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[83:90], v[40:41], v[9:10], v[83:90] neg_lo:[1,1,0]
	v_lshl_or_b32 v43, v43, 16, v42
	v_wmma_i32_16x16x16_iu4 v[164:171], v[40:41], v[11:12], v[164:171] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v42, v92, 16, v91
	ds_load_u8 v91, v144
	ds_load_u8 v92, v143
	ds_load_u8 v95, v146
	ds_load_u8 v172, v140
	ds_load_u8 v173, v139
	ds_load_u8 v174, v142
	ds_load_u8 v175, v141
	ds_load_u8 v178, v145
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[83:90], v[42:43], v[17:18], v[83:90] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v93, v96, v93, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v33, v176, v98, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v45, v177, v46, 0xc0c0004
	ds_load_u8 v46, v107
	ds_load_u8 v177, v108
	ds_load_u8 v179, v104
	ds_load_u8 v180, v105
	ds_load_u8 v181, v106
	ds_load_u8 v182, v102
	ds_load_u8 v183, v103
	ds_load_u8 v184, v97
	v_wmma_i32_16x16x16_iu4 v[164:171], v[42:43], v[19:20], v[164:171] neg_lo:[1,1,0]
	v_lshl_or_b32 v33, v33, 16, v93
	v_lshl_or_b32 v34, v45, 16, v44
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v35, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v44, v173, v172, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[83:90], v[33:34], v[13:14], v[83:90] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v37, v175, v174, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v36, v178, v95, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[164:171], v[33:34], v[15:16], v[164:171] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v36, v36, 16, v35
	v_lshl_or_b32 v35, v37, 16, v44
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v37, v177, v46, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v184, v179, 0xc0c0004
	v_perm_b32 v40, v181, v180, 0xc0c0004
	v_perm_b32 v41, v183, v182, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[83:90], v[35:36], v[5:6], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[164:171], v[35:36], v[7:8], v[164:171] neg_lo:[1,1,0]
	v_lshl_or_b32 v38, v38, 16, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v41, 16, v40
	v_wmma_i32_16x16x16_iu4 v[83:90], v[37:38], v[1:2], v[83:90] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[164:171], v[37:38], v[3:4], v[164:171] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v43, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v45, v84
	v_cvt_f32_i32_e32 v44, v85
	v_cvt_f32_i32_e32 v46, v86
	v_cvt_f32_i32_e32 v41, v87
	v_cvt_f32_i32_e32 v42, v88
	v_cvt_f32_i32_e32 v33, v89
	v_cvt_f32_i32_e32 v34, v90
	v_cvt_f32_i32_e32 v93, v164
	v_cvt_f32_i32_e32 v95, v165
	v_cvt_f32_i32_e32 v90, v166
	v_cvt_f32_i32_e32 v91, v167
	v_cvt_f32_i32_e32 v83, v168
	v_cvt_f32_i32_e32 v84, v169
	v_cvt_f32_i32_e32 v35, v170
	v_cvt_f32_i32_e32 v36, v171
.LBB0_9:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v165, 0
	v_mov_b32_e32 v164, 0
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v92, 0
	.loc	1 202 36 is_stmt 1              ; generate_amdgcn.py:202:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	ds_load_u8 v37, v162 offset:8192
	ds_load_u8 v38, v163 offset:8192
	ds_load_u8 v39, v160 offset:8192
	ds_load_u8 v40, v161 offset:8192
	ds_load_u8 v85, v158 offset:8192
	ds_load_u8 v86, v159 offset:8192
	ds_load_u8 v87, v155 offset:8192
	ds_load_u8 v88, v157 offset:8192
	ds_load_u8 v89, v153 offset:8192
	ds_load_u8 v92, v154 offset:8192
	ds_load_u8 v96, v150 offset:8192
	ds_load_u8 v98, v151 offset:8192
	ds_load_u8 v150, v152 offset:8192
	ds_load_u8 v147, v147 offset:8192
	ds_load_u8 v149, v149 offset:8192
	ds_load_u8 v99, v99 offset:8192
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v173, s11 :: v_dual_mov_b32 v172, s10
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v38, v87, v39, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v39, v40, v88, 0xc0c0004
	v_perm_b32 v40, v86, v85, 0xc0c0004
	ds_load_u8 v85, v112 offset:8192
	ds_load_u8 v86, v111 offset:8192
	ds_load_u8 v87, v114 offset:8192
	ds_load_u8 v88, v101 offset:8192
	ds_load_u8 v100, v100 offset:8192
	ds_load_u8 v101, v110 offset:8192
	ds_load_u8 v109, v109 offset:8192
	ds_load_u8 v110, v113 offset:8192
	v_dual_mov_b32 v171, s9 :: v_dual_mov_b32 v170, s8
	v_lshl_or_b32 v38, v38, 16, v37
	v_lshl_or_b32 v37, v40, 16, v39
	v_dual_mov_b32 v169, s7 :: v_dual_mov_b32 v168, s6
	v_dual_mov_b32 v167, s5 :: v_dual_mov_b32 v166, s4
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v39, v92, v89, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v40, v99, v96, 0xc0c0004
	v_perm_b32 v89, v150, v98, 0xc0c0004
	v_perm_b32 v92, v149, v147, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[157:164], v[37:38], v[29:30], v[166:173] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v30, v40, 16, v39
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	v_lshl_or_b32 v29, v92, 16, v89
	ds_load_u8 v39, v120 offset:8192
	ds_load_u8 v40, v119 offset:8192
	ds_load_u8 v89, v122 offset:8192
	ds_load_u8 v92, v115 offset:8192
	ds_load_u8 v96, v118 offset:8192
	ds_load_u8 v98, v117 offset:8192
	ds_load_u8 v99, v121 offset:8192
	v_wmma_i32_16x16x16_iu4 v[166:173], v[37:38], v[31:32], v[166:173] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v86, v110, v87, 0xc0c0004
	ds_load_u8 v87, v116 offset:8192
	v_wmma_i32_16x16x16_iu4 v[157:164], v[29:30], v[25:26], v[157:164] neg_lo:[1,1,0]
	v_perm_b32 v25, v100, v88, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[166:173], v[29:30], v[27:28], v[166:173] neg_lo:[1,1,0]
	v_lshl_or_b32 v26, v86, 16, v85
	v_perm_b32 v85, v109, v101, 0xc0c0004
	ds_load_u8 v86, v128 offset:8192
	ds_load_u8 v88, v127 offset:8192
	ds_load_u8 v100, v130 offset:8192
	ds_load_u8 v101, v124 offset:8192
	ds_load_u8 v109, v123 offset:8192
	ds_load_u8 v110, v126 offset:8192
	ds_load_u8 v111, v125 offset:8192
	ds_load_u8 v112, v129 offset:8192
	v_lshl_or_b32 v25, v85, 16, v25
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[157:164], v[25:26], v[21:22], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[166:173], v[25:26], v[23:24], v[166:173] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v40, v99, v89, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v21, v92, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v22, v40, 16, v39
	v_perm_b32 v39, v98, v96, 0xc0c0004
	ds_load_u8 v40, v136 offset:8192
	ds_load_u8 v85, v135 offset:8192
	ds_load_u8 v87, v138 offset:8192
	ds_load_u8 v89, v131 offset:8192
	ds_load_u8 v92, v134 offset:8192
	ds_load_u8 v96, v133 offset:8192
	ds_load_u8 v98, v137 offset:8192
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v99, v111, v110, 0xc0c0004
	v_lshl_or_b32 v21, v39, 16, v21
	v_perm_b32 v39, v88, v86, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v86, v112, v100, 0xc0c0004
	v_perm_b32 v88, v109, v101, 0xc0c0004
	ds_load_u8 v100, v132 offset:8192
	v_wmma_i32_16x16x16_iu4 v[157:164], v[21:22], v[9:10], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[166:173], v[21:22], v[11:12], v[166:173] neg_lo:[1,1,0]
	v_lshl_or_b32 v10, v86, 16, v39
	v_lshl_or_b32 v9, v99, 16, v88
	ds_load_u8 v39, v144 offset:8192
	ds_load_u8 v86, v143 offset:8192
	ds_load_u8 v88, v146 offset:8192
	ds_load_u8 v99, v140 offset:8192
	ds_load_u8 v101, v139 offset:8192
	ds_load_u8 v109, v142 offset:8192
	ds_load_u8 v110, v141 offset:8192
	ds_load_u8 v111, v145 offset:8192
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v40, v85, v40, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[157:164], v[9:10], v[17:18], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[166:173], v[9:10], v[19:20], v[166:173] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v31, v96, v92, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v85, v98, v87, 0xc0c0004
	ds_load_u8 v87, v107 offset:8192
	ds_load_u8 v98, v108 offset:8192
	ds_load_u8 v104, v104 offset:8192
	ds_load_u8 v105, v105 offset:8192
	ds_load_u8 v106, v106 offset:8192
	ds_load_u8 v102, v102 offset:8192
	ds_load_u8 v103, v103 offset:8192
	ds_load_u8 v97, v97 offset:8192
	v_lshl_or_b32 v18, v85, 16, v40
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v27, v86, v39, 0xc0c0004
	v_perm_b32 v89, v89, v100, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v29, v101, v99, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v23, v110, v109, 0xc0c0004
	v_lshl_or_b32 v17, v31, 16, v89
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v28, v111, v88, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v11, v98, v87, 0xc0c0004
	v_lshl_or_b32 v12, v23, 16, v29
	v_wmma_i32_16x16x16_iu4 v[157:164], v[17:18], v[13:14], v[157:164] neg_lo:[1,1,0]
	v_lshl_or_b32 v13, v28, 16, v27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v21, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v97, v104, 0xc0c0004
	v_perm_b32 v9, v103, v102, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[166:173], v[17:18], v[15:16], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[157:164], v[12:13], v[5:6], v[157:164] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v6, v14, 16, v11
	v_lshl_or_b32 v5, v9, 16, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[166:173], v[12:13], v[7:8], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[157:164], v[5:6], v[1:2], v[157:164] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[166:173], v[5:6], v[3:4], v[166:173] neg_lo:[1,1,0]
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v39, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v88, v158
	v_cvt_f32_i32_e32 v87, v159
	v_cvt_f32_i32_e32 v89, v160
	v_cvt_f32_i32_e32 v85, v161
	v_cvt_f32_i32_e32 v86, v162
	v_cvt_f32_i32_e32 v37, v163
	v_cvt_f32_i32_e32 v38, v164
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v164, v168
	v_cvt_f32_i32_e32 v165, v169
	v_cvt_f32_i32_e32 v96, v170
	v_cvt_f32_i32_e32 v98, v171
	v_cvt_f32_i32_e32 v40, v172
	v_cvt_f32_i32_e32 v92, v173
.LBB0_11:
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v1, v82, v81
	.loc	1 205 36                        ; generate_amdgcn.py:205:36
	s_mul_i32 s1, s1, s34
	.loc	1 205 18 is_stmt 0              ; generate_amdgcn.py:205:18
	s_and_b32 s17, s15, 0xffff
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	s_add_i32 s0, s26, s1
	s_mov_b32 s19, 0x31027000
	.loc	1 100 32 is_stmt 1              ; generate_amdgcn.py:100:32
	v_or_b32_e32 v2, 2, v1
	v_or_b32_e32 v3, 4, v1
	v_or_b32_e32 v4, 6, v1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v7, s0, v1, 1
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_or_b32_e32 v29, 12, v1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v8, s0, v2, 1
	v_add_lshl_u32 v9, s0, v3, 1
	v_add_lshl_u32 v10, s0, v4, 1
	.loc	1 208 35                        ; generate_amdgcn.py:208:35
	s_add_i32 s1, s0, s27
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_or_b32_e32 v5, 8, v1
	v_or_b32_e32 v6, 10, v1
	v_or_b32_e32 v11, 14, v1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_lshl_u32 v16, s1, v1, 1
	v_add_lshl_u32 v2, s1, v2, 1
	v_add_lshl_u32 v1, s1, v29, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_lshl_u32 v3, s1, v3, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_lshl_u32 v4, s1, v4, 1
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_mov_b32 s16, s14
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	s_clause 0x3
	buffer_load_u16 v17, v7, s[16:19], 0 offen
	buffer_load_u16 v14, v8, s[16:19], 0 offen
	buffer_load_u16 v12, v9, s[16:19], 0 offen
	buffer_load_u16 v13, v10, s[16:19], 0 offen
	v_add_lshl_u32 v8, s0, v6, 1
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v9, 0x80000000, v16, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_add_lshl_u32 v6, s1, v6, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v15, s0, v5, 1
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_add_lshl_u32 v5, s1, v5, 1
	s_clause 0x3
	buffer_load_u16 v18, v9, s[16:19], 0 offen
	buffer_load_u16 v25, v2, s[16:19], 0 offen
	buffer_load_u16 v19, v3, s[16:19], 0 offen
	buffer_load_u16 v21, v4, s[16:19], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v6, s2
	buffer_load_u16 v6, v1, s[16:19], 0 offen
	v_add_lshl_u32 v9, s1, v11, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	v_cndmask_b32_e64 v7, 0x80000000, v15, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v3, 0x80000000, v5, s2
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(10)
	v_mov_b16_e64 v5.h, v148.l
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v4, 0x80000000, v9, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x4
	buffer_load_u16 v24, v8, s[16:19], 0 offen
	buffer_load_u16 v23, v7, s[16:19], 0 offen
	buffer_load_u16 v27, v2, s[16:19], 0 offen
	buffer_load_u16 v26, v3, s[16:19], 0 offen
	buffer_load_u16 v28, v4, s[16:19], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v4.l, 0
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(14)
	v_mov_b16_e64 v4.h, v156.l
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_and_b32_e32 v2, 0x78, v57
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	v_mul_lo_u32 v3, s27, v47
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v29, s0, v29, 1
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	v_mov_b16_e32 v5.l, v4.l
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v31, v93, v4
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v47, v166, v4
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v57, v91, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v81, v90, v4 :: v_dual_mul_f32 v44, v44, v5
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v82, v165, v4 :: v_dual_mul_f32 v43, v43, v5
	v_dual_mul_f32 v90, v164, v4 :: v_dual_mul_f32 v39, v39, v5
	v_mul_f32_e32 v91, v98, v4
	v_dual_mul_f32 v93, v96, v4 :: v_dual_mul_f32 v86, v86, v5
	v_mul_f32_e32 v88, v88, v5
	v_mul_f32_e32 v85, v85, v5
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v11, s0, v11, 1
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v30, v95, v4 :: v_dual_mul_f32 v45, v45, v5
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v32, v167, v4 :: v_dual_mul_f32 v89, v89, v5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v95, 0x80000000, v11, s2
	s_clause 0x1
	buffer_load_u16 v11, v29, s[16:19], 0 offen
	buffer_load_u16 v29, v95, s[16:19], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v46, v46, v5 :: v_dual_mul_f32 v83, v83, v4
	v_mul_f32_e32 v42, v42, v5
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v92, v92, v4 :: v_dual_mul_f32 v41, v41, v5
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v84, v84, v4 :: v_dual_mul_f32 v87, v87, v5
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v8.h, v4.l
	v_mov_b16_e32 v10.h, v4.l
	v_mov_b16_e32 v20.h, v4.l
	v_mov_b16_e32 v22.h, v4.l
	v_mov_b16_e32 v7.h, v4.l
	v_mov_b16_e32 v9.h, v4.l
	v_mov_b16_e32 v16.h, v4.l
	v_mov_b16_e32 v15.h, v4.l
	.loc	1 216 18 is_stmt 0              ; generate_amdgcn.py:216:18
	v_mul_lo_u32 v1, s27, v94
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v94.h, v4.l
	v_and_b32_e32 v0, 16, v0
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	s_mul_i32 s33, s33, s27
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	v_add3_u32 v2, s33, s26, v2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	.loc	1 206 20 is_stmt 1              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v34, v34, v5
	v_mul_f32_e32 v36, v36, v4
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add_lshl_u32 v1, v2, v1, 1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v35, v35, v4
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v17, 16, v17
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v14, 16, v14
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v12, 16, v12
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v31, v31, v17, v80
	v_fma_f32 v17, v43, v17, v79
	v_fma_f32 v30, v30, v14, v77
	v_fma_f32 v14, v45, v14, v75
	v_fma_f32 v45, v57, v13, v73
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v31, v80, v31, s2
	v_cndmask_b32_e64 v17, v79, v17, s2
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v13, v46, v13, v69
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v14, v75, v14, s2
	v_cndmask_b32_e64 v30, v77, v30, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v13, v69, v13, s2
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v43, v47, v18, v78
	v_fma_f32 v18, v39, v18, v56
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v39, v81, v12, v72
	v_fma_f32 v12, v44, v12, v68
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v18, v56, v18, s2
	v_cndmask_b32_e64 v39, v72, v39, s2
	v_cndmask_b32_e64 v12, v68, v12, s2
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v79, v93, v26, v62
	v_fma_f32 v26, v85, v26, v58
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v46, v84, v24, v65
	v_fma_f32 v24, v42, v24, v61
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v42, v73, v45, s2
	v_cndmask_b32_e64 v56, v62, v79, s2
	v_cndmask_b32_e64 v26, v58, v26, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v58, 0xbfb8aa3b, v18
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v24, v61, v24, s2
	v_cndmask_b32_e64 v46, v65, v46, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v58
	v_cndmask_b32_e64 v58, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v58, 0xbfb8aa3b, v18 :: v_dual_lshlrev_b32 v27, 16, v27
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v80, v91, v27, v63
	v_fma_f32 v27, v86, v27, v59
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v58, v58
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v27, v59, v27, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v35, v35, v11, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v68, 0xbfb8aa3b, v27
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v57, v82, v21, v71
	v_fma_f32 v21, v89, v21, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v68
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v21, v67, v21, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v68, 0, 0x42800000, s10
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, s10
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v44, v83, v23, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v27
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v44, v64, v44, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v64, 0xbfb8aa3b, v21
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v23, v41, v23, v60
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v41, v78, v43, s2
	v_cndmask_b32_e64 v43, v71, v57, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v64
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v23, v60, v23, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_dual_mul_f32 v57, 0xbfb8aa3b, v41 :: v_dual_mul_f32 v62, 0xbfb8aa3b, v43
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v32, v32, v25, v76
	v_fma_f32 v25, v88, v25, v74
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v64, 0, 0x42800000, s6
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v62
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v32, v76, v32, s2
	v_cndmask_b32_e64 v25, v74, v25, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v62, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v59, 0xbfb8aa3b, v32 :: v_dual_mul_f32 v60, 0xbfb8aa3b, v25
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v47, v90, v19, v70
	v_fma_f32 v19, v87, v19, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_dual_mul_f32 v67, 0xbfb8aa3b, v26 :: v_dual_fmac_f32 v62, 0xbfb8aa3b, v43
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v45, v70, v47, s2
	v_cndmask_b32_e64 v19, v66, v19, s2
	v_cndmask_b32_e64 v47, v63, v80, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v59
	v_cndmask_b32_e64 v60, 0, 0x42800000, s3
	v_mul_f32_e32 v61, 0xbfb8aa3b, v45
	v_mul_f32_e32 v65, 0xbfb8aa3b, v56
	v_dual_mul_f32 v63, 0xbfb8aa3b, v19 :: v_dual_lshlrev_b32 v28, 16, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v25
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v61
	v_mul_f32_e32 v66, 0xbfb8aa3b, v47
	v_cndmask_b32_e64 v59, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v63
	v_exp_f32_e32 v60, v60
	v_cndmask_b32_e64 v61, 0, 0x42800000, s5
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v66
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v65
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v67
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s0
	v_dual_fmac_f32 v59, 0xbfb8aa3b, v32 :: v_dual_fmac_f32 v64, 0xbfb8aa3b, v21
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s3
	v_exp_f32_e32 v62, v62
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v45
	v_cndmask_b32_e64 v63, 0, 0x42800000, s7
	v_cndmask_b32_e64 v66, 0, 0x42800000, s8
	v_cndmask_b32_e64 v65, 0, 0x42800000, s9
	v_cndmask_b32_e64 v67, 0, 0x42800000, s11
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v41
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s4
	v_exp_f32_e32 v59, v59
	v_exp_f32_e32 v64, v64
	v_ldexp_f32 v58, v58, v70
	v_ldexp_f32 v60, v60, v72
	v_exp_f32_e32 v61, v61
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s6
	v_dual_fmac_f32 v63, 0xbfb8aa3b, v19 :: v_dual_add_f32 v58, 1.0, v58
	v_dual_fmac_f32 v66, 0xbfb8aa3b, v47 :: v_dual_fmac_f32 v67, 0xbfb8aa3b, v26
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v60, 1.0, v60
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v57, v57
	v_ldexp_f32 v62, v62, v73
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v56
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s5
	v_exp_f32_e32 v68, v68
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v63, v63
	v_exp_f32_e32 v66, v66
	v_ldexp_f32 v59, v59, v71
	v_ldexp_f32 v64, v64, v75
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v65, v65
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v71, null, v58, v58, v18
	v_div_scale_f32 v75, null, v60, v60, v25
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_ldexp_f32 v61, v61, v74
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, s9
	v_ldexp_f32 v57, v57, v69
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_rcp_f32_e32 v96, v71
	v_rcp_f32_e32 v98, v75
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_ldexp_f32 v68, v68, v79
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_ldexp_f32 v63, v63, v76
	v_ldexp_f32 v66, v66, v77
	v_ldexp_f32 v65, v65, v78
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_dual_add_f32 v57, 1.0, v57 :: v_dual_add_f32 v64, 1.0, v64
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v59, 1.0, v59 :: v_dual_add_f32 v66, 1.0, v66
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v67, v67
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v79, null, v61, v61, v45
	v_div_scale_f32 v69, null, v57, v57, v41
	v_div_scale_f32 v73, null, v59, v59, v32
	v_fma_f32 v108, -v71, v96, 1.0
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v110, -v75, v98, 1.0
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, s11
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_rcp_f32_e32 v100, v79
	v_div_scale_f32 v81, null, v64, v64, v21
	v_rcp_f32_e32 v95, v69
	v_rcp_f32_e32 v97, v73
	v_fmac_f32_e32 v96, v108, v96
	v_div_scale_f32 v83, null, v63, v63, v19
	v_fmac_f32_e32 v98, v110, v98
	v_div_scale_f32 v87, null, v65, v65, v56
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_ldexp_f32 v67, v67, v80
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v85, null, v66, v66, v47
	v_rcp_f32_e32 v101, v81
	v_rcp_f32_e32 v102, v83
	v_rcp_f32_e32 v104, v87
	v_div_scale_f32 v77, null, v62, v62, v43
	v_rcp_f32_e32 v103, v85
	v_fma_f32 v112, -v79, v100, 1.0
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v107, -v69, v95, 1.0
	v_fma_f32 v109, -v73, v97, 1.0
	v_rcp_f32_e32 v99, v77
	v_fmac_f32_e32 v100, v112, v100
	v_div_scale_f32 v91, null, v67, v67, v26
	v_div_scale_f32 v70, s0, v41, v57, v41
	v_div_scale_f32 v72, s1, v18, v58, v18
	v_div_scale_f32 v74, vcc_lo, v32, v59, v32
	v_fma_f32 v113, -v81, v101, 1.0
	v_fma_f32 v114, -v83, v102, 1.0
	v_fma_f32 v116, -v87, v104, 1.0
	v_fmac_f32_e32 v95, v107, v95
	v_fmac_f32_e32 v97, v109, v97
	v_div_scale_f32 v89, null, v68, v68, v27
	v_div_scale_f32 v76, s3, v25, v60, v25
	v_rcp_f32_e32 v106, v91
	v_fma_f32 v115, -v85, v103, 1.0
	v_div_scale_f32 v84, s7, v19, v63, v19
	v_div_scale_f32 v88, s9, v56, v65, v56
	v_dual_fmac_f32 v101, v113, v101 :: v_dual_mul_f32 v108, v72, v96
	v_fmac_f32_e32 v102, v114, v102
	v_dual_fmac_f32 v104, v116, v104 :: v_dual_mul_f32 v107, v70, v95
	v_mul_f32_e32 v109, v74, v97
	v_rcp_f32_e32 v105, v89
	v_fma_f32 v111, -v77, v99, 1.0
	v_dual_fmac_f32 v103, v115, v103 :: v_dual_mul_f32 v110, v76, v98
	v_div_scale_f32 v82, s6, v21, v64, v21
	v_mul_f32_e32 v114, v84, v102
	v_mul_f32_e32 v116, v88, v104
	v_fma_f32 v119, -v69, v107, v70
	v_fma_f32 v120, -v71, v108, v72
	v_fma_f32 v121, -v73, v109, v74
	v_div_scale_f32 v78, s4, v43, v62, v43
	v_fma_f32 v118, -v91, v106, 1.0
	v_fmac_f32_e32 v99, v111, v99
	v_fma_f32 v122, -v75, v110, v76
	v_dual_mul_f32 v113, v82, v101 :: v_dual_fmac_f32 v108, v120, v96
	v_fma_f32 v126, -v83, v114, v84
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v107, v119, v95 :: v_dual_fmac_f32 v110, v122, v98
	v_fmac_f32_e32 v109, v121, v97
	v_div_scale_f32 v80, s5, v45, v61, v45
	v_fma_f32 v117, -v89, v105, 1.0
	v_div_scale_f32 v93, s11, v26, v67, v26
	v_fmac_f32_e32 v106, v118, v106
	v_mul_f32_e32 v111, v78, v99
	v_fmac_f32_e32 v114, v126, v102
	v_fma_f32 v69, -v69, v107, v70
	v_fma_f32 v70, -v71, v108, v72
	v_fma_f32 v71, -v73, v109, v74
	v_dual_fmac_f32 v105, v117, v105 :: v_dual_mul_f32 v112, v80, v100
	v_div_scale_f32 v86, s8, v47, v66, v47
	v_mul_f32_e32 v118, v93, v106
	v_fma_f32 v123, -v77, v111, v78
	v_fma_f32 v72, -v75, v110, v76
	v_div_fmas_f32 v71, v71, v97, v109
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v124, -v79, v112, v80
	v_div_fmas_f32 v69, v69, v95, v107
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v115, v86, v103
	v_fma_f32 v125, -v81, v113, v82
	v_fma_f32 v130, -v91, v118, v93
	v_fmac_f32_e32 v111, v123, v99
	v_div_fmas_f32 v72, v72, v98, v110
	v_fmac_f32_e32 v112, v124, v100
	v_fma_f32 v127, -v85, v115, v86
	v_fmac_f32_e32 v118, v130, v106
	v_fma_f32 v73, -v77, v111, v78
	v_div_fixup_f32 v32, v71, v59, v32
	v_fmac_f32_e32 v113, v125, v101
	v_div_fixup_f32 v25, v72, v60, v25
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v90, s10, v27, v68, v27
	v_fma_f32 v74, -v79, v112, v80
	v_div_fmas_f32 v59, v70, v96, v108
	s_mov_b32 vcc_lo, s4
	v_dual_fmac_f32 v115, v127, v103 :: v_dual_mul_f32 v14, v14, v25
	v_div_fixup_f32 v41, v69, v57, v41
	v_div_fmas_f32 v57, v73, v99, v111
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v30, v30, v32
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v75, -v81, v113, v82
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v128, -v87, v116, v88
	v_mul_f32_e32 v117, v90, v105
	v_fma_f32 v76, -v83, v114, v84
	v_div_fmas_f32 v32, v74, v100, v112
	s_mov_b32 vcc_lo, s6
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v8.l, v14.h
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v31, v31, v41
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v41, v75, v101, v113
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v116, v128, v104
	v_fma_f32 v129, -v89, v117, v90
	v_div_fmas_f32 v25, v76, v102, v114
	v_div_fixup_f32 v32, v32, v61, v45
	v_div_fixup_f32 v18, v59, v58, v18
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v10.l, v30.h
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fmac_f32_e32 v117, v129, v105
	v_div_fixup_f32 v19, v25, v63, v19
	.loc	1 211 19 is_stmt 0              ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v25, v39, v32
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v77, -v85, v115, v86
	v_fma_f32 v78, -v87, v116, v88
	v_div_fixup_f32 v43, v57, v62, v43
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v17, v17, v18 :: v_dual_mul_f32 v12, v12, v19
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v21, v41, v64, v21
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_and_b32_e32 v10, 1, v10
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v79, -v89, v117, v90
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v8, 1, v8
	v_mov_b16_e32 v20.l, v25.h
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v18, v77, v103, v115
	s_mov_b32 vcc_lo, s9
	.loc	1 211 19 is_stmt 0              ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v41, v42, v43
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v42, v78, v104, v116
	s_mov_b32 vcc_lo, s10
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v7.l, v17.h
	v_mov_b16_e32 v9.l, v31.h
	v_cmp_o_f32_e64 s3, v14, v14
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v32, v79, v105, v117
	.loc	1 211 19 is_stmt 0              ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v13, v13, v21
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_add3_u32 v8, v14, v8, 0x7fff
	v_and_b32_e32 v14, 1, v20
	v_and_b32_e32 v7, 1, v7
	v_and_b32_e32 v9, 1, v9
	v_cmp_o_f32_e64 s5, v25, v25
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v19, v32, v68, v27
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v16.l, v12.h
	v_add3_u32 v14, v25, v14, 0x7fff
	v_add3_u32 v7, v17, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v31, v31
	v_mov_b16_e32 v15.l, v13.h
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v19, v24, v19 :: v_dual_and_b32 v16, 1, v16
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v7.l, 0x7fff, v14.h, s5
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v14, v18, v66, v47
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v18, v40, v4
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v9, v31, v9, 0x7fff
	v_add3_u32 v10, v30, v10, 0x7fff
	v_cmp_o_f32_e64 s7, v12, v12
	v_add3_u32 v12, v12, v16, 0x7fff
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v16, v42, v65, v56
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v10.l, 0x7fff, v9.h, s1
	v_and_b32_e32 v9, 1, v15
	v_mov_b16_e32 v22.l, v41.h
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v80, -v91, v118, v93
	.loc	1 211 19 is_stmt 0              ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v16, v44, v16
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	s_mov_b32 vcc_lo, s11
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_add3_u32 v9, v13, v9, 0x7fff
	v_cndmask_b16 v9.l, 0x7fff, v12.h, s7
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v12, v92, v28, v55
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v22, 1, v22
	v_cmp_o_f32_e64 s4, v17, v17
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v21, v80, v106, v118
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v12, v55, v12, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v17, v41, v22, 0x7fff
	v_cndmask_b16 v8.l, 0x7fff, v7.h, s4
	v_mov_b16_e32 v94.l, v19.h
	v_cmp_o_f32_e64 s0, v30, v30
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v20, 0xbfb8aa3b, v12
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v7.h, 0x7fff, v17.h, vcc_lo
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v21, v21, v67, v26
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s6, v13, v13
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s0
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v19, v19
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v15, v23, v21 :: v_dual_mul_f32 v14, v46, v14
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v13.h, v4.l
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v17, 1, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v13.l, v15.h
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v18, v18, v6, v54
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v12
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v17, v19, v17, 0x7fff
	v_cmp_o_f32_e64 s1, v15, v15
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s3
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s6
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v19, v20
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v20, v38, v5
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v20, v20, v28, v53
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_ldexp_f32 v19, v19, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v20, v53, v20, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_dual_mul_f32 v22, 0xbfb8aa3b, v20 :: v_dual_and_b32 v13, 1, v13
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v13, v15, v13, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v15, v54, v18, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v18.l, v14.h
	v_mov_b16_e32 v18.h, v4.l
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v17.l, 0x7fff, v13.h, s1
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v21, v37, v5
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v5, v33, v5 :: v_dual_fmac_f32 v22, 0xbfb8aa3b, v20
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v6, v21, v6, v52
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v21.l, v16.h
	v_mov_b16_e32 v21.h, v4.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v5, v5, v11, v50
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v22, v22
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v6, v52, v6, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v13, 0xbfb8aa3b, v15
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v5, v50, v5, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v6
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v22, v22, v27
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v21, 1, v21
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v13, 0, 0x42800000, s0
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v24
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_add3_u32 v21, v16, v21, 0x7fff
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v24, 0, 0x42800000, s0
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s0
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v6
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v25, null, v19, v19, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v13, v13, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_rcp_f32_e32 v23, v25
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_dual_add_f32 v13, 1.0, v13 :: v_dual_and_b32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_add3_u32 v18, v14, v18, 0x7fff
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_ldexp_f32 v14, v24, v30
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_div_scale_f32 v24, s0, v12, v19, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v26, null, v13, v13, v15
	v_fma_f32 v28, -v25, v23, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v38, s1, v15, v13, v15
	v_rcp_f32_e32 v31, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v23, v28, v23
	v_div_scale_f32 v28, null, v22, v22, v20
	v_div_scale_f32 v30, null, v14, v14, v6
	v_mul_f32_e32 v32, v24, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v37, v28
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v27, -v26, v31, 1.0
	v_fma_f32 v39, -v25, v32, v24
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_eq_u32_e64 s0, 0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_dual_mov_b32 v0, 0x5410 :: v_dual_fmac_f32 v31, v27, v31
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_rcp_f32_e32 v27, v30
	v_fma_f32 v41, -v28, v37, 1.0
	v_fmac_f32_e32 v32, v39, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_dual_mul_f32 v40, v38, v31 :: v_dual_fmac_f32 v37, v41, v37
	v_div_scale_f32 v41, s3, v20, v22, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v42, -v26, v40, v38
	v_fma_f32 v39, -v30, v27, 1.0
	v_fma_f32 v24, -v25, v32, v24
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v25, v41, v37
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_lshl_or_b32 v0, v0, 8, v0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fmac_f32_e32 v40, v42, v31
	v_fmac_f32_e32 v27, v39, v27
	v_div_scale_f32 v39, s4, v6, v14, v6
	v_div_fmas_f32 v23, v24, v23, v32
	v_fma_f32 v24, -v28, v25, v41
	v_fma_f32 v26, -v26, v40, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v42, v39, v27
	s_mov_b32 vcc_lo, s1
	v_dual_fmac_f32 v25, v24, v37 :: v_dual_and_b32 v0, 0x540054, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v24, v26, v31, v40
	v_fma_f32 v32, -v30, v42, v39
	s_mov_b32 vcc_lo, s3
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v26, v34, v29, v51
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v11, -v28, v25, v41
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_lshl_or_b32 v0, v0, 4, v0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fmac_f32_e32 v42, v32, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v26, v51, v26, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v11, v11, v37, v25
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v28, -v30, v42, v39
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v0, 0x5040504, v0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v11, v11, v22, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v25, v28, v27, v42
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v27, v36, v29, v48
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v16, v49, v35, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v6, v25, v14, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v14, v48, v27, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v18.l, 0x7fff, v21.h, vcc_lo
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v5, v5, v6
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v6, v23, v19, v12
	v_div_fixup_f32 v12, v24, v13, v15
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v11, v26, v11
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v13.h, v4.l
	v_mov_b16_e32 v15.l, v5.h
	v_mov_b16_e32 v15.h, v4.l
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v6, v14, v6
	v_mul_f32_e32 v12, v16, v12
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v13.l, v11.h
	v_mov_b16_e32 v16.h, v4.l
	v_and_b32_e32 v14, 1, v15
	v_mov_b16_e32 v15.l, v6.h
	v_mov_b16_e32 v16.l, v12.h
	v_and_b32_e32 v13, 1, v13
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_cmp_o_f32_e64 s2, v12, v12
	v_cmp_o_f32_e64 s1, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v4, v11, v13, 0x7fff
	v_add3_u32 v11, v5, v14, 0x7fff
	v_and_b32_e32 v13, 1, v16
	v_and_b32_e32 v14, 1, v15
	v_cndmask_b16 v4.h, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v5, v12, v13, 0x7fff
	v_add3_u32 v13, v6, v14, 0x7fff
	v_mov_b32_e32 v14, 0x7632
	v_cndmask_b32_e64 v6, v17, v8, s0
	v_cndmask_b16 v4.l, 0x7fff, v11.h, vcc_lo
	v_cndmask_b16 v11.l, 0x7fff, v5.h, s2
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s1
	v_cndmask_b32_e64 v12, 0x3276, v14, s0
	v_cndmask_b32_e64 v8, v8, v17, s0
	s_mov_b32 s1, 0x76543210
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v13, v11, v7, s0
	v_lshl_or_b32 v5, v12, 8, v12
	v_cndmask_b32_e64 v12, v4, v9, s0
	v_cndmask_b32_e64 v4, v9, v4, s0
	v_cndmask_b32_e64 v9, v18, v10, s0
	v_cndmask_b32_e64 v10, v10, v18, s0
	v_and_b32_e32 v5, 0x760076, v5
	v_cndmask_b32_e64 v7, v7, v11, s0
	v_permlanex16_b32 v8, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v5, v5, 4, v5
	v_permlanex16_b32 v15, v7, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v8, v6, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 0x7060706, v5
	v_perm_b32 v5, v8, v6, v11
	v_perm_b32 v6, v14, v12, v0
	v_perm_b32 v7, v14, v12, v11
	v_perm_b32 v8, v10, v9, v0
	v_perm_b32 v9, v10, v9, v11
	v_perm_b32 v10, v15, v13, v0
	v_add_lshl_u32 v0, v2, v3, 1
	v_perm_b32 v11, v15, v13, v11
	s_clause 0x1
	buffer_store_b128 v[4:7], v0, s[24:27], 0 offen
	buffer_store_b128 v[8:11], v1, s[24:27], 0 offen
	.loc	1 80 1                          ; generate_amdgcn.py:80:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 217
		.amdhsa_next_free_sgpr 49
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 217
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14272
; TotalNumSgprs: 51
; NumVgprs: 217
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 51
; NumVGPRsForWavesPerEU: 217
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     217
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
