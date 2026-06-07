	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
	s_load_b64 s[20:21], s[0:1], 0x20
	v_mov_b32_e32 v40, v0
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v44, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshlrev_b32_e32 v9, 2, v40
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v46, 0
	v_and_b32_e32 v1, 12, v9
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v3, 2, v40
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_bfe_u32 v2, v40, 4, 4
	v_mov_b32_e32 v201, 0
	v_dual_mov_b32 v95, 0 :: v_dual_and_b32 v10, 8, v40
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s22, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s9, s9, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s13, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 89 16 is_stmt 1               ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s13
	v_mov_b32_e32 v203, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v82, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v0, s5
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v52, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v14, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v78, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v38, 0
	s_mul_i32 s8, s8, s5
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v64, 0
	s_mul_hi_u32 s8, s5, s8
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v32, 0
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v66, 0
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v68, 0
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v98, 0
	s_cselect_b32 s4, s9, s5
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v58, 0
	s_xor_b32 s4, s4, s8
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v103, 0
	s_sub_i32 s17, s4, s8
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v57, 0
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s7, s17
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v109, 0
	.loc	1 91 20 is_stmt 0               ; generate_amdgcn.py:91:20
	s_min_i32 s18, s4, 1
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 93 13 is_stmt 1               ; generate_amdgcn.py:93:13
	s_abs_i32 s14, s18
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v65, 0
	s_cvt_f32_u32 s15, s14
	s_sub_i32 s1, 0, s14
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v17, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v0, s15
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v16, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s0, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s6, s17, s13
	s_mov_b32 s7, 0x31027000
	s_sub_i32 s19, s2, s6
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s0, s0, 0x4f7ffffe
	s_abs_i32 s2, s19
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s27, s7
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s0, s0
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s26, s6
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v106, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_i32 s1, s1, s0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v71, 0
	s_mul_hi_u32 s1, s0, s1
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v174, 0
	s_add_i32 s0, s0, s1
	s_xor_b32 s1, s19, s18
	s_mul_hi_u32 s0, s2, s0
	s_ashr_i32 s13, s1, 31
	s_mul_i32 s15, s0, s14
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v70, 0
	s_sub_i32 s1, s2, s15
	s_add_i32 s2, s0, 1
	s_sub_i32 s15, s1, s14
	s_cmp_ge_u32 s1, s14
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	s_cselect_b32 s0, s2, s0
	s_cselect_b32 s1, s15, s1
	s_add_i32 s2, s0, 1
	s_cmp_ge_u32 s1, s14
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v176, 0
	s_cselect_b32 s0, s2, s0
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s1, s12, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s16, s12, 31
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s12, s12, s1
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s14, s3, 4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s41, s12, 1
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v4, s14, v1
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_mul_lo_u32 v5, s41, v3
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s15, s0, s13
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s0, s16, 31
.Ltmp15:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s1, s15, s13
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e32 vcc_lo, s41, v4
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s12, s1, s18
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s22, s1, 7
	.loc	1 156 51                        ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s1, 16, v4
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add3_u32 v4, v5, v1, s14
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s0, s0, 27
.Ltmp17:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s12, s19, s12
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s0, s16, s0
.Ltmp19:
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s12, s12, s17
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_mad_u64_u32 v[5:6], null, s22, s41, v[4:5]
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	s_lshl_b32 s34, s23, 1
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s35, s0, 5
.Ltmp21:
	.loc	1 171 29                        ; generate_amdgcn.py:171:29
	s_add_i32 s0, s22, s23
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s33, s12, 4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s16, 31
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_or_b32_e32 v8, s33, v2
	.loc	1 171 29                        ; generate_amdgcn.py:171:29
	v_mad_u64_u32 v[6:7], null, s0, s41, v[4:5]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s0, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s12, s1, vcc_lo
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_and_b32 s25, s25, 0xffff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s0, s12
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v41, 15, v40
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	v_cndmask_b32_e32 v4, 0x80000000, v6, vcc_lo
	v_mov_b32_e32 v42, 0
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_bfe_i32 v6, v40, 5, 1
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v0, s14, v41
	v_mov_b32_e32 v19, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v18, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_and_b32_e32 v6, 0x88, v6
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s3, s41, v0
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s2, 16, v0
	.loc	1 162 34 is_stmt 1              ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[7:8], null, v8, s41, v[0:1]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e32 v0, 0x80000000, v5, vcc_lo
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v8, 0x7f, v40
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, s2, s3
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_and_b32_e32 v9, 0x77c, v9
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s0, s3
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v212, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e32 v5, 0x80000000, v7, vcc_lo
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_clause 0x1
	buffer_load_b32 v0, v0, s[24:27], 0 offen
	buffer_load_b32 v4, v4, s[24:27], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u8 v5, v5, s[4:7], 0 offen
	v_bfe_i32 v7, v40, 7, 1
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xor_b32_e32 v6, v6, v9
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v208, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v7, 0x88, v7
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v116, 0
	v_xor_b32_e32 v7, v7, v8
	v_dual_mov_b32 v209, 0 :: v_dual_lshlrev_b32 v8, 4, v40
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v97, 0
	v_mov_b32_e32 v215, 0
	v_mov_b32_e32 v99, 0
	v_mov_b32_e32 v205, 0
	v_mov_b32_e32 v237, 0
	v_mov_b32_e32 v107, 0
	v_mov_b32_e32 v219, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v74, v40, 4, 1
	v_cmp_eq_u32_e32 vcc_lo, 0, v10
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v10, 0, v6
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v11, 0, v7
	v_and_b32_e32 v6, 0x70, v8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s40, s35, -1
	s_mov_b32 s12, 0
	s_cmp_lt_i32 s16, 64
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(1)
	ds_store_2addr_stride64_b32 v10, v0, v4 offset1:8
	.loc	1 162 26 is_stmt 1              ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(0)
	ds_store_b8 v11, v5 offset:4096
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	s_lshl_b32 s16, s15, 8
	s_lshl_b32 s15, s15, 7
	v_cndmask_b32_e64 v0, 0x88, 0, vcc_lo
	v_add3_u32 v4, s23, s15, v3
	s_lshl_b32 s18, s13, 8
	s_lshl_b32 s13, s13, 7
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v5, s33, v41
	v_or_b32_e32 v3, s15, v3
	v_subrev_nc_u32_e32 v4, s13, v4
	scratch_store_b32 off, v6, off offset:164 ; 4-byte Folded Spill
	v_or_b32_e32 v6, v0, v6
	v_sub_nc_u32_e32 v0, s41, v1
	v_mul_lo_u32 v8, s35, v5
	v_subrev_nc_u32_e32 v5, s13, v3
	v_dual_mov_b32 v216, 0 :: v_dual_add_nc_u32 v9, s33, v2
	v_mad_u64_u32 v[2:3], null, s41, v4, s[14:15]
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:88
	scratch_store_b32 off, v74, off offset:160
	v_dual_mov_b32 v107, 0 :: v_dual_lshlrev_b32 v0, 1, v74
	v_mad_u64_u32 v[3:4], null, s41, v5, s[14:15]
	v_mad_u64_u32 v[4:5], null, s41, v9, s[14:15]
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	v_add3_u32 v0, v2, v1, 16
	v_xor_b32_e32 v7, 8, v6
	s_add_i32 s17, s16, s34
	s_mov_b32 s19, s12
	s_sub_i32 s42, s17, s18
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	v_add3_u32 v0, v3, v1, 16
	v_add_nc_u32_e32 v1, 0, v7
	v_mov_b32_e32 v237, 0
	s_sub_i32 s44, s16, s18
	s_add_i32 s46, s14, 16
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	v_add3_u32 v0, v4, v41, 16
	v_mov_b32_e32 v205, 0
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v6
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v126, s19
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0x800, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:116
	scratch_store_b32 off, v1, off offset:112
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v0, 0x800, v1
	v_dual_mov_b32 v204, 0 :: v_dual_lshlrev_b32 v81, 1, v8
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v215, 0
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v95, 0
	v_mov_b32_e32 v96, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v124, s17
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v122, s15
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v120, s13
	v_mov_b32_e32 v125, s18
	v_mov_b32_e32 v123, s16
	v_mov_b32_e32 v121, s14
	v_mov_b32_e32 v119, s12
	s_max_i32 s3, s40, 1
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_lshl_b32 s43, s23, 2
	s_lshl_b32 s45, s3, 4
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s38, s6
	s_mov_b32 s39, s7
	s_clause 0x5                            ; 48-byte Folded Spill
	scratch_store_b32 off, v40, off offset:156
	scratch_store_b32 off, v0, off offset:4
	scratch_store_b128 off, v[119:122], off offset:124
	scratch_store_b128 off, v[123:126], off offset:140
	scratch_store_b32 off, v10, off offset:80
	scratch_store_b32 off, v11, off offset:84
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	scratch_load_b32 v0, off, off offset:104 ; 4-byte Folded Reload
	v_dual_mov_b32 v158, v182 :: v_dual_add_nc_u32 v9, s46, v41
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v87, off offset:16
	scratch_store_b32 off, v61, off offset:12
	scratch_store_b32 off, v1, off offset:8
	scratch_store_b32 off, v23, off
	v_dual_mov_b32 v110, v92 :: v_dual_mov_b32 v121, v227
	v_dual_mov_b32 v182, v94 :: v_dual_add_nc_u32 v9, s12, v9
	v_mov_b32_e32 v74, v112
	v_dual_mov_b32 v92, v90 :: v_dual_mov_b32 v87, v240
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s3, s41, v9
	v_dual_mov_b32 v90, v253 :: v_dual_mov_b32 v27, v236
	v_mov_b32_e32 v120, v102
	v_dual_mov_b32 v102, v237 :: v_dual_mov_b32 v63, v32
	.loc	1 156 26 is_stmt 0              ; generate_amdgcn.py:156:26
	s_and_b32 s3, s3, s2
	v_dual_mov_b32 v160, v134 :: v_dual_mov_b32 v57, v241
	v_mov_b32_e32 v28, v242
	v_dual_mov_b32 v8, v59 :: v_dual_mov_b32 v69, v64
	v_dual_mov_b32 v180, v101 :: v_dual_mov_b32 v115, v194
	v_mov_b32_e32 v82, v198
	v_dual_mov_b32 v198, v154 :: v_dual_mov_b32 v119, v20
	v_mov_b32_e32 v194, v157
	v_mov_b32_e32 v94, v91
	v_mov_b32_e32 v156, v178
	v_dual_mov_b32 v134, v203 :: v_dual_mov_b32 v71, v205
	v_mov_b32_e32 v64, v66
	v_mov_b32_e32 v157, v34
	v_mov_b32_e32 v91, v89
	v_dual_mov_b32 v89, v86 :: v_dual_mov_b32 v86, v213
	v_mov_b32_e32 v29, v93
	v_dual_mov_b32 v77, v200 :: v_dual_mov_b32 v200, v105
	v_mov_b32_e32 v93, v19
	v_mov_b32_e32 v203, v117
	v_mov_b32_e32 v205, v161
	v_mov_b32_e32 v161, v35
	v_dual_mov_b32 v37, v36 :: v_dual_mov_b32 v36, v109
	v_dual_mov_b32 v109, v216 :: v_dual_mov_b32 v216, v177
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v177, v39 :: v_dual_add_nc_u32 v10, s12, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 162 26 is_stmt 1              ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v9, 0x80000000, v10, s3
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	s_add_i32 s3, s46, s12
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u8 v0, v9, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x5                            ; 48-byte Folded Reload
	scratch_load_b32 v16, off, off offset:108
	scratch_load_b32 v17, off, off offset:112
	scratch_load_b32 v70, off, off offset:116
	scratch_load_b32 v108, off, off offset:120
	scratch_load_b128 v[0:3], off, off offset:124
	scratch_load_b128 v[4:7], off, off offset:140
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(5)
	ds_load_2addr_b64 v[130:133], v16 offset1:32
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[9:10], v16 offset:4096
	s_waitcnt vmcnt(4)
	ds_load_b64 v[11:12], v17 offset:4096
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_b64 v[144:147], v17 offset1:32
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	s_waitcnt vmcnt(3)
	ds_load_2addr_b64 v[149:152], v70 offset1:32
	s_waitcnt vmcnt(2)
	ds_load_2addr_b64 v[162:165], v108 offset1:32
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_b64 v[168:171], v16 offset0:64 offset1:96
	ds_load_2addr_b64 v[222:225], v17 offset0:64 offset1:96
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_b64 v[235:238], v108 offset0:64 offset1:96
	ds_load_2addr_b64 v[245:248], v70 offset0:128 offset1:160
	ds_load_2addr_b64 v[249:252], v108 offset0:128 offset1:160
	v_mov_b32_e32 v154, v33
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt vmcnt(0) lgkmcnt(9)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[130:131], v[9:10], v[0:7] neg_lo:[1,1,0]
	v_mov_b32_e32 v130, v98
	v_mov_b32_e32 v98, v204
	v_mov_b32_e32 v204, v155
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[144:145], v[11:12], v[122:129] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[138:145], v[149:150], v[9:10], v[0:7] neg_lo:[1,1,0]
	v_mov_b32_e32 v155, v85
	v_mov_b32_e32 v85, v202
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v192, v124
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v124, v81, s[28:31], 0 offen
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[138:145], v[162:163], v[11:12], v[138:145] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v172, v123
	v_dual_mov_b32 v123, v118 :: v_dual_mov_b32 v118, v221
	v_mov_b32_e32 v202, v65
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v21, v138
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v211, v128
	v_mov_b32_e32 v128, v210
	v_cvt_f32_i32_e32 v210, v129
	v_cvt_f32_i32_e32 v184, v125
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_store_b32 off, v21, off offset:52 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v21, v139
	v_mov_b32_e32 v125, v239
	v_mov_b32_e32 v131, v209
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v209, v126
	v_cvt_f32_i32_e32 v207, v127
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_store_b32 off, v21, off offset:48 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v21, v140
	v_dual_mov_b32 v126, v84 :: v_dual_mov_b32 v127, v217
	v_dual_mov_b32 v84, v197 :: v_dual_mov_b32 v197, v62
	scratch_store_b32 off, v21, off offset:40 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v21, v141
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v173, v122
	v_dual_mov_b32 v65, v68 :: v_dual_mov_b32 v68, v190
	v_mov_b32_e32 v190, v18
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_store_b32 off, v21, off offset:32 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v21, v142
	v_mov_b32_e32 v122, v107
	scratch_store_b32 off, v21, off offset:28 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v21, v143
	scratch_store_b32 off, v21, off offset:24 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v21, v144
	scratch_store_b32 off, v21, off offset:44 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v21, v145
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[138:145], v[132:133], v[9:10], v[0:7] neg_lo:[1,1,0]
	v_mov_b32_e32 v132, v212
	scratch_store_b32 off, v21, off offset:36 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[138:145], v[146:147], v[11:12], v[138:145] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v227, v143
	v_cvt_f32_i32_e32 v230, v144
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v229, v145
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[143:150], v[151:152], v[9:10], v[0:7] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v221, v140
	v_mov_b32_e32 v140, v31
	v_cvt_f32_i32_e32 v213, v138
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[143:150], v[164:165], v[11:12], v[143:150] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v212, v139
	v_cvt_f32_i32_e32 v217, v141
	v_cvt_f32_i32_e32 v228, v142
	v_mov_b32_e32 v141, v135
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v21, v143
	v_cvt_f32_i32_e32 v179, v147
	v_cvt_f32_i32_e32 v219, v148
	v_mov_b32_e32 v142, v136
	scratch_store_b32 off, v21, off offset:76 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v21, v144
	scratch_store_b32 off, v21, off offset:72 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v21, v145
	scratch_store_b32 off, v21, off offset:64 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v21, v146
	scratch_store_b32 off, v21, off offset:56 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v21, v149
	scratch_store_b32 off, v21, off offset:68 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v21, v150
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[144:151], v[168:169], v[9:10], v[0:7] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	scratch_store_b32 off, v21, off offset:60 ; 4-byte Folded Spill
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[144:151], v[222:223], v[11:12], v[144:151] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v112, v150
	v_cvt_f32_i32_e32 v113, v151
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_b64 v[150:153], v70 offset0:64 offset1:96
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v232, v144
	v_cvt_f32_i32_e32 v231, v145
	v_cvt_f32_i32_e32 v234, v146
	v_cvt_f32_i32_e32 v233, v147
	v_cvt_f32_i32_e32 v255, v148
	v_cvt_f32_i32_e32 v61, v149
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[162:169], v[150:151], v[9:10], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[162:169], v[235:236], v[11:12], v[162:169] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v151, v162
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v150, v163
	v_cvt_f32_i32_e32 v148, v164
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v146, v165
	v_cvt_f32_i32_e32 v145, v166
	v_cvt_f32_i32_e32 v144, v167
	v_cvt_f32_i32_e32 v149, v168
	v_cvt_f32_i32_e32 v147, v169
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[162:169], v[170:171], v[9:10], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[162:169], v[224:225], v[11:12], v[162:169] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_b64 v[222:225], v16 offset0:128 offset1:160
	ds_load_2addr_b64 v[241:244], v17 offset0:128 offset1:160
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v101, v163
	v_cvt_f32_i32_e32 v58, v164
	v_cvt_f32_i32_e32 v59, v165
	v_cvt_f32_i32_e32 v31, v166
	v_cvt_f32_i32_e32 v32, v167
	v_cvt_f32_i32_e32 v33, v168
	v_cvt_f32_i32_e32 v34, v169
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[163:170], v[152:153], v[9:10], v[0:7] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v114, v162
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[163:170], v[237:238], v[11:12], v[163:170] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v162, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v129, v165
	v_cvt_f32_i32_e32 v138, v166
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v153, v167
	v_cvt_f32_i32_e32 v152, v168
	v_cvt_f32_i32_e32 v139, v169
	v_cvt_f32_i32_e32 v133, v170
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[164:171], v[222:223], v[9:10], v[0:7] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v163, v163
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[164:171], v[241:242], v[11:12], v[164:171] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[235:242], v[245:246], v[9:10], v[0:7] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v35, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[235:242], v[249:250], v[11:12], v[235:242] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v62, v165
	v_cvt_f32_i32_e32 v66, v166
	v_cvt_f32_i32_e32 v135, v167
	v_cvt_f32_i32_e32 v136, v168
	v_cvt_f32_i32_e32 v143, v169
	v_cvt_f32_i32_e32 v25, v170
	v_cvt_f32_i32_e32 v26, v171
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v171, v235
	v_cvt_f32_i32_e32 v170, v236
	v_cvt_f32_i32_e32 v168, v237
	v_cvt_f32_i32_e32 v166, v238
	v_cvt_f32_i32_e32 v165, v239
	v_cvt_f32_i32_e32 v164, v240
	v_cvt_f32_i32_e32 v169, v241
	v_cvt_f32_i32_e32 v167, v242
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[235:242], v[224:225], v[9:10], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[235:242], v[243:244], v[11:12], v[235:242] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v39, v235
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v40, v236
	v_cvt_f32_i32_e32 v23, v238
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v24, v239
	v_cvt_f32_i32_e32 v117, v240
	v_cvt_f32_i32_e32 v21, v241
	v_cvt_f32_i32_e32 v22, v242
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v124, 16, v124
	v_mov_b32_e32 v20, v41
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v41, v237
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[235:242], v[247:248], v[9:10], v[0:7] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_b64 v[243:246], v16 offset0:192 offset1:224
	ds_load_2addr_b64 v[247:250], v17 offset0:192 offset1:224
	v_dual_mov_b32 v17, v43 :: v_dual_mov_b32 v16, v49
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[235:242], v[251:252], v[11:12], v[235:242] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_b64 v[251:254], v70 offset0:192 offset1:224
	v_dual_mov_b32 v70, v195 :: v_dual_mov_b32 v195, v106
	ds_load_2addr_b64 v[105:108], v108 offset0:192 offset1:224
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v206, v235
	v_cvt_f32_i32_e32 v199, v236
	v_cvt_f32_i32_e32 v193, v237
	v_cvt_f32_i32_e32 v185, v238
	v_cvt_f32_i32_e32 v183, v239
	v_cvt_f32_i32_e32 v178, v240
	v_cvt_f32_i32_e32 v196, v241
	v_cvt_f32_i32_e32 v186, v242
	v_mov_b32_e32 v49, v47
	v_mov_b32_e32 v47, v45
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v173, v124, v173
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[235:242], v[243:244], v[9:10], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[235:242], v[247:248], v[11:12], v[235:242] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v243, v235
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v244, v236
	v_cvt_f32_i32_e32 v247, v237
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v248, v238
	v_cvt_f32_i32_e32 v43, v239
	v_cvt_f32_i32_e32 v18, v240
	v_cvt_f32_i32_e32 v45, v241
	v_cvt_f32_i32_e32 v19, v242
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[235:242], v[251:252], v[9:10], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[235:242], v[105:106], v[11:12], v[235:242] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v226, v235
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v225, v236
	v_cvt_f32_i32_e32 v223, v237
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v222, v238
	v_cvt_f32_i32_e32 v218, v239
	v_cvt_f32_i32_e32 v214, v240
	v_cvt_f32_i32_e32 v224, v241
	v_cvt_f32_i32_e32 v220, v242
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[235:242], v[245:246], v[9:10], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[235:242], v[249:250], v[11:12], v[235:242] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v105, v235
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v106, v236
	v_cvt_f32_i32_e32 v245, v237
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v246, v238
	v_cvt_f32_i32_e32 v249, v239
	v_cvt_f32_i32_e32 v250, v240
	v_cvt_f32_i32_e32 v251, v241
	v_cvt_f32_i32_e32 v252, v242
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[235:242], v[253:254], v[9:10], v[0:7] neg_lo:[1,1,0]
	v_mov_b32_e32 v254, v81
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v81, off, off offset:92
	scratch_load_b32 v0, off, off offset:4
	scratch_load_b32 v7, off, off offset:52
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[235:242], v[107:108], v[11:12], v[235:242] neg_lo:[1,1,0]
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v3, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v107, v235
	v_cvt_f32_i32_e32 v108, v236
	v_cvt_f32_i32_e32 v9, v237
	v_cvt_f32_i32_e32 v11, v238
	v_cvt_f32_i32_e32 v10, v239
	v_cvt_f32_i32_e32 v12, v240
	v_cvt_f32_i32_e32 v5, v241
	v_cvt_f32_i32_e32 v6, v242
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v235, s44, v81
	s_clause 0x7
	buffer_load_u16 v236, v235, s[36:39], 0 offen
	buffer_load_u16 v237, v235, s[36:39], 0 offen offset:4
	buffer_load_u16 v238, v235, s[36:39], 0 offen offset:8
	buffer_load_u16 v239, v235, s[36:39], 0 offen offset:12
	buffer_load_u16 v240, v235, s[36:39], 0 offen offset:16
	buffer_load_u16 v241, v235, s[36:39], 0 offen offset:20
	buffer_load_u16 v242, v235, s[36:39], 0 offen offset:24
	buffer_load_u16 v253, v235, s[36:39], 0 offen offset:28
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s44, s44, s43
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v236, 16, v236
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v122, v173, v236 :: v_dual_lshlrev_b32 v173, 16, v237
	v_dual_mov_b32 v237, v102 :: v_dual_mul_f32 v172, v124, v172
	v_dual_mov_b32 v4, v93 :: v_dual_mul_f32 v213, v124, v213
	v_mov_b32_e32 v2, v155
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v112, v124, v112
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v237, v172, v173 :: v_dual_lshlrev_b32 v172, 16, v238
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v173, v124, v192 :: v_dual_mov_b32 v236, v27
	v_dual_mul_f32 v114, v124, v114 :: v_dual_mov_b32 v93, v29
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v11, v124, v11
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v97, v173, v172 :: v_dual_lshlrev_b32 v172, 16, v239
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v173, v124, v184
	v_mov_b32_e32 v239, v125
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v9, v124, v9
	v_mov_b32_e32 v155, v204
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v101, v124, v101 :: v_dual_fmac_f32 v100, v173, v172
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v173, v124, v209 :: v_dual_lshlrev_b32 v172, 16, v240
	v_dual_mul_f32 v29, v124, v58 :: v_dual_mov_b32 v240, v87
	v_mul_f32_e32 v35, v124, v35
	v_mul_f32_e32 v27, v124, v135
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v99, v173, v172 :: v_dual_lshlrev_b32 v172, 16, v241
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v173, v124, v207
	v_mov_b32_e32 v241, v57
	v_mul_f32_e32 v25, v124, v25
	v_mul_f32_e32 v21, v124, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v23, v124, v23 :: v_dual_fmac_f32 v0, v173, v172
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v173, v124, v211 :: v_dual_lshlrev_b32 v172, 16, v242
	v_mov_b32_e32 v135, v141
	v_mul_f32_e32 v19, v124, v19
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v12, v124, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v10, v124, v10 :: v_dual_fmac_f32 v95, v173, v172
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v173, v124, v210 :: v_dual_lshlrev_b32 v172, 16, v253
	v_dual_mov_b32 v253, v90 :: v_dual_mov_b32 v90, v92
	v_mov_b32_e32 v92, v110
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v96, v173, v172
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v172, v235, s[36:39], 0 offen offset:32
	buffer_load_u16 v173, v235, s[36:39], 0 offen offset:36
	buffer_load_u16 v184, v235, s[36:39], 0 offen offset:40
	buffer_load_u16 v192, v235, s[36:39], 0 offen offset:44
	buffer_load_u16 v207, v235, s[36:39], 0 offen offset:48
	buffer_load_u16 v209, v235, s[36:39], 0 offen offset:52
	buffer_load_u16 v210, v235, s[36:39], 0 offen offset:56
	buffer_load_u16 v211, v235, s[36:39], 0 offen offset:60
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v0, v124, v61
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v87, off, off offset:16
	scratch_load_b32 v61, off, off offset:12
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v172, 16, v172
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v4, v213, v172 :: v_dual_mov_b32 v213, v86
	v_mov_b32_e32 v86, v89
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v172, 16, v173
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v173, v124, v212
	v_mov_b32_e32 v89, v91
	v_dual_mov_b32 v91, v94 :: v_dual_mul_f32 v212, v124, v232
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v92, v173, v172
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v173, v124, v221 :: v_dual_lshlrev_b32 v172, 16, v184
	v_dual_mov_b32 v221, v118 :: v_dual_mov_b32 v118, v123
	v_mov_b32_e32 v123, v126
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v253, v173, v172
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v173, v124, v217 :: v_dual_lshlrev_b32 v172, 16, v192
	v_dual_mov_b32 v204, v98 :: v_dual_mov_b32 v217, v127
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v98, v130 :: v_dual_fmac_f32 v91, v173, v172
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v173, v124, v228 :: v_dual_lshlrev_b32 v172, 16, v207
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v89, v173, v172 :: v_dual_lshlrev_b32 v172, 16, v209
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v173, v124, v227
	v_mov_b32_e32 v227, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v90, v173, v172
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v172, 16, v210
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v173, v124, v230
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v67, v173, v172 :: v_dual_lshlrev_b32 v172, 16, v211
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v173, v124, v229
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v86, v173, v172
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v172, v235, s[36:39], 0 offen offset:64
	buffer_load_u16 v173, v235, s[36:39], 0 offen offset:68
	buffer_load_u16 v184, v235, s[36:39], 0 offen offset:72
	buffer_load_u16 v192, v235, s[36:39], 0 offen offset:76
	buffer_load_u16 v207, v235, s[36:39], 0 offen offset:80
	buffer_load_u16 v209, v235, s[36:39], 0 offen offset:84
	buffer_load_u16 v210, v235, s[36:39], 0 offen offset:88
	buffer_load_u16 v211, v235, s[36:39], 0 offen offset:92
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v172, 16, v172
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v213, v212, v172 :: v_dual_lshlrev_b32 v172, 16, v173
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v173, v124, v231
	v_dual_mov_b32 v212, v132 :: v_dual_fmac_f32 v217, v173, v172
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v173, v124, v234 :: v_dual_lshlrev_b32 v172, 16, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v102, v120 :: v_dual_fmac_f32 v227, v173, v172
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v173, v124, v233 :: v_dual_lshlrev_b32 v172, 16, v192
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v212, v173, v172
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v172, 16, v207
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v173, v124, v255
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v118, v173, v172
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v172, 16, v209
	v_dual_mov_b32 v209, v131 :: v_dual_mov_b32 v94, v182
	v_dual_mov_b32 v182, v158 :: v_dual_mov_b32 v131, v156
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v209, v0, v172 :: v_dual_lshlrev_b32 v0, 16, v210
	v_mov_b32_e32 v210, v128
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v159, v112, v0 :: v_dual_lshlrev_b32 v0, 16, v211
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v112, v124, v113
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v210, v112, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v0, v235, s[36:39], 0 offen offset:96
	buffer_load_u16 v112, v235, s[36:39], 0 offen offset:100
	buffer_load_u16 v113, v235, s[36:39], 0 offen offset:104
	buffer_load_u16 v172, v235, s[36:39], 0 offen offset:108
	buffer_load_u16 v173, v235, s[36:39], 0 offen offset:112
	buffer_load_u16 v184, v235, s[36:39], 0 offen offset:116
	buffer_load_u16 v192, v235, s[36:39], 0 offen offset:120
	buffer_load_u16 v207, v235, s[36:39], 0 offen offset:124
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v98, v114, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v0, 16, v112
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v72, v101, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v0, 16, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v80, v29, v0
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v29, v124, v59 :: v_dual_lshlrev_b32 v0, 16, v172
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v111, v29, v0 :: v_dual_lshlrev_b32 v0, 16, v173
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v29, v124, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v239, v29, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v0, 16, v184
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v29, v124, v32
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v103, v29, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v29, v124, v33 :: v_dual_lshlrev_b32 v0, 16, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v28, v29, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v29, v124, v34 :: v_dual_lshlrev_b32 v0, 16, v207
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v1, v29, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v0, v235, s[36:39], 0 offen offset:128
	buffer_load_u16 v29, v235, s[36:39], 0 offen offset:132
	buffer_load_u16 v30, v235, s[36:39], 0 offen offset:136
	buffer_load_u16 v31, v235, s[36:39], 0 offen offset:140
	buffer_load_u16 v32, v235, s[36:39], 0 offen offset:144
	buffer_load_u16 v33, v235, s[36:39], 0 offen offset:148
	buffer_load_u16 v34, v235, s[36:39], 0 offen offset:152
	buffer_load_u16 v101, v235, s[36:39], 0 offen offset:156
	v_mov_b32_e32 v59, v1
	s_waitcnt vmcnt(7)
	v_dual_mov_b32 v1, v190 :: v_dual_lshlrev_b32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v112, v74 :: v_dual_fmac_f32 v93, v35, v0
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v0, 16, v29
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v29, v124, v62
	v_mov_b32_e32 v35, v161
	v_mov_b32_e32 v161, v205
	v_mov_b32_e32 v205, v71
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v75, v29, v0 :: v_dual_lshlrev_b32 v0, 16, v30
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v29, v124, v66
	v_mov_b32_e32 v190, v68
	v_mov_b32_e32 v68, v65
	v_mov_b32_e32 v66, v64
	v_mov_b32_e32 v64, v69
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v221, v29, v0 :: v_dual_lshlrev_b32 v0, 16, v31
	v_dual_mov_b32 v65, v202 :: v_dual_mov_b32 v202, v85
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v102, v27, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v0, 16, v32
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v27, v124, v136
	v_dual_mul_f32 v32, v124, v39 :: v_dual_mov_b32 v39, v177
	v_dual_mov_b32 v177, v216 :: v_dual_mov_b32 v216, v109
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v236, v27, v0 :: v_dual_mov_b32 v109, v36
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v27, v124, v143 :: v_dual_lshlrev_b32 v0, 16, v33
	v_mov_b32_e32 v33, v154
	v_mov_b32_e32 v154, v198
	v_mov_b32_e32 v198, v82
	v_mov_b32_e32 v36, v37
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v76, v27, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v34
	v_dual_mov_b32 v34, v157 :: v_dual_mov_b32 v157, v194
	v_mov_b32_e32 v242, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v194, v115 :: v_dual_fmac_f32 v79, v25, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v25, v124, v26 :: v_dual_lshlrev_b32 v0, 16, v101
	v_dual_mov_b32 v101, v180 :: v_dual_fmac_f32 v56, v25, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v0, v235, s[36:39], 0 offen offset:160
	buffer_load_u16 v25, v235, s[36:39], 0 offen offset:164
	buffer_load_u16 v26, v235, s[36:39], 0 offen offset:168
	buffer_load_u16 v27, v235, s[36:39], 0 offen offset:172
	buffer_load_u16 v28, v235, s[36:39], 0 offen offset:176
	buffer_load_u16 v29, v235, s[36:39], 0 offen offset:180
	buffer_load_u16 v30, v235, s[36:39], 0 offen offset:184
	buffer_load_u16 v31, v235, s[36:39], 0 offen offset:188
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v60, v32, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v0, 16, v25
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v25, v124, v40 :: v_dual_mov_b32 v32, v63
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v240, v25, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v25, v124, v41 :: v_dual_lshlrev_b32 v0, 16, v26
	v_dual_mov_b32 v41, v20 :: v_dual_mov_b32 v20, v119
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v32, v25, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v0, 16, v27
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v64, v23, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v0, 16, v28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v23, v124, v24
	v_mul_f32_e32 v28, v124, v243
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v68, v23, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v0, 16, v29
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v23, v124, v117
	v_mov_b32_e32 v117, v203
	v_dual_mov_b32 v203, v134 :: v_dual_fmac_f32 v66, v23, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v30
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v55, v21, v0 :: v_dual_lshlrev_b32 v0, 16, v31
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v21, v124, v22
	v_dual_mov_b32 v31, v140 :: v_dual_fmac_f32 v20, v21, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v0, v235, s[36:39], 0 offen offset:192
	buffer_load_u16 v21, v235, s[36:39], 0 offen offset:196
	buffer_load_u16 v22, v235, s[36:39], 0 offen offset:200
	buffer_load_u16 v23, v235, s[36:39], 0 offen offset:204
	buffer_load_u16 v24, v235, s[36:39], 0 offen offset:208
	buffer_load_u16 v25, v235, s[36:39], 0 offen offset:212
	buffer_load_u16 v26, v235, s[36:39], 0 offen offset:216
	buffer_load_u16 v27, v235, s[36:39], 0 offen offset:220
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v54, v28, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v0, 16, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v21, v124, v244
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v28, v124, v7
	scratch_load_b32 v7, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v53, v21, v0 :: v_dual_lshlrev_b32 v0, 16, v22
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v21, v124, v247
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v13, v21, v0 :: v_dual_lshlrev_b32 v0, 16, v23
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v21, v124, v248
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v52, v21, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v21, v124, v43 :: v_dual_lshlrev_b32 v0, 16, v24
	v_mov_b32_e32 v43, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v14, v21, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v21, v124, v18 :: v_dual_lshlrev_b32 v0, 16, v25
	v_dual_mov_b32 v136, v142 :: v_dual_fmac_f32 v51, v21, v0
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v21, v124, v45 :: v_dual_lshlrev_b32 v0, 16, v26
	v_mov_b32_e32 v45, v47
	v_mov_b32_e32 v47, v49
	v_mov_b32_e32 v49, v16
	.loc	1 156 27 is_stmt 1              ; generate_amdgcn.py:156:27
	scratch_load_b32 v16, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v15, v21, v0 :: v_dual_lshlrev_b32 v0, 16, v27
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v27, v124, v105
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v105, v200 :: v_dual_fmac_f32 v50, v19, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v0, v235, s[36:39], 0 offen offset:224
	buffer_load_u16 v19, v235, s[36:39], 0 offen offset:228
	buffer_load_u16 v21, v235, s[36:39], 0 offen offset:232
	buffer_load_u16 v22, v235, s[36:39], 0 offen offset:236
	buffer_load_u16 v23, v235, s[36:39], 0 offen offset:240
	buffer_load_u16 v24, v235, s[36:39], 0 offen offset:244
	buffer_load_u16 v25, v235, s[36:39], 0 offen offset:248
	buffer_load_u16 v26, v235, s[36:39], 0 offen offset:252
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v48, v27, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v0, 16, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v19, v124, v106 :: v_dual_mov_b32 v62, v197
	v_mov_b32_e32 v197, v84
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v49, v19, v0 :: v_dual_lshlrev_b32 v0, 16, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v124, v245
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v44, v19, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v0, 16, v22
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v19, v124, v246 :: v_dual_mov_b32 v200, v77
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v47, v19, v0 :: v_dual_lshlrev_b32 v0, 16, v23
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v124, v249
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v45, v19, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v19, v124, v250 :: v_dual_lshlrev_b32 v0, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v46, v19, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v19, v124, v251 :: v_dual_lshlrev_b32 v0, 16, v25
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v43, v19, v0 :: v_dual_lshlrev_b32 v0, 16, v26
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v124, v252
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v42, v19, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v0, s42, v81
	s_clause 0x7
	buffer_load_u16 v19, v0, s[36:39], 0 offen
	buffer_load_u16 v21, v0, s[36:39], 0 offen offset:4
	buffer_load_u16 v22, v0, s[36:39], 0 offen offset:8
	buffer_load_u16 v23, v0, s[36:39], 0 offen offset:12
	buffer_load_u16 v24, v0, s[36:39], 0 offen offset:16
	buffer_load_u16 v25, v0, s[36:39], 0 offen offset:20
	buffer_load_u16 v26, v0, s[36:39], 0 offen offset:24
	buffer_load_u16 v27, v0, s[36:39], 0 offen offset:28
	v_dual_mov_b32 v106, v195 :: v_dual_mov_b32 v195, v70
	v_mov_b32_e32 v81, v254
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s42, s42, s43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v81, 2, v81
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v112, v28, v19 :: v_dual_lshlrev_b32 v19, 16, v21
	.loc	1 183 29 is_stmt 0              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v7
	scratch_load_b32 v7, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v216, v21, v19 :: v_dual_lshlrev_b32 v19, 16, v22
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v124, v7
	scratch_load_b32 v7, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v190, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v19, 16, v23
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v124, v7
	scratch_load_b32 v7, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v215, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v19, 16, v24
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v124, v7
	scratch_load_b32 v7, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v204, v21, v19 :: v_dual_lshlrev_b32 v19, 16, v25
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v124, v7
	scratch_load_b32 v7, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v205, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v19, 16, v26
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v124, v7
	scratch_load_b32 v7, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v203, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v19, 16, v27
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v124, v7
	scratch_load_b32 v7, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v194, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_clause 0x7
	buffer_load_u16 v19, v0, s[36:39], 0 offen offset:32
	buffer_load_u16 v21, v0, s[36:39], 0 offen offset:36
	buffer_load_u16 v22, v0, s[36:39], 0 offen offset:40
	buffer_load_u16 v23, v0, s[36:39], 0 offen offset:44
	buffer_load_u16 v24, v0, s[36:39], 0 offen offset:48
	buffer_load_u16 v25, v0, s[36:39], 0 offen offset:52
	buffer_load_u16 v26, v0, s[36:39], 0 offen offset:56
	buffer_load_u16 v27, v0, s[36:39], 0 offen offset:60
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v28, v124, v7
	scratch_load_b32 v7, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v198, v28, v19 :: v_dual_lshlrev_b32 v19, 16, v21
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v124, v7
	scratch_load_b32 v7, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v195, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v19, 16, v22
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v124, v7
	scratch_load_b32 v7, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v202, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v19, 16, v23
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v124, v7
	scratch_load_b32 v7, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v197, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v19, 16, v24
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v200, v21, v19 :: v_dual_lshlrev_b32 v19, 16, v25
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v219
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v201, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v19, 16, v26
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v124, v7
	scratch_load_b32 v7, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v187, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v19, 16, v27
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v124, v7
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v188, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_clause 0x7
	buffer_load_u16 v19, v0, s[36:39], 0 offen offset:64
	buffer_load_u16 v21, v0, s[36:39], 0 offen offset:68
	buffer_load_u16 v22, v0, s[36:39], 0 offen offset:72
	buffer_load_u16 v23, v0, s[36:39], 0 offen offset:76
	buffer_load_u16 v24, v0, s[36:39], 0 offen offset:80
	buffer_load_u16 v25, v0, s[36:39], 0 offen offset:84
	buffer_load_u16 v26, v0, s[36:39], 0 offen offset:88
	buffer_load_u16 v27, v0, s[36:39], 0 offen offset:92
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v28, v124, v151
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v191, v28, v19
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v19, 16, v21
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v150
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v189, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v19, 16, v22
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v182, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v19, 16, v23
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v146
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v208, v21, v19 :: v_dual_lshlrev_b32 v19, 16, v24
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v137, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v19, 16, v25
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v144
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v116, v21, v19 :: v_dual_lshlrev_b32 v19, 16, v26
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v177, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v27
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v147
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v87, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_clause 0x7
	buffer_load_u16 v19, v0, s[36:39], 0 offen offset:96
	buffer_load_u16 v21, v0, s[36:39], 0 offen offset:100
	buffer_load_u16 v22, v0, s[36:39], 0 offen offset:104
	buffer_load_u16 v23, v0, s[36:39], 0 offen offset:108
	buffer_load_u16 v24, v0, s[36:39], 0 offen offset:112
	buffer_load_u16 v25, v0, s[36:39], 0 offen offset:116
	buffer_load_u16 v26, v0, s[36:39], 0 offen offset:120
	buffer_load_u16 v27, v0, s[36:39], 0 offen offset:124
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v28, v124, v163
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v1, v28, v19
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v19, 16, v21
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v162
	v_mul_f32_e32 v28, v124, v171
	v_mov_b32_e32 v18, v1
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	scratch_load_b32 v1, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v176, v21, v19 :: v_dual_mul_f32 v21, v124, v129
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v19, 16, v22
	s_clause 0x5
	buffer_load_u16 v125, v0, s[36:39], 0 offen offset:232
	buffer_load_u16 v128, v0, s[36:39], 0 offen offset:236
	buffer_load_u16 v126, v0, s[36:39], 0 offen offset:240
	buffer_load_u16 v129, v0, s[36:39], 0 offen offset:244
	buffer_load_u16 v127, v0, s[36:39], 0 offen offset:248
	buffer_load_u16 v130, v0, s[36:39], 0 offen offset:252
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v161, v21, v19
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v19, 16, v23
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v138
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(10)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v174, v21, v19 :: v_dual_lshlrev_b32 v19, 16, v24
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v153
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v155, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v19, 16, v25
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v157, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v19, 16, v26
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v139
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v154, v21, v19 :: v_dual_mul_f32 v21, v124, v133
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v19, 16, v27
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v106, v21, v19
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x7
	buffer_load_u16 v19, v0, s[36:39], 0 offen offset:128
	buffer_load_u16 v21, v0, s[36:39], 0 offen offset:132
	buffer_load_u16 v22, v0, s[36:39], 0 offen offset:136
	buffer_load_u16 v23, v0, s[36:39], 0 offen offset:140
	buffer_load_u16 v24, v0, s[36:39], 0 offen offset:144
	buffer_load_u16 v25, v0, s[36:39], 0 offen offset:148
	buffer_load_u16 v26, v0, s[36:39], 0 offen offset:152
	buffer_load_u16 v27, v0, s[36:39], 0 offen offset:156
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v117, v28, v19
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v19, 16, v21
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v170
	v_mul_f32_e32 v28, v124, v206
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v62, v21, v19 :: v_dual_lshlrev_b32 v19, 16, v22
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v168
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v160, v21, v19 :: v_dual_mul_f32 v21, v124, v166
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v134, v160 :: v_dual_lshlrev_b32 v19, 16, v23
	v_fmac_f32_e32 v65, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v19, 16, v24
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v165
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v88, v21, v19 :: v_dual_lshlrev_b32 v19, 16, v25
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v164
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v105, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v26
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v104, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v27
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v167
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v109, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_clause 0x7
	buffer_load_u16 v19, v0, s[36:39], 0 offen offset:160
	buffer_load_u16 v21, v0, s[36:39], 0 offen offset:164
	buffer_load_u16 v22, v0, s[36:39], 0 offen offset:168
	buffer_load_u16 v23, v0, s[36:39], 0 offen offset:172
	buffer_load_u16 v24, v0, s[36:39], 0 offen offset:176
	buffer_load_u16 v25, v0, s[36:39], 0 offen offset:180
	buffer_load_u16 v26, v0, s[36:39], 0 offen offset:184
	buffer_load_u16 v27, v0, s[36:39], 0 offen offset:188
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v94, v28, v19 :: v_dual_lshlrev_b32 v19, 16, v21
	.loc	1 183 29 is_stmt 0              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v199
	v_dual_mul_f32 v28, v124, v226 :: v_dual_fmac_f32 v3, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v19, 16, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v21, v124, v193 :: v_dual_mov_b32 v30, v3
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v101, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v19, 16, v23
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v185
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v181, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v19, 16, v24
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v183
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v61, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v19, 16, v25
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v178
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v36, v21, v19 :: v_dual_lshlrev_b32 v19, 16, v26
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v196
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v38, v21, v19 :: v_dual_mul_f32 v21, v124, v186
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v27
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v39, v21, v19
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x7
	buffer_load_u16 v19, v0, s[36:39], 0 offen offset:192
	buffer_load_u16 v21, v0, s[36:39], 0 offen offset:196
	buffer_load_u16 v22, v0, s[36:39], 0 offen offset:200
	buffer_load_u16 v23, v0, s[36:39], 0 offen offset:204
	buffer_load_u16 v24, v0, s[36:39], 0 offen offset:208
	buffer_load_u16 v25, v0, s[36:39], 0 offen offset:212
	buffer_load_u16 v26, v0, s[36:39], 0 offen offset:216
	buffer_load_u16 v27, v0, s[36:39], 0 offen offset:220
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v78, v28, v19 :: v_dual_lshlrev_b32 v19, 16, v21
	.loc	1 183 29 is_stmt 0              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v21, v124, v225 :: v_dual_lshlrev_b32 v28, 16, v127
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v175, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v19, 16, v22
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v223
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v34, v21, v19 :: v_dual_lshlrev_b32 v27, 16, v130
	.loc	1 183 29 is_stmt 0              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v222
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v19, 16, v23
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v23, v124, v220
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v35, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v19, 16, v24
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v218
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v31, v23, v22 :: v_dual_add_nc_u32 v22, s12, v1
	scratch_load_b32 v1, off, off offset:8  ; 4-byte Folded Reload
	.loc	1 156 27 is_stmt 1              ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s3, s3, v16
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v33, v21, v19
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v19, 16, v25
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v124, v214
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v23, 16, v128
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, s3, s1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v24, 16, v125
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v2, v21, v19 :: v_dual_lshlrev_b32 v19, 16, v26
	.loc	1 183 29 is_stmt 0              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v21, v124, v224 :: v_dual_lshlrev_b32 v26, 16, v126
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v25, 16, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v85, v2
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v131, v9, v24
	v_fmac_f32_e32 v136, v21, v19
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x1
	buffer_load_u16 v19, v0, s[36:39], 0 offen offset:224
	buffer_load_u16 v21, v0, s[36:39], 0 offen offset:228
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v241, v12, v25 :: v_dual_mov_b32 v178, v131
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v19
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v19, v124, v107
	v_mov_b32_e32 v107, v122
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v123, v19, v0 :: v_dual_lshlrev_b32 v0, 16, v21
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v19, v124, v108
	v_dual_mul_f32 v21, v124, v5 :: v_dual_mov_b32 v84, v123
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v135, v19, v0
	.loc	1 164 26 is_stmt 1              ; generate_amdgcn.py:164:26
	scratch_load_b32 v0, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v19, v124, v6
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	scratch_load_b32 v6, off, off           ; 4-byte Folded Reload
	v_fmac_f32_e32 v1, v10, v26
	scratch_load_b32 v10, off, off offset:80 ; 4-byte Folded Reload
	v_fmac_f32_e32 v73, v21, v28
	v_fmac_f32_e32 v83, v19, v27
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v19, v4 :: v_dual_add_nc_u32 v0, s12, v0
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_add_i32 s12, s12, 16
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v6, v11, v23
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s45, s12
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	s_clause 0x1
	buffer_load_b32 v0, v0, s[24:27], 0 offen
	buffer_load_b32 v22, v22, s[24:27], 0 offen
	scratch_store_b32 off, v6, off          ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:84
	scratch_load_b32 v23, off, off
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v2, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v11, v2 offset:4096
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_store_2addr_stride64_b32 v10, v0, v22 offset1:8
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v40, off, off offset:156
	scratch_load_b32 v6, off, off offset:164
	v_dual_mov_b32 v132, v221 :: v_dual_mov_b32 v17, v76
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v74, off, off offset:160
	scratch_load_b32 v76, off, off offset:4
	v_dual_mov_b32 v12, v60 :: v_dual_mov_b32 v131, v75
	v_dual_mov_b32 v58, v240 :: v_dual_mov_b32 v63, v93
	v_dual_mov_b32 v160, v79 :: v_dual_mov_b32 v57, v56
	v_dual_mov_b32 v179, v236 :: v_dual_mov_b32 v60, v102
	v_dual_mov_b32 v115, v242 :: v_dual_mov_b32 v16, v59
	v_dual_mov_b32 v59, v80 :: v_dual_mov_b32 v70, v103
	v_dual_mov_b32 v69, v239 :: v_dual_mov_b32 v82, v241
	v_mov_b32_e32 v71, v111
	v_dual_mov_b32 v75, v98 :: v_dual_mov_b32 v138, v227
	v_mov_b32_e32 v77, v159
	v_dual_mov_b32 v119, v210 :: v_dual_mov_b32 v80, v83
	v_mov_b32_e32 v139, v118
	v_mov_b32_e32 v79, v73
	v_dual_mov_b32 v81, v1 :: v_dual_mov_b32 v98, v36
	v_mov_b32_e32 v103, v30
	v_mov_b32_e32 v219, v112
