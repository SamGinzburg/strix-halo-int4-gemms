	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
	v_mov_b32_e32 v125, v0
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	v_mov_b32_e32 v209, 0
	v_mov_b32_e32 v105, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v77, 0 :: v_dual_lshlrev_b32 v14, 3, v125
	v_mov_b32_e32 v85, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v98, 0
	v_mov_b32_e32 v80, 0
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_and_b32_e32 v2, 56, v14
	v_lshlrev_b32_e32 v13, 1, v125
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v3, 3, v125
	v_dual_mov_b32 v66, 0 :: v_dual_lshlrev_b32 v17, 2, v125
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v16, 0 :: v_dual_and_b32 v1, 62, v13
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
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s13, s4, 2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v4, 64, v3
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s13
	scratch_store_b32 off, v16, off offset:12 ; 4-byte Folded Spill
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v79, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v0, s5
	v_dual_mov_b32 v76, 0 :: v_dual_and_b32 v219, 15, v125
	scratch_store_b32 off, v16, off offset:16 ; 4-byte Folded Spill
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v228, 0 :: v_dual_and_b32 v17, 56, v17
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v18, 56, v3
	scratch_store_b32 off, v16, off offset:32 ; 4-byte Folded Spill
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	v_readfirstlane_b32 s5, v0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v161, 0
	v_mov_b32_e32 v134, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xor_b32_e32 v13, v13, v18
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_mul_f32 s5, s5, 0x4f7ffffe
	scratch_store_b32 off, v16, off offset:20 ; 4-byte Folded Spill
	v_mov_b32_e32 v16, 0
	v_dual_mov_b32 v230, 0 :: v_dual_add_nc_u32 v23, 0, v13
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v84, 0
	scratch_store_b32 off, v16, off offset:24 ; 4-byte Folded Spill
	s_mul_i32 s8, s8, s5
	v_mov_b32_e32 v16, 0
	s_mul_hi_u32 s8, s5, s8
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v238, 0
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	scratch_store_b32 off, v16, off offset:28 ; 4-byte Folded Spill
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_lshrrev_b32_e32 v16, 1, v125
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_and_b32_e32 v16, 56, v16
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_cselect_b32 s4, s9, s5
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v88, 0
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xor_b32_e32 v14, v14, v16
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_sub_i32 s14, s4, s8
	v_lshl_or_b32 v16, v219, 6, v17
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s18, s14, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s14, s14, s13
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s7, s18
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s28, s2, s14
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s19, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s15, s19
	s_abs_i32 s2, s28
	s_cvt_f32_u32 s16, s15
	s_sub_i32 s1, 0, s15
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v22, 0, v14
	v_xor_b32_e32 v13, 8, v16
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	v_rcp_iflag_f32_e32 v0, s16
	v_xor_b32_e32 v14, 16, v16
	v_xor_b32_e32 v17, 24, v16
	v_xor_b32_e32 v18, 32, v16
	v_xor_b32_e32 v19, 40, v16
	v_xor_b32_e32 v20, 48, v16
	v_xor_b32_e32 v21, 56, v16
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v213, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s0, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v0, 5, v125
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s0, s0, 0x4f7ffffe
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v27, 0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s0, s0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v115, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s1, s1, s0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v211, 0
	s_mul_hi_u32 s1, s0, s1
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v87, 0
	s_add_i32 s0, s0, s1
	s_xor_b32 s1, s28, s19
	s_mul_hi_u32 s0, s2, s0
	s_ashr_i32 s13, s1, 31
	s_mul_i32 s14, s0, s15
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v89, 0
	s_sub_i32 s1, s2, s14
	s_add_i32 s2, s0, 1
	s_sub_i32 s14, s1, s15
	s_cmp_ge_u32 s1, s15
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v113, 0
	s_cselect_b32 s0, s2, s0
	s_cselect_b32 s1, s14, s1
	s_add_i32 s2, s0, 1
	s_cmp_ge_u32 s1, s15
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v95, 0
	s_cselect_b32 s0, s2, s0
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s1, s12, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s16, s0, s13
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s17, s12, 0x7f
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s12, s12, s1
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s1, s16, s13
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s14, s3, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s0, s17, 31
.Ltmp15:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s15, s12, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s12, s1, s19
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v9, s14, v1
	v_or_b32_e32 v10, s14, v2
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s0, s0, 25
.Ltmp17:
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[5:6], null, s15, v0, v[1:2]
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s12, s28, s12
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_mad_u64_u32 v[6:7], null, s15, v3, v[2:3]
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s22, s1, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s0, s17, s0
.Ltmp19:
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_mad_u64_u32 v[7:8], null, s15, v4, v[2:3]
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s12, s12, s18
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	s_lshl_b32 s34, s23, 1
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s35, s0, 7
.Ltmp21:
	.loc	1 171 29                        ; generate_amdgcn.py:171:29
	s_add_i32 s0, s22, s23
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s33, s12, 4
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s2, s15, v9
	v_cmp_gt_i32_e64 s3, s15, v10
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 64, v9
	v_cmp_gt_i32_e64 s1, 64, v10
	.loc	1 164 34 is_stmt 1              ; generate_amdgcn.py:164:34
	s_mul_i32 s19, s22, s15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s17, 0x7f
	.loc	1 171 29                        ; generate_amdgcn.py:171:29
	s_mul_i32 s18, s0, s15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s0, -1, 0
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	s_add_i32 s19, s19, s14
	.loc	1 171 29                        ; generate_amdgcn.py:171:29
	s_add_i32 s18, s18, s14
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v8, s19, v6
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s28, vcc_lo, s2
	s_and_b32 s2, s1, s3
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v9, s19, v7
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	s_mul_i32 s12, s33, s15
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v6, s18, v6
	v_dual_mov_b32 v162, 0 :: v_dual_add_nc_u32 v7, s18, v7
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s2, s0, s2
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_add3_u32 v5, s14, s12, v5
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	v_cndmask_b32_e64 v10, 0x80000000, v6, s2
	v_cndmask_b32_e64 v11, 0x80000000, v7, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s2, s0, s28
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_and_b32 s25, s25, 0xffff
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v15, 0x80000000, v5, s2
	s_and_b32 s5, s5, 0xffff
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_clause 0x3
	buffer_load_b64 v[5:6], v8, s[24:27], 0 offen
	buffer_load_b64 v[7:8], v9, s[24:27], 0 offen
	buffer_load_b64 v[9:10], v10, s[24:27], 0 offen
	buffer_load_b64 v[11:12], v11, s[24:27], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v15, v15, s[4:7], 0 offen
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v243, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v69, 0
	v_mov_b32_e32 v232, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v220, v125, 4, 1
	v_add_nc_u32_e32 v64, 0, v16
	v_add_nc_u32_e32 v16, 0, v13
	v_add_nc_u32_e32 v14, 0, v14
	v_add_nc_u32_e32 v13, 0, v17
	v_add_nc_u32_e32 v73, 0, v18
	v_add_nc_u32_e32 v72, 0, v19
	v_add_nc_u32_e32 v94, 0, v20
	v_add_nc_u32_e32 v99, 0, v21
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s3, s35, -1
	s_mov_b32 s12, 0
	s_cmpk_lt_i32 s17, 0x100
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v94, off offset:72
	scratch_store_b32 off, v72, off
	scratch_store_b32 off, v73, off offset:4
	scratch_store_b32 off, v64, off offset:8
	scratch_store_b32 off, v220, off offset:368
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(3)
	ds_store_2addr_stride64_b64 v22, v[5:6], v[7:8] offset1:8
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	s_waitcnt vmcnt(1)
	ds_store_2addr_stride64_b64 v22, v[9:10], v[11:12] offset0:16 offset1:24
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v23, v15 offset:16384
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	v_sub_nc_u32_e32 v5, s15, v1
	s_lshl_b32 s17, s16, 8
	s_lshl_b32 s19, s13, 8
	s_add_i32 s18, s17, s34
	s_lshl_b32 s16, s16, 7
	scratch_store_b32 off, v5, off offset:304 ; 4-byte Folded Spill
	v_sub_nc_u32_e32 v5, s15, v2
	s_sub_i32 s40, s18, s19
	s_add_i32 s18, s23, s16
	s_sub_i32 s42, s17, s19
	s_mov_b32 s17, s12
	scratch_store_b32 off, v5, off offset:308 ; 4-byte Folded Spill
	v_dual_mov_b32 v232, 0 :: v_dual_lshlrev_b32 v5, 1, v220
	s_mov_b32 s19, s12
	v_add_nc_u32_e32 v6, s18, v3
	v_add_nc_u32_e32 v7, s18, v4
	scratch_store_b32 off, v5, off offset:312 ; 4-byte Folded Spill
	s_mov_b32 s18, s12
	v_add_nc_u32_e32 v5, s33, v219
	s_lshl_b32 s13, s13, 7
	v_or_b32_e32 v8, s16, v4
	v_subrev_nc_u32_e32 v7, s13, v7
	s_add_i32 s44, s14, 64
	v_mul_lo_u32 v9, s35, v5
	v_subrev_nc_u32_e32 v5, s13, v6
	v_or_b32_e32 v6, s16, v3
	s_mov_b32 s16, s12
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v167, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[3:4], null, s15, v5, s[14:15]
	v_subrev_nc_u32_e32 v6, s13, v6
	v_mad_u64_u32 v[4:5], null, s15, v7, s[14:15]
	v_subrev_nc_u32_e32 v7, s13, v8
	s_mov_b32 s13, s12
	v_add_nc_u32_e32 v0, s33, v0
	v_mad_u64_u32 v[5:6], null, s15, v6, s[14:15]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[6:7], null, s15, v7, s[14:15]
	v_mad_u64_u32 v[7:8], null, s15, v0, s[14:15]
	v_add3_u32 v0, v3, v2, 64
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	v_lshlrev_b32_e32 v102, 1, v9
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v101, 0
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_add3_u32 v0, v4, v2, 64
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v227, 0
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_add3_u32 v0, v5, v2, 64
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v174, 0
	v_mov_b32_e32 v75, 0
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_add3_u32 v0, v6, v2, 64
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v242, 0
	v_mov_b32_e32 v225, 0
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_add3_u32 v0, v7, v1, 64
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v92, 0
	v_mov_b32_e32 v223, 0
	v_mov_b32_e32 v171, 0
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, s12 :: v_dual_mov_b32 v7, s19
	v_dual_mov_b32 v1, s13 :: v_dual_mov_b32 v2, s14
	v_dual_mov_b32 v3, s15 :: v_dual_mov_b32 v4, s16
	v_dual_mov_b32 v5, s17 :: v_dual_mov_b32 v6, s18
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:336
	scratch_store_b128 off, v[4:7], off offset:352
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v217, 0
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v215, 0
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v191, 0
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v207, 0
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v77, 0
	scratch_store_b32 off, v219, off offset:376 ; 4-byte Folded Spill
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v243, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v111, 0
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_mov_b32_e32 v162, 0
	v_mov_b32_e32 v136, 0
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v80, 0
	s_max_i32 s2, s3, 1
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_lshl_b32 s41, s23, 2
	s_lshl_b32 s43, s2, 6
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s38, s6
	s_mov_b32 s39, s7
	s_clause 0x6                            ; 28-byte Folded Spill
	scratch_store_b32 off, v125, off offset:372
	scratch_store_b32 off, v0, off offset:12
	scratch_store_b32 off, v13, off offset:284
	scratch_store_b32 off, v14, off offset:288
	scratch_store_b32 off, v16, off offset:292
	scratch_store_b32 off, v22, off offset:296
	scratch_store_b32 off, v23, off offset:300
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:332
	scratch_load_b32 v1, off, off offset:304
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_add_i32 s13, s44, s12
	s_clause 0x1b                           ; 112-byte Folded Spill
	scratch_store_b32 off, v109, off offset:80
	scratch_store_b32 off, v244, off offset:148
	scratch_store_b32 off, v29, off offset:68
	scratch_store_b32 off, v28, off offset:64
	scratch_store_b32 off, v27, off offset:60
	scratch_store_b32 off, v178, off offset:144
	scratch_store_b32 off, v243, off offset:140
	scratch_store_b32 off, v176, off offset:136
	scratch_store_b32 off, v236, off offset:132
	scratch_store_b32 off, v167, off offset:128
	scratch_store_b32 off, v234, off offset:124
	scratch_store_b32 off, v231, off offset:120
	scratch_store_b32 off, v174, off offset:116
	scratch_store_b32 off, v141, off offset:112
	scratch_store_b32 off, v194, off offset:108
	scratch_store_b32 off, v255, off offset:76
	scratch_store_b32 off, v74, off offset:104
	scratch_store_b32 off, v38, off offset:44
	scratch_store_b32 off, v37, off offset:40
	scratch_store_b32 off, v39, off offset:48
	scratch_store_b32 off, v40, off offset:52
	scratch_store_b32 off, v41, off offset:56
	scratch_store_b32 off, v136, off offset:100
	scratch_store_b32 off, v162, off offset:96
	scratch_store_b32 off, v161, off offset:92
	scratch_store_b32 off, v98, off offset:88
	scratch_store_b32 off, v143, off offset:84
	scratch_store_b32 off, v36, off offset:36
	v_dual_mov_b32 v178, v75 :: v_dual_mov_b32 v157, v206
	v_mov_b32_e32 v149, v232
	v_mov_b32_e32 v93, v195
	v_mov_b32_e32 v195, v58
	v_dual_mov_b32 v241, v240 :: v_dual_mov_b32 v240, v239
	v_dual_mov_b32 v239, v238 :: v_dual_mov_b32 v238, v237
	v_dual_mov_b32 v237, v235 :: v_dual_mov_b32 v98, v65
	v_mov_b32_e32 v235, v105
	v_mov_b32_e32 v105, v61
	v_dual_mov_b32 v109, v66 :: v_dual_mov_b32 v158, v87
	v_dual_mov_b32 v91, v233 :: v_dual_mov_b32 v122, v78
	v_mov_b32_e32 v11, v242
	v_dual_mov_b32 v233, v99 :: v_dual_mov_b32 v156, v82
	v_dual_mov_b32 v33, v102 :: v_dual_mov_b32 v100, v85
	v_dual_mov_b32 v102, v81 :: v_dual_mov_b32 v119, v171
	v_dual_mov_b32 v171, v83 :: v_dual_mov_b32 v130, v150
	v_dual_mov_b32 v129, v106 :: v_dual_mov_b32 v152, v95
	v_dual_mov_b32 v141, v97 :: v_dual_mov_b32 v242, v132
	v_mov_b32_e32 v121, v112
	v_mov_b32_e32 v167, v92
	v_mov_b32_e32 v92, v196
	v_mov_b32_e32 v196, v59
	v_mov_b32_e32 v138, v86
	v_mov_b32_e32 v106, v134
	v_mov_b32_e32 v104, v77
	v_mov_b32_e32 v194, v193
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s12, v0
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_waitcnt vmcnt(0)
	v_cmp_lt_i32_e64 s2, s13, v1
	.loc	1 156 26 is_stmt 0              ; generate_amdgcn.py:156:26
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 162 26 is_stmt 1              ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	s_clause 0x5                            ; 48-byte Folded Reload
	scratch_load_b32 v10, off, off offset:292
	scratch_load_b32 v90, off, off offset:288
	scratch_load_b32 v103, off, off offset:284
	scratch_load_b32 v12, off, off offset:4
	scratch_load_b128 v[2:5], off, off offset:336
	scratch_load_b128 v[6:9], off, off offset:352
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[107:108], v64 offset:16384
	s_waitcnt vmcnt(3)
	ds_load_b64 v[31:32], v103 offset:16384
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[52:55], v64 offset1:2
	ds_load_2addr_stride64_b64 v[13:16], v10 offset1:2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[29:30], v90 offset:16384
	ds_load_b64 v[27:28], v10 offset:16384
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[17:20], v90 offset1:2
	ds_load_2addr_stride64_b64 v[21:24], v103 offset1:2
	ds_load_2addr_stride64_b64 v[38:41], v72 offset1:2
	ds_load_2addr_stride64_b64 v[144:147], v94 offset1:2
	ds_load_2addr_stride64_b64 v[179:182], v99 offset1:2
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[219:222], v64 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[243:246], v10 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[247:250], v90 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[251:254], v103 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[125:128], v73 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[42:45], v72 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[46:49], v94 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[58:61], v10 offset0:20 offset1:22
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt vmcnt(0) lgkmcnt(16)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[52:53], v[107:108], v[2:9] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[50:53], v99 offset0:16 offset1:18
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(14)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[13:14], v[27:28], v[159:166] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(13)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[17:18], v[29:30], v[159:166] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[21:22], v[31:32], v[159:166] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[25:26], v73 offset:16384
	ds_load_b64 v[13:14], v72 offset:16384
	ds_load_b64 v[17:18], v94 offset:16384
	ds_load_b64 v[21:22], v99 offset:16384
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[34:37], v73 offset1:2
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[34:35], v[25:26], v[159:166] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[38:39], v[13:14], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[144:145], v[17:18], v[159:166] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[179:180], v[21:22], v[159:166] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v1, v159
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v177, v162
	v_cvt_f32_i32_e32 v173, v163
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v172, v164
	v_cvt_f32_i32_e32 v176, v165
	scratch_store_b32 off, v1, off offset:276 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v160
	v_cvt_f32_i32_e32 v174, v166
	scratch_store_b32 off, v1, off offset:272 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v161
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[159:166], v[219:220], v[107:108], v[2:9] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_store_b32 off, v1, off offset:280 ; 4-byte Folded Spill
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[159:166], v[243:244], v[27:28], v[159:166] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[247:248], v[29:30], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[251:252], v[31:32], v[159:166] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[125:126], v[25:26], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[42:43], v[13:14], v[159:166] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[46:47], v[17:18], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[50:51], v[21:22], v[159:166] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v1, v159
	scratch_store_b32 off, v1, off offset:184 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v160
	scratch_store_b32 off, v1, off offset:180 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v161
	scratch_store_b32 off, v1, off offset:172 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v162
	scratch_store_b32 off, v1, off offset:164 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v163
	scratch_store_b32 off, v1, off offset:160 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v164
	scratch_store_b32 off, v1, off offset:156 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v165
	scratch_store_b32 off, v1, off offset:176 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v166
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[159:166], v[54:55], v[107:108], v[2:9] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[54:57], v64 offset0:20 offset1:22
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	scratch_store_b32 off, v1, off offset:168 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[159:166], v[15:16], v[27:28], v[159:166] neg_lo:[1,1,0]
	v_dual_mov_b32 v16, v67 :: v_dual_mov_b32 v15, v69
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[66:69], v103 offset0:20 offset1:22
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[159:166], v[19:20], v[29:30], v[159:166] neg_lo:[1,1,0]
	v_dual_mov_b32 v19, v76 :: v_dual_mov_b32 v20, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[23:24], v[31:32], v[159:166] neg_lo:[1,1,0]
	v_dual_mov_b32 v23, v62 :: v_dual_mov_b32 v24, v101
	v_mov_b32_e32 v101, v84
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[82:85], v233 offset0:20 offset1:22
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[159:166], v[36:37], v[25:26], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[40:41], v[13:14], v[159:166] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[34:37], v64 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[38:41], v10 offset0:4 offset1:6
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[62:65], v90 offset0:20 offset1:22
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[159:166], v[146:147], v[17:18], v[159:166] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[181:182], v[21:22], v[159:166] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[179:182], v94 offset0:4 offset1:6
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v168, v159
	v_cvt_f32_i32_e32 v170, v160
	v_cvt_f32_i32_e32 v198, v161
	v_cvt_f32_i32_e32 v197, v162
	v_cvt_f32_i32_e32 v204, v163
	v_cvt_f32_i32_e32 v203, v164
	v_cvt_f32_i32_e32 v206, v165
	v_cvt_f32_i32_e32 v155, v166
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[159:166], v[221:222], v[107:108], v[2:9] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[219:222], v99 offset0:4 offset1:6
	v_mov_b32_e32 v99, v80
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[159:166], v[245:246], v[27:28], v[159:166] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[249:250], v[29:30], v[159:166] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[56:57], v[107:108], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[253:254], v[31:32], v[159:166] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[60:61], v[27:28], v[245:252] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[127:128], v[25:26], v[159:166] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[125:128], v72 offset0:4 offset1:6
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[64:65], v[29:30], v[245:252] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[44:45], v[13:14], v[159:166] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[42:45], v90 offset0:4 offset1:6
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[245:252], v[68:69], v[31:32], v[245:252] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[48:49], v[17:18], v[159:166] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[46:49], v103 offset0:4 offset1:6
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[159:166], v[52:53], v[21:22], v[159:166] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[50:53], v73 offset0:4 offset1:6
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v1, v159
	scratch_store_b32 off, v1, off offset:216 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v160
	scratch_store_b32 off, v1, off offset:212 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v161
	scratch_store_b32 off, v1, off offset:204 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v162
	scratch_store_b32 off, v1, off offset:196 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v163
	scratch_store_b32 off, v1, off offset:192 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v164
	scratch_store_b32 off, v1, off offset:188 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v165
	scratch_store_b32 off, v1, off offset:208 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v166
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[159:166], v[34:35], v[107:108], v[2:9] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	scratch_store_b32 off, v1, off offset:200 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, v71
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[70:73], v12 offset0:20 offset1:22
	scratch_load_b32 v12, off, off          ; 4-byte Folded Reload
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[159:166], v[38:39], v[27:28], v[159:166] neg_lo:[1,1,0]
	v_mov_b32_e32 v139, v115
	v_mov_b32_e32 v115, v187
	v_mov_b32_e32 v187, v213
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[42:43], v[29:30], v[159:166] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[46:47], v[31:32], v[159:166] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[50:51], v[25:26], v[159:166] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[72:73], v[25:26], v[245:252] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[159:166], v[125:126], v[13:14], v[159:166] neg_lo:[1,1,0]
	v_mov_b32_e32 v126, v79
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[78:81], v94 offset0:20 offset1:22
	v_mov_b32_e32 v125, v88
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[159:166], v[179:180], v[17:18], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[219:220], v[21:22], v[159:166] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v151, v159
	v_cvt_f32_i32_e32 v153, v160
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v232, v161
	v_cvt_f32_i32_e32 v231, v162
	v_cvt_f32_i32_e32 v236, v163
	v_cvt_f32_i32_e32 v234, v164
	v_cvt_f32_i32_e32 v244, v165
	v_cvt_f32_i32_e32 v243, v166
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[159:166], v[54:55], v[107:108], v[2:9] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[58:59], v[27:28], v[159:166] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[58:61], v94 offset0:8 offset1:10
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[159:166], v[62:63], v[29:30], v[159:166] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[62:65], v233 offset0:8 offset1:10
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[159:166], v[66:67], v[31:32], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[70:71], v[25:26], v[159:166] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[74:77], v12 offset0:20 offset1:22
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	scratch_load_b32 v12, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[74:75], v[13:14], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[245:252], v[76:77], v[13:14], v[245:252] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[74:77], v90 offset0:24 offset1:26
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[159:166], v[78:79], v[17:18], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[245:252], v[80:81], v[17:18], v[245:252] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[78:81], v103 offset0:24 offset1:26
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[159:166], v[82:83], v[21:22], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[245:252], v[84:85], v[21:22], v[245:252] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v159
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v160
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v161
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v162
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v163
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v164
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v165
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v166
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[159:166], v[36:37], v[107:108], v[2:9] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[159:166], v[40:41], v[27:28], v[159:166] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v247
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[34:37], v12 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[38:41], v10 offset0:8 offset1:10
	scratch_load_b32 v12, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[159:166], v[44:45], v[29:30], v[159:166] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v248
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[42:45], v90 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[159:166], v[48:49], v[31:32], v[159:166] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[46:49], v103 offset0:8 offset1:10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v249
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[159:166], v[52:53], v[25:26], v[159:166] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v250
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[159:166], v[127:128], v[13:14], v[159:166] neg_lo:[1,1,0]
	v_mov_b32_e32 v128, v118
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[159:166], v[181:182], v[17:18], v[159:166] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v252
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[159:166], v[221:222], v[21:22], v[159:166] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, v1
	scratch_load_b32 v1, off, off offset:72 ; 4-byte Folded Reload
	v_mov_b32_e32 v127, v96
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v146, v164
	v_cvt_f32_i32_e32 v143, v165
	v_cvt_f32_i32_e32 v144, v166
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v166, v245
	v_cvt_f32_i32_e32 v165, v246
	v_cvt_f32_i32_e32 v164, v251
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[34:35], v[107:108], v[2:9] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	scratch_load_b32 v34, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v255, v162
	v_mov_b32_e32 v162, v142
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[38:39], v[27:28], v[245:252] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v147, v161
	v_mov_b32_e32 v161, v89
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[86:89], v94 offset0:24 offset1:26
	ds_load_2addr_stride64_b64 v[94:97], v233 offset0:24 offset1:26
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[42:43], v[29:30], v[245:252] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v253, v160
	v_cvt_f32_i32_e32 v145, v163
	v_mov_b32_e32 v163, v133
	v_mov_b32_e32 v133, v114
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[46:47], v[31:32], v[245:252] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v254, v159
	v_dual_mov_b32 v159, v148 :: v_dual_mov_b32 v148, v209
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(2)
	ds_load_2addr_stride64_b64 v[50:53], v12 offset0:8 offset1:10
	scratch_load_b32 v12, off, off          ; 4-byte Folded Reload
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[50:51], v[25:26], v[245:252] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[54:57], v12 offset0:8 offset1:10
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	scratch_load_b32 v12, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[66:69], v12 offset0:24 offset1:26
	ds_load_2addr_stride64_b64 v[70:73], v10 offset0:24 offset1:26
	scratch_load_b32 v12, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[54:55], v[13:14], v[245:252] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[58:59], v[17:18], v[245:252] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[245:252], v[62:63], v[21:22], v[245:252] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v140, v245
	v_cvt_f32_i32_e32 v142, v246
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v136, v247
	v_cvt_f32_i32_e32 v137, v248
	v_cvt_f32_i32_e32 v150, v249
	v_cvt_f32_i32_e32 v120, v250
	v_cvt_f32_i32_e32 v132, v251
	v_cvt_f32_i32_e32 v134, v252
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[66:67], v[107:108], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[70:71], v[27:28], v[245:252] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[245:252], v[74:75], v[29:30], v[245:252] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[78:79], v[31:32], v[245:252] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[82:85], v12 offset0:24 offset1:26
	scratch_load_b32 v12, off, off          ; 4-byte Folded Reload
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[82:83], v[25:26], v[245:252] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[219:222], v12 offset0:24 offset1:26
	v_mov_b32_e32 v12, v113
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[219:220], v[13:14], v[245:252] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[86:87], v[17:18], v[245:252] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[245:252], v[94:95], v[21:22], v[245:252] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v160, v245
	v_cvt_f32_i32_e32 v185, v246
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v183, v247
	v_cvt_f32_i32_e32 v181, v248
	v_cvt_f32_i32_e32 v180, v249
	v_cvt_f32_i32_e32 v179, v250
	v_cvt_f32_i32_e32 v184, v251
	v_cvt_f32_i32_e32 v182, v252
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[245:252], v[36:37], v[107:108], v[2:9] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[40:41], v[27:28], v[245:252] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[245:252], v[44:45], v[29:30], v[245:252] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[40:43], v34 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[44:47], v10 offset0:12 offset1:14
	scratch_load_b32 v34, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[245:252], v[48:49], v[31:32], v[245:252] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[48:51], v90 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[245:252], v[52:53], v[25:26], v[245:252] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[52:55], v103 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[245:252], v[56:57], v[13:14], v[245:252] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[60:61], v[17:18], v[245:252] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[245:252], v[64:65], v[21:22], v[245:252] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[64:67], v1 offset0:12 offset1:14
	v_mov_b32_e32 v1, v233
	v_mov_b32_e32 v233, v91
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v193, v245
	v_cvt_f32_i32_e32 v117, v246
	v_cvt_f32_i32_e32 v118, v247
	v_cvt_f32_i32_e32 v135, v248
	v_cvt_f32_i32_e32 v123, v249
	v_cvt_f32_i32_e32 v112, v250
	v_cvt_f32_i32_e32 v113, v251
	v_cvt_f32_i32_e32 v114, v252
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[245:252], v[68:69], v[107:108], v[2:9] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[68:71], v1 offset0:12 offset1:14
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[245:252], v[72:73], v[27:28], v[245:252] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[76:77], v[29:30], v[245:252] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[245:252], v[80:81], v[31:32], v[245:252] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[80:83], v90 offset0:28 offset1:30
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[245:252], v[84:85], v[25:26], v[245:252] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[84:87], v103 offset0:28 offset1:30
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[245:252], v[221:222], v[13:14], v[245:252] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[88:89], v[17:18], v[245:252] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[245:252], v[96:97], v[21:22], v[245:252] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v222, v245
	v_cvt_f32_i32_e32 v221, v246
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v219, v247
	v_cvt_f32_i32_e32 v213, v248
	v_cvt_f32_i32_e32 v154, v249
	v_cvt_f32_i32_e32 v209, v250
	v_cvt_f32_i32_e32 v220, v251
	v_cvt_f32_i32_e32 v214, v252
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[40:41], v[107:108], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[44:45], v[27:28], v[245:252] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[48:49], v[29:30], v[245:252] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[52:53], v[31:32], v[245:252] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[56:59], v34 offset0:12 offset1:14
	scratch_load_b32 v34, off, off          ; 4-byte Folded Reload
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[56:57], v[25:26], v[245:252] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[60:63], v34 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[60:61], v[13:14], v[245:252] neg_lo:[1,1,0]
	v_dual_mov_b32 v60, v111 :: v_dual_mov_b32 v111, v100
	v_mov_b32_e32 v61, v105
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[64:65], v[17:18], v[245:252] neg_lo:[1,1,0]
	scratch_load_b32 v64, off, off offset:8 ; 4-byte Folded Reload
	v_mov_b32_e32 v65, v98
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[72:75], v64 offset0:28 offset1:30
	ds_load_2addr_stride64_b64 v[76:79], v10 offset0:28 offset1:30
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[245:252], v[68:69], v[21:22], v[245:252] neg_lo:[1,1,0]
	v_mov_b32_e32 v68, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v44, v245
	v_cvt_f32_i32_e32 v45, v246
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v48, v247
	v_cvt_f32_i32_e32 v49, v248
	v_cvt_f32_i32_e32 v52, v249
	v_cvt_f32_i32_e32 v53, v250
	v_cvt_f32_i32_e32 v56, v251
	v_cvt_f32_i32_e32 v57, v252
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[72:73], v[107:108], v[2:9] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v73, off, off offset:4
	scratch_load_b32 v72, off, off
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[76:77], v[27:28], v[34:41] neg_lo:[1,1,0]
	v_dual_mov_b32 v77, v104 :: v_dual_mov_b32 v76, v19
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[80:81], v[29:30], v[34:41] neg_lo:[1,1,0]
	v_mov_b32_e32 v81, v102
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[102:105], v1 offset0:28 offset1:30
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[34:41], v[84:85], v[31:32], v[34:41] neg_lo:[1,1,0]
	v_dual_mov_b32 v84, v101 :: v_dual_mov_b32 v69, v15
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v85, off, off offset:32
	scratch_load_b32 v80, off, off offset:24
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	s_waitcnt vmcnt(3)
	ds_load_2addr_stride64_b64 v[94:97], v73 offset0:28 offset1:30
	s_waitcnt vmcnt(2)
	ds_load_2addr_stride64_b64 v[88:91], v72 offset0:28 offset1:30
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[94:95], v[25:26], v[34:41] neg_lo:[1,1,0]
	scratch_load_b32 v94, off, off offset:72 ; 4-byte Folded Reload
	v_mov_b32_e32 v95, v152
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[88:89], v[13:14], v[34:41] neg_lo:[1,1,0]
	v_mov_b32_e32 v89, v161
	scratch_load_b32 v161, off, off offset:92 ; 4-byte Folded Reload
	v_mov_b32_e32 v88, v125
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	s_waitcnt vmcnt(1)
	ds_load_2addr_stride64_b64 v[98:101], v94 offset0:28 offset1:30
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[98:99], v[17:18], v[34:41] neg_lo:[1,1,0]
	scratch_load_b32 v98, off, off offset:88 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[34:41], v[102:103], v[21:22], v[34:41] neg_lo:[1,1,0]
	v_mov_b32_e32 v102, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v252, v34
	v_cvt_f32_i32_e32 v251, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v249, v36
	v_cvt_f32_i32_e32 v247, v37
	v_cvt_f32_i32_e32 v246, v38
	v_cvt_f32_i32_e32 v245, v39
	v_cvt_f32_i32_e32 v250, v40
	v_cvt_f32_i32_e32 v248, v41
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[107:108], v[2:9] neg_lo:[1,1,0]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v10, v102, s[28:31], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v102, 2, v102
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[34:41], v[46:47], v[27:28], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[50:51], v[29:30], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[34:41], v[54:55], v[31:32], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[58:59], v[25:26], v[34:41] neg_lo:[1,1,0]
	v_mov_b32_e32 v58, v195
	v_wmma_i32_16x16x16_iu4 v[34:41], v[62:63], v[13:14], v[34:41] neg_lo:[1,1,0]
	v_mov_b32_e32 v62, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[66:67], v[17:18], v[34:41] neg_lo:[1,1,0]
	v_mov_b32_e32 v66, v109
	scratch_load_b32 v109, off, off offset:80 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[34:41], v[70:71], v[21:22], v[34:41] neg_lo:[1,1,0]
	v_mov_b32_e32 v70, v12
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v42, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v43, v35
	v_cvt_f32_i32_e32 v46, v36
	v_cvt_f32_i32_e32 v47, v37
	v_cvt_f32_i32_e32 v50, v38
	v_cvt_f32_i32_e32 v51, v39
	v_cvt_f32_i32_e32 v54, v40
	v_cvt_f32_i32_e32 v55, v41
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[34:41], v[74:75], v[107:108], v[2:9] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v2, off, off offset:276 ; 4-byte Folded Reload
	v_mov_b32_e32 v8, v133
	scratch_load_b32 v74, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[34:41], v[78:79], v[27:28], v[34:41] neg_lo:[1,1,0]
	v_dual_mov_b32 v78, v122 :: v_dual_mov_b32 v99, v1
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v1, off, off offset:312
	scratch_load_b32 v7, off, off offset:28
	scratch_load_b32 v6, off, off offset:20
	v_wmma_i32_16x16x16_iu4 v[34:41], v[82:83], v[29:30], v[34:41] neg_lo:[1,1,0]
	v_mov_b32_e32 v82, v156
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v4, off, off offset:16
	scratch_load_b32 v5, off, off offset:12
	v_wmma_i32_16x16x16_iu4 v[34:41], v[86:87], v[31:32], v[34:41] neg_lo:[1,1,0]
	v_mov_b32_e32 v86, v138
	v_mov_b32_e32 v87, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[96:97], v[25:26], v[34:41] neg_lo:[1,1,0]
	v_mov_b32_e32 v96, v127
	v_wmma_i32_16x16x16_iu4 v[34:41], v[90:91], v[13:14], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[100:101], v[17:18], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[34:41], v[104:105], v[21:22], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v21, v36
	v_cvt_f32_i32_e32 v22, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v25, v35
	v_cvt_f32_i32_e32 v17, v37
	scratch_load_b32 v37, off, off offset:40 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v13, v38
	scratch_load_b32 v38, off, off offset:44 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v14, v39
	scratch_load_b32 v39, off, off offset:48 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v18, v40
	scratch_load_b32 v40, off, off offset:52 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v9, v41
	scratch_load_b32 v41, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(13)
	v_dual_mov_b32 v59, v196 :: v_dual_lshlrev_b32 v10, 16, v10
	v_mov_b32_e32 v83, v171
	v_mov_b32_e32 v171, v119
	v_mov_b32_e32 v105, v235
	v_mov_b32_e32 v235, v237
	v_dual_mov_b32 v237, v238 :: v_dual_mov_b32 v238, v239
	v_mov_b32_e32 v239, v240
	v_mov_b32_e32 v196, v92
	v_mov_b32_e32 v92, v167
	v_mov_b32_e32 v240, v241
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(11)
	v_mul_f32_e32 v36, v10, v2
	scratch_load_b32 v2, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(10)
	v_dual_mov_b32 v195, v93 :: v_dual_add_nc_u32 v26, s42, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v27, v26, s[36:39], 0 offen
	buffer_load_u16 v28, v26, s[36:39], 0 offen offset:4
	buffer_load_u16 v29, v26, s[36:39], 0 offen offset:8
	buffer_load_u16 v30, v26, s[36:39], 0 offen offset:12
	buffer_load_u16 v31, v26, s[36:39], 0 offen offset:16
	buffer_load_u16 v32, v26, s[36:39], 0 offen offset:20
	buffer_load_u16 v34, v26, s[36:39], 0 offen offset:24
	buffer_load_u16 v35, v26, s[36:39], 0 offen offset:28
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s42, s42, s41
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v27, 16, v27
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v69, v36, v27
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v27, 16, v28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v28, v10, v2
	scratch_load_b32 v2, off, off offset:280 ; 4-byte Folded Reload
	v_dual_mov_b32 v67, v16 :: v_dual_mul_f32 v36, v10, v168
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v129, v28, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v28, v10, v2 :: v_dual_lshlrev_b32 v27, 16, v29
	v_dual_mov_b32 v15, v106 :: v_dual_mov_b32 v2, v187
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v24, v28, v27 :: v_dual_lshlrev_b32 v27, 16, v30
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v28, v10, v177 :: v_dual_mov_b32 v101, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v67, v28, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v28, v10, v173 :: v_dual_lshlrev_b32 v27, 16, v31
	v_dual_mov_b32 v33, v194 :: v_dual_fmac_f32 v76, v28, v27
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v27, 16, v32
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v28, v10, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v79, v126 :: v_dual_fmac_f32 v66, v28, v27
	v_dual_mul_f32 v28, v10, v176 :: v_dual_lshlrev_b32 v27, 16, v34
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v227, v28, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v28, v10, v174 :: v_dual_lshlrev_b32 v27, 16, v35
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v229, v28, v27
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v27, v26, s[36:39], 0 offen offset:32
	buffer_load_u16 v28, v26, s[36:39], 0 offen offset:36
	buffer_load_u16 v29, v26, s[36:39], 0 offen offset:40
	buffer_load_u16 v30, v26, s[36:39], 0 offen offset:44
	buffer_load_u16 v31, v26, s[36:39], 0 offen offset:48
	buffer_load_u16 v32, v26, s[36:39], 0 offen offset:52
	buffer_load_u16 v34, v26, s[36:39], 0 offen offset:56
	buffer_load_u16 v35, v26, s[36:39], 0 offen offset:60
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v27, 16, v27
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v225, v36, v27
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v27, 16, v28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v28, v10, v170
	v_mov_b32_e32 v75, v178
	v_mul_f32_e32 v36, v10, v151
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v226, v28, v27 :: v_dual_lshlrev_b32 v27, 16, v29
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v28, v10, v198
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v217, v28, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v28, v10, v197 :: v_dual_lshlrev_b32 v27, 16, v30
	v_dual_mov_b32 v63, v20 :: v_dual_mov_b32 v106, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v224, v28, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v28, v10, v204 :: v_dual_lshlrev_b32 v27, 16, v31
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v218, v28, v27 :: v_dual_lshlrev_b32 v27, 16, v32
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v28, v10, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v223, v28, v27
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v27, 16, v34
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v28, v10, v206
	v_dual_mov_b32 v206, v157 :: v_dual_fmac_f32 v215, v28, v27
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v35
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v28, v10, v155
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v216, v28, v27
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v27, v26, s[36:39], 0 offen offset:64
	buffer_load_u16 v28, v26, s[36:39], 0 offen offset:68
	buffer_load_u16 v29, v26, s[36:39], 0 offen offset:72
	buffer_load_u16 v30, v26, s[36:39], 0 offen offset:76
	buffer_load_u16 v31, v26, s[36:39], 0 offen offset:80
	buffer_load_u16 v32, v26, s[36:39], 0 offen offset:84
	buffer_load_u16 v34, v26, s[36:39], 0 offen offset:88
	buffer_load_u16 v35, v26, s[36:39], 0 offen offset:92
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v210, v36, v27 :: v_dual_lshlrev_b32 v27, 16, v28
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v28, v10, v153
	v_mul_f32_e32 v36, v10, v254
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v212, v28, v27 :: v_dual_lshlrev_b32 v27, 16, v29
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v28, v10, v232
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v232, v149 :: v_dual_fmac_f32 v63, v28, v27
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v28, v10, v231 :: v_dual_lshlrev_b32 v27, 16, v30
	scratch_load_b32 v231, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v208, v28, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v28, v10, v236 :: v_dual_lshlrev_b32 v27, 16, v31
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v202, v28, v27 :: v_dual_lshlrev_b32 v27, 16, v32
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v28, v10, v234
	scratch_load_b32 v234, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v207, v28, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v28, v10, v244 :: v_dual_lshlrev_b32 v27, 16, v34
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v244, off, off offset:148
	scratch_load_b32 v178, off, off offset:144
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v0, v28, v27
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v27, 16, v35
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v28, v10, v243
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v243, off, off offset:140
	scratch_load_b32 v176, off, off offset:136
	scratch_load_b32 v236, off, off offset:132
	scratch_load_b32 v167, off, off offset:128
	scratch_load_b32 v174, off, off offset:116
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v62, v28, v27
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v27, v26, s[36:39], 0 offen offset:96
	buffer_load_u16 v28, v26, s[36:39], 0 offen offset:100
	buffer_load_u16 v29, v26, s[36:39], 0 offen offset:104
	buffer_load_u16 v30, v26, s[36:39], 0 offen offset:108
	buffer_load_u16 v31, v26, s[36:39], 0 offen offset:112
	buffer_load_u16 v32, v26, s[36:39], 0 offen offset:116
	buffer_load_u16 v34, v26, s[36:39], 0 offen offset:120
	buffer_load_u16 v35, v26, s[36:39], 0 offen offset:124
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v27, 16, v27
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v61, v36, v27
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v27, 16, v28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v28, v10, v253 :: v_dual_mov_b32 v71, v0
	v_mul_f32_e32 v0, v10, v146
	scratch_load_b32 v36, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v59, v28, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v28, v10, v147 :: v_dual_lshlrev_b32 v27, 16, v29
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v39, v28, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v28, v10, v255 :: v_dual_lshlrev_b32 v27, 16, v30
	scratch_load_b32 v255, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v58, v28, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v28, v10, v145 :: v_dual_lshlrev_b32 v27, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v41, v28, v27
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v27, 16, v32
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v40, v0, v27
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v27, v10, v143 :: v_dual_lshlrev_b32 v0, 16, v34
	scratch_load_b32 v143, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v37, v27, v0 :: v_dual_lshlrev_b32 v0, 16, v35
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v27, v10, v144
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v38, v27, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v0, v26, s[36:39], 0 offen offset:128
	buffer_load_u16 v27, v26, s[36:39], 0 offen offset:132
	buffer_load_u16 v28, v26, s[36:39], 0 offen offset:136
	buffer_load_u16 v29, v26, s[36:39], 0 offen offset:140
	buffer_load_u16 v30, v26, s[36:39], 0 offen offset:144
	buffer_load_u16 v31, v26, s[36:39], 0 offen offset:148
	buffer_load_u16 v32, v26, s[36:39], 0 offen offset:152
	buffer_load_u16 v34, v26, s[36:39], 0 offen offset:156
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v35, v10, v140
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v36, v35, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v0, 16, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v27, v10, v142
	v_mov_b32_e32 v142, v162
	scratch_load_b32 v162, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v244, v27, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v0, 16, v28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v27, v10, v136
	scratch_load_b32 v136, off, off offset:100 ; 4-byte Folded Reload
	v_dual_mul_f32 v35, v10, v193 :: v_dual_fmac_f32 v116, v27, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v0, 16, v29
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v27, v10, v137
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v243, v27, v0 :: v_dual_lshlrev_b32 v0, 16, v30
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v27, v10, v150
	v_dual_mov_b32 v150, v130 :: v_dual_fmac_f32 v65, v27, v0
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v27, v10, v120 :: v_dual_lshlrev_b32 v0, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v233, v27, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v0, 16, v32
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v27, v10, v132
	v_dual_mov_b32 v132, v242 :: v_dual_fmac_f32 v95, v27, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v0, 16, v34
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v27, v10, v134
	v_mov_b32_e32 v97, v141
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v141, off, off offset:112
	scratch_load_b32 v194, off, off offset:108
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v86, v27, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v0, v26, s[36:39], 0 offen offset:160
	buffer_load_u16 v27, v26, s[36:39], 0 offen offset:164
	buffer_load_u16 v28, v26, s[36:39], 0 offen offset:168
	buffer_load_u16 v29, v26, s[36:39], 0 offen offset:172
	buffer_load_u16 v30, v26, s[36:39], 0 offen offset:176
	buffer_load_u16 v31, v26, s[36:39], 0 offen offset:180
	buffer_load_u16 v32, v26, s[36:39], 0 offen offset:184
	buffer_load_u16 v34, v26, s[36:39], 0 offen offset:188
	s_waitcnt vmcnt(7)
	v_dual_mov_b32 v133, v163 :: v_dual_lshlrev_b32 v0, 16, v0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v89, v35, v0 :: v_dual_lshlrev_b32 v0, 16, v27
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v27, v10, v117
	v_mul_f32_e32 v35, v10, v44
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v87, v27, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v27, v10, v118 :: v_dual_lshlrev_b32 v0, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v110, v27, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v27, v10, v135 :: v_dual_lshlrev_b32 v0, 16, v29
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v74, v27, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v27, v10, v123 :: v_dual_lshlrev_b32 v0, 16, v30
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v139, v27, v0 :: v_dual_lshlrev_b32 v0, 16, v31
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v27, v10, v112
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v121, v27, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v27, v10, v113 :: v_dual_lshlrev_b32 v0, 16, v32
	v_dual_mov_b32 v3, v148 :: v_dual_mov_b32 v148, v159
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v128, v27, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v34
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v27, v10, v114
	v_dual_mov_b32 v187, v115 :: v_dual_mov_b32 v118, v128
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v8, v27, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v0, v26, s[36:39], 0 offen offset:192
	buffer_load_u16 v27, v26, s[36:39], 0 offen offset:196
	buffer_load_u16 v28, v26, s[36:39], 0 offen offset:200
	buffer_load_u16 v29, v26, s[36:39], 0 offen offset:204
	buffer_load_u16 v30, v26, s[36:39], 0 offen offset:208
	buffer_load_u16 v31, v26, s[36:39], 0 offen offset:212
	buffer_load_u16 v32, v26, s[36:39], 0 offen offset:216
	buffer_load_u16 v34, v26, s[36:39], 0 offen offset:220
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v79, v35, v0 :: v_dual_lshlrev_b32 v0, 16, v27
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v27, v10, v45 :: v_dual_mov_b32 v114, v8
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v124, v27, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v0, 16, v28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v27, v10, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v6, v27, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v0, 16, v29
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v27, v10, v49
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v85, v27, v0 :: v_dual_lshlrev_b32 v0, 16, v30
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v27, v10, v52
	v_mov_b32_e32 v115, v139
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v7, v27, v0 :: v_dual_lshlrev_b32 v0, 16, v31
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v27, v10, v53
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v80, v27, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v32
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v27, v10, v56
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v111, v27, v0 :: v_dual_lshlrev_b32 v0, 16, v34
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v27, v10, v57
	v_mul_f32_e32 v34, v10, v42
	scratch_store_b32 off, v80, off offset:24 ; 4-byte Folded Spill
	v_mov_b32_e32 v112, v121
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v84, v27, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v0, v26, s[36:39], 0 offen offset:224
	buffer_load_u16 v27, v26, s[36:39], 0 offen offset:228
	buffer_load_u16 v28, v26, s[36:39], 0 offen offset:232
	buffer_load_u16 v29, v26, s[36:39], 0 offen offset:236
	buffer_load_u16 v30, v26, s[36:39], 0 offen offset:240
	buffer_load_u16 v31, v26, s[36:39], 0 offen offset:244
	buffer_load_u16 v32, v26, s[36:39], 0 offen offset:248
	buffer_load_u16 v26, v26, s[36:39], 0 offen offset:252
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v171, v34, v0 :: v_dual_lshlrev_b32 v0, 16, v27
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v27, v10, v43
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v15, v27, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v27, v10, v46 :: v_dual_lshlrev_b32 v0, 16, v28
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v5, v27, v0 :: v_dual_lshlrev_b32 v0, 16, v29
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v27, v10, v47
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v68, v27, v0 :: v_dual_mul_f32 v27, v10, v50
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v0, 16, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v80, v68
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v4, v27, v0 :: v_dual_mul_f32 v27, v10, v51
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v0, 16, v31
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v5, off offset:12
	scratch_store_b32 off, v6, off offset:20
	scratch_store_b32 off, v85, off offset:32
	scratch_store_b32 off, v7, off offset:28
	scratch_store_b32 off, v4, off offset:16
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v81, v27, v0
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v27, v10, v54 :: v_dual_lshlrev_b32 v0, 16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v60, v27, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v26
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v26, v10, v55 :: v_dual_mov_b32 v85, v111
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v77, v26, v0 :: v_dual_add_nc_u32 v0, s40, v1
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	scratch_load_b32 v1, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x7
	buffer_load_u16 v26, v0, s[36:39], 0 offen
	buffer_load_u16 v27, v0, s[36:39], 0 offen offset:4
	buffer_load_u16 v28, v0, s[36:39], 0 offen offset:8
	buffer_load_u16 v29, v0, s[36:39], 0 offen offset:12
	buffer_load_u16 v30, v0, s[36:39], 0 offen offset:16
	buffer_load_u16 v31, v0, s[36:39], 0 offen offset:20
	buffer_load_u16 v32, v0, s[36:39], 0 offen offset:24
	buffer_load_u16 v34, v0, s[36:39], 0 offen offset:28
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s40, s40, s41
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v35, v10, v1 :: v_dual_lshlrev_b32 v26, 16, v26
	scratch_load_b32 v1, off, off offset:180 ; 4-byte Folded Reload
	v_dual_mov_b32 v111, v60 :: v_dual_fmac_f32 v232, v35, v26
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v26, 16, v27
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v134, v15 :: v_dual_mul_f32 v27, v10, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_load_b32 v1, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v230, v27, v26
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v27, v10, v1 :: v_dual_lshlrev_b32 v26, 16, v28
	scratch_load_b32 v1, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v174, v27, v26
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v26, 16, v29
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v27, v10, v1
	scratch_load_b32 v1, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v190, v27, v26
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v27, v10, v1 :: v_dual_lshlrev_b32 v26, 16, v30
	scratch_load_b32 v1, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v167, v27, v26 :: v_dual_lshlrev_b32 v26, 16, v31
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v27, v10, v1
	scratch_load_b32 v1, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v228, v27, v26
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v27, v10, v1 :: v_dual_lshlrev_b32 v26, 16, v32
	scratch_load_b32 v1, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v11, v27, v26
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v27, v10, v1 :: v_dual_lshlrev_b32 v26, 16, v34
	scratch_load_b32 v1, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v92, v27, v26
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_clause 0x7
	buffer_load_u16 v26, v0, s[36:39], 0 offen offset:32
	buffer_load_u16 v27, v0, s[36:39], 0 offen offset:36
	buffer_load_u16 v28, v0, s[36:39], 0 offen offset:40
	buffer_load_u16 v29, v0, s[36:39], 0 offen offset:44
	buffer_load_u16 v30, v0, s[36:39], 0 offen offset:48
	buffer_load_u16 v31, v0, s[36:39], 0 offen offset:52
	buffer_load_u16 v32, v0, s[36:39], 0 offen offset:56
	buffer_load_u16 v34, v0, s[36:39], 0 offen offset:60
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v24, v10, v1
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v75, v24, v26 :: v_dual_lshlrev_b32 v24, 16, v27
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:60
	scratch_load_b32 v1, off, off offset:212
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v242, v11 :: v_dual_mul_f32 v23, v10, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v201, v23, v24
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v23, 16, v28
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v28, off, off offset:64
	scratch_load_b32 v1, off, off offset:204
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v10, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v199, v19, v23
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v19, 16, v29
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:68
	scratch_load_b32 v1, off, off offset:196
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v15, v10, v1
	scratch_load_b32 v1, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v200, v15, v19 :: v_dual_lshlrev_b32 v15, 16, v30
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v12, v10, v1
	scratch_load_b32 v1, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v196, v12, v15
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v10, v1 :: v_dual_lshlrev_b32 v12, 16, v31
	scratch_load_b32 v1, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v236, v11, v12
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v12, v10, v1
	scratch_load_b32 v1, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v11, 16, v32
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v192, v12, v11
	.loc	1 183 29 is_stmt 0              ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v12, v10, v1
	scratch_load_b32 v1, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v26, v10, v1 :: v_dual_lshlrev_b32 v11, 16, v34
	scratch_load_b32 v1, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v195, v12, v11
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_clause 0x7
	buffer_load_u16 v11, v0, s[36:39], 0 offen offset:64
	buffer_load_u16 v12, v0, s[36:39], 0 offen offset:68
	buffer_load_u16 v15, v0, s[36:39], 0 offen offset:72
	buffer_load_u16 v16, v0, s[36:39], 0 offen offset:76
	buffer_load_u16 v19, v0, s[36:39], 0 offen offset:80
	buffer_load_u16 v20, v0, s[36:39], 0 offen offset:84
	buffer_load_u16 v23, v0, s[36:39], 0 offen offset:88
	buffer_load_u16 v24, v0, s[36:39], 0 offen offset:92
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v189, v26, v11
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v11, 16, v12
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v12, v10, v1
	scratch_load_b32 v1, off, off offset:240 ; 4-byte Folded Reload
	v_dual_mul_f32 v26, v10, v166 :: v_dual_fmac_f32 v191, v12, v11
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v12, v10, v1 :: v_dual_lshlrev_b32 v11, 16, v15
	scratch_load_b32 v1, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v187, v12, v11
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v12, v10, v1 :: v_dual_lshlrev_b32 v11, 16, v16
	scratch_load_b32 v1, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v188, v12, v11
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v12, v10, v1 :: v_dual_lshlrev_b32 v11, 16, v19
	scratch_load_b32 v1, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v109, v12, v11
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v12, v10, v1 :: v_dual_lshlrev_b32 v11, 16, v20
	scratch_load_b32 v1, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v186, v12, v11
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v12, v10, v1 :: v_dual_lshlrev_b32 v11, 16, v23
	scratch_load_b32 v1, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v231, v12, v11
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v12, v10, v1 :: v_dual_lshlrev_b32 v11, 16, v24
	scratch_load_b32 v1, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v234, v12, v11
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_clause 0x7
	buffer_load_u16 v11, v0, s[36:39], 0 offen offset:96
	buffer_load_u16 v12, v0, s[36:39], 0 offen offset:100
	buffer_load_u16 v15, v0, s[36:39], 0 offen offset:104
	buffer_load_u16 v16, v0, s[36:39], 0 offen offset:108
	buffer_load_u16 v19, v0, s[36:39], 0 offen offset:112
	buffer_load_u16 v20, v0, s[36:39], 0 offen offset:116
	buffer_load_u16 v23, v0, s[36:39], 0 offen offset:120
	buffer_load_u16 v24, v0, s[36:39], 0 offen offset:124
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v141, v26, v11
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v11, 16, v12
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v12, v10, v165
	v_dual_mul_f32 v26, v10, v160 :: v_dual_fmac_f32 v255, v12, v11
	v_mul_f32_e32 v12, v10, v1
	scratch_load_b32 v1, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v11, 16, v15
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v178, v12, v11 :: v_dual_lshlrev_b32 v11, 16, v16
	.loc	1 183 29 is_stmt 0              ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v12, v10, v1
	scratch_load_b32 v1, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v194, v12, v11
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v12, v10, v1 :: v_dual_lshlrev_b32 v11, 16, v19
	scratch_load_b32 v1, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v175, v12, v11
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v12, v10, v1 :: v_dual_lshlrev_b32 v11, 16, v20
	scratch_load_b32 v1, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v176, v12, v11
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v12, v10, v164 :: v_dual_lshlrev_b32 v11, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v142, v12, v11 :: v_dual_lshlrev_b32 v11, 16, v24
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v12, v10, v1
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v169, v12, v11
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_clause 0x7
	buffer_load_u16 v11, v0, s[36:39], 0 offen offset:128
	buffer_load_u16 v12, v0, s[36:39], 0 offen offset:132
	buffer_load_u16 v15, v0, s[36:39], 0 offen offset:136
	buffer_load_u16 v16, v0, s[36:39], 0 offen offset:140
	buffer_load_u16 v19, v0, s[36:39], 0 offen offset:144
	buffer_load_u16 v20, v0, s[36:39], 0 offen offset:148
	buffer_load_u16 v23, v0, s[36:39], 0 offen offset:152
	buffer_load_u16 v24, v0, s[36:39], 0 offen offset:156
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v150, v26, v11 :: v_dual_lshlrev_b32 v11, 16, v12
	.loc	1 183 29 is_stmt 0              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v12, v10, v185
	v_dual_mul_f32 v26, v10, v222 :: v_dual_fmac_f32 v133, v12, v11
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v11, 16, v15
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v12, v10, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v33, v12, v11
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v12, v10, v181 :: v_dual_lshlrev_b32 v11, 16, v16
	v_mov_b32_e32 v193, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v97, v12, v11
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v12, v10, v180 :: v_dual_lshlrev_b32 v11, 16, v19
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v83, v12, v11
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v12, v10, v179 :: v_dual_lshlrev_b32 v11, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v96, v12, v11
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v12, v10, v184 :: v_dual_lshlrev_b32 v11, 16, v23
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v131, v12, v11
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v12, v10, v182 :: v_dual_lshlrev_b32 v11, 16, v24
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v82, v12, v11
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_clause 0x7
	buffer_load_u16 v11, v0, s[36:39], 0 offen offset:160
	buffer_load_u16 v12, v0, s[36:39], 0 offen offset:164
	buffer_load_u16 v15, v0, s[36:39], 0 offen offset:168
	buffer_load_u16 v16, v0, s[36:39], 0 offen offset:172
	buffer_load_u16 v19, v0, s[36:39], 0 offen offset:176
	buffer_load_u16 v20, v0, s[36:39], 0 offen offset:180
	buffer_load_u16 v23, v0, s[36:39], 0 offen offset:184
	buffer_load_u16 v24, v0, s[36:39], 0 offen offset:188
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v70, v26, v11 :: v_dual_lshlrev_b32 v11, 16, v12
	.loc	1 183 29 is_stmt 0              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v12, v10, v221
	v_mul_f32_e32 v26, v10, v252
	v_dual_mov_b32 v113, v70 :: v_dual_fmac_f32 v78, v12, v11
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v11, 16, v15
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v12, v10, v219
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v28, v12, v11 :: v_dual_lshlrev_b32 v11, 16, v16
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v12, v10, v213
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v29, v12, v11
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v12, v10, v154 :: v_dual_lshlrev_b32 v11, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v211, v12, v11
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v12, v10, v209 :: v_dual_lshlrev_b32 v11, 16, v20
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v148, v12, v11
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v12, v10, v220 :: v_dual_lshlrev_b32 v11, 16, v23
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v206, v12, v11 :: v_dual_lshlrev_b32 v11, 16, v24
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v12, v10, v214
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v27, v12, v11
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_clause 0x7
	buffer_load_u16 v11, v0, s[36:39], 0 offen offset:192
	buffer_load_u16 v12, v0, s[36:39], 0 offen offset:196
	buffer_load_u16 v15, v0, s[36:39], 0 offen offset:200
	buffer_load_u16 v16, v0, s[36:39], 0 offen offset:204
	buffer_load_u16 v19, v0, s[36:39], 0 offen offset:208
	buffer_load_u16 v20, v0, s[36:39], 0 offen offset:212
	buffer_load_u16 v23, v0, s[36:39], 0 offen offset:216
	buffer_load_u16 v24, v0, s[36:39], 0 offen offset:220
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v2, v26, v11 :: v_dual_lshlrev_b32 v11, 16, v12
	.loc	1 183 29 is_stmt 0              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v12, v10, v251
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v205, v12, v11
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v12, v10, v249 :: v_dual_lshlrev_b32 v11, 16, v15
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v132, v12, v11 :: v_dual_lshlrev_b32 v11, 16, v16
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v12, v10, v247
	v_dual_mov_b32 v213, v2 :: v_dual_fmac_f32 v88, v12, v11
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v12, v10, v246 :: v_dual_lshlrev_b32 v11, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v239, v12, v11
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v12, v10, v245 :: v_dual_lshlrev_b32 v11, 16, v20
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v240, v12, v11
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v12, v10, v250 :: v_dual_lshlrev_b32 v11, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v237, v12, v11
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v24
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v12, v10, v248
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v238, v12, v11
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_clause 0x7
	buffer_load_u16 v12, v0, s[36:39], 0 offen offset:224
	buffer_load_u16 v15, v0, s[36:39], 0 offen offset:228
	buffer_load_u16 v16, v0, s[36:39], 0 offen offset:232
	buffer_load_u16 v19, v0, s[36:39], 0 offen offset:236
	buffer_load_u16 v20, v0, s[36:39], 0 offen offset:240
	buffer_load_u16 v23, v0, s[36:39], 0 offen offset:244
	buffer_load_u16 v24, v0, s[36:39], 0 offen offset:248
	buffer_load_u16 v11, v0, s[36:39], 0 offen offset:252
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v12
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v12, v10, v22
	scratch_load_b32 v22, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v105, v12, v0 :: v_dual_lshlrev_b32 v0, 16, v15
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v12, v10, v25 :: v_dual_lshlrev_b32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v235, v12, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v16
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v12, v10, v21
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v162, v12, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v19
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v12, v10, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v136, v12, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v20
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v12, v10, v13
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v98, v12, v0
	.loc	1 164 34 is_stmt 1              ; generate_amdgcn.py:164:34
	scratch_load_b32 v0, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v12, v10, v14
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v14, v10, v18 :: v_dual_add_nc_u32 v13, s12, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v23
	scratch_load_b32 v23, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v161, v12, v0
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	scratch_load_b32 v0, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s12, v0
	.loc	1 171 29                        ; generate_amdgcn.py:171:29
	scratch_load_b32 v0, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v12, s12, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v24
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v3, v14, v0
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	scratch_load_b32 v0, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v209, v3 :: v_dual_add_nc_u32 v14, s12, v0
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	scratch_load_b32 v0, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s12, s12, 64
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_waitcnt vmcnt(0)
	v_cmp_lt_i32_e64 s2, s13, v0
	.loc	1 156 26 is_stmt 0              ; generate_amdgcn.py:156:26
	s_and_b32 s2, s2, s1
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s43, s12
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v0, 0x80000000, v13, s2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	v_cndmask_b32_e64 v16, 0x80000000, v12, s2
	v_cndmask_b32_e64 v17, 0x80000000, v14, s2
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	buffer_load_b64 v[12:13], v0, s[24:27], 0 offen
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v0, v10, v9
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_clause 0x2
	buffer_load_b64 v[9:10], v15, s[24:27], 0 offen
	buffer_load_b64 v[14:15], v16, s[24:27], 0 offen
	buffer_load_b64 v[16:17], v17, s[24:27], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v143, v0, v11
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	scratch_load_b32 v0, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v23, v0 offset:16384
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_store_2addr_stride64_b64 v22, v[12:13], v[9:10] offset1:8
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_store_2addr_stride64_b64 v22, v[14:15], v[16:17] offset0:16 offset1:24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v220, off, off offset:368
	scratch_load_b32 v13, off, off offset:284
	scratch_load_b32 v14, off, off offset:288
	scratch_load_b32 v16, off, off offset:292
	scratch_load_b32 v125, off, off offset:372
	scratch_load_b32 v219, off, off offset:376
	v_dual_mov_b32 v246, v116 :: v_dual_mov_b32 v247, v233
	v_mov_b32_e32 v248, v65