.LBB0_4:                                ; %Flow1032
	.loc	1 162 26 is_stmt 1              ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v0, 0x88, 0, vcc_lo
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_cndmask_b32_e64 v1, 0, 1, s0
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v12, off offset:252
	scratch_store_b32 off, v135, off offset:100
	scratch_store_b32 off, v23, off
	scratch_store_b32 off, v107, off offset:96
	scratch_store_b32 off, v19, off offset:64
	scratch_store_b32 off, v212, off offset:28
	scratch_store_b32 off, v209, off offset:24
	scratch_store_b32 off, v213, off offset:32
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(2) lgkmcnt(0)
	v_or_b32_e32 v0, v0, v6
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_cmp_ne_u32_e64 s1, 1, v1
	v_dual_mov_b32 v159, v106 :: v_dual_mov_b32 v158, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xor_b32_e32 v2, 8, v0
	v_dual_mov_b32 v5, 0 :: v_dual_add_nc_u32 v140, 0, v0
	v_dual_mov_b32 v156, v101 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v149, 0 :: v_dual_add_nc_u32 v114, 0, v2
	v_dual_mov_b32 v153, v61 :: v_dual_mov_b32 v108, 0
	ds_load_b64 v[1:2], v140 offset:4096
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_b64 v[3:4], v114 offset:4096
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v122, 0
	v_mov_b32_e32 v123, 0
	s_and_not1_b32 vcc_lo, exec_lo, s0
	s_mov_b32 s12, 0
	s_cbranch_vccnz .LBB0_6
; %bb.5:
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_b64 v[127:130], v140 offset1:32
	ds_load_2addr_b64 v[149:152], v114 offset0:64 offset1:96
	ds_load_2addr_b64 v[162:165], v140 offset0:64 offset1:96
	ds_load_2addr_b64 v[166:169], v114 offset1:32
	ds_load_2addr_b64 v[170:173], v140 offset0:128 offset1:160
	ds_load_2addr_b64 v[183:186], v114 offset0:192 offset1:224
	ds_load_2addr_b64 v[209:212], v140 offset0:192 offset1:224
	ds_load_2addr_b64 v[21:24], v114 offset0:128 offset1:160
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_mov_b32 s19, s12
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v227, s19 :: v_dual_mov_b32 v226, s18
	v_dual_mov_b32 v225, s17 :: v_dual_mov_b32 v224, s16
	v_dual_mov_b32 v223, s15 :: v_dual_mov_b32 v222, s14
	v_dual_mov_b32 v221, s13 :: v_dual_mov_b32 v220, s12
	v_mov_b32_e32 v0, v237
	s_waitcnt lgkmcnt(7)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[5:12], v[127:128], v[1:2], v[220:227] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[129:130], v[1:2], v[220:227] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[141:148], v[162:163], v[1:2], v[220:227] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[5:12], v[166:167], v[3:4], v[5:12] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[168:169], v[3:4], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[228:235], v[164:165], v[1:2], v[220:227] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[236:243], v[170:171], v[1:2], v[220:227] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[244:251], v[172:173], v[1:2], v[220:227] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[162:169], v[209:210], v[1:2], v[220:227] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[220:227], v[211:212], v[1:2], v[220:227] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[141:148], v[149:150], v[3:4], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[228:235], v[151:152], v[3:4], v[228:235] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[236:243], v[21:22], v[3:4], v[236:243] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[244:251], v[23:24], v[3:4], v[244:251] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[162:169], v[183:184], v[3:4], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[220:227], v[185:186], v[3:4], v[220:227] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v173, v5
	v_cvt_f32_i32_e32 v172, v6
	v_cvt_f32_i32_e32 v130, v7
	v_cvt_f32_i32_e32 v171, v8
	v_cvt_f32_i32_e32 v170, v9
	v_cvt_f32_i32_e32 v152, v10
	v_cvt_f32_i32_e32 v129, v11
	v_cvt_f32_i32_e32 v151, v12
	v_cvt_f32_i32_e32 v12, v121
	v_cvt_f32_i32_e32 v9, v122
	v_cvt_f32_i32_e32 v8, v123
	v_cvt_f32_i32_e32 v149, v124
	v_cvt_f32_i32_e32 v5, v125
	v_cvt_f32_i32_e32 v6, v126
	v_cvt_f32_i32_e32 v7, v127
	v_cvt_f32_i32_e32 v10, v128
	v_cvt_f32_i32_e32 v36, v141
	v_cvt_f32_i32_e32 v11, v142
	v_cvt_f32_i32_e32 v102, v143
	v_cvt_f32_i32_e32 v37, v144
	v_cvt_f32_i32_e32 v30, v145
	v_cvt_f32_i32_e32 v93, v146
	v_cvt_f32_i32_e32 v83, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v61, v228
	v_cvt_f32_i32_e32 v145, v229
	v_cvt_f32_i32_e32 v133, v230
	v_cvt_f32_i32_e32 v146, v231
	v_cvt_f32_i32_e32 v144, v232
	v_cvt_f32_i32_e32 v143, v233
	v_cvt_f32_i32_e32 v120, v234
	v_cvt_f32_i32_e32 v142, v235
	v_cvt_f32_i32_e32 v113, v236
	v_cvt_f32_i32_e32 v110, v237
	v_mov_b32_e32 v237, v0
	v_cvt_f32_i32_e32 v101, v238
	v_cvt_f32_i32_e32 v112, v239
	v_cvt_f32_i32_e32 v107, v240
	v_cvt_f32_i32_e32 v106, v241
	v_cvt_f32_i32_e32 v73, v242
	v_cvt_f32_i32_e32 v105, v243
	v_cvt_f32_i32_e32 v27, v244
	v_cvt_f32_i32_e32 v29, v245
	v_cvt_f32_i32_e32 v23, v246
	v_cvt_f32_i32_e32 v28, v247
	v_cvt_f32_i32_e32 v26, v248
	v_cvt_f32_i32_e32 v25, v249
	v_cvt_f32_i32_e32 v22, v250
	v_cvt_f32_i32_e32 v24, v251
	v_cvt_f32_i32_e32 v21, v162
	v_cvt_f32_i32_e32 v0, v163
	v_cvt_f32_i32_e32 v162, v164
	v_cvt_f32_i32_e32 v19, v165
	v_cvt_f32_i32_e32 v165, v166
	v_cvt_f32_i32_e32 v164, v167
	v_cvt_f32_i32_e32 v141, v168
	v_cvt_f32_i32_e32 v163, v169
	v_cvt_f32_i32_e32 v126, v220
	v_cvt_f32_i32_e32 v128, v221
	v_cvt_f32_i32_e32 v121, v222
	v_cvt_f32_i32_e32 v127, v223
	v_cvt_f32_i32_e32 v124, v224
	v_cvt_f32_i32_e32 v125, v225
	v_cvt_f32_i32_e32 v122, v226
	v_cvt_f32_i32_e32 v123, v227