.LBB0_4:                                ; %Flow1432
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	v_cndmask_b32_e64 v0, 0, 1, s0
	s_clause 0x9                            ; 40-byte Folded Spill
	scratch_store_b32 off, v76, off offset:140
	scratch_store_b32 off, v41, off offset:56
	scratch_store_b32 off, v40, off offset:52
	scratch_store_b32 off, v39, off offset:48
	scratch_store_b32 off, v38, off offset:44
	scratch_store_b32 off, v37, off offset:40
	scratch_store_b32 off, v36, off offset:36
	scratch_store_b32 off, v29, off offset:68
	scratch_store_b32 off, v28, off offset:64
	scratch_store_b32 off, v27, off offset:60
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_cmp_ne_u32_e64 s1, 1, v0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v147, 0
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v249, v16 :: v_dual_and_b32 v164, 16, v125
	v_mov_b32_e32 v21, 0
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[1:2], v64 offset:16384
	ds_load_b64 v[3:4], v16 offset:16384
	ds_load_b64 v[5:6], v14 offset:16384
	ds_load_b64 v[7:8], v13 offset:16384
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v139, 0
	v_mov_b32_e32 v165, 0
	v_dual_mov_b32 v157, v14 :: v_dual_mov_b32 v222, v13
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v53, 0
	ds_load_b64 v[9:10], v73 offset:16384
	ds_load_b64 v[11:12], v72 offset:16384
	ds_load_b64 v[13:14], v94 offset:16384
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_b64 v[15:16], v99 offset:16384
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v185, 0
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v183, 0
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v173, 0
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v93, 0
	scratch_store_b32 off, v0, off offset:84 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v179, 0
	v_mov_b32_e32 v170, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v159, 0
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v155, 0
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v137, 0
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v135, 0
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v127, 0
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v166, 0
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v0, 0
	s_and_not1_b32 vcc_lo, exec_lo, s0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_mov_b32 s12, 0
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_6
; %bb.5:
	.loc	1 0 27 is_stmt 0                ; generate_amdgcn.py:0:27
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v203, off, off offset:8
	scratch_load_b32 v153, off, off offset:72
	scratch_load_b32 v166, off, off offset:4
	scratch_load_b32 v165, off, off
	.loc	1 164 26 is_stmt 1              ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[42:45], v157 offset1:2
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_mov_b32 s19, s12
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v29, s19 :: v_dual_mov_b32 v28, s18
	v_dual_mov_b32 v27, s17 :: v_dual_mov_b32 v26, s16
	v_dual_mov_b32 v25, s15 :: v_dual_mov_b32 v24, s14
	v_dual_mov_b32 v23, s13 :: v_dual_mov_b32 v22, s12
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[46:49], v222 offset1:2
	v_dual_mov_b32 v0, v58 :: v_dual_mov_b32 v91, v59
	v_dual_mov_b32 v94, v61 :: v_dual_mov_b32 v107, v62
	v_mov_b32_e32 v102, v67
	v_mov_b32_e32 v168, v63
	ds_load_2addr_stride64_b64 v[62:65], v99 offset1:2
	v_mov_b32_e32 v90, v71
	v_mov_b32_e32 v104, v69
	ds_load_2addr_stride64_b64 v[68:71], v99 offset0:4 offset1:6
	s_waitcnt vmcnt(3)
	ds_load_2addr_stride64_b64 v[17:20], v203 offset1:2
	ds_load_2addr_stride64_b64 v[38:41], v249 offset1:2
	s_waitcnt vmcnt(2)
	ds_load_2addr_stride64_b64 v[58:61], v153 offset1:2
	s_waitcnt vmcnt(1)
	ds_load_2addr_stride64_b64 v[50:53], v166 offset1:2
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[54:57], v165 offset1:2
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[17:18], v[1:2], v[22:29] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[38:39], v[3:4], v[30:37] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[30:37], v[42:43], v[5:6], v[30:37] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[46:47], v[7:8], v[30:37] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[50:51], v[9:10], v[30:37] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[54:55], v[11:12], v[30:37] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[30:37], v[58:59], v[13:14], v[30:37] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[62:63], v[15:16], v[30:37] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v214, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v149, v31
	v_cvt_f32_i32_e32 v254, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v144, v33
	v_cvt_f32_i32_e32 v185, v34
	v_cvt_f32_i32_e32 v184, v35
	v_cvt_f32_i32_e32 v181, v36
	v_cvt_f32_i32_e32 v183, v37
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[30:37], v[19:20], v[1:2], v[22:29] neg_lo:[1,1,0]
	v_mov_b32_e32 v19, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[40:41], v[3:4], v[30:37] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[30:37], v[44:45], v[5:6], v[30:37] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[40:43], v203 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[44:47], v249 offset0:4 offset1:6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[30:37], v[48:49], v[7:8], v[30:37] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[48:51], v157 offset0:4 offset1:6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[30:37], v[52:53], v[9:10], v[30:37] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[52:55], v222 offset0:4 offset1:6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[30:37], v[56:57], v[11:12], v[30:37] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[56:59], v166 offset0:4 offset1:6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[30:37], v[60:61], v[13:14], v[30:37] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[60:63], v165 offset0:4 offset1:6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[30:37], v[64:65], v[15:16], v[30:37] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[64:67], v153 offset0:4 offset1:6
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v252, v30
	v_cvt_f32_i32_e32 v253, v31
	v_cvt_f32_i32_e32 v93, v32
	v_cvt_f32_i32_e32 v179, v33
	v_cvt_f32_i32_e32 v173, v34
	v_cvt_f32_i32_e32 v245, v35
	v_cvt_f32_i32_e32 v170, v36
	v_cvt_f32_i32_e32 v172, v37
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[40:41], v[1:2], v[22:29] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[44:45], v[3:4], v[30:37] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[48:49], v[5:6], v[30:37] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[52:53], v[7:8], v[30:37] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[56:57], v[9:10], v[30:37] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[60:61], v[11:12], v[30:37] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[64:65], v[13:14], v[30:37] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[68:69], v[15:16], v[30:37] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v17, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v18, v35
	v_cvt_f32_i32_e32 v160, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v159, v31
	v_cvt_f32_i32_e32 v120, v33
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v17, off offset:128
	scratch_store_b32 off, v18, off offset:136
	v_cvt_f32_i32_e32 v17, v34
	v_cvt_f32_i32_e32 v147, v36
	v_cvt_f32_i32_e32 v18, v37
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[30:37], v[42:43], v[1:2], v[22:29] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[46:47], v[3:4], v[30:37] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[42:45], v203 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[46:49], v249 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[30:37], v[50:51], v[5:6], v[30:37] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[50:53], v157 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[30:37], v[54:55], v[7:8], v[30:37] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[54:57], v222 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[30:37], v[58:59], v[9:10], v[30:37] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[58:61], v166 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[30:37], v[62:63], v[11:12], v[30:37] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[62:65], v165 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[30:37], v[66:67], v[13:14], v[30:37] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[66:69], v153 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[30:37], v[70:71], v[15:16], v[30:37] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[70:73], v99 offset0:8 offset1:10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v146, v30
	v_cvt_f32_i32_e32 v21, v31
	v_cvt_f32_i32_e32 v139, v32
	v_cvt_f32_i32_e32 v145, v33
	v_cvt_f32_i32_e32 v155, v34
	v_cvt_f32_i32_e32 v76, v35
	v_cvt_f32_i32_e32 v138, v36
	v_cvt_f32_i32_e32 v140, v37
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[42:43], v[1:2], v[22:29] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[46:47], v[3:4], v[30:37] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[50:51], v[5:6], v[30:37] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[54:55], v[7:8], v[30:37] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[58:59], v[9:10], v[30:37] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[62:63], v[11:12], v[30:37] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[66:67], v[13:14], v[30:37] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[70:71], v[15:16], v[30:37] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v137, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v130, v31
	v_cvt_f32_i32_e32 v126, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v135, v33
	v_cvt_f32_i32_e32 v129, v34
	v_cvt_f32_i32_e32 v128, v35
	v_cvt_f32_i32_e32 v123, v36
	v_cvt_f32_i32_e32 v127, v37
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[30:37], v[44:45], v[1:2], v[22:29] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[48:49], v[3:4], v[30:37] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[42:45], v203 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[46:49], v249 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[30:37], v[52:53], v[5:6], v[30:37] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[50:53], v157 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[30:37], v[56:57], v[7:8], v[30:37] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[54:57], v222 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[30:37], v[60:61], v[9:10], v[30:37] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[58:61], v166 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[30:37], v[64:65], v[11:12], v[30:37] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[62:65], v165 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[30:37], v[68:69], v[13:14], v[30:37] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[66:69], v153 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[30:37], v[72:73], v[15:16], v[30:37] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[70:73], v99 offset0:12 offset1:14
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v119, v30
	v_cvt_f32_i32_e32 v30, v32
	v_cvt_f32_i32_e32 v122, v31
	v_cvt_f32_i32_e32 v121, v33
	v_cvt_f32_i32_e32 v38, v34
	scratch_store_b32 off, v30, off offset:116 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v30, v35
	scratch_store_b32 off, v30, off offset:88 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v30, v36
	scratch_store_b32 off, v30, off offset:112 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v30, v37
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v18, off offset:132
	scratch_store_b32 off, v30, off offset:84
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[42:43], v[1:2], v[22:29] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[22:29], v[44:45], v[1:2], v[22:29] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[46:47], v[3:4], v[30:37] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[22:29], v[48:49], v[3:4], v[22:29] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[50:51], v[5:6], v[30:37] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[22:29], v[52:53], v[5:6], v[22:29] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[54:55], v[7:8], v[30:37] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[22:29], v[56:57], v[7:8], v[22:29] neg_lo:[1,1,0]
	v_mov_b32_e32 v57, v119
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[58:59], v[9:10], v[30:37] neg_lo:[1,1,0]
	v_mov_b32_e32 v58, v0
	v_wmma_i32_16x16x16_iu4 v[22:29], v[60:61], v[9:10], v[22:29] neg_lo:[1,1,0]
	v_mov_b32_e32 v59, v91
	v_mov_b32_e32 v61, v94
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[62:63], v[11:12], v[30:37] neg_lo:[1,1,0]
	v_mov_b32_e32 v62, v107
	v_wmma_i32_16x16x16_iu4 v[22:29], v[64:65], v[11:12], v[22:29] neg_lo:[1,1,0]
	v_mov_b32_e32 v94, v144
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[66:67], v[13:14], v[30:37] neg_lo:[1,1,0]
	v_mov_b32_e32 v67, v102
	v_wmma_i32_16x16x16_iu4 v[22:29], v[68:69], v[13:14], v[22:29] neg_lo:[1,1,0]
	v_dual_mov_b32 v63, v168 :: v_dual_mov_b32 v66, v19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[30:37], v[70:71], v[15:16], v[30:37] neg_lo:[1,1,0]
	v_mov_b32_e32 v71, v90
	v_wmma_i32_16x16x16_iu4 v[22:29], v[72:73], v[15:16], v[22:29] neg_lo:[1,1,0]
	v_dual_mov_b32 v70, v149 :: v_dual_mov_b32 v69, v104
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v30
	v_cvt_f32_i32_e32 v166, v35
	v_cvt_f32_i32_e32 v165, v37
	v_dual_mov_b32 v73, v122 :: v_dual_mov_b32 v72, v121
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v31
	v_cvt_f32_i32_e32 v54, v22
	v_cvt_f32_i32_e32 v56, v23
	v_cvt_f32_i32_e32 v49, v24
	v_cvt_f32_i32_e32 v55, v25
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v32
	v_cvt_f32_i32_e32 v52, v26
	v_cvt_f32_i32_e32 v53, v27
	v_cvt_f32_i32_e32 v51, v29
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v33
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v34
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v36
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v28
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
.LBB0_6:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	s_clause 0x15                           ; 88-byte Folded Spill
	scratch_store_b32 off, v147, off offset:212
	scratch_store_b32 off, v146, off offset:208
	scratch_store_b32 off, v145, off offset:204
	scratch_store_b32 off, v21, off offset:200
	scratch_store_b32 off, v155, off offset:196
	scratch_store_b32 off, v76, off offset:192
	scratch_store_b32 off, v140, off offset:188
	scratch_store_b32 off, v139, off offset:184
	scratch_store_b32 off, v138, off offset:180
	scratch_store_b32 off, v137, off offset:176
	scratch_store_b32 off, v135, off offset:172
	scratch_store_b32 off, v130, off offset:168
	scratch_store_b32 off, v129, off offset:164
	scratch_store_b32 off, v128, off offset:160
	scratch_store_b32 off, v127, off offset:156
	scratch_store_b32 off, v126, off offset:152
	scratch_store_b32 off, v123, off offset:148
	scratch_store_b32 off, v38, off offset:144
	scratch_store_b32 off, v148, off offset:228
	scratch_store_b32 off, v211, off offset:224
	scratch_store_b32 off, v206, off offset:220
	scratch_store_b32 off, v205, off offset:216
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v48, 0
	v_mov_b32_e32 v104, 0
	.loc	1 175 36 is_stmt 1              ; generate_amdgcn.py:175:36
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 0 36 is_stmt 0                ; generate_amdgcn.py:0:36
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v241, off, off offset:8
	scratch_load_b32 v0, off, off offset:72
	scratch_load_b32 v128, off, off offset:4
	v_dual_mov_b32 v127, v125 :: v_dual_mov_b32 v102, v62
	scratch_load_b32 v125, off, off         ; 4-byte Folded Reload
	.loc	1 170 35 is_stmt 1              ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[42:45], v249 offset0:16 offset1:18
	v_mov_b32_e32 v138, v49
	ds_load_2addr_stride64_b64 v[46:49], v157 offset0:16 offset1:18
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_mov_b32 s19, s12
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	v_dual_mov_b32 v220, v172 :: v_dual_mov_b32 v41, v98
	v_mov_b32_e32 v182, v170
	v_mov_b32_e32 v180, v159
	v_dual_mov_b32 v172, v160 :: v_dual_mov_b32 v117, v161
	v_dual_mov_b32 v170, v17 :: v_dual_mov_b32 v197, v83
	v_dual_mov_b32 v158, v131 :: v_dual_mov_b32 v83, v162
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v232, off offset:240
	scratch_store_b32 off, v166, off offset:236
	scratch_store_b32 off, v164, off offset:232
	scratch_store_b32 off, v228, off offset:244
	v_mov_b32_e32 v228, v188
	v_mov_b32_e32 v188, v165
	v_dual_mov_b32 v166, s19 :: v_dual_mov_b32 v129, v157
	v_dual_mov_b32 v168, v142 :: v_dual_mov_b32 v165, s18
	v_dual_mov_b32 v232, v195 :: v_dual_mov_b32 v163, s16
	v_dual_mov_b32 v164, s17 :: v_dual_mov_b32 v233, v99
	v_dual_mov_b32 v162, s15 :: v_dual_mov_b32 v155, v183
	v_dual_mov_b32 v161, s14 :: v_dual_mov_b32 v160, s13
	v_mov_b32_e32 v183, v181
	v_dual_mov_b32 v159, s12 :: v_dual_mov_b32 v148, v51
	v_mov_b32_e32 v156, v52
	v_dual_mov_b32 v36, v190 :: v_dual_mov_b32 v177, v55
	v_mov_b32_e32 v190, v174
	v_mov_b32_e32 v174, v169
	v_mov_b32_e32 v169, v53
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[50:53], v222 offset0:16 offset1:18
	v_dual_mov_b32 v206, v175 :: v_dual_mov_b32 v153, v194
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v175, v54 :: v_dual_mov_b32 v146, v219
	v_dual_mov_b32 v219, v178 :: v_dual_mov_b32 v178, v56
	v_dual_mov_b32 v99, v59 :: v_dual_mov_b32 v198, v57
	v_dual_mov_b32 v17, v71 :: v_dual_mov_b32 v194, v248
	v_dual_mov_b32 v19, v58 :: v_dual_mov_b32 v142, v61
	v_dual_mov_b32 v147, v96 :: v_dual_mov_b32 v140, v63
	v_mov_b32_e32 v149, v242
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v109, off offset:80
	scratch_store_b32 off, v255, off offset:76
	scratch_store_b32 off, v185, off offset:248
	v_dual_mov_b32 v104, v202 :: v_dual_mov_b32 v107, v67
	v_dual_mov_b32 v76, v66 :: v_dual_mov_b32 v109, v69
	ds_load_2addr_stride64_b64 v[66:69], v233 offset0:16 offset1:18
	v_dual_mov_b32 v122, v132 :: v_dual_mov_b32 v203, v97
	v_dual_mov_b32 v130, v249 :: v_dual_mov_b32 v205, v150
	v_dual_mov_b32 v152, v78 :: v_dual_mov_b32 v251, v173
	v_dual_mov_b32 v78, v143 :: v_dual_mov_b32 v185, v93
	v_mov_b32_e32 v181, v179
	v_mov_b32_e32 v179, v245
	v_dual_mov_b32 v143, v92 :: v_dual_mov_b32 v98, v246
	v_dual_mov_b32 v131, v247 :: v_dual_mov_b32 v144, v193
	v_dual_mov_b32 v211, v94 :: v_dual_mov_b32 v94, v243
	v_mov_b32_e32 v145, v200
	v_dual_mov_b32 v92, v244 :: v_dual_mov_b32 v195, v82
	v_dual_mov_b32 v82, v213 :: v_dual_mov_b32 v213, v70
	v_dual_mov_b32 v108, v106 :: v_dual_mov_b32 v151, v199
	v_dual_mov_b32 v150, v113 :: v_dual_mov_b32 v199, v72
	v_mov_b32_e32 v200, v73
	ds_load_2addr_stride64_b64 v[70:73], v233 offset0:20 offset1:22
	v_mov_b32_e32 v173, v120
	s_waitcnt vmcnt(3)
	ds_load_2addr_stride64_b64 v[31:34], v241 offset0:16 offset1:18
	s_waitcnt vmcnt(2)
	ds_load_2addr_stride64_b64 v[62:65], v0 offset0:16 offset1:18
	s_waitcnt vmcnt(1)
	ds_load_2addr_stride64_b64 v[54:57], v128 offset0:16 offset1:18
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[58:61], v125 offset0:16 offset1:18
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[31:32], v[1:2], v[159:166] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[42:43], v[3:4], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[21:28], v[46:47], v[5:6], v[21:28] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[50:51], v[7:8], v[21:28] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[54:55], v[9:10], v[21:28] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[58:59], v[11:12], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[21:28], v[62:63], v[13:14], v[21:28] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[66:67], v[15:16], v[21:28] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v116, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v21, v24
	v_cvt_f32_i32_e32 v132, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v24, v26
	v_cvt_f32_i32_e32 v202, v27
	v_cvt_f32_i32_e32 v39, v28
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[1:2], v[159:166] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_mov_b32_e32 v35, v202
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[44:45], v[3:4], v[25:32] neg_lo:[1,1,0]
	v_mov_b32_e32 v202, v104
	v_wmma_i32_16x16x16_iu4 v[25:32], v[48:49], v[5:6], v[25:32] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[42:45], v241 offset0:20 offset1:22
	ds_load_2addr_stride64_b64 v[46:49], v249 offset0:20 offset1:22
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[52:53], v[7:8], v[25:32] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[50:53], v129 offset0:20 offset1:22
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[56:57], v[9:10], v[25:32] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[54:57], v222 offset0:20 offset1:22
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[60:61], v[11:12], v[25:32] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[58:61], v128 offset0:20 offset1:22
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[42:43], v[1:2], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[64:65], v[13:14], v[25:32] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[62:65], v125 offset0:20 offset1:22
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[46:47], v[3:4], v[243:250] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[68:69], v[15:16], v[25:32] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[66:69], v0 offset0:20 offset1:22
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[50:51], v[5:6], v[243:250] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v34, v28
	v_cvt_f32_i32_e32 v120, v29
	v_cvt_f32_i32_e32 v20, v31
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[54:55], v[7:8], v[243:250] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v40, v32
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[58:59], v[9:10], v[243:250] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[62:63], v[11:12], v[243:250] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[66:67], v[13:14], v[243:250] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[70:71], v[15:16], v[243:250] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v37, v243
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v18, v244
	v_cvt_f32_i32_e32 v28, v245
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v113, v246
	v_cvt_f32_i32_e32 v29, v247
	v_cvt_f32_i32_e32 v106, v248
	v_cvt_f32_i32_e32 v193, v249
	v_cvt_f32_i32_e32 v31, v250
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[243:250], v[44:45], v[1:2], v[159:166] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[48:49], v[3:4], v[243:250] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[42:45], v241 offset0:24 offset1:26
	ds_load_2addr_stride64_b64 v[46:49], v130 offset0:24 offset1:26
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[243:250], v[52:53], v[5:6], v[243:250] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[50:53], v129 offset0:24 offset1:26
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[243:250], v[56:57], v[7:8], v[243:250] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[54:57], v222 offset0:24 offset1:26
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[243:250], v[60:61], v[9:10], v[243:250] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[58:61], v128 offset0:24 offset1:26
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[243:250], v[64:65], v[11:12], v[243:250] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[62:65], v125 offset0:24 offset1:26
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[243:250], v[68:69], v[13:14], v[243:250] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[66:69], v0 offset0:24 offset1:26
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[243:250], v[72:73], v[15:16], v[243:250] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[70:73], v233 offset0:24 offset1:26
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v97, v243
	v_cvt_f32_i32_e32 v90, v244
	v_cvt_f32_i32_e32 v91, v245
	v_cvt_f32_i32_e32 v93, v246
	v_cvt_f32_i32_e32 v96, v247
	v_cvt_f32_i32_e32 v103, v248
	v_cvt_f32_i32_e32 v139, v249
	v_cvt_f32_i32_e32 v137, v250
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[42:43], v[1:2], v[159:166] neg_lo:[1,1,0]
	v_mov_b32_e32 v33, v91
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[46:47], v[3:4], v[243:250] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[50:51], v[5:6], v[243:250] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[54:55], v[7:8], v[243:250] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[58:59], v[9:10], v[243:250] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[62:63], v[11:12], v[243:250] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[66:67], v[13:14], v[243:250] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[70:71], v[15:16], v[243:250] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v50, v243
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v135, v244
	v_cvt_f32_i32_e32 v62, v245
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v54, v246
	v_cvt_f32_i32_e32 v126, v247
	v_cvt_f32_i32_e32 v71, v248
	v_cvt_f32_i32_e32 v70, v249
	v_cvt_f32_i32_e32 v123, v250
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[243:250], v[44:45], v[1:2], v[159:166] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[48:49], v[3:4], v[243:250] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[42:45], v241 offset0:28 offset1:30
	ds_load_2addr_stride64_b64 v[46:49], v130 offset0:28 offset1:30
	v_mov_b32_e32 v130, v50
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[243:250], v[52:53], v[5:6], v[243:250] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[50:53], v129 offset0:28 offset1:30
	v_mov_b32_e32 v129, v54
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[243:250], v[56:57], v[7:8], v[243:250] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[54:57], v222 offset0:28 offset1:30
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[243:250], v[60:61], v[9:10], v[243:250] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[58:61], v128 offset0:28 offset1:30
	v_mov_b32_e32 v128, v62
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[243:250], v[64:65], v[11:12], v[243:250] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[62:65], v125 offset0:28 offset1:30
	v_mov_b32_e32 v125, v127
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[243:250], v[68:69], v[13:14], v[243:250] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[72:73], v[15:16], v[243:250] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v119, v243
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v121, v244
	v_cvt_f32_i32_e32 v67, v245
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v32, v246
	v_cvt_f32_i32_e32 v66, v247
	v_cvt_f32_i32_e32 v255, v248
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[241:248], v[42:43], v[1:2], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[44:45], v[1:2], v[159:166] neg_lo:[1,1,0]
	v_dual_mov_b32 v127, v71 :: v_dual_mov_b32 v44, v113
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[241:248], v[46:47], v[3:4], v[241:248] neg_lo:[1,1,0]
	v_mov_b32_e32 v38, v255
	v_wmma_i32_16x16x16_iu4 v[159:166], v[48:49], v[3:4], v[159:166] neg_lo:[1,1,0]
	v_dual_mov_b32 v113, v150 :: v_dual_mov_b32 v150, v205
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[241:248], v[50:51], v[5:6], v[241:248] neg_lo:[1,1,0]
	v_mov_b32_e32 v50, v67
	v_wmma_i32_16x16x16_iu4 v[159:166], v[52:53], v[5:6], v[159:166] neg_lo:[1,1,0]
	v_mov_b32_e32 v51, v148
	v_mov_b32_e32 v53, v169
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[241:248], v[54:55], v[7:8], v[241:248] neg_lo:[1,1,0]
	v_mov_b32_e32 v169, v174
	v_wmma_i32_16x16x16_iu4 v[159:166], v[56:57], v[7:8], v[159:166] neg_lo:[1,1,0]
	v_mov_b32_e32 v56, v178
	v_mov_b32_e32 v178, v219
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[241:248], v[58:59], v[9:10], v[241:248] neg_lo:[1,1,0]
	v_dual_mov_b32 v58, v19 :: v_dual_mov_b32 v19, v132
	v_mov_b32_e32 v132, v122
	v_mov_b32_e32 v122, v70
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[241:248], v[62:63], v[11:12], v[241:248] neg_lo:[1,1,0]
	v_dual_mov_b32 v63, v140 :: v_dual_mov_b32 v62, v102
	v_mov_b32_e32 v102, v66
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[66:69], v0 offset0:28 offset1:30
	ds_load_2addr_stride64_b64 v[70:73], v233 offset0:28 offset1:30
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[159:166], v[60:61], v[9:10], v[159:166] neg_lo:[1,1,0]
	v_dual_mov_b32 v61, v142 :: v_dual_mov_b32 v142, v168
	v_mov_b32_e32 v0, v106
	v_mov_b32_e32 v174, v190
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[64:65], v[11:12], v[159:166] neg_lo:[1,1,0]
	v_mov_b32_e32 v65, v93
	v_dual_mov_b32 v93, v185 :: v_dual_mov_b32 v190, v36
	v_dual_mov_b32 v36, v120 :: v_dual_mov_b32 v57, v198
	v_mov_b32_e32 v120, v173
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v100, v249
	v_cvt_f32_i32_e32 v250, v250
	v_dual_mov_b32 v55, v177 :: v_dual_mov_b32 v54, v175
	v_mov_b32_e32 v175, v206
	v_mov_b32_e32 v59, v99
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[241:248], v[66:67], v[13:14], v[241:248] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[68:69], v[13:14], v[159:166] neg_lo:[1,1,0]
	v_dual_mov_b32 v66, v76 :: v_dual_mov_b32 v69, v109
	v_mov_b32_e32 v67, v107
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[241:248], v[70:71], v[15:16], v[241:248] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[72:73], v[15:16], v[159:166] neg_lo:[1,1,0]
	v_dual_mov_b32 v107, v96 :: v_dual_mov_b32 v96, v147
	v_mov_b32_e32 v70, v213
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v76, v246
	v_cvt_f32_i32_e32 v91, v248
	v_mov_b32_e32 v248, v194
	v_mov_b32_e32 v246, v98
	v_mov_b32_e32 v194, v153
	v_cvt_f32_i32_e32 v205, v160
	v_mov_b32_e32 v160, v172
	v_mov_b32_e32 v172, v220
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v185, off, off offset:248
	scratch_load_b32 v255, off, off offset:76
	scratch_load_b32 v109, off, off offset:80
	scratch_load_b32 v220, off, off offset:368
	v_cvt_f32_i32_e32 v221, v242
	v_cvt_f32_i32_e32 v147, v243
	v_dual_mov_b32 v243, v94 :: v_dual_mov_b32 v94, v211
	v_cvt_f32_i32_e32 v47, v244
	v_dual_mov_b32 v244, v92 :: v_dual_mov_b32 v49, v138
	v_cvt_f32_i32_e32 v211, v245
	v_mov_b32_e32 v245, v179
	v_mov_b32_e32 v179, v181
	v_mov_b32_e32 v181, v183
	v_mov_b32_e32 v183, v155
	v_dual_mov_b32 v92, v143 :: v_dual_mov_b32 v71, v17
	v_dual_mov_b32 v68, v97 :: v_dual_mov_b32 v213, v82
	v_dual_mov_b32 v97, v203 :: v_dual_mov_b32 v242, v149
	v_dual_mov_b32 v73, v200 :: v_dual_mov_b32 v200, v145
	v_dual_mov_b32 v143, v78 :: v_dual_mov_b32 v78, v152
	v_mov_b32_e32 v17, v170
	v_mov_b32_e32 v170, v182
	v_dual_mov_b32 v82, v195 :: v_dual_mov_b32 v195, v232
	scratch_load_b32 v232, off, off offset:240 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v203, v162
	v_dual_mov_b32 v162, v83 :: v_dual_mov_b32 v83, v197
	v_cvt_f32_i32_e32 v197, v164
	scratch_load_b32 v164, off, off offset:232 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v48, v165
	v_mov_b32_e32 v165, v188
	v_mov_b32_e32 v188, v228
	scratch_load_b32 v228, off, off offset:244 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v104, v166
	scratch_load_b32 v166, off, off offset:236 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v233, v241
	v_cvt_f32_i32_e32 v206, v247
	v_dual_mov_b32 v52, v156 :: v_dual_mov_b32 v247, v131
	v_dual_mov_b32 v219, v146 :: v_dual_mov_b32 v106, v108
	v_dual_mov_b32 v108, v193 :: v_dual_mov_b32 v193, v144
	v_dual_mov_b32 v72, v199 :: v_dual_mov_b32 v131, v158
	v_mov_b32_e32 v199, v151
	v_cvt_f32_i32_e32 v204, v159
	v_dual_mov_b32 v98, v41 :: v_dual_mov_b32 v173, v251
	v_mov_b32_e32 v159, v180
	v_cvt_f32_i32_e32 v198, v161
	v_mov_b32_e32 v161, v117
	v_cvt_f32_i32_e32 v138, v163
	v_mov_b32_e32 v60, v32
	v_dual_mov_b32 v32, v31 :: v_dual_mov_b32 v31, v29
	v_mov_b32_e32 v29, v28
.LBB0_8:
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_mul_lo_u32 v1, s35, v219
	s_mul_i32 s1, s33, s35
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s2, s3, 0
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
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v157, off, off offset:224
	scratch_load_b32 v154, off, off offset:220
	scratch_load_b32 v153, off, off offset:216
	scratch_load_b32 v155, off, off offset:60
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	s_mov_b32 s5, 0x76543210
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s33, s33, s23
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	s_and_b32 s21, s21, 0xffff
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	buffer_load_u16 v2, v1, s[12:15], 0 offen
	.loc	1 182 35                        ; generate_amdgcn.py:182:35
	v_add_lshl_u32 v1, s3, v220, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_and_b32 s13, s11, 0xffff
	s_mov_b32 s12, s10
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v3, 0x80000000, v1, s0
	buffer_load_u16 v3, v3, s[12:15], 0 offen
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v148, 16, v2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v3, v116, v148
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fma_f32 v2, v3, v2, v232
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v232, v2, s0
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_dual_add_f32 v3, 1.0, v3 :: v_dual_mul_f32 v0, v0, v148
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v32, v32, v148
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v4, null, v3, v3, v2
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v5, v4
	v_fma_f32 v6, -v4, v5, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v5, v6, v5
	v_div_scale_f32 v6, vcc_lo, v2, v3, v2
	s_waitcnt lgkmcnt(4)
	v_mul_f32_e32 v7, v6, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v4, v7, v6
	v_fmac_f32_e32 v7, v8, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v4, -v4, v7, v6
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v6, v22, v148
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v4, v4, v5, v7
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v5, 4, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v2, v4, v3, v2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v4, v23, v148 :: v_dual_add_nc_u32 v3, 8, v1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v5, v5, s[12:15], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	buffer_load_u16 v3, v3, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v5, 16, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v5, v6, v5, v230
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v230, v5, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v3, v4, v3, v174
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v6, 0xbfb8aa3b, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v3, v174, v3, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v4, 0xbfb8aa3b, v3
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v6, v6
	v_ldexp_f32 v6, v6, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v7, null, v6, v6, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v8, v7
	s_waitcnt lgkmcnt(3)
	v_fma_f32 v9, -v7, v8, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v8, v9, v8
	v_div_scale_f32 v9, vcc_lo, v5, v6, v5
	v_mul_f32_e32 v10, v9, v8
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v11, -v7, v10, v9
	v_fmac_f32_e32 v10, v11, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v7, -v7, v10, v9
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v9, v21, v148
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v7, v7, v8, v10
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v8, 12, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v5, v7, v6, v5
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v6, v24, v148
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v8, v8, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v8, v9, v8, v190
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v8, v190, v8, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v9, 0xbfb8aa3b, v8
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v8
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v9, v9, v10
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v9, 1.0, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v10, null, v9, v9, v8
	v_rcp_f32_e32 v11, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v10, v11, 1.0
	v_fmac_f32_e32 v11, v12, v11
	v_div_scale_f32 v12, vcc_lo, v8, v9, v8
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v13, v12, v11
	v_fma_f32 v14, -v10, v13, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v13, v14, v11
	v_fma_f32 v10, -v10, v13, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v10, v10, v11, v13
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v4, v4
	v_ldexp_f32 v4, v4, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v11, 1.0, v4
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v4, null, v11, v11, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v12, v4
	v_fma_f32 v13, -v4, v12, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v12, v13, v12
	v_div_scale_f32 v13, vcc_lo, v3, v11, v3
	v_mul_f32_e32 v14, v13, v12
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v4, v14, v13
	v_fmac_f32_e32 v14, v15, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v4, -v4, v14, v13
	v_div_fmas_f32 v12, v4, v12, v14
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v4, 20, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v3, v12, v11, v3
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v12, v39, v148 :: v_dual_add_nc_u32 v11, 28, v1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v4, v4, s[12:15], 0 offen
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	buffer_load_u16 v11, v11, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v4, 16, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v4, v6, v4, v228
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v228, v4, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v11, v12, v11, v92
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v4, 0xbfb8aa3b, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v11, v92, v11, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v12, 0xbfb8aa3b, v11
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v4, v4
	v_ldexp_f32 v4, v4, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v7, 1.0, v4
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v4, null, v7, v7, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v13, v4
	v_fma_f32 v14, -v4, v13, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v13, v14, v13
	v_div_scale_f32 v14, vcc_lo, v6, v7, v6
	v_mul_f32_e32 v15, v14, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v4, v15, v14
	v_fmac_f32_e32 v15, v16, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v4, -v4, v15, v14
	v_div_fmas_f32 v13, v4, v13, v15
	v_div_fixup_f32 v4, v10, v9, v8
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v9, v19, v148 :: v_dual_add_nc_u32 v8, 16, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v6, v13, v7, v6
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v7, 24, v1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v13, v35, v148
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	s_clause 0x1
	buffer_load_u16 v8, v8, s[12:15], 0 offen
	buffer_load_u16 v7, v7, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v8, 16, v8
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v8, v9, v8, v167
	v_fma_f32 v7, v13, v7, v242
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v8, v167, v8, s0
	scratch_load_b32 v167, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v9, 0xbfb8aa3b, v8
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v8
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v9, v9, v10
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v9, 1.0, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v10, null, v9, v9, v8
	v_rcp_f32_e32 v14, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v10, v14, 1.0
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, vcc_lo, v8, v9, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v16, v15, v14
	v_fma_f32 v19, -v10, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, v19, v14
	v_fma_f32 v10, -v10, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v10, v10, v14, v16
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v12, v12
	v_ldexp_f32 v12, v12, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v14, null, v12, v12, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v15, v14
	v_fma_f32 v16, -v14, v15, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, v16, v15
	v_div_scale_f32 v16, vcc_lo, v11, v12, v11
	v_mul_f32_e32 v19, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v14, v19, v16
	v_fmac_f32_e32 v19, v21, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v14, -v14, v19, v16
	v_div_fmas_f32 v14, v14, v15, v19
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v242, v7, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v7, 0xbfb8aa3b, v15
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v15
	v_exp_f32_e32 v7, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v7, v7, v13
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v16, 1.0, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v7, null, v16, v16, v15
	v_rcp_f32_e32 v13, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v7, v13, 1.0
	v_fmac_f32_e32 v13, v19, v13
	v_div_scale_f32 v19, vcc_lo, v15, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v21, v19, v13
	v_fma_f32 v22, -v7, v21, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v13
	v_fma_f32 v7, -v7, v21, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v19, v7, v13, v21
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v7, 36, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v13, v10, v9, v8
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v8, v26, v148
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	buffer_load_u16 v7, v7, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v7, v8, v7, v201
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v8, v201, v7, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v7, 0xbfb8aa3b, v8
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v8
	v_exp_f32_e32 v7, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v7, v7, v9
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v10, 1.0, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v7, null, v10, v10, v8
	v_rcp_f32_e32 v9, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v7, v9, 1.0
	v_fmac_f32_e32 v9, v21, v9
	v_div_scale_f32 v21, vcc_lo, v8, v10, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v22, v21, v9
	v_fma_f32 v23, -v7, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v9
	v_fma_f32 v7, -v7, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v21, v7, v9, v22
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v9, 32, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v7, v14, v12, v11
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v11, v25, v148
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v8, v21, v10, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v21, v27, v148 :: v_dual_add_nc_u32 v10, 40, v1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v9, v9, s[12:15], 0 offen
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	buffer_load_u16 v10, v10, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v9, v11, v9, v75
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v11, v75, v9, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v10, v21, v10, v199
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v9, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v199, v10, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v21, 0xbfb8aa3b, v10
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v9, v9
	v_ldexp_f32 v9, v9, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v12, 1.0, v9
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v9, null, v12, v12, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v14, v9
	v_fma_f32 v22, -v9, v14, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v22, v14
	v_div_scale_f32 v22, vcc_lo, v11, v12, v11
	v_mul_f32_e32 v23, v22, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v9, v23, v22
	v_fmac_f32_e32 v23, v24, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v9, -v9, v23, v22
	v_div_fmas_f32 v14, v9, v14, v23
	v_div_fixup_f32 v9, v19, v16, v15
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v16, v34, v148 :: v_dual_add_nc_u32 v15, 44, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v12, v14, v12, v11
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v11, 52, v1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v14, v30, v148
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	s_clause 0x1
	buffer_load_u16 v15, v15, s[12:15], 0 offen
	buffer_load_u16 v11, v11, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v15, 16, v15
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v15, v16, v15, v200
	v_fma_f32 v11, v14, v11, v236
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v200, v15, s0
	v_cndmask_b32_e64 v14, v236, v11, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v16, 0xbfb8aa3b, v15 :: v_dual_mul_f32 v11, 0xbfb8aa3b, v14
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v15
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v19
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v16, v16, v15
	v_rcp_f32_e32 v22, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v19, v22, 1.0
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v15, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v24, v23, v22
	v_fma_f32 v34, -v19, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v34, v22
	v_fma_f32 v19, -v19, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v19, v19, v22, v24
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v22, null, v21, v21, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v24, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v10, v21, v10
	v_mul_f32_e32 v34, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v22, v34, v24
	v_fmac_f32_e32 v34, v35, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v34, v24
	v_div_fmas_f32 v22, v22, v23, v34
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v10, v22, v21, v10
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v22, v40, v148 :: v_dual_add_nc_u32 v21, 60, v1
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v21, 0x80000000, v21, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v11, v11
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v21, v21, s[12:15], 0 offen
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v11, v11, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v23, 1.0, v11
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v11, null, v23, v23, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v24, v11
	v_fma_f32 v26, -v11, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v26, v24
	v_div_scale_f32 v26, vcc_lo, v14, v23, v14
	v_mul_f32_e32 v34, v26, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v11, v34, v26
	v_fmac_f32_e32 v34, v35, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v11, -v11, v34, v26
	v_div_fmas_f32 v24, v11, v24, v34
	v_div_fixup_f32 v11, v19, v16, v15
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v16, v36, v148 :: v_dual_add_nc_u32 v15, 48, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v15, 0x80000000, v15, s0
	buffer_load_u16 v15, v15, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v21, v22, v21, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v195, v21, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v22, 0xbfb8aa3b, v21 :: v_dual_lshlrev_b32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v15, v16, v15, v196
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v196, v15, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v16, 0xbfb8aa3b, v15
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v15
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v19
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v16, v16, v15
	v_rcp_f32_e32 v25, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v19, v25, 1.0
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v15, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v34, v26, v25
	v_fma_f32 v35, -v19, v34, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v35, v25
	v_fma_f32 v19, -v19, v34, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v19, v19, v25, v34
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v15, v19, v16, v15
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v19, v20, v148 :: v_dual_add_nc_u32 v16, 56, v1
	scratch_load_b32 v20, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v21
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v22, v22
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v16, v16, s[12:15], 0 offen
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v22, v22, v25
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v25, null, v22, v22, v21
	v_rcp_f32_e32 v26, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v25, v26, 1.0
	v_fmac_f32_e32 v26, v34, v26
	v_div_scale_f32 v34, vcc_lo, v21, v22, v21
	v_div_fixup_f32 v14, v24, v23, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v35, v34, v26
	v_fma_f32 v36, -v25, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v36, v26
	v_fma_f32 v25, -v25, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v25, v25, v26, v35
	v_div_fixup_f32 v64, v25, v22, v21
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v29, v148
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v16, v19, v16, v192
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v16, v192, v16, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v16
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v16
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v19, v19, v23
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v23, null, v19, v19, v16
	v_rcp_f32_e32 v24, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v23, v24, 1.0
	v_fmac_f32_e32 v24, v26, v24
	v_div_scale_f32 v26, vcc_lo, v16, v19, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v28, v26, v24
	v_fma_f32 v34, -v23, v28, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v34, v24
	v_fma_f32 v23, -v23, v28, v26
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v26, v18, v148
	scratch_load_b32 v18, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v23, v23, v24, v28
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v24, 0x44, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v201, v23, v19, v16
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v24, 0x80000000, v24, s0
	v_add_nc_u32_e32 v19, 0x48, v1
	buffer_load_u16 v24, v24, s[12:15], 0 offen
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v24, v26, v24, v191
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v24, v191, v24, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v187
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v26, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v187, v19, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v21, 0xbfb8aa3b, v19
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v27, null, v26, v26, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v28, v27
	v_fma_f32 v34, -v27, v28, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v34, v28
	v_div_scale_f32 v34, vcc_lo, v24, v26, v24
	v_mul_f32_e32 v35, v34, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v27, v35, v34
	v_fmac_f32_e32 v35, v36, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v27, -v27, v35, v34
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v34, v37, v148
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v27, v27, v28, v35
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v28, 64, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v199, v27, v26, v24
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v28, 0x80000000, v28, s0
	buffer_load_u16 v28, v28, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v28, v34, v28, v189
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v28, v189, v28, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v34, 0xbfb8aa3b, v28
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v28
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v34, v34, v35
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v34, 1.0, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v35, null, v34, v34, v28
	v_rcp_f32_e32 v36, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v35, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v28, v34, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v37, v36
	v_fma_f32 v43, -v35, v42, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v36
	v_fma_f32 v35, -v35, v42, v37
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v37, v44, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v35, v35, v36, v42
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v36, 0x4c, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v200, v35, v34, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v36, 0x80000000, v36, s0
	buffer_load_u16 v36, v36, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v36, v37, v36, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v36, v188, v36, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v37, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v37, v37
	v_ldexp_f32 v37, v37, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v42, null, v37, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v36, v37, v36
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v16, v42, v37, v36
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
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v24, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v19, v21, v19
	v_mul_f32_e32 v25, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v22, v25, v24
	v_fmac_f32_e32 v25, v26, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v25, v24
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v23, 0x54, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v191, v22, v21, v19
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v19, v90, v148
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v0, v23, v186
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v186, v0, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v23
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v23
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v24
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v0, null, v24, v24, v23
	v_rcp_f32_e32 v25, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v0, v25, 1.0
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v23, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v27, v26, v25
	v_fma_f32 v28, -v0, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v28, v25
	v_fma_f32 v0, -v0, v27, v26
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v26, v31, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v25, v0, v25, v27
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v0, 0x50, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v195, v25, v24, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v26, v0, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v109, v0, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v26, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v27, null, v26, v26, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v28, v27
	v_fma_f32 v34, -v27, v28, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v34, v28
	v_div_scale_f32 v34, vcc_lo, v0, v26, v0
	v_mul_f32_e32 v35, v34, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v27, v35, v34
	v_fmac_f32_e32 v35, v36, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v27, v35, v34
	v_div_fmas_f32 v27, v27, v28, v35
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v28, 0x5c, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v196, v27, v26, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v28, 0x80000000, v28, s0
	v_add_nc_u32_e32 v0, 0x64, v1
	buffer_load_u16 v28, v28, s[12:15], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v28, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v28, v32, v28, v234
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v28, v234, v28, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v19, v0, v255
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v32, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v255, v0, s0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v31, v108, v148
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v0, 0xbfb8aa3b, v21
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v32, v32
	v_ldexp_f32 v32, v32, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v34, null, v32, v32, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v35, v34
	v_fma_f32 v36, -v34, v35, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v36, v35
	v_div_scale_f32 v36, vcc_lo, v28, v32, v28
	v_mul_f32_e32 v37, v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v34, v37, v36
	v_fmac_f32_e32 v37, v42, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v34, v37, v36
	v_div_fmas_f32 v34, v34, v35, v37
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v35, 0x58, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v189, v34, v32, v28
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v35, 0x80000000, v35, s0
	buffer_load_u16 v35, v35, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v35, 16, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v31, v31, v35, v231
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v31, v231, v31, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v35, 0xbfb8aa3b, v31
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v31
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v35, v35, v36
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v35, 1.0, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v36, null, v35, v35, v31
	v_rcp_f32_e32 v37, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v36, v37, 1.0
	v_fmac_f32_e32 v37, v42, v37
	v_div_scale_f32 v42, vcc_lo, v31, v35, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v43, v42, v37
	v_fma_f32 v44, -v36, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v37
	v_fma_f32 v36, -v36, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v37, v43
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v22, 1.0, v0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v0, null, v22, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v19, v0
	v_fma_f32 v23, -v0, v19, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v23, v19
	v_div_scale_f32 v23, vcc_lo, v21, v22, v21
	v_mul_f32_e32 v24, v23, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v0, v24, v23
	v_fmac_f32_e32 v24, v25, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v24, v23
	v_div_fmas_f32 v23, v0, v19, v24
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v19, v68, v148 :: v_dual_add_nc_u32 v0, 0x60, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v192, v36, v35, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v186, v23, v22, v21
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v19, v0, v141
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v24, v141, v0, s0
	scratch_load_b32 v141, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v25, 1.0, v0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v0, null, v25, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v19, v0
	v_fma_f32 v26, -v0, v19, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v26, v19
	v_div_scale_f32 v26, vcc_lo, v24, v25, v24
	v_mul_f32_e32 v27, v26, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v0, v27, v26
	v_fmac_f32_e32 v27, v28, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v27, v26
	v_div_fmas_f32 v26, v0, v19, v27
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v19, v65, v148 :: v_dual_add_nc_u32 v0, 0x6c, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v19, v0, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v27, v194, v0, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v27
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v187, v26, v25, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v28, 1.0, v0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v0, null, v28, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v19, v0
	v_fma_f32 v30, -v0, v19, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v30, v19
	v_div_scale_f32 v30, vcc_lo, v27, v28, v27
	v_mul_f32_e32 v31, v30, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v0, v31, v30
	v_fmac_f32_e32 v31, v32, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v31, v30
	v_div_fmas_f32 v30, v0, v19, v31
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v19, v33, v148 :: v_dual_add_nc_u32 v0, 0x68, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v188, v30, v28, v27
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v19, v0, v178
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v178, v0, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v0
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v19, v19, v29
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v29, null, v19, v19, v0
	v_rcp_f32_e32 v31, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v29, v31, 1.0
	v_fmac_f32_e32 v31, v32, v31
	v_div_scale_f32 v32, vcc_lo, v0, v19, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v33, v32, v31
	v_fma_f32 v34, -v29, v33, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v31
	v_fma_f32 v29, -v29, v33, v32
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v32, v103, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v29, v29, v31, v33
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v31, 0x74, v1
	v_cndmask_b32_e64 v31, 0x80000000, v31, s0
	buffer_load_u16 v31, v31, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v31, v32, v31, v176
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v31, v176, v31, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v32, 0xbfb8aa3b, v31
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v31
	v_exp_f32_e32 v32, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v32, v32, v33
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v32, 1.0, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v33, null, v32, v32, v31
	v_rcp_f32_e32 v34, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v33, v34, 1.0
	v_fmac_f32_e32 v34, v35, v34
	v_div_scale_f32 v35, vcc_lo, v31, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v36, v35, v34
	v_fma_f32 v37, -v33, v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v34
	v_fma_f32 v33, -v33, v36, v35
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v35, v107, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v33, v33, v34, v36
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v34, 0x70, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v177, v33, v32, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v34, 0x80000000, v34, s0
	buffer_load_u16 v34, v34, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v34, v35, v34, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v34, v175, v34, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v175, v29, v19, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v19, v137, v148 :: v_dual_add_nc_u32 v0, 0x7c, v1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v35, 0xbfb8aa3b, v34 :: v_dual_lshlrev_b32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v19, v0, v169
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v169, v0, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_fmac_f32 v35, 0xbfb8aa3b, v34 :: v_dual_mul_f32 v0, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v35, v35
	v_ldexp_f32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v36, null, v35, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v37, v36
	v_fma_f32 v42, -v36, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v42, v37
	v_div_scale_f32 v42, vcc_lo, v34, v35, v34
	v_mul_f32_e32 v43, v42, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v36, v43, v42
	v_fmac_f32_e32 v43, v44, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v36, v43, v42
	v_div_fmas_f32 v36, v36, v37, v43
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v19
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v21
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v0, null, v21, v21, v19
	v_rcp_f32_e32 v22, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v0, v22, 1.0
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v19, v21, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v24, v23, v22
	v_fma_f32 v25, -v0, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v24, v25, v22
	v_div_fixup_f32 v178, v36, v35, v34
	v_fma_f32 v0, -v0, v24, v23
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v23, v139, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v22, v0, v22, v24
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v0, 0x78, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v169, v22, v21, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v19, v127, v148
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v23, v0, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v142, v0, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v23, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v23, v23, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v24, null, v23, v23, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v25, v24
	v_fma_f32 v26, -v24, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v0, v23, v0
	v_mul_f32_e32 v27, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v24, v27, v26
	v_fmac_f32_e32 v27, v28, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v24, -v24, v27, v26
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v26, v135, v148
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v24, v24, v25, v27
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v25, 0x84, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v158, v24, v23, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v25, 0x80000000, v25, s0
	v_add_nc_u32_e32 v0, 0x94, v1
	buffer_load_u16 v25, v25, s[12:15], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v25, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v25, v26, v25, v133
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v133, v25, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v19, v0, v96
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v26, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v96, v0, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v96.h, 0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v0, 0xbfb8aa3b, v19
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v27, null, v26, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v28, v27
	v_fma_f32 v29, -v27, v28, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v29, v28
	v_div_scale_f32 v29, vcc_lo, v25, v26, v25
	v_mul_f32_e32 v30, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v27, v30, v29
	v_fmac_f32_e32 v30, v31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v27, -v27, v30, v29
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v29, v130, v148
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v27, v27, v28, v30
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v28, 0x80, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v28, 0x80000000, v28, s0
	buffer_load_u16 v28, v28, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v28, v29, v28, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v28, v150, v28, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v150, v27, v26, v25
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v29, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v29, v29
	v_ldexp_f32 v29, v29, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v30, null, v29, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v31, v30
	v_fma_f32 v32, -v30, v31, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v32, v31
	v_div_scale_f32 v32, vcc_lo, v28, v29, v28
	v_mul_f32_e32 v33, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v30, v33, v32
	v_fmac_f32_e32 v33, v34, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v30, -v30, v33, v32
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v32, v129, v148
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v30, v30, v31, v33
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v31, 0x8c, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v31, 0x80000000, v31, s0
	buffer_load_u16 v31, v31, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v31, v32, v31, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v31, v97, v31, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v32, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v32, v32
	v_ldexp_f32 v32, v32, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v152, v30, v29, v28
	v_div_scale_f32 v33, null, v32, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v34, v33
	v_fma_f32 v35, -v33, v34, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v35, v34
	v_div_scale_f32 v35, vcc_lo, v31, v32, v31
	v_mul_f32_e32 v36, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v33, v36, v35
	v_fmac_f32_e32 v36, v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v33, v36, v35
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v35, v128, v148
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v33, v33, v34, v36
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v34, 0x88, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v156, v33, v32, v31
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v34, 0x80000000, v34, s0
	buffer_load_u16 v34, v34, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v34, v35, v34, v193
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v34, v193, v34, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v35, 0xbfb8aa3b, v34
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v34
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v35, v35, v36
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v35, 1.0, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v36, null, v35, v35, v34
	v_rcp_f32_e32 v37, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v36, v37, 1.0
	v_fmac_f32_e32 v37, v42, v37
	v_div_scale_f32 v42, vcc_lo, v34, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v43, v42, v37
	v_fma_f32 v44, -v36, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v37
	v_fma_f32 v36, -v36, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v37, v43
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v0, null, v21, v21, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v22, v0
	v_fma_f32 v23, -v0, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v19, v21, v19
	v_mul_f32_e32 v24, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v0, v24, v23
	v_fmac_f32_e32 v24, v25, v22
	v_div_fixup_f32 v140, v36, v35, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v0, v24, v23
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v23, v126, v148
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v22, v0, v22, v24
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v0, 0x90, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v135, v22, v21, v19
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v19, v60, v148
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v23, v0, v83
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v83, v0, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v23, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v0
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v23, v23, v24
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v24, null, v23, v23, v0
	v_rcp_f32_e32 v25, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v24, v25, 1.0
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v0, v23, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v27, v26, v25
	v_fma_f32 v28, -v24, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v28, v25
	v_fma_f32 v24, -v24, v27, v26
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v26, v123, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v24, v24, v25, v27
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v25, 0x9c, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v139, v24, v23, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v25, 0x80000000, v25, s0
	v_add_nc_u32_e32 v0, 0xac, v1
	buffer_load_u16 v25, v25, s[12:15], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v25, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v25, v26, v25, v82
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v82, v25, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v19, v0, v167
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v26, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v167, v0, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v0, 0xbfb8aa3b, v21
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v27, null, v26, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v28, v27
	v_fma_f32 v29, -v27, v28, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v29, v28
	v_div_scale_f32 v29, vcc_lo, v25, v26, v25
	v_mul_f32_e32 v30, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v27, v30, v29
	v_fmac_f32_e32 v30, v31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v27, -v27, v30, v29
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v29, v122, v148
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v27, v27, v28, v30
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v28, 0x98, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v133, v27, v26, v25
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v28, 0x80000000, v28, s0
	buffer_load_u16 v28, v28, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v28, v29, v28, v131
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v28, v131, v28, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v29, 0xbfb8aa3b, v28
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v28
	v_exp_f32_e32 v29, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v29, v29, v30
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v29, 1.0, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v30, null, v29, v29, v28
	v_rcp_f32_e32 v31, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v30, v31, 1.0
	v_fmac_f32_e32 v31, v32, v31
	v_div_scale_f32 v32, vcc_lo, v28, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v33, v32, v31
	v_fma_f32 v34, -v30, v33, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v31
	v_fma_f32 v30, -v30, v33, v32
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v32, v121, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v30, v30, v31, v33
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v31, 0xa4, v1
	v_cndmask_b32_e64 v31, 0x80000000, v31, s0
	buffer_load_u16 v31, v31, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v31, v32, v31, v78
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v31, v78, v31, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v32, 0xbfb8aa3b, v31
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v31
	v_exp_f32_e32 v32, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v32, v32, v33
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v75, v30, v29, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v33, null, v32, v32, v31
	v_rcp_f32_e32 v34, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v33, v34, 1.0
	v_fmac_f32_e32 v34, v35, v34
	v_div_scale_f32 v35, vcc_lo, v31, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v36, v35, v34
	v_fma_f32 v37, -v33, v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v34
	v_fma_f32 v33, -v33, v36, v35
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v35, v119, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v33, v33, v34, v36
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v34, 0xa0, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v121, v33, v32, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v34, 0x80000000, v34, s0
	buffer_load_u16 v34, v34, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v34, v35, v34, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v34, v113, v34, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v35, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v35, v35
	v_ldexp_f32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v36, null, v35, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v37, v36
	v_fma_f32 v42, -v36, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v42, v37
	v_div_scale_f32 v42, vcc_lo, v34, v35, v34
	v_mul_f32_e32 v43, v42, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v36, v43, v42
	v_fmac_f32_e32 v43, v44, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v36, v43, v42
	v_div_fmas_f32 v36, v36, v37, v43
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v21
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v19
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v22, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v0, null, v22, v22, v21
	v_rcp_f32_e32 v19, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v0, v19, 1.0
	v_fmac_f32_e32 v19, v23, v19
	v_div_scale_f32 v23, vcc_lo, v21, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v24, v23, v19
	v_fma_f32 v25, -v0, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v19
	v_fma_f32 v0, -v0, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v23, v0, v19, v24
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v19, v50, v148 :: v_dual_add_nc_u32 v0, 0xa8, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v122, v36, v35, v34
	v_div_fixup_f32 v119, v23, v22, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v19, v0, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v141, v0, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v0, null, v24, v24, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v25, v0
	v_fma_f32 v26, -v0, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v19, v24, v19
	v_mul_f32_e32 v27, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v0, v27, v26
	v_fmac_f32_e32 v27, v28, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v0, v27, v26
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v26, v38, v148
	scratch_load_b32 v38, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v25, v0, v25, v27
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v0, 0xb4, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v50, v25, v24, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v19, v221, v148
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v26, v0, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v38, v0, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v27, 1.0, v0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v0, null, v27, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v28, v0
	v_fma_f32 v29, -v0, v28, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v29, v28
	v_div_scale_f32 v29, vcc_lo, v26, v27, v26
	v_mul_f32_e32 v30, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v0, v30, v29
	v_fmac_f32_e32 v30, v31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v0, -v0, v30, v29
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v29, v102, v148
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v102, s1, v220, 1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v28, v0, v28, v30
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v0, 0xb0, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v117, v28, v27, v26
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v29, v0, v157
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v157, v0, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v29, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v0
	v_exp_f32_e32 v29, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v29, v29, v30
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v29, 1.0, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v30, null, v29, v29, v0
	v_rcp_f32_e32 v31, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v30, v31, 1.0
	v_fmac_f32_e32 v31, v32, v31
	v_div_scale_f32 v32, vcc_lo, v0, v29, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v33, v32, v31
	v_fma_f32 v34, -v30, v33, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v31
	v_fma_f32 v30, -v30, v33, v32
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v32, v250, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v30, v30, v31, v33
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v31, 0xbc, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v65, v30, v29, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v31, 0x80000000, v31, s0
	v_add_nc_u32_e32 v0, 0xc4, v1
	buffer_load_u16 v31, v31, s[12:15], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v31, v32, v31, v155
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v31, v155, v31, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v19, v0, v153
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v32, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v153, v0, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v0, 0xbfb8aa3b, v23
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v32, v32
	v_ldexp_f32 v32, v32, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v33, null, v32, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v34, v33
	v_fma_f32 v35, -v33, v34, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v35, v34
	v_div_scale_f32 v35, vcc_lo, v31, v32, v31
	v_mul_f32_e32 v36, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v33, v36, v35
	v_fmac_f32_e32 v36, v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v33, v36, v35
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v35, v100, v148
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v33, v33, v34, v36
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v34, 0xb8, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v34, 0x80000000, v34, s0
	buffer_load_u16 v34, v34, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v34, v35, v34, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v34, v154, v34, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v35, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v34
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v116, v33, v32, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v35, v35
	v_ldexp_f32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v36, null, v35, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v37, v36
	v_fma_f32 v42, -v36, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v42, v37
	v_div_scale_f32 v42, vcc_lo, v34, v35, v34
	v_mul_f32_e32 v43, v42, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v36, v43, v42
	v_fmac_f32_e32 v43, v44, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v36, v43, v42
	v_div_fmas_f32 v36, v36, v37, v43
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v29, v36, v35, v34
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v0, null, v24, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v19, v0
	v_fma_f32 v21, -v0, v19, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v21, v19
	v_div_scale_f32 v21, vcc_lo, v23, v24, v23
	v_mul_f32_e32 v22, v21, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v0, v22, v21
	v_fmac_f32_e32 v22, v25, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v22, v21
	v_div_fmas_f32 v25, v0, v19, v22
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v19, v233, v148 :: v_dual_add_nc_u32 v0, 0xc0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v19, v0, v213
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v213, v0, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v27, 1.0, v0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v0, null, v27, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v19, v0
	v_fma_f32 v21, -v0, v19, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v21, v19
	v_div_scale_f32 v21, vcc_lo, v26, v27, v26
	v_mul_f32_e32 v22, v21, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v0, v22, v21
	v_fmac_f32_e32 v22, v28, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v22, v21
	v_div_fmas_f32 v28, v0, v19, v22
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v19, v47, v148 :: v_dual_add_nc_u32 v0, 0xcc, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v60, v28, v27, v26
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v19, v0, v88
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v88, v0, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v30
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v30
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v19
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v32, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v0, null, v32, v32, v30
	v_rcp_f32_e32 v19, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v0, v19, 1.0
	v_fmac_f32_e32 v19, v21, v19
	v_div_scale_f32 v21, vcc_lo, v30, v32, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v22, v21, v19
	v_fma_f32 v31, -v0, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v31, v19
	v_fma_f32 v0, -v0, v22, v21
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v147, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v0, v0, v19, v22
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v19, 0xc8, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v109, v0, v32, v30
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	v_add_nc_u32_e32 v0, 0xdc, v1
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v132
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v33, v132, v19, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v33
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v33
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v19, v19, v21
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v34, 1.0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v34, v34, v33
	v_rcp_f32_e32 v21, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v19, v21, 1.0
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v33, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v31, v22, v21
	v_fma_f32 v35, -v19, v31, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v35, v21
	v_fma_f32 v19, -v19, v31, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v19, v21, v31
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v19, 0xd4, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v76, v148
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v21, v19, v240
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v240, v19, s0
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
	v_rcp_f32_e32 v31, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v22, v31, 1.0
	v_fmac_f32_e32 v31, v36, v31
	v_div_scale_f32 v36, vcc_lo, v19, v21, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v37, v36, v31
	v_fma_f32 v42, -v22, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v42, v31
	v_fma_f32 v22, -v22, v37, v36
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v36, v211, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v22, v22, v31, v37
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v31, 0xd0, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v108, v22, v21, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v31, 0x80000000, v31, s0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v19, v203, v148
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v31, v31, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v31, v36, v31, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v36, v239, v31, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v31, 0xbfb8aa3b, v36
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v33, v35, v34, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v31, v31
	v_ldexp_f32 v31, v31, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v37, 1.0, v31
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v31, null, v37, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v31
	v_fma_f32 v43, -v31, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v36, v37, v36
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v31, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v31, v44, v43
	v_div_fmas_f32 v42, v31, v42, v44
	v_div_fixup_f32 v31, v25, v24, v23
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v23, v91, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v23, v0, v238
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v238, v0, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v23, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v0
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v23, v23, v24
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v24, null, v23, v23, v0
	v_rcp_f32_e32 v25, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v24, v25, 1.0
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v0, v23, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v27, v26, v25
	v_fma_f32 v28, -v24, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v28, v25
	v_fma_f32 v24, -v24, v27, v26
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v26, v206, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v24, v24, v25, v27
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v25, 0xd8, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v107, v24, v23, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v25, 0x80000000, v25, s0
	v_add_nc_u32_e32 v0, 0xec, v1
	buffer_load_u16 v25, v25, s[12:15], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v25, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v25, v26, v25, v237
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v237, v25, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v19, v0, v136
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v26, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v136, v0, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v0, 0xbfb8aa3b, v19
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v25
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v30, v42, v37, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v27, null, v26, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v28, v27
	v_fma_f32 v32, -v27, v28, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v32, v28
	v_div_scale_f32 v32, vcc_lo, v25, v26, v25
	v_mul_f32_e32 v34, v32, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v27, v34, v32
	v_fmac_f32_e32 v34, v35, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v27, -v27, v34, v32
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v32, v205, v148
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v27, v27, v28, v34
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v28, 0xe4, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v28, 0x80000000, v28, s0
	buffer_load_u16 v28, v28, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v28, v32, v28, v235
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v28, v235, v28, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v32, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v32, v32
	v_ldexp_f32 v32, v32, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v34, 1.0, v32
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v32, null, v34, v34, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v35, v32
	v_fma_f32 v36, -v32, v35, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v36, v35
	v_div_scale_f32 v36, vcc_lo, v28, v34, v28
	v_mul_f32_e32 v37, v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v32, v37, v36
	v_fmac_f32_e32 v37, v42, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v32, v37, v36
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v36, v204, v148
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v35, v32, v35, v37
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v32, 0xe0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v32, 0x80000000, v32, s0
	buffer_load_u16 v32, v32, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v32, v36, v32, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v36, v105, v32, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v105, v35, v34, v28
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v32, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v32, v32
	v_ldexp_f32 v32, v32, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v37, 1.0, v32
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v32, null, v37, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v32
	v_fma_f32 v43, -v32, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v36, v37, v36
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v32, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v44, v43
	v_div_fmas_f32 v42, v32, v42, v44
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v32, v27, v26, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v38, v42, v37, v36
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v0, null, v21, v21, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v22, v0
	v_fma_f32 v23, -v0, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v19, v21, v19
	v_mul_f32_e32 v24, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v0, v24, v23
	v_fmac_f32_e32 v24, v25, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v0, v24, v23
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v23, v198, v148
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v22, v0, v22, v24
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v0, 0xe8, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v23, v0, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v162, v0, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v0, null, v24, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v25, v0
	v_fma_f32 v26, -v0, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v23, v24, v23
	v_mul_f32_e32 v27, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v0, v27, v26
	v_fmac_f32_e32 v27, v28, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v0, v27, v26
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v26, v197, v148
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v25, v0, v25, v27
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v0, 0xf4, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v26, v0, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v161, v0, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v27, 1.0, v0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v0, null, v27, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v28, v0
	v_fma_f32 v34, -v0, v28, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v34, v28
	v_div_scale_f32 v34, vcc_lo, v26, v27, v26
	v_mul_f32_e32 v35, v34, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v0, v35, v34
	v_fmac_f32_e32 v35, v36, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v0, v35, v34
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v34, v138, v148
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v0, v0, v28, v35
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v28, 0xf0, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v103, v0, v27, v26
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v28, 0x80000000, v28, s0
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_or_b32_e32 v0, s2, v220
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v27, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v28, v28, s[12:15], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v0, v0, s22, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v27, v27, v148
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v28, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v28, v34, v28, v98
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v28, v98, v28, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v34, 0xbfb8aa3b, v28
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v28
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v34, v34, v35
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v34, 1.0, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v35, null, v34, v34, v28
	v_rcp_f32_e32 v36, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v35, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v28, v34, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v37, v36
	v_fma_f32 v43, -v35, v42, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v36
	v_fma_f32 v35, -v35, v42, v37
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v37, v104, v148
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v35, v35, v36, v42
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v36, 0xfc, v1
	v_add_nc_u32_e32 v1, 0xf8, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v99, v25, v24, v23
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v23, off, off offset:148
	scratch_load_b32 v24, off, off offset:144
	scratch_load_b32 v25, off, off offset:88
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v36, 0x80000000, v36, s0
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	s_clause 0x1
	buffer_load_u16 v36, v36, s[12:15], 0 offen
	buffer_load_u16 v1, v1, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v23, v23, v148
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v24, v24, v148
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v25, v25, v148
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v36, 16, v36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v36, v37, v36, v143
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v36, v143, v36, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v37, 0xbfb8aa3b, v36
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v36
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v37, v37, v42
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v37, 1.0, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v42, null, v37, v37, v36
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v36, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v42, v42, v43, v45
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v43, v48, v148
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v37, v42, v37, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v1, v43, v1, v209
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v1, v209, v1, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v43, 0xbfb8aa3b, v1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v1
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v43, v43, v44
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v43, 1.0, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v44, null, v43, v43, v1
	v_rcp_f32_e32 v45, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v44, v45, 1.0
	v_fmac_f32_e32 v45, v46, v45
	v_div_scale_f32 v46, vcc_lo, v1, v43, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v47, v46, v45
	v_fma_f32 v48, -v44, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v45
	v_fma_f32 v44, -v44, v47, v46
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v44, v44, v45, v47
	v_div_fixup_f32 v45, v22, v21, v19
	.loc	1 180 20 is_stmt 1              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v70, v148
	scratch_load_b32 v22, off, off offset:140 ; 4-byte Folded Reload
	v_mul_f32_e32 v21, v94, v148
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v100, v44, v43, v1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v1, v214, v148
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v104, v35, v34, v28
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v35, 0xf8, v102
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v28, off, off offset:32
	scratch_load_b32 v34, off, off offset:24
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v1, v0, v69
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v1, 4, v102
	v_cndmask_b32_e64 v35, 0x80000000, v35, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v69, v0, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	s_clause 0x1
	buffer_load_u16 v35, v35, s[12:15], 0 offen
	buffer_load_u16 v1, v1, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v35, 16, v35
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v1, v19, v1, v106
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v19, 12, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v1, v106, v1, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v1, v1, v5
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	v_add_nc_u32_e32 v5, 16, v102
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	buffer_load_u16 v5, v5, s[12:15], 0 offen
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v0, v0, v2 :: v_dual_lshlrev_b32 v19, 16, v19
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v19, v21, v19, v67
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v21, v184, v148
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v67, v19, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v185, v148
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v96.l, v0.h
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v4, v2, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v19, v5, v22
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v19, 20, v102
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v19, v21, v19, v66
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v21.l, v1.h
	v_mov_b16_e32 v21.h, v96.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v66, v19, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v181, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v21, v1, v21, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v1, v22, v5, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v5, 1, v96
	v_mov_b16_e32 v96.l, v4.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v5, v0, v5, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v0, v1, v13 :: v_dual_mul_f32 v1, v2, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v6, 1, v96
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v13, v183, v148
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v96.l, v1.h
	v_cmp_o_f32_e64 s2, v1, v1
	v_and_b32_e32 v2, 1, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v2, v1, v2, 0x7fff
	v_mov_b16_e32 v1.l, v0.h
	v_mov_b16_e32 v1.h, v96.h
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v1, 1, v1
	v_add3_u32 v1, v0, v1, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v21.h, vcc_lo
	v_cndmask_b16 v0.l, 0x7fff, v5.h, s1
	v_cmp_eq_u32_e32 vcc_lo, 0, v164
	v_cmp_o_f32_e64 s1, v4, v4
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s3
	v_mov_b32_e32 v1, 0x5410
	scratch_load_b32 v21, off, off offset:44 ; 4-byte Folded Reload
	v_dual_cndmask_b32 v5, v2, v0 :: v_dual_cndmask_b32 v0, v0, v2
	v_mov_b32_e32 v2, 0x7632
	v_cndmask_b32_e32 v1, 0x1054, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v0, v0, s5, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v2, 0x3276, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v1, v1, 8, v1
	v_lshl_or_b32 v2, v2, 8, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v1, 0x540054, v1
	v_and_b32_e32 v2, 0x760076, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v1, v1, 4, v1
	v_lshl_or_b32 v2, v2, 4, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v36, 0x5040504, v1
	v_and_b32_e32 v94, 0x7060706, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_perm_b32 v1, v0, v5, v36
	v_perm_b32 v2, v0, v5, v94
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v5, v254, v148 :: v_dual_add_nc_u32 v0, 8, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v5, v0, v101
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v5, 28, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v101, v0, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v3
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v5, v5, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v3, v4, v6, 0x7fff
	v_mov_b16_e32 v6.h, v96.h
	v_mov_b16_e32 v6.l, v0.h
	v_cmp_o_f32_e64 s2, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v6, 1, v6
	v_add3_u32 v6, v0, v6, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v13, v5, v229
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v13, 24, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v229, v5, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v4, v5, v7
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v13, v13, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v7, v179, v148
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v96.l, v4.h
	v_cmp_o_f32_e64 s3, v4, v4
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v13, 16, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v13, v19, v13, v227
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v227, v13, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v13, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v0, v5, v9 :: v_dual_and_b32 v5, 1, v96
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v9, v173, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s4, v0, v0
	v_add3_u32 v5, v4, v5, 0x7fff
	v_mov_b16_e32 v4.l, v0.h
	v_mov_b16_e32 v4.h, v96.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v4, 1, v4
	v_add3_u32 v4, v0, v4, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s1
	v_cndmask_b16 v0.l, 0x7fff, v6.h, s2
	v_cndmask_b16 v3.h, 0x7fff, v5.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v5, v253, v148
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v3.l, 0x7fff, v4.h, s4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v6, v252, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e32 v4, v0, v3, vcc_lo
	v_cndmask_b32_e32 v0, v3, v0, vcc_lo
	v_permlanex16_b32 v4, v4, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v3, v4, v0, v36
	v_perm_b32 v4, v4, v0, v94
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v0, 36, v102
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v5, v0, v226
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v5, 32, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v226, v0, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v8
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v8, v245, v148
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v96.l, v0.h
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v5, v5, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v6, v5, v225
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v225, v5, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v5, v5, v12 :: v_dual_add_nc_u32 v6, 44, v102
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v12, v170, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v5, v5
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v6, v6, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v6, v7, v6, v224
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v7, 52, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v224, v6, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	buffer_load_u16 v7, v7, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v7, v8, v7, v223
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v8, 48, v102
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	buffer_load_u16 v8, v8, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v8, v9, v8, v218
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v9, 1, v96
	v_add3_u32 v9, v0, v9, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v6, v11
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v223, v7, s0
	v_cndmask_b32_e64 v7, v218, v8, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v8.l, v5.h
	v_mov_b16_e32 v8.h, v96.h
	v_mov_b16_e32 v96.l, v0.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v6, v6, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v8, 1, v8
	v_cmp_o_f32_e64 s3, v6, v6
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v8, v5, v8, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v5, v7, v15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v7, 1, v96
	v_mov_b16_e32 v96.l, v6.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v15, off, off offset:212 ; 4-byte Folded Reload
	v_mul_f32_e32 v13, v13, v148
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s4, v5, v5
	v_add3_u32 v7, v0, v7, 0x7fff
	v_and_b32_e32 v11, 1, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v6, v11, 0x7fff
	v_mov_b16_e32 v6.l, v5.h
	v_mov_b16_e32 v6.h, v96.h
	v_and_b32_e32 v6, 1, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v6, v5, v6, 0x7fff
	v_cndmask_b16 v5.h, 0x7fff, v9.h, s1
	v_cndmask_b16 v5.l, 0x7fff, v8.h, s2
	v_cndmask_b16 v8.h, 0x7fff, v11.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v9, v93, v148
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v8.l, 0x7fff, v6.h, s4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v11, v172, v148
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v6, v5, v8, vcc_lo
	v_cndmask_b32_e32 v8, v8, v5, vcc_lo
	v_permlanex16_b32 v6, v6, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v5, v6, v8, v36
	v_perm_b32 v6, v6, v8, v94
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v8, 40, v102
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	buffer_load_u16 v8, v8, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v15, v15, v148
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v8, v9, v8, v217
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v9, 60, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v8, v217, v8, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v8, v8, v10
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v9, v9, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v10.h, v96.h
	v_mov_b16_e32 v10.l, v8.h
	v_cmp_o_f32_e64 s2, v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v10, 1, v10
	v_add3_u32 v10, v8, v10, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v9, v11, v9, v216
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v11, 56, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v9, v216, v9, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v9, v9, v64
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v11, v11, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v96.l, v9.h
	v_cmp_o_f32_e64 s3, v9, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v8, 1, v96
	v_add3_u32 v8, v9, v8, 0x7fff
	v_mov_b16_e32 v9.h, v96.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v11, v12, v11, v215
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v12, v17, v148
	scratch_load_b32 v17, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v215, v11, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v11, v120, v148
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v201
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v9.l, v0.h
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v9, 1, v9
	v_add3_u32 v9, v0, v9, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v7.h, s1
	v_cndmask_b16 v0.l, 0x7fff, v10.h, s2
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v10, v160, v148
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v7.l, 0x7fff, v9.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v9, v159, v148 :: v_dual_cndmask_b32 v8, v0, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e32 v0, v7, v0, vcc_lo
	v_permlanex16_b32 v8, v8, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v7, v8, v0, v36
	v_perm_b32 v8, v8, v0, v94
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v0, 0x44, v102
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v17, v17, v148
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v9, v0, v212
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v9, 64, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v212, v0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v199
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v9, v9, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v96.l, v0.h
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v9, v10, v9, v210
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v9, v210, v9, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v9, v9, v200 :: v_dual_add_nc_u32 v10, 0x4c, v102
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v9, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v10, v10, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v10, v11, v10, v208
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v11, 0x50, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v208, v10, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	buffer_load_u16 v11, v11, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v11, v12, v11, v202
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v11, v202, v11, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v12, 0x54, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	buffer_load_u16 v12, v12, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v12, v13, v12, v207
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v13, 1, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v13, v0, v13, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v10, v16
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v207, v12, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v12.l, v9.h
	v_mov_b16_e32 v12.h, v96.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v16, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v96.l, v0.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v10, v10, v195
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v10, v10
	v_add3_u32 v12, v9, v12, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v9, v11, v196
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v11, 1, v96
	v_mov_b16_e32 v96.l, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s4, v9, v9
	v_add3_u32 v11, v0, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v14, 1, v96
	v_add3_u32 v14, v10, v14, 0x7fff
	v_mov_b16_e32 v10.l, v9.h
	v_mov_b16_e32 v10.h, v96.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v10, 1, v10
	v_add3_u32 v10, v9, v10, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v13.h, s1
	v_cndmask_b16 v9.l, 0x7fff, v12.h, s2
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v13, off, off offset:128
	scratch_load_b32 v14, off, off offset:132
	scratch_load_b32 v19, off, off offset:56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v12.l, 0x7fff, v10.h, s4
	v_cmp_o_f32_e64 s1, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v10, v9, v12, vcc_lo
	v_cndmask_b32_e32 v12, v12, v9, vcc_lo
	v_permlanex16_b32 v10, v10, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v9, v10, v12, v36
	v_perm_b32 v10, v10, v12, v94
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v12, 0x48, v102
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	buffer_load_u16 v12, v12, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v16, v16, v148
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v13, v13, v148
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v14, v14, v148
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v12, 16, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v12, v13, v12, v63
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v13, 0x5c, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v12, v63, v12, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v12, v12, v191
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v13, v13, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v12, v12
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v13, 16, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v13, v14, v13, v62
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v14, 0x58, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v13, v62, v13, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v13, v13, v189
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v14, v14, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v96.l, v13.h
	v_cmp_o_f32_e64 s3, v13, v13
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v14, 16, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v14, v15, v14, v71
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	scratch_load_b32 v15, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v71, v14, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v14.l, v12.h
	v_mov_b16_e32 v14.h, v96.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v192
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v14, 1, v14
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v14, v12, v14, 0x7fff
	v_and_b32_e32 v12, 1, v96
	v_add3_u32 v12, v13, v12, 0x7fff
	v_mov_b16_e32 v13.l, v0.h
	v_mov_b16_e32 v13.h, v96.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v13, v0, v13, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v11.h, s1
	v_cndmask_b16 v0.l, 0x7fff, v14.h, s2
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v14, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v11.l, 0x7fff, v13.h, s4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v13, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e32 v12, v0, v11, vcc_lo
	v_cndmask_b32_e32 v0, v11, v0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v12, v12, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v11, v12, v0, v36
	v_perm_b32 v12, v12, v0, v94
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v0, 0x60, v102
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v15, v15, v148
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v14, v14, v148
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v13, v13, v148
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v13, v0, v61
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v13, 0x64, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v61, v0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v187
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v13, v13, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v0, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v13, 16, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v13, v14, v13, v59
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v14, 0x6c, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v13, v59, v13, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v13, v13, v186
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v14, v14, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v96.l, v13.h
	v_cmp_o_f32_e64 s1, v13, v13
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v14, 16, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v14, v15, v14, v58
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v14, v58, v14, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v15, v14, v188 :: v_dual_add_nc_u32 v14, 0x70, v102
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	buffer_load_u16 v14, v14, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v14, 16, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v14, v16, v14, v19
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v16, 0x74, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v14, v19, v14, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v19, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v16, v16, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v19, v19, v148
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v16, v17, v16, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v17, 1, v96
	v_mov_b16_e32 v96.l, v15.h
	v_add3_u32 v17, v13, v17, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v13, v18, v16, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.l, v0.h
	v_mov_b16_e32 v16.h, v96.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v13, v13, v177 :: v_dual_and_b32 v18, 1, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v16, 1, v16
	v_add3_u32 v18, v15, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v96.l, v13.h
	v_cmp_o_f32_e64 s3, v13, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v16, v0, v16, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v14, v178
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v14, 1, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v0, v0
	v_add3_u32 v14, v13, v14, 0x7fff
	v_mov_b16_e32 v13.l, v0.h
	v_mov_b16_e32 v13.h, v96.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s3
	v_and_b32_e32 v13, 1, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v13, v0, v13, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v17.h, s1
	v_cndmask_b16 v0.l, 0x7fff, v16.h, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v16, off, off offset:184
	scratch_load_b32 v17, off, off offset:48
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v14.l, 0x7fff, v13.h, s4
	v_cmp_o_f32_e64 s1, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v13, v0, v14 :: v_dual_cndmask_b32 v0, v14, v0
	v_permlanex16_b32 v14, v13, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v13, v14, v0, v36
	v_perm_b32 v14, v14, v0, v94
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v0, 0x68, v102
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v16, v16, v148
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v16, v0, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v16, 0x7c, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v17, v0, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v17, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v16, v16, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v17, v17, v148
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v16, v17, v16, v21
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v17, 0x78, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v16, v21, v16, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v21, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v16, v16, v169
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v17, v17, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v96.l, v16.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v21, v21, v148
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v17, v19, v17, v20
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	scratch_load_b32 v19, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v20, v17, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.h, v96.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v175
	scratch_load_b32 v20, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.l, v0.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v17, 1, v17
	v_cmp_o_f32_e64 s2, v0, v0
	v_add3_u32 v17, v0, v17, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v0, v15, v158 :: v_dual_and_b32 v15, 1, v96
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s3, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s4, v0, v0
	v_add3_u32 v15, v16, v15, 0x7fff
	v_mov_b16_e32 v16.l, v0.h
	v_mov_b16_e32 v16.h, v96.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s3
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v16, v0, v16, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v18.h, s1
	v_cndmask_b16 v0.l, 0x7fff, v17.h, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:176
	scratch_load_b32 v18, off, off offset:168
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v15.l, 0x7fff, v16.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v16, v0, v15, vcc_lo
	v_cndmask_b32_e32 v0, v15, v0, vcc_lo
	v_permlanex16_b32 v16, v16, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v15, v16, v0, v36
	v_perm_b32 v16, v16, v0, v94
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v0, 0x80, v102
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v17, v17, v148
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v18, v18, v148
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v17, v0, v20
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v17, 0x84, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v20, v0, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v20, off, off offset:164 ; 4-byte Folded Reload
	v_mul_f32_e32 v19, v19, v148
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v152
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v17, v17, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v0, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v20, v20, v148 :: v_dual_lshlrev_b32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v17, v18, v17, v244
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v18, 0x8c, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v244, v17, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v18, 0x80000000, v18, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v17, v17, v150
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v18, v18, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v96.l, v17.h
	v_cmp_o_f32_e64 s1, v17, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v18, v19, v18, v243
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v243, v18, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v19, v18, v156 :: v_dual_add_nc_u32 v18, 0x90, v102
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v18, 0x80000000, v18, s0
	buffer_load_u16 v18, v18, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v18, v20, v18, v248
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v20, 0x94, v102
	v_cndmask_b32_e64 v20, 0x80000000, v20, s0
	buffer_load_u16 v20, v20, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v20, v21, v20, v247
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v21, 1, v96
	v_mov_b16_e32 v96.l, v19.h
	v_add3_u32 v21, v17, v21, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v248, v18, s0
	v_cndmask_b32_e64 v18, v247, v20, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e32 v20.h, v96.h
	v_and_b32_e32 v22, 1, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v22, v19, v22, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v20, v0, v20, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v17, v139
	v_mul_f32_e32 v17, v18, v135
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v96.l, v17.h
	v_cmp_o_f32_e64 s3, v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v18, 1, v96
	v_add3_u32 v18, v17, v18, 0x7fff
	v_mov_b16_e32 v17.l, v0.h
	v_mov_b16_e32 v17.h, v96.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s3
	v_and_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v17, v0, v17, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v21.h, s1
	v_cndmask_b16 v0.l, 0x7fff, v20.h, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:152
	scratch_load_b32 v21, off, off offset:156
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v18.l, 0x7fff, v17.h, s4
	v_cmp_o_f32_e64 s1, v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v17, v0, v18 :: v_dual_cndmask_b32 v0, v18, v0
	v_permlanex16_b32 v18, v17, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v17, v18, v0, v36
	v_perm_b32 v18, v18, v0, v94
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v0, 0x88, v102
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v20, v20, v148
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v21, v21, v148
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v20, v0, v246
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v20, 0x9c, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v246, v0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v140
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v20, v20, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v0, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v20, v21, v20, v86
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v21, 0x98, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v86, v20, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v20, v20, v133
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v21, v21, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v96.l, v20.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v21, v23, v21, v95
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v23, v72, v148
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v95, v21, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v21.l, v0.h
	v_mov_b16_e32 v21.h, v96.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v21, v0, v21, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v0, v19, v75 :: v_dual_and_b32 v19, 1, v96
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s3, v20, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s4, v0, v0
	v_add3_u32 v19, v20, v19, 0x7fff
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e32 v20.h, v96.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v19.h, 0x7fff, v19.h, s3
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v20, v0, v20, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v22.h, s1
	v_cndmask_b16 v0.l, 0x7fff, v21.h, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v21, v73, v148
	v_mul_f32_e32 v22, v57, v148
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v19.l, 0x7fff, v20.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v20, v0, v19, vcc_lo
	v_cndmask_b32_e32 v0, v19, v0, vcc_lo
	v_permlanex16_b32 v20, v20, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v19, v20, v0, v36
	v_perm_b32 v20, v20, v0, v94
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v0, 0xa4, v102
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v21, v0, v87
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v21, 0xa0, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v87, v0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v121
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v21, v21, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v96.l, v0.h
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v21, v22, v21, v89
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v22, 0xac, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v89, v21, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v21, v21, v122
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v22, v22, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v21, v21
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v22, v23, v22, v74
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v23, 0xb0, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v22, v74, v22, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v23, v24, v23, v115
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v24, 0xb4, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v24, 0x80000000, v24, s0
	buffer_load_u16 v24, v24, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v24, v25, v24, v112
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v25, 1, v96
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v25, v0, v25, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v22, v119
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v22, v115, v23, s0
	v_cndmask_b32_e64 v23, v112, v24, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v24.l, v21.h
	v_mov_b16_e32 v24.h, v96.h
	v_mov_b16_e32 v96.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v24, 1, v24
	v_add3_u32 v24, v21, v24, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v21, v22, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v22, v23, v117 :: v_dual_and_b32 v23, 1, v96
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s4, v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v96.l, v22.h
	v_cmp_o_f32_e64 s3, v22, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v23, v0, v23, 0x7fff
	v_and_b32_e32 v26, 1, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v26, v22, v26, 0x7fff
	v_mov_b16_e32 v22.l, v21.h
	v_mov_b16_e32 v22.h, v96.h
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v22, v21, v22, 0x7fff
	v_cndmask_b16 v21.h, 0x7fff, v25.h, s1
	v_cndmask_b16 v21.l, 0x7fff, v24.h, s2
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:116
	scratch_load_b32 v26, off, off offset:84
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v24.l, 0x7fff, v22.h, s4
	v_cmp_o_f32_e64 s1, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v22, v21, v24, vcc_lo
	v_cndmask_b32_e32 v24, v24, v21, vcc_lo
	v_permlanex16_b32 v22, v22, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v21, v22, v24, v36
	v_perm_b32 v22, v22, v24, v94
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v24, 0xa8, v102
	v_cndmask_b32_e64 v24, 0x80000000, v24, s0
	buffer_load_u16 v24, v24, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v25, v25, v148
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v26, v26, v148
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v24, v25, v24, v110
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v25, 0xbc, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v24, v110, v24, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v25, 0x80000000, v25, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v24, v24, v50
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v25, v25, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v24, v24
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v25, v26, v25, v114
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v26, 0xb8, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v114, v25, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v26, 0x80000000, v26, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v25, v25, v116
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v26, v26, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v96.l, v25.h
	v_cmp_o_f32_e64 s3, v25, v25
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v27, v26, v118
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	scratch_load_b32 v27, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v118, v26, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v26.l, v24.h
	v_mov_b16_e32 v26.h, v96.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v0, v0, v29 :: v_dual_mul_f32 v29, v166, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v26, 1, v26
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v26, v24, v26, 0x7fff
	v_and_b32_e32 v24, 1, v96
	v_add3_u32 v24, v25, v24, 0x7fff
	v_mov_b16_e32 v25.l, v0.h
	v_mov_b16_e32 v25.h, v96.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v25, 1, v25
	v_add3_u32 v25, v0, v25, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v23.h, s1
	v_cndmask_b16 v0.l, 0x7fff, v26.h, s2
	v_cndmask_b16 v23.h, 0x7fff, v24.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v26, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v23.l, 0x7fff, v25.h, s4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v25, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e32 v24, v0, v23, vcc_lo
	v_cndmask_b32_e32 v0, v23, v0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v24, v24, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v23, v24, v0, v36
	v_perm_b32 v24, v24, v0, v94
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v0, 0xc0, v102
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v27, v27, v148
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v26, v26, v148
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v25, v25, v148
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v25, v0, v79
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v25, 0xc4, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v79, v0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v25, 0x80000000, v25, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v60
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v25, v25, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v0, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v25, v26, v25, v124
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v26, 0xcc, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v124, v25, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v26, 0x80000000, v26, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v25, v25, v31
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v26, v26, s[12:15], 0 offen
	scratch_load_b32 v31, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v96.l, v25.h
	v_cmp_o_f32_e64 s1, v25, v25
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v27, v26, v28
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v28, v26, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v28, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v27, v26, v109 :: v_dual_add_nc_u32 v26, 0xd0, v102
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v26, 0x80000000, v26, s0
	buffer_load_u16 v26, v26, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v28, v28, v148
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v28, v26, v31
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v28, 0xd4, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v31, v26, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v28, 0x80000000, v28, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v31, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v28, v28, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v31, v31, v148
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v28, v29, v28, v34
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v29, 1, v96
	v_mov_b16_e32 v96.l, v27.h
	v_add3_u32 v29, v25, v29, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v34, v28, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v28.l, v0.h
	v_mov_b16_e32 v28.h, v96.h
	scratch_load_b32 v34, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v25, v25, v108
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v25, v25
	v_add3_u32 v28, v0, v28, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v26, v30
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v30, 1, v96
	v_mov_b16_e32 v96.l, v25.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s4, v0, v0
	v_add3_u32 v30, v27, v30, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v26, 1, v96
	v_add3_u32 v26, v25, v26, 0x7fff
	v_mov_b16_e32 v25.l, v0.h
	v_mov_b16_e32 v25.h, v96.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s3
	v_and_b32_e32 v25, 1, v25
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v25, v0, v25, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v29.h, s1
	v_cndmask_b16 v0.l, 0x7fff, v28.h, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v28, off, off offset:108
	scratch_load_b32 v29, off, off offset:20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.l, 0x7fff, v25.h, s4
	v_cmp_o_f32_e64 s1, v27, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v25, v0, v26 :: v_dual_cndmask_b32 v0, v26, v0
	v_permlanex16_b32 v26, v25, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v25, v26, v0, v36
	v_perm_b32 v26, v26, v0, v94
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v0, 0xc8, v102
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v28, v28, v148
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v28, v0, v29
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v28, 0xdc, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v29, v0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v28, 0x80000000, v28, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v29, v165, v148 :: v_dual_mul_f32 v0, v0, v33
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v28, v28, s[12:15], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v33, v52, v148
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v0, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v28, v29, v28, v84
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v29, 0xd8, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v28, v84, v28, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v29, 0x80000000, v29, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v28, v28, v107
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v29, v29, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v96.l, v28.h
	v_cmp_o_f32_e64 s3, v28, v28
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v29, v31, v29, v85
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v31, v55, v148
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v27, v85, v29, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v29.l, v0.h
	v_mov_b16_e32 v29.h, v96.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v29, 1, v29
	v_add3_u32 v29, v0, v29, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v27, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v27, 1, v96
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v32, v53, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s4, v0, v0
	v_add3_u32 v27, v28, v27, 0x7fff
	v_mov_b16_e32 v28.l, v0.h
	v_mov_b16_e32 v28.h, v96.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s3
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v28, v0, v28, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v30.h, s1
	v_cndmask_b16 v0.l, 0x7fff, v29.h, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v29, v56, v148
	v_mul_f32_e32 v30, v54, v148
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v27.l, 0x7fff, v28.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v28, v0, v27, vcc_lo
	v_cndmask_b32_e32 v0, v27, v0, vcc_lo
	v_permlanex16_b32 v28, v28, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v27, v28, v0, v36
	v_perm_b32 v28, v28, v0, v94
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v0, 0xe4, v102
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v29, v0, v134
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v29, 0xe0, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v134, v0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v29, 0x80000000, v29, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v0, v105
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v29, v29, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v96.l, v0.h
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v29, v30, v29, v171
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v30, 0xec, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v29, v171, v29, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v30, 0x80000000, v30, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v29, v29, v38
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v30, v30, s[12:15], 0 offen
	scratch_load_b32 v38, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v29, v29
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v30, 16, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v30, v31, v30, v80
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v31, 0xf4, v102
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v80, v30, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v31, 0x80000000, v31, s0
	buffer_load_u16 v31, v31, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v31, v32, v31, v81
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v32, 0xf0, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v32, 0x80000000, v32, s0
	buffer_load_u16 v32, v32, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v32, v33, v32, v34
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v33, 1, v96
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v33, v0, v33, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v30, v45
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v81, v31, s0
	v_cndmask_b32_e64 v31, v34, v32, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v32.l, v29.h
	v_mov_b16_e32 v32.h, v96.h
	v_mov_b16_e32 v96.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v32, 1, v32
	v_add3_u32 v32, v29, v32, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v29, v30, v103 :: v_dual_mul_f32 v30, v31, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v31, 1, v96
	v_mov_b16_e32 v96.l, v29.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v29, v29
	v_cmp_o_f32_e64 s4, v30, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v31, v0, v31, 0x7fff
	v_and_b32_e32 v34, 1, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v34, v29, v34, 0x7fff
	v_mov_b16_e32 v29.l, v30.h
	v_mov_b16_e32 v29.h, v96.h
	v_and_b32_e32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v29, v30, v29, 0x7fff
	v_cndmask_b16 v30.h, 0x7fff, v33.h, s1
	v_cndmask_b16 v30.l, 0x7fff, v32.h, s2
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v33, v49, v148
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v32.l, 0x7fff, v29.h, s4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v34, v51, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_dual_cndmask_b32 v29, v30, v32 :: v_dual_cndmask_b32 v30, v32, v30
	v_permlanex16_b32 v32, v29, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v29, v32, v30, v36
	v_perm_b32 v30, v32, v30, v94
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v32, 0xe8, v102
	v_cndmask_b32_e64 v32, 0x80000000, v32, s0
	buffer_load_u16 v32, v32, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v32, 16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v32, v33, v32, v38
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	scratch_load_b32 v33, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v32, v38, v32, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v32, v32, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v32, v32
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v33, v33, v148
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v33, v33, v35, v111
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v35, 0xfc, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v33, v111, v33, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v35, 0x80000000, v35, s0
	buffer_load_u16 v35, v35, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v35, 16, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v34, v34, v35, v77
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v34, v77, v34, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v0, v33, v100 :: v_dual_mul_f32 v33, v34, v37
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v34.l, v32.h
	v_mov_b16_e32 v34.h, v96.h
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v96.l, v33.h
	v_cmp_o_f32_e64 s2, v33, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v34, v32, v34, 0x7fff
	v_and_b32_e32 v32, 1, v96
	v_mov_b16_e32 v96.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v32, v33, v32, 0x7fff
	v_and_b32_e32 v33, 1, v96
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v33, v0, v33, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v31.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v34.h, s1
	v_cndmask_b16 v31.h, 0x7fff, v32.h, s2
	v_and_b32_e32 v34, 0x1e0, v125
	v_cndmask_b16 v31.l, 0x7fff, v33.h, s3
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v33, 1, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e32 v32, v31, v0, vcc_lo
	v_cndmask_b32_e32 v0, v0, v31, vcc_lo
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v31, s23, v219
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v34
	s_mov_b32 s23, s15
	v_permlanex16_b32 v0, v0, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v31, s33, s22, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s22, s14
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v33, v31, v33, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_perm_b32 v31, v0, v32, v36
	v_perm_b32 v32, v0, v32, v94
	v_add_nc_u32_e32 v34, 32, v33
	v_add_nc_u32_e32 v0, 64, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v35, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x2
	buffer_store_b128 v[1:4], v35, s[20:23], 0 offen
	buffer_store_b128 v[5:8], v34, s[20:23], 0 offen
	buffer_store_b128 v[9:12], v0, s[20:23], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v33
	v_add_nc_u32_e32 v1, 0x80, v33
	v_add_nc_u32_e32 v2, 0xa0, v33
	v_add_nc_u32_e32 v3, 0xc0, v33
	v_add_nc_u32_e32 v4, 0xe0, v33
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
	buffer_store_b128 v[29:32], v4, s[20:23], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 384
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
		.amdhsa_next_free_sgpr 45
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 384
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 38892
; TotalNumSgprs: 47
; NumVgprs: 256
; ScratchSize: 384
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 47
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 384
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 174
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