.LBB0_6:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v37, off offset:264
	scratch_store_b32 off, v36, off offset:260
	scratch_store_b32 off, v30, off offset:256
	scratch_store_b32 off, v93, off offset:248
	scratch_store_b32 off, v102, off offset:244
	scratch_store_b32 off, v61, off offset:240
	scratch_store_b32 off, v83, off offset:236
	scratch_store_b32 off, v146, off offset:232
	scratch_store_b32 off, v145, off offset:228
	scratch_store_b32 off, v144, off offset:224
	scratch_store_b32 off, v143, off offset:220
	scratch_store_b32 off, v142, off offset:216
	scratch_store_b32 off, v133, off offset:212
	scratch_store_b32 off, v120, off offset:208
	scratch_store_b32 off, v113, off offset:204
	scratch_store_b32 off, v112, off offset:200
	scratch_store_b32 off, v110, off offset:196
	scratch_store_b32 off, v107, off offset:192
	scratch_store_b32 off, v106, off offset:188
	scratch_store_b32 off, v105, off offset:184
	scratch_store_b32 off, v101, off offset:180
	scratch_store_b32 off, v73, off offset:176
	scratch_store_b32 off, v29, off offset:172
	scratch_store_b32 off, v28, off offset:168
	scratch_store_b32 off, v27, off offset:164
	scratch_store_b32 off, v26, off offset:160
	scratch_store_b32 off, v25, off offset:156
	scratch_store_b32 off, v24, off offset:124
	scratch_store_b32 off, v23, off offset:120
	scratch_store_b32 off, v22, off offset:116
	scratch_store_b32 off, v21, off offset:112
	scratch_store_b32 off, v19, off offset:108
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	v_dual_mov_b32 v150, v181 :: v_dual_mov_b32 v147, v39
	v_dual_mov_b32 v146, v38 :: v_dual_mov_b32 v145, v175
	v_dual_mov_b32 v143, v35 :: v_dual_mov_b32 v142, v34
	v_dual_mov_b32 v133, v33 :: v_dual_mov_b32 v0, v136
	v_dual_mov_b32 v29, v31 :: v_dual_mov_b32 v106, 0
	s_clause 0x12                           ; 76-byte Folded Spill
	scratch_store_b32 off, v237, off offset:92
	scratch_store_b32 off, v100, off offset:88
	scratch_store_b32 off, v99, off offset:84
	scratch_store_b32 off, v97, off offset:80
	scratch_store_b32 off, v96, off offset:76
	scratch_store_b32 off, v95, off offset:72
	scratch_store_b32 off, v92, off offset:68
	scratch_store_b32 off, v91, off offset:60
	scratch_store_b32 off, v90, off offset:56
	scratch_store_b32 off, v89, off offset:52
	scratch_store_b32 off, v253, off offset:48
	scratch_store_b32 off, v86, off offset:44
	scratch_store_b32 off, v67, off offset:40
	scratch_store_b32 off, v217, off offset:36
	scratch_store_b32 off, v32, off offset:20
	scratch_store_b32 off, v20, off offset:16
	scratch_store_b32 off, v14, off offset:12
	scratch_store_b32 off, v13, off offset:8
	scratch_store_b32 off, v15, off offset:4
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v252, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v248, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v14, 0
	v_mov_b32_e32 v185, 0
	v_mov_b32_e32 v183, 0
	.loc	1 175 36 is_stmt 1              ; generate_amdgcn.py:175:36
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 0 36 is_stmt 0                ; generate_amdgcn.py:0:36
	v_dual_mov_b32 v20, v122 :: v_dual_add_nc_u32 v19, 0x800, v140
	v_dual_mov_b32 v22, v123 :: v_dual_add_nc_u32 v21, 0x800, v114
	v_dual_mov_b32 v15, v121 :: v_dual_mov_b32 v28, v162
	.loc	1 170 35 is_stmt 1              ; generate_amdgcn.py:170:35
	ds_load_2addr_b64 v[105:108], v19 offset1:32
	v_dual_mov_b32 v23, v124 :: v_dual_mov_b32 v30, v163
	ds_load_2addr_b64 v[121:124], v21 offset1:32
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_mov_b32 s19, s12
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	v_dual_mov_b32 v31, v164 :: v_dual_mov_b32 v32, v165
	v_dual_mov_b32 v169, s19 :: v_dual_mov_b32 v168, s18
	v_dual_mov_b32 v167, s17 :: v_dual_mov_b32 v166, s16
	v_dual_mov_b32 v165, s15 :: v_dual_mov_b32 v164, s14
	v_dual_mov_b32 v163, s13 :: v_dual_mov_b32 v162, s12
	v_dual_mov_b32 v24, v125 :: v_dual_mov_b32 v25, v126
	v_dual_mov_b32 v26, v127 :: v_dual_mov_b32 v27, v128
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[220:227], v[105:106], v[1:2], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[228:235], v[107:108], v[1:2], v[162:169] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_b64 v[125:128], v19 offset0:64 offset1:96
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[220:227], v[121:122], v[3:4], v[220:227] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_b64 v[183:186], v19 offset0:128 offset1:160
	ds_load_2addr_b64 v[209:212], v21 offset0:128 offset1:160
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[228:235], v[123:124], v[3:4], v[228:235] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_b64 v[121:124], v21 offset0:64 offset1:96
	v_dual_mov_b32 v13, v138 :: v_dual_mov_b32 v14, v139
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v108, v220
	v_cvt_f32_i32_e32 v113, v221
	v_cvt_f32_i32_e32 v110, v222
	v_cvt_f32_i32_e32 v112, v223
	v_cvt_f32_i32_e32 v106, v224
	v_cvt_f32_i32_e32 v107, v225
	v_cvt_f32_i32_e32 v73, v226
	v_cvt_f32_i32_e32 v105, v227
	v_cvt_f32_i32_e32 v255, v228
	v_cvt_f32_i32_e32 v101, v229
	v_cvt_f32_i32_e32 v253, v230
	v_cvt_f32_i32_e32 v254, v231
	v_cvt_f32_i32_e32 v251, v232
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[220:227], v[125:126], v[1:2], v[162:169] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v252, v233
	v_cvt_f32_i32_e32 v249, v234
	v_cvt_f32_i32_e32 v250, v235
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[220:227], v[121:122], v[3:4], v[220:227] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v247, v220
	v_cvt_f32_i32_e32 v248, v221
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v245, v222
	v_cvt_f32_i32_e32 v246, v223
	v_cvt_f32_i32_e32 v243, v224
	v_cvt_f32_i32_e32 v244, v225
	v_cvt_f32_i32_e32 v241, v226
	v_cvt_f32_i32_e32 v242, v227
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[220:227], v[127:128], v[1:2], v[162:169] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[220:227], v[123:124], v[3:4], v[220:227] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[183:184], v[1:2], v[162:169] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v236, v225
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[121:128], v[209:210], v[3:4], v[121:128] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v233, v226
	v_cvt_f32_i32_e32 v234, v227
	v_cvt_f32_i32_e32 v239, v220
	v_cvt_f32_i32_e32 v240, v221
	v_cvt_f32_i32_e32 v231, v121
	v_cvt_f32_i32_e32 v232, v122
	v_cvt_f32_i32_e32 v229, v123
	v_cvt_f32_i32_e32 v230, v124
	v_cvt_f32_i32_e32 v227, v125
	v_cvt_f32_i32_e32 v228, v126
	v_cvt_f32_i32_e32 v225, v127
	v_cvt_f32_i32_e32 v226, v128
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[121:128], v[185:186], v[1:2], v[162:169] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_b64 v[183:186], v19 offset0:192 offset1:224
	v_mov_b32_e32 v19, v141
	ds_load_2addr_b64 v[138:141], v21 offset0:192 offset1:224
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[121:128], v[211:212], v[3:4], v[121:128] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v237, v222
	v_cvt_f32_i32_e32 v238, v223
	v_cvt_f32_i32_e32 v235, v224
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v222, v121
	v_cvt_f32_i32_e32 v224, v122
	v_cvt_f32_i32_e32 v221, v123
	v_cvt_f32_i32_e32 v223, v124
	v_cvt_f32_i32_e32 v61, v125
	v_cvt_f32_i32_e32 v220, v126
	v_cvt_f32_i32_e32 v214, v127
	v_cvt_f32_i32_e32 v218, v128
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[121:128], v[183:184], v[1:2], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[162:169], v[185:186], v[1:2], v[162:169] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[121:128], v[138:139], v[3:4], v[121:128] neg_lo:[1,1,0]
	v_dual_mov_b32 v139, v14 :: v_dual_mov_b32 v138, v13
	v_wmma_i32_16x16x16_iu4 v[162:169], v[140:141], v[3:4], v[162:169] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v212, v121
	v_mov_b32_e32 v121, v15
	v_cvt_f32_i32_e32 v213, v122
	v_mov_b32_e32 v122, v20
	v_cvt_f32_i32_e32 v210, v123
	v_mov_b32_e32 v123, v22
	v_cvt_f32_i32_e32 v211, v124
	v_mov_b32_e32 v124, v23
	v_cvt_f32_i32_e32 v207, v125
	v_mov_b32_e32 v125, v24
	v_cvt_f32_i32_e32 v209, v126
	v_mov_b32_e32 v126, v25
	v_cvt_f32_i32_e32 v199, v127
	v_mov_b32_e32 v127, v26
	v_cvt_f32_i32_e32 v206, v128
	v_mov_b32_e32 v128, v27
	v_mov_b32_e32 v141, v19
	v_cvt_f32_i32_e32 v193, v162
	v_mov_b32_e32 v162, v28
	v_cvt_f32_i32_e32 v196, v163
	v_mov_b32_e32 v163, v30
	v_cvt_f32_i32_e32 v186, v164
	v_mov_b32_e32 v164, v31
	v_cvt_f32_i32_e32 v192, v165
	v_mov_b32_e32 v165, v32
	v_cvt_f32_i32_e32 v184, v166
	v_cvt_f32_i32_e32 v185, v167
	v_cvt_f32_i32_e32 v14, v168
	v_cvt_f32_i32_e32 v183, v169
.LBB0_8:
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_waitcnt lgkmcnt(1)
	v_mul_lo_u32 v1, s35, v41
	s_mul_i32 s1, s33, s35
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s2, s40, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s13, s9, 0xffff
	.loc	1 178 26 is_stmt 0              ; generate_amdgcn.py:178:26
	s_add_i32 s1, s1, s2
	.loc	1 179 36 is_stmt 1              ; generate_amdgcn.py:179:36
	s_mul_i32 s2, s2, s34
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v1, s1, v1, 1
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s1, s22, s2
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_mov_b32 s12, s8
	.loc	1 182 35                        ; generate_amdgcn.py:182:35
	s_add_i32 s3, s1, s23
	scratch_load_b32 v13, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	s_mov_b32 s5, 0x76543210
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s33, s33, s23
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	s_and_b32 s21, s21, 0xffff
	.loc	1 180 20 is_stmt 1              ; generate_amdgcn.py:180:20
	scratch_load_b32 v20, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v2, v1, s[12:15], 0 offen
	.loc	1 182 35                        ; generate_amdgcn.py:182:35
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v1, s3, v74, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_and_b32 s13, s11, 0xffff
	s_mov_b32 s12, s10
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v3, 0x80000000, v1, s0
	buffer_load_u16 v3, v3, s[12:15], 0 offen
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v140, 16, v2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v3, v108, v140
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fma_f32 v2, v3, v2, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v219, v2, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v3, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v3, v3
	v_ldexp_f32 v3, v3, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_dual_add_f32 v3, 1.0, v3 :: v_dual_mul_f32 v6, v6, v140
	.loc	1 180 20 is_stmt 1              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v8, v8, v140
	v_mul_f32_e32 v5, v5, v140
	v_mul_f32_e32 v7, v7, v140
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v4, null, v3, v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v19, v4
	v_fma_f32 v21, -v4, v19, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v21, v19
	v_div_scale_f32 v21, vcc_lo, v2, v3, v2
	v_mul_f32_e32 v22, v21, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v4, v22, v21
	v_fmac_f32_e32 v22, v23, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v4, -v4, v22, v21
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v113, v140
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v4, v4, v19, v22
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v19, 4, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v2, v4, v3, v2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v4, v110, v140 :: v_dual_add_nc_u32 v3, 8, v1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	buffer_load_u16 v3, v3, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v216
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v216, v19, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v3, v4, v3, v190
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v3, v190, v3, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v4, 0xbfb8aa3b, v3
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v22, null, v21, v21, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v24, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v19, v21, v19
	v_mul_f32_e32 v25, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v22, v25, v24
	v_fmac_f32_e32 v25, v26, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v22, -v22, v25, v24
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v24, v112, v140
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v23, 12, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v23, v24, v23, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v215, v23, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v25, null, v24, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v27, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v23, v24, v23
	v_mul_f32_e32 v28, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v25, v28, v27
	v_fmac_f32_e32 v28, v30, v26
	v_div_fixup_f32 v190, v22, v21, v19
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v19, v107, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v25, -v25, v28, v27
	v_div_fmas_f32 v25, v25, v26, v28
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v3
	v_exp_f32_e32 v4, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v4, v4, v26
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v26, 1.0, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v4, null, v26, v26, v3
	v_rcp_f32_e32 v27, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v4, v27, 1.0
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v3, v26, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v30, v28, v27
	v_fma_f32 v31, -v4, v30, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v31, v27
	v_fma_f32 v4, -v4, v30, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v27, v4, v27, v30
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v4, 20, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v3, v27, v26, v3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v27, v105, v140 :: v_dual_add_nc_u32 v26, 28, v1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v4, v4, s[12:15], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v26, s0
	buffer_load_u16 v26, v26, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v4, 16, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v4, v19, v4, v205
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v205, v4, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v26, v27, v26, v194
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v4, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v194, v26, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v27, 0xbfb8aa3b, v26
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v4, v4
	v_ldexp_f32 v4, v4, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v4
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v4, null, v21, v21, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v22, v4
	v_fma_f32 v28, -v4, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v28, v22
	v_div_scale_f32 v28, vcc_lo, v19, v21, v19
	v_mul_f32_e32 v30, v28, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v4, v30, v28
	v_fmac_f32_e32 v30, v31, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v4, -v4, v30, v28
	v_div_fmas_f32 v22, v4, v22, v30
	v_div_fixup_f32 v4, v25, v24, v23
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v24, v106, v140 :: v_dual_add_nc_u32 v23, 16, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v194, v22, v21, v19
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v19, 24, v1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v73, v140
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	s_clause 0x1
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v23, 16, v23
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v23, v24, v23, v204
	v_fma_f32 v19, v21, v19, v203
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v204, v23, s0
	v_cndmask_b32_e64 v19, v203, v19, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v23
	v_mul_f32_e32 v21, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v25, null, v24, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v28, v25
	v_fma_f32 v30, -v25, v28, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v30, v28
	v_div_scale_f32 v30, vcc_lo, v23, v24, v23
	v_mul_f32_e32 v31, v30, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v25, v31, v30
	v_fmac_f32_e32 v31, v32, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v25, v31, v30
	v_div_fmas_f32 v25, v25, v28, v31
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v26
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v27, v27, v28
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v204, v25, v24, v23
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v24, v101, v140 :: v_dual_add_nc_u32 v23, 36, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v27, v27, v26
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v30, v28
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v31, -v28, v30, 1.0
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v26, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v31, v30
	v_fma_f32 v33, -v28, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v33, v30
	v_fma_f32 v28, -v28, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v28, v28, v30, v32
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v22, null, v21, v21, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v30, v22
	v_fma_f32 v31, -v22, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v19, v21, v19
	v_mul_f32_e32 v32, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v22, v32, v31
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v32, v33, v30 :: v_dual_lshlrev_b32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v22, -v22, v32, v31
	.loc	1 183 17 is_stmt 1              ; generate_amdgcn.py:183:17
	v_fma_f32 v23, v24, v23, v195
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v22, v22, v30, v32
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v195, v23, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v195, v28, v27, v26
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v27, v255, v140 :: v_dual_add_nc_u32 v26, 32, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v23
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v26, 0x80000000, v26, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v26, v26, s[12:15], 0 offen
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v26, v27, v26, v198
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v198, v26, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v23
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v198, v22, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v19, 44, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v254, v140
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v27, 0xbfb8aa3b, v26
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v24, v24, v25
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v25, null, v24, v24, v23
	v_rcp_f32_e32 v30, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v25, v30, 1.0
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v23, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v31, v30
	v_fma_f32 v33, -v25, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v33, v30
	v_fma_f32 v25, -v25, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v25, v25, v30, v32
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v27, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v30, v28
	v_fma_f32 v31, -v28, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v26, v27, v26
	v_mul_f32_e32 v32, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v28, v32, v31
	v_fmac_f32_e32 v32, v33, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v28, v32, v31
	v_div_fmas_f32 v28, v28, v30, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v203, v28, v27, v26
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v27, v252, v140 :: v_dual_add_nc_u32 v26, 52, v1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v26, 0x80000000, v26, s0
	buffer_load_u16 v26, v26, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v197
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v197, v19, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v197, v25, v24, v23
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v23, 40, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v19
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v22, null, v21, v21, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v30, v22
	v_fma_f32 v31, -v22, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v19, v21, v19
	v_mul_f32_e32 v32, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v22, v32, v31
	v_fmac_f32_e32 v32, v33, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v32, v31
	v_div_fmas_f32 v22, v22, v30, v32
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v26, v27, v26, v201
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v201, v26, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v24, v253, v140 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v26
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v23, v24, v23, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v202, v23, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v202, v22, v21, v19
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v251, v140
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v24, 0xbfb8aa3b, v23 :: v_dual_add_nc_u32 v19, 48, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v23
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v24, v24, v25
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v25, null, v24, v24, v23
	v_rcp_f32_e32 v30, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v25, v30, 1.0
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v23, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v31, v30
	v_fma_f32 v33, -v25, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v33, v30
	v_fma_f32 v25, -v25, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v25, v25, v30, v32
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v201, v25, v24, v23
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v24, v250, v140 :: v_dual_add_nc_u32 v23, 60, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v26
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v27, v27
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v27, v27, v28
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v27, v27, v26
	v_rcp_f32_e32 v30, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v28, v30, 1.0
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v26, v27, v26
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v32, v31, v30 :: v_dual_lshlrev_b32 v19, 16, v19
	.loc	1 183 17 is_stmt 1              ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v200
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v200, v19, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v19
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v33, -v28, v32, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v23, v24, v23, v188
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v32, v33, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v188, v23, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v28, -v28, v32, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v23
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v28, v28, v30, v32
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v200, v28, v27, v26
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v22, null, v21, v21, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v30, v22
	v_fma_f32 v31, -v22, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v19, v21, v19
	v_mul_f32_e32 v32, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v22, v32, v31
	v_fmac_f32_e32 v32, v33, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v32, v31
	v_div_fmas_f32 v22, v22, v30, v32
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v205, v22, v21, v19
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v19, 56, v1
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v249, v140
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v23
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v25, null, v24, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v30, v25
	v_fma_f32 v31, -v25, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v23, v24, v23
	v_mul_f32_e32 v32, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v25, v32, v31
	v_fmac_f32_e32 v32, v33, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v25, v32, v31
	v_div_fmas_f32 v25, v25, v30, v32
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v187
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v187, v19, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v19
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v19
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v22, null, v21, v21, v19
	v_rcp_f32_e32 v26, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v22, v26, 1.0
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v19, v21, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v28, v27, v26
	v_fma_f32 v30, -v22, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v30, v26
	v_fma_f32 v22, -v22, v28, v27
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v27, v248, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v22, v22, v26, v28
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v26, 0x44, v1
	v_cndmask_b32_e64 v26, 0x80000000, v26, s0
	buffer_load_u16 v26, v26, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v26, v27, v26, v189
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v189, v26, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v27, 0xbfb8aa3b, v26
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v26
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v27, v27, v28
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v27, v27, v26
	v_rcp_f32_e32 v30, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v28, v30, 1.0
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v26, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v31, v30
	v_fma_f32 v33, -v28, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v33, v30
	v_fma_f32 v28, -v28, v32, v31
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v31, v247, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v28, v28, v30, v32
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v30, 64, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v188, v28, v27, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v30, 0x80000000, v30, s0
	buffer_load_u16 v30, v30, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v30, v31, v30, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v191, v30, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v191, v22, v21, v19
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v19, 0x48, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v245, v140
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v31, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v30
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v31, v31, v32
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v32, null, v31, v31, v30
	v_rcp_f32_e32 v33, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v32, v33, 1.0
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v30, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v35, v34, v33
	v_fma_f32 v36, -v32, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v36, v33
	v_fma_f32 v32, -v32, v35, v34
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v34, v246, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v32, v32, v33, v35
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v33, 0x4c, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v189, v32, v31, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v33, 0x80000000, v33, s0
	buffer_load_u16 v33, v33, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v73, v182, v19, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v73
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v33, v34, v33, v208
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v33, v208, v33, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v208, v25, v24, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v34, 0xbfb8aa3b, v33
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v33
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v34, v34, v35
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v34, 1.0, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v35, null, v34, v34, v33
	v_rcp_f32_e32 v36, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v35, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v33, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v38, v37, v36
	v_fma_f32 v39, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v39, v36
	v_fma_f32 v35, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v35, v36, v38
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v101, 1.0, v19
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v101, v101, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v19
	v_fma_f32 v22, -v19, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v73, v101, v73
	v_div_fixup_f32 v187, v35, v34, v33
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v19, v23, v22
	v_fmac_f32_e32 v23, v24, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v19, v23, v22
	v_div_fmas_f32 v105, v19, v21, v23
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v19, 0x54, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v244, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v15, v105, v101, v73
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v116
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v106, v116, v19, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v106
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v106
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v19, v19, v21
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v107, 1.0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v107, v107, v106
	v_rcp_f32_e32 v21, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v19, v21, 1.0
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v106, v107, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v23, v22, v21
	v_fma_f32 v24, -v19, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v21
	v_fma_f32 v19, -v19, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v108, v19, v21, v23
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v19, 0x50, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v243, v140
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v137
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v137, v19, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v19
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v19
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v22, null, v21, v21, v19
	v_rcp_f32_e32 v23, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v22, v23, 1.0
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v19, v21, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v25, v24, v23
	v_fma_f32 v26, -v22, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v23
	v_fma_f32 v22, -v22, v25, v24
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v24, v242, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v23, 0x5c, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v182, v22, v21, v19
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	v_add_nc_u32_e32 v19, 0x64, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v240, v140
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v23, v24, v23, v87
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v87, v23, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v176
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v73, v176, v19, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v19, 0xbfb8aa3b, v73
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v181, v108, v107, v106
	v_div_scale_f32 v25, null, v24, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v27, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v23, v24, v23
	v_mul_f32_e32 v28, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v25, v28, v27
	v_fmac_f32_e32 v28, v30, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v25, v28, v27
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v27, v241, v140
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v25, v25, v26, v28
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v26, 0x58, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v26, 0x80000000, v26, s0
	buffer_load_u16 v26, v26, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v26, v27, v26, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v177, v26, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v177, v25, v24, v23
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v27, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v27, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v30, v28
	v_fma_f32 v31, -v28, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v26, v27, v26
	v_mul_f32_e32 v32, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v28, v32, v31
	v_fmac_f32_e32 v32, v33, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v28, v32, v31
	v_div_fmas_f32 v28, v28, v30, v32
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v180, v28, v27, v26
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v101, 1.0, v19
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v101, v101, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v19
	v_fma_f32 v22, -v19, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v73, v101, v73
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v19, v23, v22
	v_fmac_f32_e32 v23, v24, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v19, v23, v22
	v_div_fmas_f32 v105, v19, v21, v23
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v19, 0x60, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v239, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v106, v18, v19, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v175, 1.0, v19
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v175, v175, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v19
	v_fma_f32 v22, -v19, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v106, v175, v106
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v19, v23, v22
	v_fmac_f32_e32 v23, v24, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v19, v23, v22
	v_div_fmas_f32 v176, v19, v21, v23
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v19, 0x6c, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v238, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v215, v174, v19, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v174, v105, v101, v73
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v216, 1.0, v19
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v216, v216, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v19
	v_fma_f32 v22, -v19, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v215, v216, v215
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v19, v23, v22
	v_fmac_f32_e32 v23, v24, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v19, v23, v22
	v_div_fmas_f32 v219, v19, v21, v23
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v19, 0x68, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v237, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v161, v19, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v22, null, v21, v21, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v24, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v19, v21, v19
	v_mul_f32_e32 v25, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v22, v25, v24
	v_fmac_f32_e32 v25, v26, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v22, -v22, v25, v24
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v24, v236, v140
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v23, 0x74, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v23, v24, v23, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v157, v23, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v25, null, v24, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v27, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v23, v24, v23
	v_mul_f32_e32 v28, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v25, v28, v27
	v_fmac_f32_e32 v28, v30, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v25, v28, v27
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v27, v235, v140
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v25, v25, v26, v28
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v26, 0x70, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v157, v25, v24, v23
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v26, 0x80000000, v26, s0
	buffer_load_u16 v26, v26, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v26, v27, v26, v155
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v155, v26, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v155, v22, v21, v19
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v19, 0x7c, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v234, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v27, 0xbfb8aa3b, v26
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v27, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v30, v28
	v_fma_f32 v31, -v28, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v26, v27, v26
	v_mul_f32_e32 v32, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v28, v32, v31
	v_fmac_f32_e32 v32, v33, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v28, v32, v31
	v_div_fmas_f32 v28, v28, v30, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v161, v28, v27, v26
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v73, v159, v19, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v101, 1.0, v19
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v101, v101, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v19
	v_fma_f32 v22, -v19, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v73, v101, v73
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v19, v23, v22
	v_fmac_f32_e32 v23, v24, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v19, v23, v22
	v_div_fmas_f32 v105, v19, v21, v23
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v19, 0x78, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v233, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v154, v19, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v154, v105, v101, v73
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v22, null, v21, v21, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v24, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v19, v21, v19
	v_mul_f32_e32 v25, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v22, v25, v24
	v_fmac_f32_e32 v25, v26, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v22, -v22, v25, v24
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v24, v232, v140
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v23, 0x84, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v137, v22, v21, v19
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	v_add_nc_u32_e32 v19, 0x94, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v228, v140
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v23, v24, v23, v62
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v62, v23, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v158
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v73, v158, v19, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v19, 0xbfb8aa3b, v73
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v25, null, v24, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v27, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v23, v24, v23
	v_mul_f32_e32 v28, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v25, v28, v27
	v_fmac_f32_e32 v28, v30, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v25, v28, v27
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v27, v231, v140
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v25, v25, v26, v28
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v26, 0x80, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v26, 0x80000000, v26, s0
	buffer_load_u16 v26, v26, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v175, v176, v175, v106
	v_div_fixup_f32 v176, v219, v216, v215
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v26, v27, v26, v117
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v117, v26, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v27, 0xbfb8aa3b, v26
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v26
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v27, v27, v28
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v27, v27, v26
	v_rcp_f32_e32 v30, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v28, v30, 1.0
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v26, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v31, v30
	v_fma_f32 v33, -v28, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v33, v30
	v_fma_f32 v28, -v28, v32, v31
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v31, v230, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v28, v28, v30, v32
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v30, 0x8c, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v135, v28, v27, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v30, 0x80000000, v30, s0
	buffer_load_u16 v30, v30, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v30, v31, v30, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v65, v30, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v31, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v31, v31
	v_ldexp_f32 v31, v31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v32, null, v31, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v32
	v_fma_f32 v34, -v32, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v30, v31, v30
	v_mul_f32_e32 v35, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v32, v35, v34
	v_fmac_f32_e32 v35, v36, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v32, v35, v34
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v34, v229, v140
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v32, v32, v33, v35
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v33, 0x88, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v136, v32, v31, v30
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v33, 0x80000000, v33, s0
	buffer_load_u16 v33, v33, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v33, v34, v33, v134
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v33, v134, v33, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v134, v25, v24, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v34, 0xbfb8aa3b, v33
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v33
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v34, v34, v35
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v34, 1.0, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v35, null, v34, v34, v33
	v_rcp_f32_e32 v36, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v35, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v33, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v38, v37, v36
	v_fma_f32 v39, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v39, v36
	v_fma_f32 v35, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v35, v36, v38
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v120, v35, v34, v33
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v73
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v19, v19, v21
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v101, 1.0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v101, v101, v73
	v_rcp_f32_e32 v21, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v19, v21, 1.0
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v73, v101, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v23, v22, v21
	v_fma_f32 v24, -v19, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v21
	v_fma_f32 v19, -v19, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v105, v19, v21, v23
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v19, 0x90, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v227, v140
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v111, v105, v101, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v88, v19, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v22, null, v21, v21, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v24, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v19, v21, v19
	v_mul_f32_e32 v25, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v22, v25, v24
	v_fmac_f32_e32 v25, v26, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v22, -v22, v25, v24
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v24, v226, v140
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v23, 0x9c, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v118, v22, v21, v19
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	v_add_nc_u32_e32 v19, 0xac, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v223, v140
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v23, v24, v23, v109
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v109, v23, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v150
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v73, v150, v19, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v19, 0xbfb8aa3b, v73
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v25, null, v24, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v27, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v23, v24, v23
	v_mul_f32_e32 v28, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v25, v28, v27
	v_fmac_f32_e32 v28, v30, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v25, v28, v27
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v27, v225, v140
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v25, v25, v26, v28
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v26, 0x98, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v109, v25, v24, v23
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v26, 0x80000000, v26, s0
	buffer_load_u16 v26, v26, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v26, v27, v26, v104
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v104, v26, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v27, 0xbfb8aa3b, v26
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v26
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v27, v27, v28
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v27, v27, v26
	v_rcp_f32_e32 v30, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v28, v30, 1.0
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v26, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v31, v30
	v_fma_f32 v33, -v28, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v33, v30
	v_fma_f32 v28, -v28, v32, v31
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v31, v224, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v28, v28, v30, v32
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v30, 0xa4, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v104, v28, v27, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v30, 0x80000000, v30, s0
	buffer_load_u16 v30, v30, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v30, v31, v30, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v103, v30, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v31, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v31, v31
	v_ldexp_f32 v31, v31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v32, null, v31, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v32
	v_fma_f32 v34, -v32, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v30, v31, v30
	v_mul_f32_e32 v35, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v32, v35, v34
	v_fmac_f32_e32 v35, v36, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v32, v35, v34
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v34, v222, v140
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v32, v32, v33, v35
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v33, 0xa0, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v102, v32, v31, v30
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v33, 0x80000000, v33, s0
	buffer_load_u16 v33, v33, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v33, v34, v33, v94
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v33, v94, v33, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v34, 0xbfb8aa3b, v33
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v33
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v34, v34, v35
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v34, 1.0, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v35, null, v34, v34, v33
	v_rcp_f32_e32 v36, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v35, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v33, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v38, v37, v36
	v_fma_f32 v39, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v39, v36
	v_fma_f32 v35, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v35, v36, v38
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v103, v35, v34, v33
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v73
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v19, v19, v21
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v100, 1.0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v100, v100, v73
	v_rcp_f32_e32 v21, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v19, v21, 1.0
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v73, v100, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v23, v22, v21
	v_fma_f32 v24, -v19, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v21
	v_fma_f32 v19, -v19, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v101, v19, v21, v23
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v19, 0xa8, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v221, v140
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v100, v101, v100, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v99, v156, v19, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v105, 1.0, v19
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v105, v105, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v19
	v_fma_f32 v22, -v19, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v99, v105, v99
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v19, v23, v22
	v_fmac_f32_e32 v23, v24, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v19, v23, v22
	v_div_fmas_f32 v106, v19, v21, v23
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v19, 0xb4, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v220, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v96, v106, v105, v99
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v98
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v98, v98, v19, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v98
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v98
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v19, v19, v21
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v107, 1.0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v107, v107, v98
	v_rcp_f32_e32 v21, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v19, v21, 1.0
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v98, v107, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v23, v22, v21
	v_fma_f32 v24, -v19, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v21
	v_fma_f32 v19, -v19, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v108, v19, v21, v23
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v19, 0xb0, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v61, v140
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v98, v108, v107, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v153, v19, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v22, null, v21, v21, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v24, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v19, v21, v19
	v_mul_f32_e32 v25, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v22, v25, v24
	v_fmac_f32_e32 v25, v26, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v22, -v22, v25, v24
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v24, v218, v140
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v23, 0xbc, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v99, v22, v21, v19
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	v_add_nc_u32_e32 v19, 0xc4, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v213, v140
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v23, v24, v23, v147
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v147, v23, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v145
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v105, v145, v19, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v19, 0xbfb8aa3b, v105
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v25, null, v24, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v27, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v23, v24, v23
	v_mul_f32_e32 v28, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v25, v28, v27
	v_fmac_f32_e32 v28, v30, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v25, v28, v27
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v27, v214, v140
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v25, v25, v26, v28
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v26, 0xb8, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v97, v25, v24, v23
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v26, 0x80000000, v26, s0
	buffer_load_u16 v26, v26, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v26, v27, v26, v146
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v146, v26, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v27, 0xbfb8aa3b, v26
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v26
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v27, v27, v28
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v27, v27, v26
	v_rcp_f32_e32 v30, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v28, v30, 1.0
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v26, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v31, v30
	v_fma_f32 v33, -v28, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v33, v30
	v_fma_f32 v28, -v28, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v28, v28, v30, v32
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v95, v28, v27, v26
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v105
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v19, v19, v21
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v106, 1.0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v106, v106, v105
	v_rcp_f32_e32 v21, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v19, v21, 1.0
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v105, v106, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v23, v22, v21
	v_fma_f32 v24, -v19, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v21
	v_fma_f32 v19, -v19, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v107, v19, v21, v23
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v19, 0xc0, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v212, v140
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v91, v107, v106, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v93, v78, v19, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v108, 1.0, v19
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v108, v108, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v19
	v_fma_f32 v22, -v19, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v93, v108, v93
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v19, v23, v22
	v_fmac_f32_e32 v23, v24, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v19, v23, v22
	v_div_fmas_f32 v110, v19, v21, v23
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v19, 0xcc, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v211, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v92, v110, v108, v93
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v143
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v112, v143, v19, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v112
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v112
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v19, v19, v21
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v113, 1.0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v113, v113, v112
	v_rcp_f32_e32 v21, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v19, v21, 1.0
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v112, v113, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v23, v22, v21
	v_fma_f32 v24, -v19, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v21
	v_fma_f32 v19, -v19, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v211, v19, v21, v23
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v19, 0xc8, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v210, v140
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v142
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v142, v19, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v19
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v19
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v22, null, v21, v21, v19
	v_rcp_f32_e32 v23, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v22, v23, 1.0
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v19, v21, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v25, v24, v23
	v_fma_f32 v26, -v22, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v23
	v_fma_f32 v22, -v22, v25, v24
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v24, v209, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v23, 0xd4, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v89, v22, v21, v19
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	v_add_nc_u32_e32 v19, 0xdc, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v206, v140
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v23, v24, v23, v85
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v73, v85, v23, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v29
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v23, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v29, v19, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v29, v164, v140
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v21, 0xbfb8aa3b, v19
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v23, v23, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v94, 1.0, v23
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v23, null, v94, v94, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v24, v23
	v_fma_f32 v25, -v23, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v24
	v_div_scale_f32 v25, vcc_lo, v73, v94, v73
	v_mul_f32_e32 v26, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v23, v26, v25
	v_fmac_f32_e32 v26, v27, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v23, v26, v25
	v_div_fmas_f32 v101, v23, v24, v26
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v24, v207, v140 :: v_dual_add_nc_u32 v23, 0xd0, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v94, v101, v94, v73
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v23, v24, v23, v133
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v133, v23, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v23
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v23
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v24, v24, v25
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v25, null, v24, v24, v23
	v_rcp_f32_e32 v26, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v25, v26, 1.0
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v23, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v28, v27, v26
	v_fma_f32 v30, -v25, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v30, v26
	v_fma_f32 v25, -v25, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v25, v25, v26, v28
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v90, v25, v24, v23
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v19
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v22, null, v21, v21, v19
	v_rcp_f32_e32 v23, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v22, v23, 1.0
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v19, v21, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v25, v24, v23
	v_fma_f32 v26, -v22, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v23
	v_fma_f32 v22, -v22, v25, v24
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v24, v199, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v23, 0xd8, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v88, v22, v21, v19
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	v_add_nc_u32_e32 v19, 0xec, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v192, v140
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v23, v24, v23, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v0, v23, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v0, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v25, null, v24, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v27, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v23, v24, v23
	v_mul_f32_e32 v28, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v25, v28, v27
	v_fmac_f32_e32 v28, v30, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v25, v28, v27
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v27, v196, v140
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v25, v25, v26, v28
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v26, 0xe4, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v87, v25, v24, v23
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v26, 0x80000000, v26, s0
	buffer_load_u16 v26, v26, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v26, v27, v26, v13
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v13, v26, s0
	scratch_load_b32 v13, off, off          ; 4-byte Folded Reload
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v27, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v27, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v30, v28
	v_fma_f32 v31, -v28, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v26, v27, v26
	v_mul_f32_e32 v32, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v28, v32, v31
	v_fmac_f32_e32 v32, v33, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v28, -v28, v32, v31
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v31, v193, v140
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v28, v28, v30, v32
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v30, 0xe0, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v85, v28, v27, v26
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v30, 0x80000000, v30, s0
	buffer_load_u16 v30, v30, s[12:15], 0 offen
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v19, v21, v19, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v73, v13, v19, s0
	scratch_load_b32 v13, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v19, 0xbfb8aa3b, v73 :: v_dual_lshlrev_b32 v30, 16, v30
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v30, v31, v30, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v84, v30, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v31, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v31, v31
	v_ldexp_f32 v31, v31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v32, null, v31, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v32
	v_fma_f32 v34, -v32, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v30, v31, v30
	v_mul_f32_e32 v35, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v32, v35, v34
	v_dual_fmac_f32 v35, v36, v33 :: v_dual_and_b32 v36, 16, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v35, v34
	v_div_fmas_f32 v32, v32, v33, v35
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	.loc	1 180 20 is_stmt 1              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v33, v124, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v86, v32, v31, v30
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v84, 1.0, v19
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v84, v84, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v19
	v_fma_f32 v22, -v19, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v73, v84, v73
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v19, v23, v22
	v_fmac_f32_e32 v23, v24, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v19, v23, v22
	v_div_fmas_f32 v101, v19, v21, v23
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v19, 0xe8, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v186, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v83, v178, v19, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v178, v101, v84, v73
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v105, 1.0, v19
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v105, v105, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v19
	v_fma_f32 v22, -v19, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v83, v105, v83
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v19, v23, v22
	v_fmac_f32_e32 v23, v24, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v19, v23, v22
	v_div_fmas_f32 v106, v19, v21, v23
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v19, 0xf4, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v185, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v82, v82, v19, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v107, 1.0, v19
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v107, v107, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v19
	v_fma_f32 v22, -v19, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v82, v107, v82
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v19, v23, v22
	v_fmac_f32_e32 v23, v24, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v19, v23, v22
	v_div_fmas_f32 v108, v19, v21, v23
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v19, 0xf0, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v184, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v81, v19, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v22, null, v21, v21, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v24, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v19, v21, v19
	v_mul_f32_e32 v25, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v22, v25, v24
	v_fmac_f32_e32 v25, v26, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v22, -v22, v25, v24
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v24, v183, v140
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v23, 0xfc, v1
	v_add_nc_u32_e32 v1, 0xf8, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v84, v22, v21, v19
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v173, v140
	v_mul_f32_e32 v22, v171, v140
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x1
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	buffer_load_u16 v1, v1, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v23, 16, v23
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v23, v24, v23, v80
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v80, v23, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v23
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v23
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v24, v24, v25
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v25, null, v24, v24, v23
	v_rcp_f32_e32 v26, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v25, v26, 1.0
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v23, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v28, v27, v26
	v_fma_f32 v30, -v25, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v30, v26
	v_fma_f32 v25, -v25, v28, v27
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v25, v25, v26, v28
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v26, v14, v140
	scratch_load_b32 v14, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v81, v25, v24, v23
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v1, v26, v1, v79
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v23, v152, v140
	v_mul_f32_e32 v24, v129, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v1, v79, v1, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v79, v106, v105, v83
	v_div_fixup_f32 v83, v108, v107, v82
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v82, s1, v74, 1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v21, v172, v140 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v35, 0xf8, v82
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v35, 0x80000000, v35, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v35, v35, s[12:15], 0 offen
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v1
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v27
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v27, null, v26, v26, v1
	v_rcp_f32_e32 v28, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v27, v28, 1.0
	v_fmac_f32_e32 v28, v30, v28
	v_div_scale_f32 v30, vcc_lo, v1, v26, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v31, v30, v28
	v_fma_f32 v32, -v27, v31, v30
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v31, v32, v28
	scratch_load_b32 v32, off, off offset:4 ; 4-byte Folded Reload
	v_fma_f32 v27, -v27, v31, v30
	scratch_load_b32 v30, off, off offset:12 ; 4-byte Folded Reload
	v_div_fmas_f32 v27, v27, v28, v31
	.loc	1 180 20 is_stmt 1              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v31, v141, v140
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v80, v27, v26, v1
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_or_b32_e32 v1, s2, v74
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:116
	scratch_load_b32 v28, off, off offset:16
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v1, v1, s22, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	buffer_load_u16 v1, v1, s[12:15], 0 offen
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v35, 16, v35
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v27, v27, v140
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v1, v19, v1, v14
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v19, 4, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v1, v14, v1, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	scratch_load_b32 v14, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v1, v1, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v19, v21, v19, v13
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v21, 12, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v13, v19, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s0
	scratch_load_b32 v13, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v19, v19, v190
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v21, v21, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v21, v22, v21, v13
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v170, v140
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v13, v21, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v21, 16, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v13, v76 :: v_dual_mul_f32 v4, v2, v4
	v_cndmask_b32_e64 v21, 0x80000000, v21, s0
	buffer_load_u16 v21, v21, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v21, v22, v21, v14
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v22, 20, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v14, v21, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	scratch_load_b32 v14, off, off offset:80 ; 4-byte Folded Reload
	buffer_load_u16 v22, v22, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v22, v23, v22, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v76.h, 0
	v_mov_b16_e32 v23.l, v19.h
	v_mov_b16_e32 v76.l, v1.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v23.h, v76.h
	v_and_b32_e32 v21, 1, v76
	v_mov_b16_e32 v76.l, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v21, v1, v21, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v1, v2, v204
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v23, v19, v23, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v13, v22, s0
	scratch_load_b32 v13, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s3, v1, v1
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v2, v19, v194 :: v_dual_and_b32 v19, 1, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v76.l, v2.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s2, v2, v2
	v_add3_u32 v19, v4, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v22, 1, v76
	v_add3_u32 v22, v2, v22, 0x7fff
	v_mov_b16_e32 v2.l, v1.h
	v_mov_b16_e32 v2.h, v76.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v2, 1, v2
	v_add3_u32 v2, v1, v2, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v23.h, vcc_lo
	v_cndmask_b16 v1.l, 0x7fff, v21.h, s1
	v_cndmask_b16 v21.h, 0x7fff, v22.h, s2
	v_cmp_eq_u32_e32 vcc_lo, 0, v36
	v_cndmask_b16 v21.l, 0x7fff, v2.h, s3
	v_mov_b32_e32 v22, 0x7632
	v_cmp_o_f32_e64 s1, v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v2, v21, v1, vcc_lo
	v_cndmask_b32_e32 v1, v1, v21, vcc_lo
	v_mov_b32_e32 v21, 0x5410
	v_cndmask_b32_e32 v22, 0x3276, v22, vcc_lo
	v_permlanex16_b32 v23, v1, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v21, 0x1054, v21, vcc_lo
	v_lshl_or_b32 v22, v22, 8, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v21, v21, 8, v21
	v_and_b32_e32 v22, 0x760076, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v21, 0x540054, v21
	v_lshl_or_b32 v22, v22, 4, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v21, v21, 4, v21
	v_and_b32_e32 v73, 0x7060706, v22
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v130, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v74, 0x5040504, v21
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v21, 8, v82
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_perm_b32 v1, v23, v2, v74
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_perm_b32 v2, v23, v2, v73
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v23, v151, v140
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v21, v21, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v21, v22, v21, v14
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v22, 28, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v14, v21, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	scratch_load_b32 v14, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v3, v21, v3
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v22, v22, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v3, v3
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v22, v23, v22, v13
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v23, 24, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v22, v13, v22, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	scratch_load_b32 v13, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v4, v22, v195
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v22.l, v3.h
	v_mov_b16_e32 v22.h, v76.h
	v_mov_b16_e32 v76.l, v4.h
	v_cmp_o_f32_e64 s3, v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v22, 1, v22
	v_add3_u32 v22, v3, v22, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v23, v24, v23, v13
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v13, v23, s0
	scratch_load_b32 v13, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v23, v149, v140
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v3, v21, v198
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v21, 1, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v3, v3
	v_add3_u32 v21, v4, v21, 0x7fff
	v_mov_b16_e32 v4.l, v3.h
	v_mov_b16_e32 v4.h, v76.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v4, 1, v4
	v_add3_u32 v4, v3, v4, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v19.h, s1
	v_cndmask_b16 v3.l, 0x7fff, v22.h, s2
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v21, v9, v140
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v19.l, 0x7fff, v4.h, s4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v12, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e32 v4, v3, v19, vcc_lo
	v_cndmask_b32_e32 v19, v19, v3, vcc_lo
	v_permlanex16_b32 v4, v4, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v3, v4, v19, v74
	v_perm_b32 v4, v4, v19, v73
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v19, 36, v82
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v19, v21, v19, v14
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v21, 32, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v14, v19, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s0
	scratch_load_b32 v14, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v19, v19, v197
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v21, v21, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v76.l, v19.h
	v_cmp_o_f32_e64 s1, v19, v19
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v21, v22, v21, v13
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v22, 44, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v13, v21, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	scratch_load_b32 v13, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v21, v21, v203
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v22, v22, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v21, v21
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v22, v23, v22, v13
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v23, 52, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v22, v13, v22, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	scratch_load_b32 v13, off, off offset:52 ; 4-byte Folded Reload
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v6, v6, v23, v14
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v23, 48, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v14, v6, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	scratch_load_b32 v14, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v6, v6, v200
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s3, v6, v6
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v5, v23, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v23, 1, v76
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v13, v5, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v23, v19, v23, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v19, v22, v202
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v22.l, v21.h
	v_mov_b16_e32 v22.h, v76.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v5, v5, v205
	scratch_load_b32 v13, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v76.l, v19.h
	v_and_b32_e32 v22, 1, v22
	v_cmp_o_f32_e64 s4, v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v22, v21, v22, 0x7fff
	v_and_b32_e32 v21, 1, v76
	v_mov_b16_e32 v76.l, v6.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v21, v19, v21, 0x7fff
	v_and_b32_e32 v24, 1, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v24, v6, v24, 0x7fff
	v_mov_b16_e32 v6.l, v5.h
	v_mov_b16_e32 v6.h, v76.h
	v_and_b32_e32 v6, 1, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v6, v5, v6, 0x7fff
	v_cndmask_b16 v5.h, 0x7fff, v23.h, s1
	v_cndmask_b16 v5.l, 0x7fff, v22.h, s2
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v23, v10, v140
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v22.l, 0x7fff, v6.h, s4
	v_cmp_o_f32_e64 s1, v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v6, v5, v22, vcc_lo
	v_cndmask_b32_e32 v22, v22, v5, vcc_lo
	v_permlanex16_b32 v6, v6, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v5, v6, v22, v74
	v_perm_b32 v6, v6, v22, v73
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v22, 40, v82
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	buffer_load_u16 v22, v22, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v8, v8, v22, v13
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v22, 60, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v8, v13, v8, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	scratch_load_b32 v13, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v8, v8, v201
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v22, v22, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v8, v8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v22, v23, v22, v14
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v23, 56, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v22, v14, v22, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	scratch_load_b32 v14, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v19, v22, v208
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v22.l, v8.h
	v_mov_b16_e32 v22.h, v76.h
	v_mov_b16_e32 v76.l, v19.h
	v_cmp_o_f32_e64 s3, v19, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v22, 1, v22
	v_add3_u32 v22, v8, v22, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v8, 1, v76
	v_add3_u32 v8, v19, v8, 0x7fff
	v_mov_b16_e32 v19.h, v76.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s3
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v7, v7, v23, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v7, v13, v7, s0
	scratch_load_b32 v13, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v7, v7, v191
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v19.l, v7.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v7, v7
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v19, v7, v19, 0x7fff
	v_cndmask_b16 v7.h, 0x7fff, v21.h, s1
	v_cndmask_b16 v7.l, 0x7fff, v22.h, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v0, v140
	scratch_load_b32 v0, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v8.l, 0x7fff, v19.h, s4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v21, v11, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_dual_cndmask_b32 v19, v7, v8 :: v_dual_cndmask_b32 v8, v8, v7
	v_permlanex16_b32 v19, v19, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v7, v19, v8, v74
	v_perm_b32 v8, v19, v8, v73
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v19, 0x44, v82
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v23, v0, v140
	scratch_load_b32 v0, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v19, v21, v19, v14
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v21, 64, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v14, v19, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v19, v19, v188
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v21, v21, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v76.l, v19.h
	v_cmp_o_f32_e64 s1, v19, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v10, v0, v140
	scratch_load_b32 v0, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v21, v22, v21, v13
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v22, 0x4c, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v13, v21, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	scratch_load_b32 v13, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v21, v21, v189
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v22, v22, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v21, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v9, v0, v140
	scratch_load_b32 v0, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v22, v23, v22, v13
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v23, 0x50, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v22, v13, v22, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	scratch_load_b32 v13, off, off offset:24 ; 4-byte Folded Reload
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v12, v0, v140
	scratch_load_b32 v0, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v10, v10, v23, v139
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v23, 0x54, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v139, v10, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v10, v10, v182
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s4, v10, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v11, v0, v140
	scratch_load_b32 v0, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v9, v9, v23, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v23, 1, v76
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v9, v13, v9, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v23, v19, v23, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v19, v22, v187
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v22.l, v21.h
	v_mov_b16_e32 v22.h, v76.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v9, v9, v181
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v76.l, v19.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v22, 1, v22
	v_cmp_o_f32_e64 s3, v9, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v22, v21, v22, 0x7fff
	v_and_b32_e32 v21, 1, v76
	v_mov_b16_e32 v76.l, v9.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v21, v19, v21, 0x7fff
	v_and_b32_e32 v24, 1, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v24, v9, v24, 0x7fff
	v_mov_b16_e32 v9.l, v10.h
	v_mov_b16_e32 v9.h, v76.h
	v_and_b32_e32 v9, 1, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v9, v10, v9, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v23.h, s1
	v_cndmask_b16 v10.l, 0x7fff, v22.h, s2
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v23, v148, v140
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v22.l, 0x7fff, v9.h, s4
	v_cmp_o_f32_e64 s1, v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v9, v10, v22, vcc_lo
	v_cndmask_b32_e32 v10, v22, v10, vcc_lo
	v_permlanex16_b32 v22, v9, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v9, v22, v10, v74
	v_perm_b32 v10, v22, v10, v73
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v22, 0x48, v82
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	buffer_load_u16 v22, v22, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v12, v12, v22, v138
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v22, 0x5c, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v12, v138, v12, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v12, v12, v15
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v22, v22, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v12, v12
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v22, v23, v22, v119
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v23, 0x58, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v22, v119, v22, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v19, v22, v177
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v22.l, v12.h
	v_mov_b16_e32 v22.h, v76.h
	v_mov_b16_e32 v76.l, v19.h
	v_cmp_o_f32_e64 s3, v19, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v22, 1, v22
	v_add3_u32 v22, v12, v22, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v76
	v_add3_u32 v12, v19, v12, 0x7fff
	v_mov_b16_e32 v19.h, v76.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s3
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v11, v11, v23, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v11, v77, v11, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v11, v11, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v19.l, v11.h
	v_cmp_o_f32_e64 s4, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v11, v19, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v21.h, s1
	v_cndmask_b16 v11.l, 0x7fff, v22.h, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v21, v0, v140
	scratch_load_b32 v0, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v12.l, 0x7fff, v19.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v19, v11, v12 :: v_dual_cndmask_b32 v12, v12, v11
	v_permlanex16_b32 v19, v19, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v11, v19, v12, v74
	v_perm_b32 v12, v19, v12, v73
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v19, 0x60, v82
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v22, v0, v140
	scratch_load_b32 v0, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v19, v21, v19, v75
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v21, 0x64, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v75, v19, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v19, v19, v175
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v21, v21, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v19, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v23, v0, v140
	scratch_load_b32 v0, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v21, v22, v21, v72
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v22, 0x6c, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v72, v21, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v21, v21, v174
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v22, v22, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v76.l, v21.h
	v_cmp_o_f32_e64 s1, v21, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v24, v0, v140
	scratch_load_b32 v0, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v22, v23, v22, v71
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v23, 0x70, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v22, v71, v22, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v22, v22, v176
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v25, v0, v140
	scratch_load_b32 v0, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v23, v24, v23, v69
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v24, 0x74, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v13, v69, v23, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v24, 0x80000000, v24, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v13, v13, v161
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v24, v24, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s4, v13, v13
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v24, v25, v24, v70
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v25, 1, v76
	v_mov_b16_e32 v76.l, v22.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v14, v70, v24, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v25, v21, v25, 0x7fff
	v_mov_b16_e32 v21.l, v19.h
	v_mov_b16_e32 v21.h, v76.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v14, v14, v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v21, 1, v21
	v_cmp_o_f32_e64 s3, v14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v21, v19, v21, 0x7fff
	v_and_b32_e32 v19, 1, v76
	v_mov_b16_e32 v76.l, v14.h
	v_add3_u32 v19, v22, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v23, 1, v76
	v_add3_u32 v23, v14, v23, 0x7fff
	v_mov_b16_e32 v14.l, v13.h
	v_mov_b16_e32 v14.h, v76.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v14, v13, v14, 0x7fff
	v_cndmask_b16 v13.h, 0x7fff, v25.h, s1
	v_cndmask_b16 v13.l, 0x7fff, v21.h, s2
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v23, v0, v140
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v21.l, 0x7fff, v14.h, s4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v0, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v22, v22
	v_mov_b16_e32 v22.h, v76.h
	v_cndmask_b32_e32 v14, v13, v21, vcc_lo
	v_cndmask_b32_e32 v21, v21, v13, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v14, v14, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v13, v14, v21, v74
	v_perm_b32 v14, v14, v21, v73
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v21, 0x68, v82
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v21, 0x80000000, v21, s0
	buffer_load_u16 v21, v21, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v24, v0, v140
	scratch_load_b32 v0, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v21, v23, v21, v59
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v23, 0x7c, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v59, v21, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v21, v21, v155
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v22.l, v21.h
	v_cmp_o_f32_e64 s2, v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v22, 1, v22
	v_add3_u32 v22, v21, v22, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v25, v0, v140
	scratch_load_b32 v0, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v23, v24, v23, v16
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v24, 0x78, v82
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v93, v211, v113, v112
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v16, v16, v23, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v24, 0x80000000, v24, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v16, v16, v154
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v24, v24, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v76.l, v16.h
	v_cmp_o_f32_e64 s3, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v21, 1, v76
	v_add3_u32 v21, v16, v21, 0x7fff
	v_mov_b16_e32 v16.h, v76.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v24, v25, v24, v115
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v115, v24, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v15, v15, v137
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.l, v15.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v15, v15
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v16, v15, v16, 0x7fff
	v_cndmask_b16 v15.h, 0x7fff, v19.h, s1
	v_cndmask_b16 v15.l, 0x7fff, v22.h, s2
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v21, v0, v140
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v19.l, 0x7fff, v16.h, s4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v0, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e32 v16, v15, v19, vcc_lo
	v_cndmask_b32_e32 v19, v19, v15, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v16, v16, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v15, v16, v19, v74
	v_perm_b32 v16, v16, v19, v73
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v19, 0x80, v82
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v22, v0, v140
	scratch_load_b32 v0, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v19, v21, v19, v63
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v21, 0x84, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v63, v19, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v19, v19, v135
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v21, v21, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v19, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v23, v0, v140
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v21, v22, v21, v131
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v22, 0x8c, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v131, v21, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v21, v21, v134
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v22, v22, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v76.l, v21.h
	v_cmp_o_f32_e64 s1, v21, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v24, v0, v140
	scratch_load_b32 v0, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v22, v23, v22, v60
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v23, 0x90, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v22, v60, v22, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v22, v22, v136
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v25, v0, v140
	scratch_load_b32 v0, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v23, v24, v23, v179
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v24, 0x94, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v179, v23, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v24, 0x80000000, v24, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v18, v18, v118
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v24, v24, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s4, v18, v18
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v24, v25, v24, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v25, 1, v76
	v_mov_b16_e32 v76.l, v22.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v17, v24, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v25, v21, v25, 0x7fff
	v_mov_b16_e32 v21.l, v19.h
	v_mov_b16_e32 v21.h, v76.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v17, v17, v111
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v21, 1, v21
	v_cmp_o_f32_e64 s3, v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v21, v19, v21, 0x7fff
	v_and_b32_e32 v19, 1, v76
	v_mov_b16_e32 v76.l, v17.h
	v_add3_u32 v19, v22, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v23, 1, v76
	v_add3_u32 v23, v17, v23, 0x7fff
	v_mov_b16_e32 v17.l, v18.h
	v_mov_b16_e32 v17.h, v76.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v17, v18, v17, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v25.h, s1
	v_cndmask_b16 v18.l, 0x7fff, v21.h, s2
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v23, v20, v140
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v21.l, 0x7fff, v17.h, s4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v20, off, off offset:176 ; 4-byte Folded Reload
	v_mul_f32_e32 v0, v0, v140
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v22, v22
	v_mov_b16_e32 v22.h, v76.h
	v_dual_cndmask_b32 v17, v18, v21 :: v_dual_cndmask_b32 v18, v21, v18
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v25, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_permlanex16_b32 v21, v17, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v17, v21, v18, v74
	v_perm_b32 v18, v21, v18, v73
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v21, 0x88, v82
	v_cndmask_b32_e64 v21, 0x80000000, v21, s0
	buffer_load_u16 v21, v21, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v24, v20, v140
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v25, v25, v140
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v0, v21, v132
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v21, 0x9c, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v132, v0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v120
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v21, v21, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v22.l, v0.h
	v_cmp_o_f32_e64 s2, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v22, 1, v22
	v_add3_u32 v22, v0, v22, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v21, v23, v21, v57
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v23, 0x98, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v57, v21, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v20, v20, v109
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v76.l, v20.h
	v_cmp_o_f32_e64 s3, v20, v20
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v23, v24, v23, v160
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	scratch_load_b32 v24, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v160, v23, s0
	scratch_load_b32 v23, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v21, v104
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v21, 1, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v0, v0
	v_add3_u32 v21, v20, v21, 0x7fff
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e32 v20.h, v76.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v20, v0, v20, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v19.h, s1
	v_cndmask_b16 v0.l, 0x7fff, v22.h, s2
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:172
	scratch_load_b32 v22, off, off offset:164
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v19.l, 0x7fff, v20.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v20, v0, v19, vcc_lo
	v_cndmask_b32_e32 v0, v19, v0, vcc_lo
	v_permlanex16_b32 v20, v20, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v19, v20, v0, v74
	v_perm_b32 v20, v20, v0, v73
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v0, 0xa4, v82
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v24, v24, v140
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v21, v21, v140
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v22, v22, v140
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v21, v0, v58
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v21, 0xa0, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v58, v0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v102
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v21, v21, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v76.l, v0.h
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v21, v22, v21, v23
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v22, 0xac, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v23, v21, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v23, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v21, v21, v103
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v22, v22, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v21, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v23, v23, v140 :: v_dual_lshlrev_b32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v22, v23, v22, v64
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v23, 0xb0, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v22, v64, v22, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v23, v24, v23, v68
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v24, 0xb4, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v24, 0x80000000, v24, s0
	buffer_load_u16 v24, v24, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v24, v25, v24, v66
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v25, 1, v76
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v25, v0, v25, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v22, v100
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v22, v68, v23, s0
	v_cndmask_b32_e64 v23, v66, v24, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v24.l, v21.h
	v_mov_b16_e32 v24.h, v76.h
	v_mov_b16_e32 v76.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v24, 1, v24
	v_add3_u32 v24, v21, v24, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v21, v22, v99 :: v_dual_mul_f32 v22, v23, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v23, 1, v76
	v_cmp_o_f32_e64 s4, v21, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v76.l, v22.h
	v_cmp_o_f32_e64 s3, v22, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v23, v0, v23, 0x7fff
	v_and_b32_e32 v26, 1, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v26, v22, v26, 0x7fff
	v_mov_b16_e32 v22.l, v21.h
	v_mov_b16_e32 v22.h, v76.h
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v22, v21, v22, 0x7fff
	v_cndmask_b16 v21.h, 0x7fff, v25.h, s1
	v_cndmask_b16 v21.l, 0x7fff, v24.h, s2
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:120
	scratch_load_b32 v26, off, off offset:20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v24.l, 0x7fff, v22.h, s4
	v_cmp_o_f32_e64 s1, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v22, v21, v24, vcc_lo
	v_cndmask_b32_e32 v24, v24, v21, vcc_lo
	v_permlanex16_b32 v22, v22, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v21, v22, v24, v74
	v_perm_b32 v22, v22, v24, v73
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v24, 0xa8, v82
	v_cndmask_b32_e64 v24, 0x80000000, v24, s0
	buffer_load_u16 v24, v24, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v25, v25, v140
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v24, v25, v24, v26
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v25, 0xbc, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v24, v26, v24, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v25, 0x80000000, v25, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v26, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v24, v24, v96
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v25, v25, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v24, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v26, v26, v140 :: v_dual_lshlrev_b32 v25, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v25, v26, v25, v28
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v26, 0xb8, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v28, v25, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v26, 0x80000000, v26, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v28, v165, v140
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v25, v25, v97
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v26, v26, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v76.l, v25.h
	v_cmp_o_f32_e64 s3, v25, v25
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v27, v26, v55
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	scratch_load_b32 v27, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v55, v26, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v26.l, v24.h
	v_mov_b16_e32 v26.h, v76.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v26, 1, v26
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v26, v24, v26, 0x7fff
	v_and_b32_e32 v24, 1, v76
	v_add3_u32 v24, v25, v24, 0x7fff
	v_mov_b16_e32 v25.l, v0.h
	v_mov_b16_e32 v25.h, v76.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v25, 1, v25
	v_add3_u32 v25, v0, v25, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v23.h, s1
	v_cndmask_b16 v0.l, 0x7fff, v26.h, s2
	v_cndmask_b16 v23.h, 0x7fff, v24.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v26, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v23.l, 0x7fff, v25.h, s4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v25, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e32 v24, v0, v23, vcc_lo
	v_cndmask_b32_e32 v0, v23, v0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v24, v24, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v23, v24, v0, v74
	v_perm_b32 v24, v24, v0, v73
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v0, 0xc0, v82
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v27, v27, v140
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v26, v26, v140
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v25, v25, v140
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v25, v0, v54
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v25, 0xc4, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v54, v0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v25, 0x80000000, v25, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v92
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v25, v25, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v0, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v25, v26, v25, v53
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v26, 0xcc, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v53, v25, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v26, 0x80000000, v26, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v25, v25, v91
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v26, v26, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v76.l, v25.h
	v_cmp_o_f32_e64 s1, v25, v25
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v27, v26, v52
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v52, v26, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v27, v26, v93 :: v_dual_add_nc_u32 v26, 0xd0, v82
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v26, 0x80000000, v26, s0
	buffer_load_u16 v26, v26, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v28, v26, v30
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v28, 0xd4, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v30, v26, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v28, 0x80000000, v28, s0
	buffer_load_u16 v28, v28, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v28, v29, v28, v51
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v29, 1, v76
	v_mov_b16_e32 v76.l, v27.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v29, v25, v29, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v51, v28, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v28.l, v0.h
	v_mov_b16_e32 v28.h, v76.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v25, v25, v94 :: v_dual_and_b32 v30, 1, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v30, v27, v30, 0x7fff
	v_mov_b16_e32 v76.l, v25.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v25, v25
	v_add3_u32 v28, v0, v28, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v26, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v26, 1, v76
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v26, v25, v26, 0x7fff
	v_mov_b16_e32 v25.l, v0.h
	v_mov_b16_e32 v25.h, v76.h
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v25, 1, v25
	v_add3_u32 v25, v0, v25, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v29.h, s1
	v_cndmask_b16 v0.l, 0x7fff, v28.h, s2
	scratch_load_b32 v29, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v28, v162, v140
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.l, 0x7fff, v25.h, s4
	v_cmp_o_f32_e64 s1, v27, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v25, v0, v26 :: v_dual_cndmask_b32 v0, v26, v0
	v_permlanex16_b32 v26, v25, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v25, v26, v0, v74
	v_perm_b32 v26, v26, v0, v73
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v0, 0xc8, v82
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v28, v0, v29
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v28, 0xdc, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v29, v0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v28, 0x80000000, v28, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v29, v163, v140 :: v_dual_mul_f32 v0, v0, v89
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v28, v28, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v0, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v28, v29, v28, v50
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v29, 0xd8, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v28, v50, v28, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v29, 0x80000000, v29, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v28, v28, v88
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v29, v29, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v76.l, v28.h
	v_cmp_o_f32_e64 s3, v28, v28
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v29, v31, v29, v32
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v31, v127, v140
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v27, v32, v29, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v29.l, v0.h
	v_mov_b16_e32 v29.h, v76.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v32, v125, v140 :: v_dual_and_b32 v29, 1, v29
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v29, v0, v29, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v0, v27, v87 :: v_dual_and_b32 v27, 1, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s4, v0, v0
	v_add3_u32 v27, v28, v27, 0x7fff
	v_mov_b16_e32 v28.l, v0.h
	v_mov_b16_e32 v28.h, v76.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s3
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v28, v0, v28, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v30.h, s1
	v_cndmask_b16 v0.l, 0x7fff, v29.h, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v29, v128, v140
	v_mul_f32_e32 v30, v126, v140
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v27.l, 0x7fff, v28.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v28, v0, v27, vcc_lo
	v_cndmask_b32_e32 v0, v27, v0, vcc_lo
	v_permlanex16_b32 v28, v28, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v27, v28, v0, v74
	v_perm_b32 v28, v28, v0, v73
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v0, 0xe4, v82
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v29, v0, v49
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v29, 0xe0, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v49, v0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v29, 0x80000000, v29, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v85
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v29, v29, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v76.l, v0.h
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v29, v30, v29, v48
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v30, 0xec, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v29, v48, v29, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v30, 0x80000000, v30, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v29, v29, v86
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v30, v30, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v29, v29
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v30, v31, v30, v47
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v31, 0xf4, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v47, v30, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v31, 0x80000000, v31, s0
	buffer_load_u16 v31, v31, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v31, v32, v31, v46
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v32, 0xf0, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v32, 0x80000000, v32, s0
	buffer_load_u16 v32, v32, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v32, v33, v32, v45
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v33, 1, v76
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v33, v0, v33, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v30, v178
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v46, v31, s0
	v_cndmask_b32_e64 v31, v45, v32, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v32.l, v29.h
	v_mov_b16_e32 v32.h, v76.h
	v_mov_b16_e32 v76.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v32, 1, v32
	v_add3_u32 v32, v29, v32, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v29, v30, v83 :: v_dual_mul_f32 v30, v31, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v31, 1, v76
	v_mov_b16_e32 v76.l, v29.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v29, v29
	v_cmp_o_f32_e64 s4, v30, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v31, v0, v31, 0x7fff
	v_and_b32_e32 v34, 1, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v34, v29, v34, 0x7fff
	v_mov_b16_e32 v29.l, v30.h
	v_mov_b16_e32 v29.h, v76.h
	v_and_b32_e32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v29, v30, v29, 0x7fff
	v_cndmask_b16 v30.h, 0x7fff, v33.h, s1
	v_cndmask_b16 v30.l, 0x7fff, v32.h, s2
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s3
	v_cndmask_b16 v32.l, 0x7fff, v29.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v29, v30, v32 :: v_dual_cndmask_b32 v30, v32, v30
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v32, v123, v140
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_permlanex16_b32 v29, v29, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v29, v30, v74
	v_perm_b32 v34, v29, v30, v73
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v30, v121, v140 :: v_dual_add_nc_u32 v29, 0xe8, v82
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v29, 0x80000000, v29, s0
	buffer_load_u16 v29, v29, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v29, v30, v29, v44
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v30, v122, v140
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v29, v44, v29, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v30, v30, v35, v43
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v35, 0xfc, v82
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v29, v29, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v43, v30, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v35, 0x80000000, v35, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v29, v29
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v35, v35, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v35, 16, v35
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v32, v32, v35, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v32, v42, v32, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v30, v80
	v_mul_f32_e32 v30, v32, v81
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v32.l, v29.h
	v_mov_b16_e32 v32.h, v76.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v0, v0
	v_mov_b16_e32 v76.l, v30.h
	v_cmp_o_f32_e64 s2, v30, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v32, 1, v32
	v_add3_u32 v32, v29, v32, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v29, 1, v76
	v_mov_b16_e32 v76.l, v0.h
	v_add3_u32 v29, v30, v29, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v30, 1, v76
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v30, v0, v30, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v31.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v32.h, s1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v31, 1, v36
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v30, v29, v0, vcc_lo
	v_cndmask_b32_e32 v0, v0, v29, vcc_lo
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v29, s23, v41
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s23, s15
	v_permlanex16_b32 v0, v0, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v29, s33, s22, v29
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_perm_b32 v35, v0, v30, v74
	v_perm_b32 v36, v0, v30, v73
	s_mov_b32 s22, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v29, v29, v31, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v31, 0x1e0, v40
	v_add_nc_u32_e32 v0, 64, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u32_e32 vcc_lo, 0, v31
	v_add_nc_u32_e32 v31, 32, v29
	v_dual_cndmask_b32 v30, 0x80000000, v29 :: v_dual_cndmask_b32 v31, 0x80000000, v31
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x2
	buffer_store_b128 v[1:4], v30, s[20:23], 0 offen
	buffer_store_b128 v[5:8], v31, s[20:23], 0 offen
	buffer_store_b128 v[9:12], v0, s[20:23], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v29
	v_add_nc_u32_e32 v1, 0x80, v29
	v_add_nc_u32_e32 v2, 0xa0, v29
	v_add_nc_u32_e32 v3, 0xc0, v29
	v_add_nc_u32_e32 v4, 0xe0, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[13:16], v0, s[20:23], 0 offen
	buffer_store_b128 v[17:20], v1, s[20:23], 0 offen
	buffer_store_b128 v[21:24], v2, s[20:23], 0 offen
	buffer_store_b128 v[25:28], v3, s[20:23], 0 offen
	buffer_store_b128 v[33:36], v4, s[20:23], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 272
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 47
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 272
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 34152
; TotalNumSgprs: 49
; NumVgprs: 256
; ScratchSize: 272
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 49
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	86                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	140                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 272
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 104
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
