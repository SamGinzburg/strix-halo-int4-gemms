	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s19, s[0:1], 0x54
	s_load_b64 s[48:49], s[0:1], 0x5c
	v_dual_mov_b32 v170, v0 :: v_dual_mov_b32 v87, 0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s19, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s5
	v_readfirstlane_b32 s5, v0
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s49, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s12, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_abs_i32 s3, s12
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s7
	v_readfirstlane_b32 s7, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v0, 63, v170
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s7, s8
	s_add_i32 s7, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s3, s7
	s_xor_b32 s7, s12, s5
	s_mul_i32 s8, s2, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s3, s3, s8
	s_add_i32 s13, s2, 1
	s_sub_i32 s14, s3, s6
	s_cmp_ge_u32 s3, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s2, s13, s2
	s_cselect_b32 s3, s14, s3
	s_add_i32 s13, s2, 1
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s13, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s2, s7
	s_load_b64 s[2:3], s[0:1], 0x38
	s_sub_i32 s33, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s33, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s12, s5
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[4:5], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s8, s4
	s_addc_u32 s7, s9, s5
	s_load_b64 s[34:35], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[46:47], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[44:45], s[2:3], 0x0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s48, 0
	s_mov_b32 s6, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s34, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s2
	v_add_nc_u32_e32 v232, s34, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[46:47], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[44:45], v[1:2]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s34, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow798
	s_load_b128 s[20:23], s[0:1], 0x40
	v_dual_mov_b32 v102, 0 :: v_dual_and_b32 v95, 15, v170
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v96, 0xf0, v170
	v_dual_mov_b32 v100, 0 :: v_dual_and_b32 v171, 0x80, v170
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v206, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_and_b32 s49, s2, s3
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[2:3], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s6, s34, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s35, 0, s6
	s_clause 0x1
	s_load_b32 s50, s[0:1], 0x58
	s_load_b32 s51, s[0:1], 0x50
	v_add_co_u32 v2, vcc_lo, v0, 16
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 48
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[46:47], v[0:1]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s2, s4
	s_addc_u32 s1, s3, s5
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[44:45], v[2:3]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[16:17], s[0:1], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[44:45], v[0:1]
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v0, s34, v95
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[46:47], v[2:3]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	s_lshl_b32 s7, s33, 8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[46:47], v[6:7]
	v_dual_mov_b32 v216, 0 :: v_dual_add_nc_u32 v1, 16, v0
	v_dual_mov_b32 v213, 0 :: v_dual_add_nc_u32 v2, 32, v0
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v3, 48, v0
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v0, v0, s48
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[44:45], v[6:7]
	v_or_b32_e32 v6, s7, v170
	v_dual_mov_b32 v211, 0 :: v_dual_add_nc_u32 v146, 0, v95
	v_dual_mov_b32 v215, 0 :: v_dual_lshlrev_b32 v8, 1, v170
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[46:47], v[4:5]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:712
	scratch_store_b32 off, v6, off offset:728
	v_mul_lo_u32 v0, v1, s48
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[44:45], v[4:5]
	v_dual_mov_b32 v212, 0 :: v_dual_lshlrev_b32 v5, 2, v96
	v_dual_mov_b32 v205, 0 :: v_dual_and_b32 v6, 28, v8
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s52, s19, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s4
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:716
	scratch_store_b32 off, v95, off offset:740
	v_mul_lo_u32 v0, v2, s48
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s4, s52, s50
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_and_or_b32 v145, 0xfe, v8, s7
	v_dual_mov_b32 v214, 0 :: v_dual_add_nc_u32 v217, 0, v170
	v_or_b32_e32 v1, 0x300, v170
	v_or_b32_e32 v2, 0x700, v170
	v_or_b32_e32 v4, 0x7f0, v170
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:720
	scratch_store_b32 off, v96, off offset:744
	v_mul_lo_u32 v0, v3, s48
	v_mov_b32_e32 v209, 0
	v_or_b32_e32 v3, 0x3f0, v170
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s53, s4, s16
	v_mov_b32_e32 v203, 0
	s_add_u32 s56, s53, s19
	v_dual_mov_b32 v201, 0 :: v_dual_add_nc_u32 v218, 0, v1
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v0, off offset:724 ; 4-byte Folded Spill
	v_lshrrev_b32_e32 v0, 1, v170
	v_mov_b32_e32 v199, 0
	v_add3_u32 v165, s56, v145, 1
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v219, 0, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v0, 0x70, v0
	v_dual_mov_b32 v208, 0 :: v_dual_add_nc_u32 v221, 0, v3
	v_dual_mov_b32 v197, 0 :: v_dual_add_nc_u32 v222, 0, v4
	v_dual_mov_b32 v207, 0 :: v_dual_add_nc_u32 v148, v146, v0
	v_lshlrev_b32_e32 v0, 5, v170
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v154, v217, v170
	v_mov_b32_e32 v210, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v189, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v0, 32, v0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v89, 0
	v_add3_u32 v0, 0, v5, v0
	v_dual_mov_b32 v200, 0 :: v_dual_lshlrev_b32 v5, 1, v96
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v198, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v0, v0, v6
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v194, 0
	v_mov_b32_e32 v115, 0
	scratch_store_b32 off, v0, off offset:732 ; 4-byte Folded Spill
	v_dual_mov_b32 v191, 0 :: v_dual_add_nc_u32 v0, 0, v5
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v87, 0
	v_mov_b32_e32 v116, 0
	v_mov_b32_e32 v118, 0
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v102, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_and_b32 s2, s2, s5
	s_and_b32 s3, s3, s6
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s54, s48, s16
	.loc	1 1135 13                       ; ragged.py:1135:13
	s_mov_b32 s55, 0
	s_and_b32 s41, s11, 0xffff
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	s_mov_b32 s36, s8
	s_mov_b32 s37, s9
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s40, s10
	s_mov_b32 s42, s26
	s_mov_b32 s43, s27
	.loc	1 1135 19 is_stmt 0             ; ragged.py:1135:19
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:736
	scratch_store_b32 off, v170, off offset:192
	scratch_store_b32 off, v171, off offset:196
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 19                          ; ragged.py:0:19
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v0, 0
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v216, off offset:708
	scratch_store_b32 off, v215, off offset:704
	scratch_store_b32 off, v80, off offset:700
	scratch_store_b32 off, v214, off offset:696
	scratch_store_b32 off, v81, off offset:692
	scratch_store_b32 off, v213, off offset:688
	scratch_store_b32 off, v212, off offset:684
	scratch_store_b32 off, v211, off offset:680
	scratch_store_b32 off, v210, off offset:676
	scratch_store_b32 off, v82, off offset:672
	scratch_store_b32 off, v209, off offset:668
	scratch_store_b32 off, v208, off offset:664
	scratch_store_b32 off, v207, off offset:660
	scratch_store_b32 off, v206, off offset:656
	scratch_store_b32 off, v205, off offset:652
	scratch_store_b32 off, v204, off offset:648
	scratch_store_b32 off, v203, off offset:644
	scratch_store_b32 off, v202, off offset:640
	scratch_store_b32 off, v201, off offset:636
	scratch_store_b32 off, v200, off offset:632
	scratch_store_b32 off, v199, off offset:628
	scratch_store_b32 off, v198, off offset:624
	scratch_store_b32 off, v197, off offset:620
	scratch_store_b32 off, v196, off offset:616
	scratch_store_b32 off, v195, off offset:612
	scratch_store_b32 off, v194, off offset:608
	scratch_store_b32 off, v193, off offset:604
	scratch_store_b32 off, v192, off offset:600
	scratch_store_b32 off, v191, off offset:596
	scratch_store_b32 off, v190, off offset:592
	scratch_store_b32 off, v189, off offset:588
	scratch_store_b32 off, v188, off offset:584
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v187, off offset:580
	scratch_store_b32 off, v186, off offset:576
	scratch_store_b32 off, v185, off offset:572
	scratch_store_b32 off, v184, off offset:568
	scratch_store_b32 off, v183, off offset:564
	scratch_store_b32 off, v182, off offset:560
	scratch_store_b32 off, v181, off offset:556
	scratch_store_b32 off, v180, off offset:552
	scratch_store_b32 off, v179, off offset:548
	scratch_store_b32 off, v178, off offset:544
	scratch_store_b32 off, v177, off offset:540
	scratch_store_b32 off, v176, off offset:536
	scratch_store_b32 off, v175, off offset:532
	scratch_store_b32 off, v174, off offset:528
	scratch_store_b32 off, v173, off offset:524
	scratch_store_b32 off, v172, off offset:520
	scratch_store_b32 off, v169, off offset:516
	scratch_store_b32 off, v168, off offset:512
	scratch_store_b32 off, v167, off offset:508
	scratch_store_b32 off, v166, off offset:504
	scratch_store_b32 off, v164, off offset:500
	scratch_store_b32 off, v163, off offset:496
	scratch_store_b32 off, v162, off offset:492
	scratch_store_b32 off, v161, off offset:488
	scratch_store_b32 off, v160, off offset:484
	scratch_store_b32 off, v159, off offset:480
	scratch_store_b32 off, v158, off offset:476
	scratch_store_b32 off, v152, off offset:472
	scratch_store_b32 off, v157, off offset:468
	scratch_store_b32 off, v156, off offset:464
	scratch_store_b32 off, v155, off offset:460
	scratch_store_b32 off, v153, off offset:456
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v151, off offset:452
	scratch_store_b32 off, v150, off offset:448
	scratch_store_b32 off, v149, off offset:444
	scratch_store_b32 off, v147, off offset:440
	scratch_store_b32 off, v144, off offset:436
	scratch_store_b32 off, v143, off offset:432
	scratch_store_b32 off, v142, off offset:428
	scratch_store_b32 off, v141, off offset:424
	scratch_store_b32 off, v140, off offset:420
	scratch_store_b32 off, v139, off offset:416
	scratch_store_b32 off, v138, off offset:412
	scratch_store_b32 off, v137, off offset:408
	scratch_store_b32 off, v136, off offset:404
	scratch_store_b32 off, v135, off offset:400
	scratch_store_b32 off, v134, off offset:396
	scratch_store_b32 off, v133, off offset:392
	scratch_store_b32 off, v132, off offset:388
	scratch_store_b32 off, v131, off offset:384
	scratch_store_b32 off, v130, off offset:380
	scratch_store_b32 off, v129, off offset:376
	scratch_store_b32 off, v128, off offset:372
	scratch_store_b32 off, v127, off offset:368
	scratch_store_b32 off, v126, off offset:364
	scratch_store_b32 off, v125, off offset:360
	scratch_store_b32 off, v124, off offset:356
	scratch_store_b32 off, v115, off offset:352
	scratch_store_b32 off, v114, off offset:348
	scratch_store_b32 off, v107, off offset:344
	scratch_store_b32 off, v123, off offset:340
	scratch_store_b32 off, v122, off offset:336
	scratch_store_b32 off, v121, off offset:332
	scratch_store_b32 off, v120, off offset:328
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v106, off offset:324
	scratch_store_b32 off, v105, off offset:320
	scratch_store_b32 off, v99, off offset:316
	scratch_store_b32 off, v98, off offset:312
	scratch_store_b32 off, v104, off offset:308
	scratch_store_b32 off, v113, off offset:304
	scratch_store_b32 off, v112, off offset:300
	scratch_store_b32 off, v103, off offset:296
	scratch_store_b32 off, v97, off offset:292
	scratch_store_b32 off, v94, off offset:288
	scratch_store_b32 off, v93, off offset:284
	scratch_store_b32 off, v92, off offset:280
	scratch_store_b32 off, v119, off offset:276
	scratch_store_b32 off, v118, off offset:272
	scratch_store_b32 off, v117, off offset:268
	scratch_store_b32 off, v116, off offset:264
	scratch_store_b32 off, v91, off offset:260
	scratch_store_b32 off, v90, off offset:256
	scratch_store_b32 off, v89, off offset:252
	scratch_store_b32 off, v83, off offset:248
	scratch_store_b32 off, v111, off offset:244
	scratch_store_b32 off, v110, off offset:240
	scratch_store_b32 off, v109, off offset:236
	scratch_store_b32 off, v108, off offset:232
	scratch_store_b32 off, v88, off offset:228
	scratch_store_b32 off, v86, off offset:224
	scratch_store_b32 off, v85, off offset:220
	scratch_store_b32 off, v84, off offset:216
	scratch_store_b32 off, v102, off offset:212
	scratch_store_b32 off, v101, off offset:208
	scratch_store_b32 off, v100, off offset:204
	scratch_store_b32 off, v87, off offset:200
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s30, s55, 6
	s_mov_b32 s31, -1
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v2, v0
	v_mov_b32_e32 v3, v0
	v_dual_mov_b32 v4, v0 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v5, v0
	v_dual_mov_b32 v6, v0 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v7, v0
	v_dual_mov_b32 v8, v0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v10, v0 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v11, v0
	v_dual_mov_b32 v12, v0 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v13, v0
	v_dual_mov_b32 v14, v0 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v15, v0
	v_dual_mov_b32 v16, v0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v18, v0 :: v_dual_mov_b32 v73, 0
	v_mov_b32_e32 v19, v0
	v_dual_mov_b32 v20, v0 :: v_dual_mov_b32 v81, 0
	v_mov_b32_e32 v21, v0
	v_dual_mov_b32 v22, v0 :: v_dual_mov_b32 v89, 0
	v_mov_b32_e32 v23, v0
	v_dual_mov_b32 v24, v0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v26, v0 :: v_dual_mov_b32 v105, 0
	v_mov_b32_e32 v27, v0
	v_dual_mov_b32 v28, v0 :: v_dual_mov_b32 v113, 0
	v_mov_b32_e32 v29, v0
	v_dual_mov_b32 v30, v0 :: v_dual_mov_b32 v121, 0
	v_mov_b32_e32 v31, v0
	v_mov_b32_e32 v32, v0
	v_mov_b32_e32 v34, v0
	v_mov_b32_e32 v35, v0
	v_mov_b32_e32 v36, v0
	v_mov_b32_e32 v37, v0
	v_mov_b32_e32 v38, v0
	v_mov_b32_e32 v39, v0
	v_mov_b32_e32 v40, v0
	v_mov_b32_e32 v42, v0
	v_mov_b32_e32 v43, v0
	v_mov_b32_e32 v44, v0
	v_mov_b32_e32 v45, v0
	v_mov_b32_e32 v46, v0
	v_mov_b32_e32 v47, v0
	v_mov_b32_e32 v48, v0
	v_mov_b32_e32 v50, v0
	v_mov_b32_e32 v51, v0
	v_mov_b32_e32 v52, v0
	v_mov_b32_e32 v53, v0
	v_mov_b32_e32 v54, v0
	v_mov_b32_e32 v55, v0
	v_mov_b32_e32 v56, v0
	v_mov_b32_e32 v58, v0
	v_mov_b32_e32 v59, v0
	v_mov_b32_e32 v60, v0
	v_mov_b32_e32 v61, v0
	v_mov_b32_e32 v62, v0
	v_mov_b32_e32 v63, v0
	v_mov_b32_e32 v64, v0
	v_mov_b32_e32 v66, v0
	v_mov_b32_e32 v67, v0
	v_mov_b32_e32 v68, v0
	v_mov_b32_e32 v69, v0
	v_mov_b32_e32 v70, v0
	v_mov_b32_e32 v71, v0
	v_mov_b32_e32 v72, v0
	v_mov_b32_e32 v74, v0
	v_mov_b32_e32 v75, v0
	v_mov_b32_e32 v76, v0
	v_mov_b32_e32 v77, v0
	v_mov_b32_e32 v78, v0
	v_mov_b32_e32 v79, v0
	v_mov_b32_e32 v80, v0
	v_mov_b32_e32 v82, v0
	v_mov_b32_e32 v83, v0
	v_mov_b32_e32 v84, v0
	v_mov_b32_e32 v85, v0
	v_mov_b32_e32 v86, v0
	v_mov_b32_e32 v87, v0
	v_mov_b32_e32 v88, v0
	v_mov_b32_e32 v90, v0
	v_mov_b32_e32 v91, v0
	v_mov_b32_e32 v92, v0
	v_mov_b32_e32 v93, v0
	v_mov_b32_e32 v94, v0
	v_mov_b32_e32 v95, v0
	v_mov_b32_e32 v96, v0
	v_mov_b32_e32 v98, v0
	v_mov_b32_e32 v99, v0
	v_mov_b32_e32 v100, v0
	v_mov_b32_e32 v101, v0
	v_mov_b32_e32 v102, v0
	v_mov_b32_e32 v103, v0
	v_mov_b32_e32 v104, v0
	v_mov_b32_e32 v106, v0
	v_mov_b32_e32 v107, v0
	v_mov_b32_e32 v108, v0
	v_mov_b32_e32 v109, v0
	v_mov_b32_e32 v110, v0
	v_mov_b32_e32 v111, v0
	v_mov_b32_e32 v112, v0
	v_mov_b32_e32 v114, v0
	v_mov_b32_e32 v115, v0
	v_mov_b32_e32 v116, v0
	v_mov_b32_e32 v117, v0
	v_mov_b32_e32 v118, v0
	v_mov_b32_e32 v119, v0
	v_mov_b32_e32 v120, v0
	v_mov_b32_e32 v122, v0
	v_mov_b32_e32 v123, v0
	v_mov_b32_e32 v124, v0
	v_mov_b32_e32 v125, v0
	v_mov_b32_e32 v126, v0
	v_mov_b32_e32 v127, v0
	v_mov_b32_e32 v128, v0
	s_mov_b32 s4, 0
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v0, 6, v170
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s4, s4, s30
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	v_or_b32_e32 v0, s4, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v0, s51, v[232:233]
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s50, v0
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 vcc_lo, s49, vcc_lo
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e32 v131, 0x80000000, v129, vcc_lo
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v129, 4, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s50, v129
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v129, s51, v[232:233]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 vcc_lo, s49, vcc_lo
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e32 v132, 0x80000000, v129, vcc_lo
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v129, 8, v0
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s50, v129
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v129, s51, v[232:233]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 vcc_lo, s49, vcc_lo
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e32 v133, 0x80000000, v129, vcc_lo
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v129, 12, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s50, v129
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v129, s51, v[232:233]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 vcc_lo, s49, vcc_lo
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e32 v134, 0x80000000, v129, vcc_lo
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v129, 16, v0
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s50, v129
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v129, s51, v[232:233]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 vcc_lo, s49, vcc_lo
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e32 v135, 0x80000000, v129, vcc_lo
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v129, 20, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s50, v129
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v129, s51, v[232:233]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 vcc_lo, s49, vcc_lo
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e32 v136, 0x80000000, v129, vcc_lo
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v129, 24, v0
	v_or_b32_e32 v0, 28, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s50, v129
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v129, s51, v[232:233]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 vcc_lo, s49, vcc_lo
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e32 v137, 0x80000000, v129, vcc_lo
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v0, s51, v[232:233]
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s50, v0
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 vcc_lo, s49, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e32 v0, 0x80000000, v129, vcc_lo
	s_clause 0x7
	buffer_load_u8 v131, v131, s[36:39], 0 offen
	buffer_load_u8 v132, v132, s[36:39], 0 offen
	buffer_load_u8 v133, v133, s[36:39], 0 offen
	buffer_load_u8 v135, v135, s[36:39], 0 offen
	buffer_load_u8 v136, v136, s[36:39], 0 offen
	buffer_load_u8 v137, v137, s[36:39], 0 offen
	buffer_load_u8 v158, v0, s[36:39], 0 offen
	buffer_load_u8 v134, v134, s[36:39], 0 offen
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_lshrrev_b32_e32 v129, 7, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s4, v129
	v_or_b32_e32 v130, 2, v129
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v205, v129, s52
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s18, s50, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v189, v130, s52
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s17, s50, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, 4, v129
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v193, v205, v145
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v198, v130, s52
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s16, s50, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, 6, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v180, v130, s52
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s15, s50, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, 8, v129
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v231, v198, v145
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v179, v130, s52
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s14, s50, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, 10, v129
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v237, v180, v145
	v_add_nc_u32_e32 v139, s53, v231
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v178, v130, s52
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s13, s50, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, 12, v129
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v190, v179, v145
	v_add_nc_u32_e32 v140, s53, v237
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v177, v130, s52
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s12, s50, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, 14, v129
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v226, v178, v145
	v_add_nc_u32_e32 v141, s53, v190
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v171, v130, s52
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s11, s50, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, 16, v129
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v227, v177, v145
	v_add_nc_u32_e32 v142, s53, v226
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v183, v130, s52
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s10, s50, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, 18, v129
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v229, v171, v145
	v_add_nc_u32_e32 v143, s53, v227
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v164, v130, s52
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s9, s50, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, 20, v129
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v184, v183, v145
	v_add_nc_u32_e32 v144, s53, v229
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v181, v130, s52
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s8, s50, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, 22, v129
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v223, v164, v145
	v_add_nc_u32_e32 v147, s53, v184
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v163, v130, s52
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s7, s50, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, 24, v129
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v224, v181, v145
	v_add_nc_u32_e32 v149, s53, v223
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v175, v130, s52
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s6, s50, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, 26, v129
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v225, v163, v145
	v_add_nc_u32_e32 v150, s53, v224
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v173, v130, s52
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s5, s50, v130
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, 28, v129
	v_or_b32_e32 v129, 30, v129
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v176, v175, v145
	v_add_nc_u32_e32 v151, s53, v225
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v156, v130, s52
	v_mul_lo_u32 v174, v129, s52
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s50, v129
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v230, v189, v145
	v_add_nc_u32_e32 v206, v173, v145
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s4, s50, v130
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v130, s53, v193
	v_add_nc_u32_e32 v152, s53, v176
	v_add_nc_u32_e32 v215, v156, v145
	v_add_nc_u32_e32 v216, v174, v145
	v_add_nc_u32_e32 v138, s53, v230
	v_add_nc_u32_e32 v153, s53, v206
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v0, 0x80000000, v130, s18
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v155, s53, v215
	v_add_nc_u32_e32 v157, s53, v216
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v129, 0x80000000, v138, s17
	v_cndmask_b32_e64 v130, 0x80000000, v139, s16
	v_cndmask_b32_e64 v139, 0x80000000, v140, s15
	v_cndmask_b32_e64 v140, 0x80000000, v141, s14
	v_cndmask_b32_e64 v141, 0x80000000, v142, s13
	v_cndmask_b32_e64 v142, 0x80000000, v143, s12
	v_cndmask_b32_e64 v143, 0x80000000, v144, s11
	v_cndmask_b32_e64 v144, 0x80000000, v147, s10
	v_cndmask_b32_e64 v147, 0x80000000, v149, s9
	v_cndmask_b32_e64 v149, 0x80000000, v150, s8
	v_cndmask_b32_e64 v150, 0x80000000, v151, s7
	v_cndmask_b32_e64 v151, 0x80000000, v152, s6
	v_cndmask_b32_e64 v152, 0x80000000, v153, s5
	v_cndmask_b32_e64 v153, 0x80000000, v155, s4
	v_cndmask_b32_e32 v155, 0x80000000, v157, vcc_lo
	s_clause 0xf
	buffer_load_u16 v0, v0, s[40:43], 0 offen
	buffer_load_u16 v129, v129, s[40:43], 0 offen
	buffer_load_u16 v138, v130, s[40:43], 0 offen
	buffer_load_u16 v139, v139, s[40:43], 0 offen
	buffer_load_u16 v140, v140, s[40:43], 0 offen
	buffer_load_u16 v141, v141, s[40:43], 0 offen
	buffer_load_u16 v142, v142, s[40:43], 0 offen
	buffer_load_u16 v143, v143, s[40:43], 0 offen
	buffer_load_u16 v144, v144, s[40:43], 0 offen
	buffer_load_u16 v147, v147, s[40:43], 0 offen
	buffer_load_u16 v149, v149, s[40:43], 0 offen
	buffer_load_u16 v150, v150, s[40:43], 0 offen
	buffer_load_u16 v151, v151, s[40:43], 0 offen
	buffer_load_u16 v152, v152, s[40:43], 0 offen
	buffer_load_u16 v153, v153, s[40:43], 0 offen
	buffer_load_u16 v155, v155, s[40:43], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(23)
	ds_store_b8 v217, v131
	s_waitcnt vmcnt(22)
	ds_store_b8 v217, v132 offset:256
	s_waitcnt vmcnt(21)
	ds_store_b8 v217, v133 offset:512
	s_waitcnt vmcnt(20)
	ds_store_b8 v217, v135 offset:1024
	s_waitcnt vmcnt(19)
	ds_store_b8 v217, v136 offset:1280
	s_waitcnt vmcnt(16)
	ds_store_b8 v218, v134
	ds_store_b8 v217, v137 offset:1536
	ds_store_b8 v219, v158
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v130, v146 offset:320
	ds_load_u8 v131, v146 offset:256
	ds_load_u8 v132, v146 offset:336
	ds_load_u8 v133, v146 offset:272
	ds_load_u8 v134, v146 offset:352
	ds_load_u8 v135, v146 offset:288
	ds_load_u8 v136, v146 offset:368
	ds_load_u8 v137, v146 offset:304
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v146 offset:448
	ds_load_u8 v157, v146 offset:384
	ds_load_u8 v158, v146 offset:464
	ds_load_u8 v159, v146 offset:400
	ds_load_u8 v160, v146 offset:480
	ds_load_u8 v161, v146 offset:416
	ds_load_u8 v162, v146 offset:496
	ds_load_u8 v166, v146 offset:432
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v131, v157, v131, 0xc0c0004
	ds_load_u8 v157, v146 offset:64
	ds_load_u8 v167, v146
	ds_load_u8 v168, v146 offset:80
	ds_load_u8 v169, v146 offset:16
	ds_load_u8 v170, v146 offset:96
	ds_load_u8 v172, v146 offset:32
	ds_load_u8 v182, v146 offset:112
	ds_load_u8 v185, v146 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v133, v159, v158, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v135, v161, v160, 0xc0c0004
	v_lshl_or_b32 v131, v131, 16, v130
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v137, v166, v162, 0xc0c0004
	v_lshl_or_b32 v133, v133, 16, v132
	v_lshl_or_b32 v135, v135, 16, v134
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v137, v137, 16, v136
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v157, v167, v157, 0xc0c0004
	ds_load_u8 v167, v146 offset:192
	ds_load_u8 v186, v146 offset:128
	ds_load_u8 v187, v146 offset:208
	ds_load_u8 v188, v146 offset:144
	ds_load_u8 v191, v146 offset:224
	ds_load_u8 v192, v146 offset:160
	ds_load_u8 v194, v146 offset:240
	ds_load_u8 v195, v146 offset:176
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v167, v186, v167, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v158, v188, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v130, v167, 16, v157
	v_perm_b32 v157, v169, v168, 0xc0c0004
	v_lshl_or_b32 v132, v158, 16, v157
	v_perm_b32 v157, v172, v170, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v158, v192, v191, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v134, v158, 16, v157
	v_perm_b32 v157, v185, v182, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v195, v194, 0xc0c0004
	v_lshl_or_b32 v136, v158, 16, v157
	ds_load_u8 v203, v146 offset:960
	ds_load_u8 v202, v146 offset:896
	ds_load_u8 v209, v146 offset:976
	ds_load_u8 v208, v146 offset:912
	ds_load_u8 v213, v146 offset:992
	ds_load_u8 v212, v146 offset:928
	ds_load_u8 v157, v146 offset:1024
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v157, off offset:124 ; 4-byte Folded Spill
	ds_load_u8 v201, v146 offset:944
	ds_load_u8 v186, v146 offset:832
	ds_load_u8 v185, v146 offset:768
	ds_load_u8 v195, v146 offset:848
	ds_load_u8 v191, v146 offset:784
	ds_load_u8 v197, v146 offset:864
	ds_load_u8 v196, v146 offset:800
	ds_load_u8 v200, v146 offset:880
	ds_load_u8 v199, v146 offset:816
	ds_load_u8 v167, v146 offset:576
	ds_load_u8 v162, v146 offset:512
	ds_load_u8 v182, v146 offset:592
	ds_load_u8 v172, v146 offset:528
	ds_load_u8 v188, v146 offset:608
	ds_load_u8 v187, v146 offset:544
	ds_load_u8 v194, v146 offset:624
	ds_load_u8 v192, v146 offset:560
	ds_load_u8 v159, v146 offset:704
	ds_load_u8 v158, v146 offset:640
	ds_load_u8 v161, v146 offset:720
	ds_load_u8 v160, v146 offset:656
	ds_load_u8 v168, v146 offset:736
	ds_load_u8 v166, v146 offset:672
	ds_load_u8 v170, v146 offset:752
	ds_load_u8 v169, v146 offset:688
	ds_load_u8 v157, v146 offset:1408
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v157, off offset:148 ; 4-byte Folded Spill
	ds_load_u8 v157, v146 offset:1344
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v157, off offset:152 ; 4-byte Folded Spill
	ds_load_u8 v157, v146 offset:1360
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v157, off offset:144 ; 4-byte Folded Spill
	ds_load_u8 v157, v146 offset:1376
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v157, off offset:140 ; 4-byte Folded Spill
	ds_load_u8 v157, v146 offset:1392
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v157, off offset:132 ; 4-byte Folded Spill
	ds_load_u8 v157, v146 offset:1328
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v157, off offset:136 ; 4-byte Folded Spill
	ds_load_u8 v157, v146 offset:1296
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v157, off offset:176 ; 4-byte Folded Spill
	ds_load_u8 v157, v146 offset:1312
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v157, off offset:164 ; 4-byte Folded Spill
	ds_load_u8 v228, v146 offset:1472
	ds_load_u8 v157, v146 offset:1488
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v157, off offset:184 ; 4-byte Folded Spill
	ds_load_u8 v157, v146 offset:1504
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v157, off offset:168 ; 4-byte Folded Spill
	ds_load_u8 v157, v146 offset:1520
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v157, off offset:156 ; 4-byte Folded Spill
	ds_load_u8 v157, v146 offset:1536
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v157, off        ; 4-byte Folded Spill
	ds_load_u8 v157, v146 offset:1456
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v157, off offset:160 ; 4-byte Folded Spill
	ds_load_u8 v250, v146 offset:1424
	ds_load_u8 v157, v146 offset:1440
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v157, off offset:188 ; 4-byte Folded Spill
	ds_load_u8 v236, v146 offset:1088
	ds_load_u8 v214, v146 offset:1104
	ds_load_u8 v233, v146 offset:1120
	ds_load_u8 v157, v146 offset:1136
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v157, off offset:172 ; 4-byte Folded Spill
	ds_load_u8 v252, v146 offset:1152
	ds_load_u8 v157, v146 offset:1072
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v157, off offset:180 ; 4-byte Folded Spill
	ds_load_u8 v248, v146 offset:1040
	ds_load_u8 v234, v146 offset:1056
	ds_load_u8 v204, v146 offset:1280
	ds_load_u8 v255, v146 offset:1264
	ds_load_u8 v207, v146 offset:1216
	ds_load_u8 v211, v146 offset:1232
	ds_load_u8 v235, v146 offset:1248
	ds_load_u8 v220, v146 offset:1200
	ds_load_u8 v210, v146 offset:1168
	ds_load_u8 v251, v146 offset:1184
	ds_load_u8 v157, v146 offset:1856
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v157, off offset:36 ; 4-byte Folded Spill
	ds_load_u8 v157, v146 offset:1872
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v157, off offset:24 ; 4-byte Folded Spill
	ds_load_u8 v157, v146 offset:1888
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v157, off offset:12 ; 4-byte Folded Spill
	ds_load_u8 v157, v146 offset:1904
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v157, off offset:4 ; 4-byte Folded Spill
	ds_load_u8 v157, v146 offset:1920
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v157, off offset:56 ; 4-byte Folded Spill
	ds_load_u8 v157, v146 offset:1840
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v157, off offset:8 ; 4-byte Folded Spill
	ds_load_u8 v157, v146 offset:1808
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v157, off offset:40 ; 4-byte Folded Spill
	ds_load_u8 v157, v146 offset:1824
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v157, off offset:28 ; 4-byte Folded Spill
	ds_load_u8 v157, v146 offset:1984
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v157, off offset:72 ; 4-byte Folded Spill
	ds_load_u8 v157, v146 offset:2000
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v157, off offset:48 ; 4-byte Folded Spill
	ds_load_u8 v157, v146 offset:2016
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v157, off offset:32 ; 4-byte Folded Spill
	ds_load_u8 v157, v221
	ds_load_u8 v238, v222
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v238, off offset:16 ; 4-byte Folded Spill
	ds_load_u8 v238, v146 offset:1968
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v238, off offset:20 ; 4-byte Folded Spill
	ds_load_u8 v238, v146 offset:1936
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v238, off offset:76 ; 4-byte Folded Spill
	ds_load_u8 v238, v146 offset:1952
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v238, off offset:52 ; 4-byte Folded Spill
	ds_load_u8 v238, v146 offset:1600
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v238, off offset:96 ; 4-byte Folded Spill
	ds_load_u8 v238, v146 offset:1616
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v238, off offset:80 ; 4-byte Folded Spill
	ds_load_u8 v238, v146 offset:1632
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v238, off offset:64 ; 4-byte Folded Spill
	ds_load_u8 v238, v146 offset:1648
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v238, off offset:44 ; 4-byte Folded Spill
	ds_load_u8 v238, v146 offset:1664
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v238, off offset:108 ; 4-byte Folded Spill
	ds_load_u8 v238, v146 offset:1584
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v238, off offset:60 ; 4-byte Folded Spill
	ds_load_u8 v238, v146 offset:1552
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v238, off offset:100 ; 4-byte Folded Spill
	ds_load_u8 v238, v146 offset:1568
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v238, off offset:84 ; 4-byte Folded Spill
	ds_load_u8 v238, v146 offset:1792
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v238, off offset:128 ; 4-byte Folded Spill
	ds_load_u8 v238, v146 offset:1776
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v238, off offset:68 ; 4-byte Folded Spill
	ds_load_u8 v238, v146 offset:1728
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v238, off offset:120 ; 4-byte Folded Spill
	ds_load_u8 v238, v146 offset:1744
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v238, off offset:112 ; 4-byte Folded Spill
	ds_load_u8 v238, v146 offset:1760
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v238, off offset:92 ; 4-byte Folded Spill
	ds_load_u8 v238, v146 offset:1712
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v238, off offset:88 ; 4-byte Folded Spill
	ds_load_u8 v238, v146 offset:1680
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v238, off offset:116 ; 4-byte Folded Spill
	ds_load_u8 v238, v146 offset:1696
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v238, off offset:104 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b16 v154, v0
	s_waitcnt vmcnt(14)
	ds_store_b16 v154, v129 offset:512
	s_waitcnt vmcnt(13)
	ds_store_b16 v154, v138 offset:1024
	s_waitcnt vmcnt(12)
	ds_store_b16 v154, v139 offset:1536
	s_waitcnt vmcnt(11)
	ds_store_b16 v154, v140 offset:2048
	s_waitcnt vmcnt(10)
	ds_store_b16 v154, v141 offset:2560
	s_waitcnt vmcnt(9)
	ds_store_b16 v154, v142 offset:3072
	s_waitcnt vmcnt(8)
	ds_store_b16 v154, v143 offset:3584
	s_waitcnt vmcnt(7)
	ds_store_b16 v154, v144 offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b16 v154, v147 offset:4608
	s_waitcnt vmcnt(5)
	ds_store_b16 v154, v149 offset:5120
	s_waitcnt vmcnt(4)
	ds_store_b16 v154, v150 offset:5632
	s_waitcnt vmcnt(3)
	ds_store_b16 v154, v151 offset:6144
	s_waitcnt vmcnt(2)
	ds_store_b16 v154, v152 offset:6656
	s_waitcnt vmcnt(1)
	ds_store_b16 v154, v153 offset:7168
	s_waitcnt vmcnt(0)
	ds_store_b16 v154, v155 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v140, v148 offset:1280
	ds_load_u8 v141, v148 offset:1024
	ds_load_u8 v0, v148 offset:1920
	ds_load_u8 v129, v148 offset:1664
	ds_load_u8 v138, v148 offset:1408
	ds_load_u8 v139, v148 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	ds_load_u8 v141, v148 offset:1792
	ds_load_u8 v142, v148 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v129, v0, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v139, v0, 16, v138
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v0, v165, v205
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v0, 0x80000000, v0, s18
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v148 offset:256
	ds_load_u8 v143, v148
	ds_load_u8 v144, v148 offset:896
	ds_load_u8 v147, v148 offset:640
	ds_load_u8 v149, v148 offset:384
	ds_load_u8 v150, v148 offset:128
	v_lshl_or_b32 v141, v141, 16, v140
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v148 offset:768
	ds_load_u8 v151, v148 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v129, v150, v149, 0xc0c0004
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v149, s56, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v149, 0x80000000, v149, s5
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v151, v143, 0xc0c0004
	v_lshl_or_b32 v140, v143, 16, v142
	v_perm_b32 v142, v147, v144, 0xc0c0004
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v143, s56, v224
	v_add_nc_u32_e32 v144, s56, v223
	v_add_nc_u32_e32 v147, s56, v215
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[65:72], v[140:141], v[130:131], v[65:72] neg_lo:[1,1,0]
	v_lshl_or_b32 v138, v142, 16, v129
	v_wmma_i32_16x16x16_iu4 v[81:88], v[140:141], v[132:133], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[140:141], v[134:135], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[140:141], v[136:137], v[113:120] neg_lo:[1,1,0]
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v140, s56, v230
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[73:80], v[138:139], v[130:131], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[138:139], v[132:133], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[138:139], v[134:135], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[138:139], v[136:137], v[121:128] neg_lo:[1,1,0]
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v138, s56, v237
	v_add_nc_u32_e32 v139, s56, v231
	v_add_nc_u32_e32 v129, s56, v193
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v140, 0x80000000, v140, s17
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v141, s56, v227
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v138, 0x80000000, v138, s15
	v_cndmask_b32_e64 v139, 0x80000000, v139, s16
	v_cndmask_b32_e64 v129, 0x80000000, v129, s18
	s_clause 0x4
	buffer_load_u8 v0, v0, s[40:43], 0 offen
	buffer_load_u8 v138, v138, s[40:43], 0 offen
	buffer_load_u8 v139, v139, s[40:43], 0 offen
	buffer_load_u8 v140, v140, s[40:43], 0 offen
	buffer_load_u8 v129, v129, s[40:43], 0 offen
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v142, s56, v226
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v141, 0x80000000, v141, s12
	v_cndmask_b32_e64 v143, 0x80000000, v143, s8
	v_cndmask_b32_e64 v144, 0x80000000, v144, s9
	v_cndmask_b32_e64 v147, 0x80000000, v147, s4
	v_cndmask_b32_e64 v142, 0x80000000, v142, s13
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v0.l, 8, v0.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v0.l, v129.l, v0.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v129, v165, v189
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v129, 0x80000000, v129, s17
	buffer_load_u8 v129, v129, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v0.h, 8, v129.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v129, v165, v198
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v0.h, v140.l, v0.h
	v_cndmask_b32_e64 v129, 0x80000000, v129, s16
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v140, s56, v229
	.loc	1 1185 39                       ; ragged.py:1185:39
	buffer_load_u8 v129, v129, s[40:43], 0 offen
	v_cndmask_b32_e64 v140, 0x80000000, v140, s11
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v129.l, 8, v129.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v129.l, v139.l, v129.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v139, v165, v180
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v139, 0x80000000, v139, s15
	buffer_load_u8 v139, v139, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v129.h, 8, v139.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v139, s56, v190
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v129.h, v138.l, v129.h
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v138, v165, v179
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v139, 0x80000000, v139, s14
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v138, 0x80000000, v138, s14
	s_clause 0x4
	buffer_load_u8 v138, v138, s[40:43], 0 offen
	buffer_load_u8 v140, v140, s[40:43], 0 offen
	buffer_load_u8 v141, v141, s[40:43], 0 offen
	buffer_load_u8 v142, v142, s[40:43], 0 offen
	buffer_load_u8 v139, v139, s[40:43], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v138.l, 8, v138.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v138.l, v139.l, v138.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v139, v165, v178
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v139, 0x80000000, v139, s13
	buffer_load_u8 v139, v139, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v138.h, 8, v139.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v139, v165, v177
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v138.h, v142.l, v138.h
	v_cndmask_b32_e64 v139, 0x80000000, v139, s12
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v142, s56, v225
	.loc	1 1185 39                       ; ragged.py:1185:39
	buffer_load_u8 v139, v139, s[40:43], 0 offen
	v_cndmask_b32_e64 v142, 0x80000000, v142, s7
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v139.l, 8, v139.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v139.l, v141.l, v139.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v141, v165, v171
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v141, 0x80000000, v141, s11
	buffer_load_u8 v141, v141, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v139.h, 8, v141.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v141, s56, v184
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v139.h, v140.l, v139.h
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v140, v165, v183
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v141, 0x80000000, v141, s10
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v140, 0x80000000, v140, s10
	s_clause 0x4
	buffer_load_u8 v140, v140, s[40:43], 0 offen
	buffer_load_u8 v142, v142, s[40:43], 0 offen
	buffer_load_u8 v143, v143, s[40:43], 0 offen
	buffer_load_u8 v144, v144, s[40:43], 0 offen
	buffer_load_u8 v141, v141, s[40:43], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v140.l, 8, v140.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v140.l, v141.l, v140.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v141, v165, v164
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v141, 0x80000000, v141, s9
	buffer_load_u8 v141, v141, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v140.h, 8, v141.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v141, v165, v181
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v140.h, v144.l, v140.h
	v_cndmask_b32_e64 v141, 0x80000000, v141, s8
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v144, s56, v216
	.loc	1 1185 39                       ; ragged.py:1185:39
	buffer_load_u8 v141, v141, s[40:43], 0 offen
	v_cndmask_b32_e32 v144, 0x80000000, v144, vcc_lo
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v141.l, 8, v141.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v141.l, v143.l, v141.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v143, v165, v163
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v143, 0x80000000, v143, s7
	buffer_load_u8 v143, v143, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v141.h, 8, v143.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v143, s56, v176
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v141.h, v142.l, v141.h
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v142, v165, v175
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v143, 0x80000000, v143, s6
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v142, 0x80000000, v142, s6
	s_clause 0x4
	buffer_load_u8 v142, v142, s[40:43], 0 offen
	buffer_load_u8 v144, v144, s[40:43], 0 offen
	buffer_load_u8 v147, v147, s[40:43], 0 offen
	buffer_load_u8 v149, v149, s[40:43], 0 offen
	buffer_load_u8 v143, v143, s[40:43], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v142.l, 8, v142.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v142.l, v143.l, v142.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v143, v165, v173
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v143, 0x80000000, v143, s5
	buffer_load_u8 v143, v143, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v142.h, 8, v143.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v143, v165, v156
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v142.h, v149.l, v142.h
	v_cndmask_b32_e64 v143, 0x80000000, v143, s4
	s_mov_b32 s4, 32
	buffer_load_u8 v143, v143, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v143.l, 8, v143.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v143.l, v147.l, v143.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v147, v165, v174
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e32 v147, 0x80000000, v147, vcc_lo
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_and_b32 vcc_lo, exec_lo, s31
	s_mov_b32 s31, 0
	.loc	1 1185 39                       ; ragged.py:1185:39
	buffer_load_u8 v147, v147, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v143.h, 8, v147.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v143.h, v144.l, v143.h
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v144, v148 offset:3328
	ds_load_u8 v147, v148 offset:3072
	ds_load_u8 v149, v148 offset:3840
	ds_load_u8 v150, v148 offset:3584
	ds_load_u8 v151, v148 offset:3968
	ds_load_u8 v152, v148 offset:3712
	ds_load_u8 v153, v148 offset:3456
	ds_load_u8 v155, v148 offset:3200
	ds_load_u8 v156, v148 offset:2304
	ds_load_u8 v163, v148 offset:2048
	ds_load_u8 v164, v148 offset:2816
	ds_load_u8 v171, v148 offset:2560
	ds_load_u8 v173, v148 offset:2944
	ds_load_u8 v174, v148 offset:2688
	ds_load_u8 v175, v148 offset:2432
	ds_load_u8 v176, v148 offset:2176
	ds_load_u8 v177, v148 offset:5376
	ds_load_u8 v178, v148 offset:5120
	ds_load_u8 v179, v148 offset:5888
	ds_load_u8 v180, v148 offset:5632
	ds_load_u8 v181, v148 offset:6016
	ds_load_u8 v183, v148 offset:5760
	ds_load_u8 v184, v148 offset:5504
	ds_load_u8 v189, v148 offset:5248
	ds_load_u8 v190, v148 offset:4352
	ds_load_u8 v193, v148 offset:4096
	ds_load_u8 v198, v148 offset:4864
	ds_load_u8 v205, v148 offset:4608
	ds_load_u8 v206, v148 offset:4992
	ds_load_u8 v215, v148 offset:4736
	ds_load_u8 v253, v148 offset:4480
	ds_load_u8 v254, v148 offset:4224
	ds_load_u8 v223, v148 offset:7424
	ds_load_u8 v216, v148 offset:7168
	ds_load_u8 v246, v148 offset:7936
	ds_load_u8 v229, v148 offset:7680
	ds_load_u8 v230, v148 offset:8064
	ds_load_u8 v231, v148 offset:7808
	ds_load_u8 v249, v148 offset:7552
	ds_load_u8 v227, v148 offset:7296
	ds_load_u8 v224, v148 offset:6400
	ds_load_u8 v225, v148 offset:6144
	ds_load_u8 v237, v148 offset:7040
	ds_load_u8 v238, v148 offset:6784
	ds_load_u8 v239, v148 offset:6528
	ds_load_u8 v240, v148 offset:6912
	ds_load_u8 v241, v148 offset:6656
	ds_load_u8 v242, v148 offset:6272
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v154, v0
	ds_store_b16_d16_hi v154, v0 offset:512
	ds_store_b16 v154, v129 offset:1024
	ds_store_b16_d16_hi v154, v129 offset:1536
	ds_store_b16 v154, v138 offset:2048
	ds_store_b16_d16_hi v154, v138 offset:2560
	ds_store_b16 v154, v139 offset:3072
	ds_store_b16_d16_hi v154, v139 offset:3584
	ds_store_b16 v154, v140 offset:4096
	ds_store_b16_d16_hi v154, v140 offset:4608
	ds_store_b16 v154, v141 offset:5120
	ds_store_b16_d16_hi v154, v141 offset:5632
	ds_store_b16 v154, v142 offset:6144
	ds_store_b16_d16_hi v154, v142 offset:6656
	ds_store_b16 v154, v143 offset:7168
	ds_store_b16_d16_hi v154, v143 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v0, v148 offset:1280
	ds_load_u8 v129, v148 offset:1024
	ds_load_u8 v140, v148 offset:1920
	ds_load_u8 v141, v148 offset:1664
	ds_load_u8 v142, v148 offset:1408
	ds_load_u8 v143, v148 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v129, v0, 0xc0c0004
	ds_load_u8 v129, v148 offset:1792
	ds_load_u8 v138, v148 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v138, v129, 0xc0c0004
	ds_load_u8 v138, v148 offset:256
	ds_load_u8 v139, v148
	ds_load_u8 v226, v148 offset:896
	ds_load_u8 v243, v148 offset:640
	ds_load_u8 v244, v148 offset:384
	ds_load_u8 v245, v148 offset:128
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v148 offset:768
	ds_load_u8 v247, v148 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v247, v247, v139, 0xc0c0004
	v_lshl_or_b32 v139, v129, 16, v0
	v_perm_b32 v0, v143, v142, 0xc0c0004
	v_perm_b32 v129, v141, v140, 0xc0c0004
	v_perm_b32 v140, v245, v244, 0xc0c0004
	v_perm_b32 v142, v243, v226, 0xc0c0004
	v_lshl_or_b32 v138, v247, 16, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v141, v129, 16, v0
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v0, v185, v186, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v140, v142, 16, v140
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[138:139], v[130:131], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[138:139], v[132:133], v[17:24] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v129, v202, v203, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[33:40], v[138:139], v[134:135], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[140:141], v[130:131], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[140:141], v[132:133], v[25:32] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v131, v162, v167, 0xc0c0004
	v_perm_b32 v132, v158, v159, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[41:48], v[140:141], v[134:135], v[41:48] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v130, v129, 16, v0
	v_perm_b32 v0, v191, v195, 0xc0c0004
	v_perm_b32 v133, v172, v182, 0xc0c0004
	v_lshl_or_b32 v129, v132, 16, v131
	v_perm_b32 v131, v208, v209, 0xc0c0004
	v_perm_b32 v134, v160, v161, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[49:56], v[138:139], v[136:137], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[140:141], v[136:137], v[57:64] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v135, v187, v188, 0xc0c0004
	v_lshl_or_b32 v132, v131, 16, v0
	v_lshl_or_b32 v131, v134, 16, v133
	v_perm_b32 v0, v196, v197, 0xc0c0004
	v_perm_b32 v133, v212, v213, 0xc0c0004
	v_perm_b32 v136, v166, v168, 0xc0c0004
	v_perm_b32 v137, v201, v157, 0xc0c0004
	v_perm_b32 v139, v163, v156, 0xc0c0004
	v_perm_b32 v140, v171, v164, 0xc0c0004
	v_lshl_or_b32 v134, v133, 16, v0
	v_lshl_or_b32 v133, v136, 16, v135
	v_perm_b32 v0, v192, v194, 0xc0c0004
	v_perm_b32 v135, v169, v170, 0xc0c0004
	v_perm_b32 v136, v199, v200, 0xc0c0004
	v_perm_b32 v141, v176, v175, 0xc0c0004
	v_perm_b32 v142, v174, v173, 0xc0c0004
	scratch_load_b32 v170, off, off offset:192 ; 4-byte Folded Reload
	v_lshl_or_b32 v135, v135, 16, v0
	v_lshl_or_b32 v136, v137, 16, v136
	v_perm_b32 v0, v147, v144, 0xc0c0004
	v_perm_b32 v137, v150, v149, 0xc0c0004
	scratch_load_b32 v171, off, off offset:196 ; 4-byte Folded Reload
	v_lshl_or_b32 v138, v137, 16, v0
	v_lshl_or_b32 v137, v140, 16, v139
	v_perm_b32 v0, v155, v153, 0xc0c0004
	v_perm_b32 v139, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[137:138], v[129:130], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[137:138], v[131:132], v[81:88] neg_lo:[1,1,0]
	v_lshl_or_b32 v140, v139, 16, v0
	v_lshl_or_b32 v139, v142, 16, v141
	v_wmma_i32_16x16x16_iu4 v[97:104], v[137:138], v[133:134], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[137:138], v[135:136], v[113:120] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[139:140], v[129:130], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[139:140], v[131:132], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[139:140], v[133:134], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[139:140], v[135:136], v[121:128] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v0, v148 offset:3328
	ds_load_u8 v137, v148 offset:3072
	ds_load_u8 v139, v148 offset:3968
	ds_load_u8 v140, v148 offset:3712
	ds_load_u8 v141, v148 offset:3456
	ds_load_u8 v142, v148 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v137, v0, 0xc0c0004
	ds_load_u8 v137, v148 offset:3840
	ds_load_u8 v138, v148 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v148 offset:2304
	ds_load_u8 v143, v148 offset:2048
	ds_load_u8 v144, v148 offset:2944
	ds_load_u8 v147, v148 offset:2688
	ds_load_u8 v149, v148 offset:2432
	ds_load_u8 v150, v148 offset:2176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v143, v143, v138, 0xc0c0004
	ds_load_u8 v138, v148 offset:2816
	ds_load_u8 v151, v148 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v151, v138, 0xc0c0004
	v_lshl_or_b32 v138, v137, 16, v0
	v_perm_b32 v0, v142, v141, 0xc0c0004
	v_perm_b32 v141, v150, v149, 0xc0c0004
	v_perm_b32 v142, v147, v144, 0xc0c0004
	v_lshl_or_b32 v137, v151, 16, v143
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v140, v139, 16, v0
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_load_b32 v0, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v139, v142, 16, v141
	v_wmma_i32_16x16x16_iu4 v[1:8], v[137:138], v[129:130], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[137:138], v[131:132], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[137:138], v[133:134], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[137:138], v[135:136], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[139:140], v[129:130], v[9:16] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v129, off, off offset:148
	scratch_load_b32 v130, off, off offset:124
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[139:140], v[131:132], v[25:32] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v132, v252, v207, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[41:48], v[139:140], v[133:134], v[41:48] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v133, v248, v214, 0xc0c0004
	v_perm_b32 v134, v210, v211, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[57:64], v[139:140], v[135:136], v[57:64] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v135, v234, v233, 0xc0c0004
	v_perm_b32 v136, v251, v235, 0xc0c0004
	v_perm_b32 v138, v220, v255, 0xc0c0004
	v_perm_b32 v139, v193, v190, 0xc0c0004
	v_perm_b32 v140, v205, v198, 0xc0c0004
	v_perm_b32 v141, v254, v253, 0xc0c0004
	v_perm_b32 v142, v215, v206, 0xc0c0004
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v204, v0, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_perm_b32 v129, v129, v228, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v131, v130, v236, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v130, v129, 16, v0
	v_lshl_or_b32 v129, v132, 16, v131
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:144
	scratch_load_b32 v131, off, off offset:176
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v131, v0, 0xc0c0004
	scratch_load_b32 v131, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v131, v250, v131, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v132, v131, 16, v0
	v_lshl_or_b32 v131, v134, 16, v133
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:140
	scratch_load_b32 v133, off, off offset:164
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v133, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v133, off, off offset:168
	scratch_load_b32 v134, off, off offset:188
	s_waitcnt vmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v134, v133, 16, v0
	v_lshl_or_b32 v133, v136, 16, v135
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:132
	scratch_load_b32 v135, off, off offset:136
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v135, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v135, off, off offset:156
	scratch_load_b32 v136, off, off offset:160
	s_waitcnt vmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v136, off, off offset:172
	scratch_load_b32 v137, off, off offset:180
	s_waitcnt vmcnt(0)
	v_perm_b32 v137, v137, v136, 0xc0c0004
	v_lshl_or_b32 v136, v135, 16, v0
	v_perm_b32 v0, v178, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v135, v138, 16, v137
	v_perm_b32 v137, v180, v179, 0xc0c0004
	v_lshl_or_b32 v138, v137, 16, v0
	v_lshl_or_b32 v137, v140, 16, v139
	v_perm_b32 v0, v189, v184, 0xc0c0004
	v_perm_b32 v139, v183, v181, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[137:138], v[129:130], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[137:138], v[131:132], v[81:88] neg_lo:[1,1,0]
	v_lshl_or_b32 v140, v139, 16, v0
	v_lshl_or_b32 v139, v142, 16, v141
	v_wmma_i32_16x16x16_iu4 v[97:104], v[137:138], v[133:134], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[137:138], v[135:136], v[113:120] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[139:140], v[129:130], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[139:140], v[131:132], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[139:140], v[133:134], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[139:140], v[135:136], v[121:128] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v0, v148 offset:5376
	ds_load_u8 v137, v148 offset:5120
	ds_load_u8 v139, v148 offset:6016
	ds_load_u8 v140, v148 offset:5760
	ds_load_u8 v141, v148 offset:5504
	ds_load_u8 v142, v148 offset:5248
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v137, v0, 0xc0c0004
	ds_load_u8 v137, v148 offset:5888
	ds_load_u8 v138, v148 offset:5632
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v148 offset:4352
	ds_load_u8 v143, v148 offset:4096
	ds_load_u8 v144, v148 offset:4992
	ds_load_u8 v147, v148 offset:4736
	ds_load_u8 v149, v148 offset:4480
	ds_load_u8 v150, v148 offset:4224
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v143, v143, v138, 0xc0c0004
	ds_load_u8 v138, v148 offset:4864
	ds_load_u8 v151, v148 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v151, v138, 0xc0c0004
	v_lshl_or_b32 v138, v137, 16, v0
	v_perm_b32 v0, v142, v141, 0xc0c0004
	v_perm_b32 v141, v150, v149, 0xc0c0004
	v_perm_b32 v142, v147, v144, 0xc0c0004
	v_lshl_or_b32 v137, v151, 16, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v140, v139, 16, v0
	v_lshl_or_b32 v139, v142, 16, v141
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[137:138], v[129:130], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[137:138], v[131:132], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[137:138], v[133:134], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[137:138], v[135:136], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[139:140], v[129:130], v[9:16] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:36
	scratch_load_b32 v129, off, off offset:128
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[139:140], v[131:132], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[139:140], v[133:134], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[139:140], v[135:136], v[57:64] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v139, v225, v224, 0xc0c0004
	v_perm_b32 v140, v241, v240, 0xc0c0004
	v_perm_b32 v141, v242, v239, 0xc0c0004
	v_perm_b32 v142, v238, v237, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v129, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v129, off, off offset:56
	scratch_load_b32 v130, off, off offset:72
	s_waitcnt vmcnt(0)
	v_perm_b32 v129, v129, v130, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v130, off, off
	scratch_load_b32 v131, off, off offset:96
	s_waitcnt vmcnt(0)
	v_perm_b32 v131, v130, v131, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v130, off, off offset:108
	scratch_load_b32 v132, off, off offset:120
	s_waitcnt vmcnt(0)
	v_perm_b32 v132, v130, v132, 0xc0c0004
	v_lshl_or_b32 v130, v129, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v129, v132, 16, v131
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:24
	scratch_load_b32 v131, off, off offset:40
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v131, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v131, off, off offset:48
	scratch_load_b32 v132, off, off offset:76
	s_waitcnt vmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v132, off, off offset:80
	scratch_load_b32 v133, off, off offset:100
	s_waitcnt vmcnt(0)
	v_perm_b32 v133, v133, v132, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v132, off, off offset:112
	scratch_load_b32 v134, off, off offset:116
	s_waitcnt vmcnt(0)
	v_perm_b32 v134, v134, v132, 0xc0c0004
	v_lshl_or_b32 v132, v131, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v131, v134, 16, v133
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:12
	scratch_load_b32 v133, off, off offset:28
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v133, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v133, off, off offset:32
	scratch_load_b32 v134, off, off offset:52
	s_waitcnt vmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v134, off, off offset:64
	scratch_load_b32 v135, off, off offset:84
	s_waitcnt vmcnt(0)
	v_perm_b32 v135, v135, v134, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v134, off, off offset:92
	scratch_load_b32 v136, off, off offset:104
	s_waitcnt vmcnt(0)
	v_perm_b32 v136, v136, v134, 0xc0c0004
	v_lshl_or_b32 v134, v133, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v133, v136, 16, v135
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:44
	scratch_load_b32 v135, off, off offset:60
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v135, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v135, off, off offset:68
	scratch_load_b32 v136, off, off offset:88
	s_waitcnt vmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v136, off, off offset:4
	scratch_load_b32 v137, off, off offset:8
	v_lshl_or_b32 v135, v135, 16, v0
	v_perm_b32 v0, v216, v223, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v137, off, off offset:16
	scratch_load_b32 v138, off, off offset:20
	s_waitcnt vmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v136, v137, 16, v136
	v_perm_b32 v137, v229, v246, 0xc0c0004
	v_lshl_or_b32 v138, v137, 16, v0
	v_lshl_or_b32 v137, v140, 16, v139
	v_perm_b32 v0, v227, v249, 0xc0c0004
	v_perm_b32 v139, v231, v230, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[137:138], v[129:130], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[137:138], v[131:132], v[81:88] neg_lo:[1,1,0]
	v_lshl_or_b32 v140, v139, 16, v0
	v_lshl_or_b32 v139, v142, 16, v141
	v_wmma_i32_16x16x16_iu4 v[97:104], v[137:138], v[133:134], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[137:138], v[135:136], v[113:120] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[139:140], v[129:130], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[139:140], v[131:132], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[139:140], v[133:134], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[139:140], v[135:136], v[121:128] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v0, v148 offset:7424
	ds_load_u8 v137, v148 offset:7168
	ds_load_u8 v139, v148 offset:8064
	ds_load_u8 v140, v148 offset:7808
	ds_load_u8 v141, v148 offset:7552
	ds_load_u8 v142, v148 offset:7296
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v137, v0, 0xc0c0004
	ds_load_u8 v137, v148 offset:7936
	ds_load_u8 v138, v148 offset:7680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v148 offset:6400
	ds_load_u8 v143, v148 offset:6144
	ds_load_u8 v144, v148 offset:7040
	ds_load_u8 v147, v148 offset:6784
	ds_load_u8 v149, v148 offset:6528
	ds_load_u8 v150, v148 offset:6272
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v143, v143, v138, 0xc0c0004
	ds_load_u8 v138, v148 offset:6912
	ds_load_u8 v151, v148 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v151, v138, 0xc0c0004
	v_lshl_or_b32 v138, v137, 16, v0
	v_perm_b32 v0, v142, v141, 0xc0c0004
	v_perm_b32 v141, v150, v149, 0xc0c0004
	v_perm_b32 v142, v147, v144, 0xc0c0004
	v_lshl_or_b32 v137, v151, 16, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v140, v139, 16, v0
	v_lshl_or_b32 v139, v142, 16, v141
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[137:138], v[129:130], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[137:138], v[131:132], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[137:138], v[133:134], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[137:138], v[135:136], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[139:140], v[129:130], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[139:140], v[131:132], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[139:140], v[133:134], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[139:140], v[135:136], v[57:64] neg_lo:[1,1,0]
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_vccnz .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v140, v73
	v_cvt_f32_i32_e32 v135, v74
	v_cvt_f32_i32_e32 v160, v83
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v74, v22
	v_cvt_f32_i32_e32 v73, v23
	v_cvt_f32_i32_e32 v83, v36
	v_cvt_f32_i32_e32 v23, v42
	v_cvt_f32_i32_e32 v22, v43
	v_cvt_f32_i32_e32 v36, v54
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v54, off, off offset:728
	scratch_load_b32 v42, off, off offset:712
	scratch_load_b32 v43, off, off offset:716
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v133, v76
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v76, v4
	v_cvt_f32_i32_e32 v4, v29
	v_cvt_f32_i32_e32 v29, v40
	v_cvt_f32_i32_e32 v40, v50
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v143, v70
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v70, v6
	v_cvt_f32_i32_e32 v6, v31
	v_cvt_f32_i32_e32 v31, v39
	v_cvt_f32_i32_e32 v39, v51
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s4, s55, s54
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v142, v71
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s4, s4, s52
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v71, v5
	v_cvt_f32_i32_e32 v5, v30
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v144, v69
	v_cvt_f32_i32_e32 v161, v84
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v69, v7
	v_cvt_f32_i32_e32 v7, v32
	v_cvt_f32_i32_e32 v84, v35
	v_cvt_f32_i32_e32 v32, v38
	v_cvt_f32_i32_e32 v38, v52
	v_cvt_f32_i32_e32 v35, v55
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v151, v85
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v85, v34
	v_cvt_f32_i32_e32 v34, v56
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v153, v65
	v_cvt_f32_i32_e32 v155, v66
	v_cvt_f32_i32_e32 v156, v67
	v_cvt_f32_i32_e32 v157, v68
	v_cvt_f32_i32_e32 v141, v72
	v_cvt_f32_i32_e32 v134, v75
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v68, v8
	v_cvt_f32_i32_e32 v67, v9
	v_cvt_f32_i32_e32 v66, v10
	v_cvt_f32_i32_e32 v65, v11
	v_cvt_f32_i32_e32 v9, v12
	v_cvt_f32_i32_e32 v75, v21
	v_cvt_f32_i32_e32 v72, v24
	v_cvt_f32_i32_e32 v24, v41
	v_cvt_f32_i32_e32 v21, v44
	v_cvt_f32_i32_e32 v8, v45
	v_cvt_f32_i32_e32 v10, v46
	v_cvt_f32_i32_e32 v11, v47
	v_cvt_f32_i32_e32 v12, v48
	v_cvt_f32_i32_e32 v41, v49
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v150, v86
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v86, v33
	v_cvt_f32_i32_e32 v33, v37
	v_cvt_f32_i32_e32 v37, v53
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v149, v87
	v_cvt_f32_i32_e32 v147, v88
	v_cvt_f32_i32_e32 v138, v90
	v_cvt_f32_i32_e32 v136, v92
	v_cvt_f32_i32_e32 v90, v93
	v_cvt_f32_i32_e32 v88, v95
	v_cvt_f32_i32_e32 v87, v96
	v_cvt_f32_i32_e32 v162, v97
	v_cvt_f32_i32_e32 v163, v98
	v_cvt_f32_i32_e32 v167, v101
	v_cvt_f32_i32_e32 v169, v103
	v_cvt_f32_i32_e32 v103, v105
	v_cvt_f32_i32_e32 v101, v107
	v_cvt_f32_i32_e32 v95, v109
	v_cvt_f32_i32_e32 v93, v111
	v_cvt_f32_i32_e32 v92, v112
	v_cvt_f32_i32_e32 v109, v114
	v_cvt_f32_i32_e32 v111, v116
	v_cvt_f32_i32_e32 v112, v117
	v_cvt_f32_i32_e32 v114, v119
	v_cvt_f32_i32_e32 v107, v121
	v_cvt_f32_i32_e32 v105, v123
	v_cvt_f32_i32_e32 v98, v126
	v_cvt_f32_i32_e32 v97, v127
	v_cvt_f32_i32_e32 v96, v128
	v_cvt_f32_i32_e32 v139, v89
	v_cvt_f32_i32_e32 v89, v94
	v_cvt_f32_i32_e32 v94, v110
	v_cvt_f32_i32_e32 v110, v115
	v_cvt_f32_i32_e32 v164, v99
	v_cvt_f32_i32_e32 v99, v125
	v_cvt_f32_i32_e32 v166, v100
	v_cvt_f32_i32_e32 v100, v108
	v_cvt_f32_i32_e32 v108, v113
	v_cvt_f32_i32_e32 v113, v118
	v_cvt_f32_i32_e32 v158, v81
	v_cvt_f32_i32_e32 v159, v82
	v_cvt_f32_i32_e32 v168, v102
	v_cvt_f32_i32_e32 v102, v106
	v_cvt_f32_i32_e32 v115, v120
	v_cvt_f32_i32_e32 v106, v122
	v_cvt_f32_i32_e32 v152, v104
	v_cvt_f32_i32_e32 v104, v124
	v_cvt_f32_i32_e32 v137, v91
	v_cvt_f32_i32_e32 v131, v78
	v_cvt_f32_i32_e32 v129, v80
	v_cvt_f32_i32_e32 v132, v77
	v_cvt_f32_i32_e32 v130, v79
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v91, v1
	v_cvt_f32_i32_e32 v78, v2
	v_cvt_f32_i32_e32 v77, v3
	v_cvt_f32_i32_e32 v82, v17
	v_cvt_f32_i32_e32 v81, v18
	v_cvt_f32_i32_e32 v79, v20
	v_cvt_f32_i32_e32 v80, v19
	v_cvt_f32_i32_e32 v3, v16
	v_cvt_f32_i32_e32 v16, v26
	v_cvt_f32_i32_e32 v17, v25
	v_cvt_f32_i32_e32 v0, v13
	v_cvt_f32_i32_e32 v13, v28
	v_cvt_f32_i32_e32 v2, v15
	v_cvt_f32_i32_e32 v15, v27
	v_cvt_f32_i32_e32 v18, v62
	v_cvt_f32_i32_e32 v1, v14
	v_cvt_f32_i32_e32 v28, v57
	v_cvt_f32_i32_e32 v14, v61
	v_cvt_f32_i32_e32 v27, v58
	v_cvt_f32_i32_e32 v26, v59
	v_cvt_f32_i32_e32 v25, v60
	v_cvt_f32_i32_e32 v19, v63
	v_cvt_f32_i32_e32 v20, v64
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v30, v54, s4, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v42, s55, v42, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v43, s55, v43, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v30, v30, s[28:31], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v42, 0x80000000, v42, s0
	v_cndmask_b32_e64 v43, 0x80000000, v43, s1
	s_clause 0x1
	buffer_load_u16 v42, v42, s[24:27], 0 offen
	buffer_load_u16 v50, v43, s[24:27], 0 offen
	scratch_load_b32 v43, off, off offset:720 ; 4-byte Folded Reload
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v50, 16, v50
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v43, s55, v43, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v6, v6, v50
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v4, v50, v4 :: v_dual_mul_f32 v7, v7, v50
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v51, v43, s[24:27], 0 offen
	scratch_load_b32 v43, off, off offset:724 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v43, s55, v43, 1
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s55, s55, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s55, s48
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v43, 0x80000000, v43, s3
	buffer_load_u16 v52, v43, s[24:27], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v55, off, off offset:732 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v55, v30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v56, off, off offset:736
	scratch_load_b32 v180, off, off offset:552
	scratch_load_b32 v183, off, off offset:564
	scratch_load_b32 v192, off, off offset:600
	scratch_load_b32 v190, off, off offset:592
	scratch_load_b32 v173, off, off offset:524
	scratch_load_b32 v181, off, off offset:556
	scratch_load_b32 v175, off, off offset:532
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v30, 16, v42
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(7)
	ds_load_b128 v[42:45], v56
	ds_load_b128 v[46:49], v56 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v30, v153
	s_clause 0xc                            ; 52-byte Folded Reload
	scratch_load_b32 v182, off, off offset:560
	scratch_load_b32 v153, off, off offset:456
	scratch_load_b32 v172, off, off offset:520
	scratch_load_b32 v189, off, off offset:588
	scratch_load_b32 v174, off, off offset:528
	scratch_load_b32 v126, off, off offset:364
	scratch_load_b32 v128, off, off offset:372
	scratch_load_b32 v127, off, off offset:368
	scratch_load_b32 v116, off, off offset:264
	scratch_load_b32 v117, off, off offset:268
	scratch_load_b32 v119, off, off offset:276
	scratch_load_b32 v121, off, off offset:332
	scratch_load_b32 v123, off, off offset:340
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v52, 16, v52
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v125, off, off offset:360
	scratch_load_b32 v118, off, off offset:272
	scratch_load_b32 v120, off, off offset:328
	scratch_load_b32 v122, off, off offset:336
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(23) lgkmcnt(1)
	v_dual_fmac_f32 v180, v53, v42 :: v_dual_mul_f32 v53, v30, v155
	scratch_load_b32 v155, off, off offset:460 ; 4-byte Folded Reload
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v51, 16, v51
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v206, off, off offset:656
	scratch_load_b32 v205, off, off offset:652
	scratch_load_b32 v200, off, off offset:632
	scratch_load_b32 v204, off, off offset:648
	scratch_load_b32 v201, off, off offset:636
	scratch_load_b32 v198, off, off offset:624
	scratch_load_b32 v197, off, off offset:620
	scratch_load_b32 v196, off, off offset:616
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(27)
	v_fmac_f32_e32 v181, v53, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v30, v156
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v156, off, off offset:464
	scratch_load_b32 v195, off, off offset:612
	scratch_load_b32 v194, off, off offset:608
	scratch_load_b32 v191, off, off offset:596
	scratch_load_b32 v193, off, off offset:604
	scratch_load_b32 v188, off, off offset:584
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v183, v53, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v30, v157
	scratch_load_b32 v157, off, off offset:468 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v30, v0
	v_mul_f32_e32 v2, v2, v30
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(32)
	v_dual_fmac_f32 v182, v53, v45 :: v_dual_mul_f32 v53, v50, v158
	s_waitcnt vmcnt(31)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v153, v53, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v50, v159
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(15)
	v_fmac_f32_e32 v155, v53, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v50, v160
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v157, v53, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v50, v161
	scratch_load_b32 v161, off, off offset:488 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v156, v53, v45 :: v_dual_mul_f32 v53, v51, v162
	scratch_load_b32 v162, off, off offset:492 ; 4-byte Folded Reload
	v_fmac_f32_e32 v125, v53, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v51, v163
	scratch_load_b32 v163, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v126, v53, v43 :: v_dual_mul_f32 v53, v51, v164
	scratch_load_b32 v164, off, off offset:500 ; 4-byte Folded Reload
	v_dual_fmac_f32 v128, v53, v44 :: v_dual_mul_f32 v53, v51, v166
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v33, v51, v33
	v_mul_f32_e32 v31, v51, v31
	v_mul_f32_e32 v29, v51, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v32, v51, v32 :: v_dual_fmac_f32 v127, v53, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v52, v108
	scratch_load_b32 v108, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v9, v30, v9 :: v_dual_mul_f32 v8, v51, v8
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v116, v53, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v52, v109
	scratch_load_b32 v109, off, off offset:236 ; 4-byte Folded Reload
	v_mul_f32_e32 v53, v140, v30
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v117, v42, v43 :: v_dual_mul_f32 v42, v52, v110
	scratch_load_b32 v110, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v40, v52, v40
	v_mul_f32_e32 v41, v52, v41
	v_mul_f32_e32 v39, v52, v39
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v119, v42, v44 :: v_dual_mul_f32 v42, v52, v111
	scratch_load_b32 v111, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v38, v52, v38
	v_mul_f32_e32 v14, v52, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v118, v42, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v30, v144
	scratch_load_b32 v144, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v172, v42, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v30, v143
	scratch_load_b32 v143, off, off offset:432 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v173, v42, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v30, v142
	scratch_load_b32 v142, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v174, v42, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v30, v141
	scratch_load_b32 v141, off, off offset:424 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v175, v42, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v50, v151
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v141, v42, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v50, v150
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v142, v42, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v50, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v143, v42, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v50, v147
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v144, v42, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v51, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v120, v42, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v51, v168
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v121, v42, v47 :: v_dual_mul_f32 v42, v51, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v122, v42, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v51, v152
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v123, v42, v49 :: v_dual_mul_f32 v42, v52, v112
	scratch_load_b32 v112, off, off offset:300 ; 4-byte Folded Reload
	v_fmac_f32_e32 v108, v42, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v52, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v109, v42, v47 :: v_dual_mul_f32 v42, v52, v114
	v_fmac_f32_e32 v110, v42, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v52, v115
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v111, v42, v49
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[42:45], v56 offset:512
	ds_load_b128 v[46:49], v56 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v206, v53, v42 :: v_dual_mul_f32 v53, v30, v135
	scratch_load_b32 v135, off, off offset:400 ; 4-byte Folded Reload
	v_fmac_f32_e32 v161, v53, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v30, v134
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v134, off, off offset:396
	scratch_load_b32 v113, off, off offset:304
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v162, v53, v44 :: v_dual_mul_f32 v53, v30, v133
	scratch_load_b32 v133, off, off offset:392 ; 4-byte Folded Reload
	v_fmac_f32_e32 v163, v53, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v139, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v200, v53, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v50, v138
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v133, v53, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v50, v137
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v134, v53, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v50, v136
	scratch_load_b32 v136, off, off offset:404 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v135, v53, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v103, v51
	scratch_load_b32 v103, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v195, v53, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v51, v102
	scratch_load_b32 v102, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v103, v53, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v51, v101
	scratch_load_b32 v101, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v112, v53, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v51, v100
	scratch_load_b32 v100, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v113, v53, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v107, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v191, v53, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v42, v52, v106 :: v_dual_mul_f32 v53, v30, v91
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v100, v42, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v52, v105
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v101, v42, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v52, v104
	scratch_load_b32 v104, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v102, v42, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v30, v132
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v164, v42, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v131, v30
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v205, v42, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v130, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v204, v42, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v129, v30
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v201, v42, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v50, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v136, v42, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v89, v50
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v198, v42, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v88, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v197, v42, v48 :: v_dual_mul_f32 v42, v87, v50
	scratch_load_b32 v87, off, off offset:200 ; 4-byte Folded Reload
	v_fmac_f32_e32 v196, v42, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v51, v95
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v104, v42, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v94, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v194, v42, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v93, v51
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v193, v42, v48 :: v_dual_mul_f32 v42, v92, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v192, v42, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v52, v99
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v87, v42, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v98, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v190, v42, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v97, v52
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v189, v42, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v96, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v188, v42, v49
	v_add_nc_u32_e32 v42, s19, v54
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v42, v42, s4, 1
	buffer_load_u16 v42, v42, s[28:31], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v42, 16, v42
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v55, v42
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1f                           ; 128-byte Folded Reload
	scratch_load_b32 v187, off, off offset:580
	scratch_load_b32 v186, off, off offset:576
	scratch_load_b32 v184, off, off offset:568
	scratch_load_b32 v185, off, off offset:572
	scratch_load_b32 v179, off, off offset:548
	scratch_load_b32 v178, off, off offset:544
	scratch_load_b32 v176, off, off offset:536
	scratch_load_b32 v177, off, off offset:540
	scratch_load_b32 v160, off, off offset:484
	scratch_load_b32 v169, off, off offset:516
	scratch_load_b32 v168, off, off offset:512
	scratch_load_b32 v167, off, off offset:508
	scratch_load_b32 v166, off, off offset:504
	scratch_load_b32 v159, off, off offset:480
	scratch_load_b32 v158, off, off offset:476
	scratch_load_b32 v152, off, off offset:472
	scratch_load_b32 v97, off, off offset:292
	scratch_load_b32 v93, off, off offset:284
	scratch_load_b32 v92, off, off offset:280
	scratch_load_b32 v106, off, off offset:324
	scratch_load_b32 v105, off, off offset:320
	scratch_load_b32 v99, off, off offset:316
	scratch_load_b32 v98, off, off offset:312
	scratch_load_b32 v94, off, off offset:288
	scratch_load_b32 v107, off, off offset:344
	scratch_load_b32 v132, off, off offset:388
	scratch_load_b32 v131, off, off offset:384
	scratch_load_b32 v129, off, off offset:376
	scratch_load_b32 v130, off, off offset:380
	scratch_load_b32 v124, off, off offset:356
	scratch_load_b32 v115, off, off offset:352
	scratch_load_b32 v114, off, off offset:348
	s_clause 0xb                            ; 48-byte Folded Reload
	scratch_load_b32 v91, off, off offset:260
	scratch_load_b32 v90, off, off offset:256
	scratch_load_b32 v89, off, off offset:252
	scratch_load_b32 v88, off, off offset:228
	scratch_load_b32 v151, off, off offset:452
	scratch_load_b32 v150, off, off offset:448
	scratch_load_b32 v149, off, off offset:444
	scratch_load_b32 v147, off, off offset:440
	scratch_load_b32 v140, off, off offset:420
	scratch_load_b32 v139, off, off offset:416
	scratch_load_b32 v137, off, off offset:408
	scratch_load_b32 v138, off, off offset:412
	ds_load_b128 v[42:45], v56
	ds_load_b128 v[46:49], v56 offset:16
	s_clause 0xc                            ; 52-byte Folded Reload
	scratch_load_b32 v216, off, off offset:708
	scratch_load_b32 v215, off, off offset:704
	scratch_load_b32 v214, off, off offset:696
	scratch_load_b32 v213, off, off offset:688
	scratch_load_b32 v212, off, off offset:684
	scratch_load_b32 v211, off, off offset:680
	scratch_load_b32 v210, off, off offset:676
	scratch_load_b32 v207, off, off offset:660
	scratch_load_b32 v209, off, off offset:668
	scratch_load_b32 v208, off, off offset:664
	scratch_load_b32 v203, off, off offset:644
	scratch_load_b32 v202, off, off offset:640
	scratch_load_b32 v199, off, off offset:628
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(56) lgkmcnt(1)
	v_fmac_f32_e32 v187, v53, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v30, v78
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(55)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v186, v53, v43 :: v_dual_mul_f32 v53, v30, v77
	s_waitcnt vmcnt(54)
	v_fmac_f32_e32 v184, v53, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v30, v76
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(40)
	v_fmac_f32_e32 v97, v41, v42
	s_waitcnt vmcnt(39)
	v_fmac_f32_e32 v93, v39, v44
	v_fmac_f32_e32 v185, v53, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v50, v82
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(38)
	v_fmac_f32_e32 v92, v38, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v38, v30, v71
	scratch_load_b32 v82, off, off offset:672 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v160, v53, v42 :: v_dual_mul_f32 v53, v50, v81
	s_waitcnt vmcnt(33) lgkmcnt(0)
	v_fmac_f32_e32 v107, v31, v48
	v_fmac_f32_e32 v179, v38, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v38, v30, v70
	scratch_load_b32 v81, off, off offset:692 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v159, v53, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(27)
	v_dual_mul_f32 v53, v50, v80 :: v_dual_fmac_f32 v114, v29, v49
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v178, v38, v47 :: v_dual_mul_f32 v29, v52, v37
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v38, v30, v69
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v158, v53, v44 :: v_dual_mul_f32 v53, v50, v79
	scratch_load_b32 v80, off, off offset:700 ; 4-byte Folded Reload
	s_waitcnt vmcnt(27)
	v_dual_fmac_f32 v91, v29, v46 :: v_dual_fmac_f32 v176, v38, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v38, v30, v68
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v94, v40, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v29, v52, v36 :: v_dual_fmac_f32 v124, v33, v46
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v115, v32, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v177, v38, v49
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v38, v50, v75
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v152, v53, v45 :: v_dual_mul_f32 v53, v51, v86
	s_waitcnt vmcnt(26)
	v_fmac_f32_e32 v90, v29, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v29, v52, v35
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(23)
	v_fmac_f32_e32 v151, v38, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v38, v50, v74
	scratch_load_b32 v86, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(23)
	v_fmac_f32_e32 v150, v38, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v38, v50, v73
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v132, v53, v42 :: v_dual_mul_f32 v53, v51, v85
	scratch_load_b32 v85, off, off offset:220 ; 4-byte Folded Reload
	v_fmac_f32_e32 v131, v53, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v51, v84
	scratch_load_b32 v84, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v129, v53, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v51, v83
	scratch_load_b32 v83, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v89, v29, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v29, v52, v34 :: v_dual_fmac_f32 v130, v53, v45
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v29, v49
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v29, v67, v30
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v149, v38, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v38, v50, v72
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v147, v38, v49
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[31:34], v56 offset:512
	ds_load_b128 v[35:38], v56 offset:528
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v3, v3, v30
	v_mul_f32_e32 v1, v1, v30
	v_mul_f32_e32 v5, v5, v50
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v216, v29, v31 :: v_dual_mul_f32 v29, v30, v66
	v_fmac_f32_e32 v167, v9, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v9, v17, v50 :: v_dual_fmac_f32 v80, v2, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v212, v6, v37 :: v_dual_fmac_f32 v169, v29, v32
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v29, v30, v65
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v81, v9, v31
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v9, v50, v16 :: v_dual_fmac_f32 v166, v0, v35
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v138, v4, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v168, v29, v33 :: v_dual_fmac_f32 v211, v7, v38
	v_dual_fmac_f32 v140, v9, v32 :: v_dual_mul_f32 v9, v50, v15
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v15, v20, v52
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v98, v8, v35 :: v_dual_fmac_f32 v215, v1, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v84, v14, v35 :: v_dual_fmac_f32 v139, v9, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v50, v13
	v_mul_f32_e32 v13, v19, v52
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v213, v5, v36
	v_fmac_f32_e32 v199, v15, v38
	v_fmac_f32_e32 v137, v9, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v9, v24, v51 :: v_dual_fmac_f32 v202, v13, v37
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v210, v9, v31
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v51, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v106, v9, v32 :: v_dual_mul_f32 v9, v51, v22
	v_fmac_f32_e32 v105, v9, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v51, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v99, v9, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v28, v52
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v207, v9, v31
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v52, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v88, v9, v32 :: v_dual_mul_f32 v9, v52, v26
	v_fmac_f32_e32 v86, v9, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v52, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v85, v9, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v10, v51
	v_mul_f32_e32 v10, v11, v51
	v_dual_mul_f32 v11, v12, v51 :: v_dual_mul_f32 v12, v18, v52
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v82, v9, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v214, v3, v38 :: v_dual_fmac_f32 v209, v10, v37
	v_dual_fmac_f32 v208, v11, v38 :: v_dual_fmac_f32 v203, v12, v36
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v95, off, off offset:740
	scratch_load_b32 v96, off, off offset:744
	v_mov_b32_e32 v3, v232
.LBB0_9:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v216 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v185
	v_dual_mul_f32 v8, 0xbfb8aa3b, v187 :: v_dual_mul_f32 v1, 0xbfb8aa3b, v80
	v_mul_f32_e32 v52, 0xbfb8aa3b, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v0, 0xbfb8aa3b, v215 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v177
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v1
	v_dual_mul_f32 v4, 0xbfb8aa3b, v184 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v186
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v10, 0, 0x42800000, s0
	v_mul_f32_e32 v29, 0xbfb8aa3b, v166
	v_dual_mul_f32 v28, 0xbfb8aa3b, v178 :: v_dual_mul_f32 v37, 0xbfb8aa3b, v152
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v2, 0xbfb8aa3b, v214
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v216
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v80
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v215
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v2
	v_exp_f32_e32 v13, v6
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, s0
	v_mul_f32_e32 v6, 0xbfb8aa3b, v179
	v_exp_f32_e32 v1, v1
	v_cndmask_b32_e64 v12, 0, 0x42800000, s1
	v_mul_f32_e32 v35, 0xbfb8aa3b, v168
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s1
	v_dual_mul_f32 v24, 0xbfb8aa3b, v176 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v158
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v214
	v_ldexp_f32 v9, v13, v9
	v_mul_f32_e32 v13, 0xbfb8aa3b, v81
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v14, v1, v0
	v_exp_f32_e32 v12, v12
	v_mul_f32_e32 v1, 0xbfb8aa3b, v213
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_dual_mul_f32 v36, 0xbfb8aa3b, v169 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v159
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_dual_add_f32 v14, 1.0, v14 :: v_dual_mul_f32 v13, 0xbfb8aa3b, v211
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v10, v10, v2
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v11, v12, v11
	v_mul_f32_e32 v12, 0xbfb8aa3b, v212
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v13
	v_dual_fmac_f32 v2, 0xbfb8aa3b, v81 :: v_dual_mul_f32 v33, 0xbfb8aa3b, v147
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v2, v2
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_dual_fmac_f32 v12, 0xbfb8aa3b, v213 :: v_dual_fmac_f32 v17, 0xbfb8aa3b, v211
	v_mul_f32_e32 v34, 0xbfb8aa3b, v149
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v212
	v_exp_f32_e32 v12, v12
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_3)
	v_ldexp_f32 v18, v2, v0
	v_mul_f32_e32 v0, 0xbfb8aa3b, v210
	v_exp_f32_e32 v15, v15
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v30, 0xbfb8aa3b, v167 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v160
	s_delay_alu instid0(TRANS32_DEP_3) | instid1(VALU_DEP_4)
	v_ldexp_f32 v12, v12, v1
	v_dual_mul_f32 v40, 0xbfb8aa3b, v150 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v151
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v79, null, v18, v18, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v13, v15, v13
	v_ldexp_f32 v15, v17, v16
	v_mul_f32_e32 v17, 0xbfb8aa3b, v208
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v43, 0xbfb8aa3b, v107 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v90
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v13, 1.0, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v17
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_dual_mul_f32 v46, 0xbfb8aa3b, v139 :: v_dual_mul_f32 v45, 0xbfb8aa3b, v140
	v_cndmask_b32_e64 v23, 0, 0x42800000, s1
	v_mul_f32_e32 v0, 0xbfb8aa3b, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v210
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s1
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, s1, v80, v10, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v208
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_exp_f32_e32 v2, v2
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v9, 1.0, v9 :: v_dual_mul_f32 v38, 0xbfb8aa3b, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v41, 0xbfb8aa3b, v137
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v16, 0xbfb8aa3b, v209
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v9, v9, v216
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v23, v23
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v16
	v_mul_f32_e32 v61, 0xbfb8aa3b, v106
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v32, v2, v1
	v_exp_f32_e32 v17, v17
	v_cndmask_b32_e64 v20, 0, 0x42800000, s0
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s0
	v_mul_f32_e32 v1, 0xbfb8aa3b, v207
	v_mul_f32_e32 v2, 0xbfb8aa3b, v203
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v209
	v_dual_mul_f32 v56, 0xbfb8aa3b, v132 :: v_dual_mul_f32 v55, 0xbfb8aa3b, v99
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v16, v17, v16
	v_exp_f32_e32 v20, v20
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_dual_mul_f32 v50, 0xbfb8aa3b, v131 :: v_dual_mul_f32 v53, 0xbfb8aa3b, v98
	v_cndmask_b32_e64 v48, 0, 0x42800000, s0
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s0
	v_dual_mul_f32 v42, 0xbfb8aa3b, v129 :: v_dual_mul_f32 v49, 0xbfb8aa3b, v130
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v17, v20, v19
	v_mul_f32_e32 v20, 0xbfb8aa3b, v202
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v203
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v19, v23, v22
	v_dual_fmac_f32 v2, 0xbfb8aa3b, v207 :: v_dual_add_f32 v17, 1.0, v17
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_exp_f32_e32 v64, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v2, v2
	v_dual_mul_f32 v44, 0xbfb8aa3b, v115 :: v_dual_mul_f32 v57, 0xbfb8aa3b, v94
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, vcc_lo, v216, v9, v216
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v114 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v202
	v_ldexp_f32 v59, v64, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v65, v69, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v199
	v_ldexp_f32 v68, v2, v1
	v_exp_f32_e32 v66, v20
	v_mul_f32_e32 v2, 0xbfb8aa3b, v85
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v64, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	v_dual_mul_f32 v20, 0xbfb8aa3b, v86 :: v_dual_add_f32 v59, 1.0, v59
	v_dual_mul_f32 v60, 0xbfb8aa3b, v105 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v72, v70, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_ldexp_f32 v62, v66, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v14, v14, v215
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0x42800000, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v65, v72, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v58, 0xbfb8aa3b, v97 :: v_dual_mul_f32 v1, 0xbfb8aa3b, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v64, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v54, 0xbfb8aa3b, v92 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v74, v69
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp4:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v65, v72, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v73, -v66, v64, 1.0
	v_div_fmas_f32 v65, v65, v69, v72
	v_rcp_f32_e32 v69, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v64, v73, v64
	v_div_scale_f32 v73, s0, v215, v14, v215
	v_div_fixup_f32 v9, v65, v9, v216
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v74, v73, v64
	v_fma_f32 v70, -v66, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v70, v64
	v_fma_f32 v65, -v66, v74, v73
	v_div_scale_f32 v66, s2, v214, v11, v214
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v64, v65, v64, v74
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v63, v67, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v10, v10, v80
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v67
	v_div_fixup_f32 v14, v64, v14, v215
	v_fma_f32 v75, -v67, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v22, 0xbfb8aa3b, v88 :: v_dual_fmac_f32 v71, v75, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v11, v11, v214
	v_mul_f32_e32 v78, v76, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v77, v75
	v_fma_f32 v70, -v67, v78, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v78, v70, v71
	v_fma_f32 v72, -v75, v77, 1.0
	v_fma_f32 v70, -v79, v69, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v48, 0xbfb8aa3b, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v67, v78, v76
	v_fmac_f32_e32 v77, v72, v77
	v_div_scale_f32 v76, null, v13, v13, v212
	v_fmac_f32_e32 v69, v70, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v65, v65, v71, v78
	v_mul_f32_e32 v67, v66, v77
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v75, v67, v66
	v_fmac_f32_e32 v67, v73, v77
	v_div_fixup_f32 v10, v65, v10, v80
	v_rcp_f32_e32 v65, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v66, -v75, v67, v66
	v_div_scale_f32 v75, null, v15, v15, v211
	v_div_fmas_f32 v66, v66, v77, v67
	v_div_scale_f32 v77, s2, v212, v13, v212
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v76, v65, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v11, v66, v11, v214
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v65, v78, v65
	v_div_scale_f32 v70, null, v12, v12, v213
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v71, v70
	v_fma_f32 v73, -v70, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v71, v73, v71
	v_div_scale_f32 v72, s0, v81, v18, v81
	v_rcp_f32_e32 v73, v75
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v80, s0, v211, v15, v211
	v_mul_f32_e32 v74, v72, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v64, -v79, v74, v72
	v_fma_f32 v78, -v75, v73, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v64, v69
	v_div_scale_f32 v64, s1, v213, v12, v213
	v_dual_fmac_f32 v73, v78, v73 :: v_dual_add_f32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v79, v74, v72
	v_mul_f32_e32 v72, v64, v71
	v_div_scale_f32 v79, null, v32, v32, v210
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v67, v67, v69, v74
	v_fma_f32 v69, -v70, v72, v64
	v_mul_f32_e32 v74, v77, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v78, v79
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v66, v67, v18, v81
	v_dual_fmac_f32 v72, v69, v71 :: v_dual_mul_f32 v67, v80, v73
	v_div_scale_f32 v69, null, v16, v16, v82
	v_fma_f32 v18, -v76, v74, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v64, -v70, v72, v64
	v_rcp_f32_e32 v70, v69
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v81, -v79, v78, 1.0
	v_fmac_f32_e32 v74, v18, v65
	v_fma_f32 v18, -v75, v67, v80
	v_div_fmas_f32 v64, v64, v71, v72
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v78, v81, v78
	v_div_scale_f32 v81, s3, v210, v32, v210
	v_fma_f32 v71, -v76, v74, v77
	v_fmac_f32_e32 v67, v18, v73
	v_fma_f32 v72, -v69, v70, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v18, v81, v78
	v_div_fixup_f32 v12, v64, v12, v213
	v_div_fmas_f32 v65, v71, v65, v74
	v_fma_f32 v71, -v75, v67, v80
	v_fmac_f32_e32 v70, v72, v70
	v_div_scale_f32 v72, null, v17, v17, v209
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v74, -v79, v18, v81
	v_div_scale_f32 v75, s1, v82, v16, v82
	v_div_fmas_f32 v67, v71, v73, v67
	v_rcp_f32_e32 v71, v72
	v_div_fixup_f32 v13, v65, v13, v212
	v_fmac_f32_e32 v18, v74, v78
	v_mul_f32_e32 v73, v75, v70
	v_div_fixup_f32 v64, v67, v15, v211
	v_div_scale_f32 v67, null, v19, v19, v208
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v13, v197, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v15, -v79, v18, v81
	v_fma_f32 v65, -v69, v73, v75
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v72, v71, 1.0
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v15, v15, v78, v18
	v_rcp_f32_e32 v18, v67
	v_fmac_f32_e32 v73, v65, v70
	v_fmac_f32_e32 v71, v74, v71
	v_div_scale_f32 v74, null, v68, v68, v207
	v_div_scale_f32 v65, s0, v209, v17, v209
	v_div_fixup_f32 v32, v15, v32, v210
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v76, v74
	v_fma_f32 v15, -v69, v73, v75
	v_mul_f32_e32 v69, v65, v71
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v75, -v67, v18, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v15, v15, v70, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v70, -v72, v69, v65
	v_fmac_f32_e32 v18, v75, v18
	v_div_scale_f32 v73, null, v59, v59, v203
	v_div_scale_f32 v75, s1, v208, v19, v208
	v_fma_f32 v77, -v74, v76, 1.0
	v_div_fixup_f32 v78, v15, v16, v82
	v_fmac_f32_e32 v69, v70, v71
	v_rcp_f32_e32 v15, v73
	v_mul_f32_e32 v16, v75, v18
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v70, s2, v207, v68, v207
	v_div_scale_f32 v77, null, v62, v62, v202
	v_fma_f32 v65, -v72, v69, v65
	v_fma_f32 v72, -v67, v16, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v79, v70, v76
	v_rcp_f32_e32 v81, v77
	v_div_scale_f32 v82, null, v63, v63, v199
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v80, -v73, v15, 1.0
	v_div_fmas_f32 v65, v65, v71, v69
	v_fmac_f32_e32 v16, v72, v18
	v_fma_f32 v69, -v74, v79, v70
	v_rcp_f32_e32 v71, v82
	v_fmac_f32_e32 v15, v80, v15
	v_div_scale_f32 v72, s0, v203, v59, v203
	v_fma_f32 v80, -v77, v81, 1.0
	v_div_fixup_f32 v65, v65, v17, v209
	v_fma_f32 v17, -v67, v16, v75
	v_fmac_f32_e32 v79, v69, v76
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v67, v72, v15
	v_fmac_f32_e32 v81, v80, v81
	v_div_scale_f32 v69, s3, v202, v62, v202
	v_fma_f32 v75, -v82, v71, 1.0
	v_div_fmas_f32 v16, v17, v18, v16
	v_fma_f32 v17, -v74, v79, v70
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v18, -v73, v67, v72
	v_dual_mul_f32 v70, v69, v81 :: v_dual_fmac_f32 v71, v75, v71
	v_div_scale_f32 v74, s1, v199, v63, v199
	v_div_fmas_f32 v17, v17, v76, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v75, v16, v19, v208
	v_fmac_f32_e32 v67, v18, v15
	v_fma_f32 v16, -v77, v70, v69
	v_div_fixup_f32 v68, v17, v68, v207
	v_mul_f32_e32 v18, v74, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v73, v67, v72
	v_fmac_f32_e32 v70, v16, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v16, -v82, v18, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v187
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v8, v8, v15, v67
	v_fma_f32 v15, -v77, v70, v69
	v_fmac_f32_e32 v18, v16, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v206, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v15, v15, v81, v70
	v_fma_f32 v16, -v82, v18, v74
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v59, v8, v59, v203
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v62, v15, v62, v202
	v_div_fmas_f32 v7, v16, v71, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	v_ldexp_f32 v5, v67, v17
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v17, v201, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v63, v7, v63, v199
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v186
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_exp_f32_e32 v5, v15
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v185
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v67, v67, v187
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v15, v200, v66
	v_mul_f32_e32 v11, v195, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v9, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v66, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v40
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_ldexp_f32 v4, v5, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, vcc_lo, v187, v67, v187
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v9, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v69, v66, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v8, 0xbfb8aa3b, v184 :: v_dual_mul_f32 v9, v192, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v7, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v191, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, s0, v186, v32, v186
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v205, v14
	v_mul_f32_e32 v14, v198, v12
	v_mul_f32_e32 v12, v196, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v64, null, v32, v32, v186
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v70, v70, v185
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v72, v64
	v_mul_f32_e32 v76, v71, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v193, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v65, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v4, v190, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v69, v76, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v59, v73, v5
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v5, v189, v62
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v64, v72, 1.0
	v_dual_fmac_f32 v76, v75, v66 :: v_dual_add_f32 v59, 1.0, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v73, -v74, v65, 1.0
	v_fmac_f32_e32 v72, v77, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v69, v76, v71
	v_div_scale_f32 v71, s1, v185, v70, v185
	v_fmac_f32_e32 v65, v73, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v69, v68, v72
	v_div_scale_f32 v73, null, v59, v59, v184
	v_div_fmas_f32 v62, v62, v66, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v64, v69, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v16, v204, v10
	v_mul_f32_e32 v10, v194, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v66, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v71, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v75, v72
	v_div_fixup_f32 v62, v62, v67, v187
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v179
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v6, v188, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v74, v76, v71
	v_fma_f32 v67, -v73, v66, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v64, v69, v68
	v_div_scale_f32 v68, s2, v184, v59, v184
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v66, v67, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v63, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v64, v64, v72, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v178
	v_ldexp_f32 v28, v28, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v68, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v74, v76, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v24, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v73, v69, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v75, null, v67, v67, v179
	v_fmac_f32_e32 v69, v28, v66
	v_div_fixup_f32 v28, v64, v32, v186
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v24, v24, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v65, v71, v65, v76
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v32, -v73, v69, v68
	v_rcp_f32_e32 v63, v75
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v176
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v32, v32, v66, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v64, v64, v178
	v_div_scale_f32 v69, s0, v179, v67, v179
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v21, v32, v59, v184
	v_rcp_f32_e32 v66, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v21, v183, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v65, v70, v185
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v75, v63, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v177
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v68, v66, 1.0
	v_fmac_f32_e32 v63, v70, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v59, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v71, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v65, v65, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v69, v63
	v_div_scale_f32 v71, s1, v178, v64, v178
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v75, v70, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v59, v59, v32
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v180, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v65, v65, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v70, v72, v63
	v_dual_mul_f32 v72, v71, v66 :: v_dual_add_f32 v59, 1.0, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v74, v73
	v_fma_f32 v69, -v75, v70, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v75, -v68, v72, v71
	v_div_fmas_f32 v63, v69, v63, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v72, v75, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v73, v74, 1.0
	v_div_scale_f32 v36, s0, v176, v65, v176
	v_div_fixup_f32 v63, v63, v67, v179
	v_fma_f32 v67, -v68, v72, v71
	v_div_scale_f32 v68, null, v59, v59, v177
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v62, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v62, v68
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v169
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v35, v67, v66, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v36, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	v_exp_f32_e32 v70, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v35, v35, v64, v178
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v168
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v68, v62, 1.0
	v_fma_f32 v64, -v73, v71, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v29
	v_exp_f32_e32 v67, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v62, v72, v62
	v_div_scale_f32 v72, s1, v177, v59, v177
	v_fmac_f32_e32 v71, v64, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v70, v69
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v64, v72, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v73, v71, v36
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v67, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v68, v64, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v167
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v67, null, v73, v73, v169
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v30, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v70
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v67
	v_div_fmas_f32 v29, v36, v74, v71
	v_div_scale_f32 v75, null, v66, v66, v168
	v_fma_f32 v36, -v68, v64, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v72, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v36, v36, v62, v64
	v_fma_f32 v74, -v67, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v166
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v62, vcc_lo, v169, v73, v169
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v36, v36, v59, v177
	v_fmac_f32_e32 v70, v74, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v59, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v75, v72, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v30, v69
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v62, v70
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v35, v173, v35 :: v_dual_fmac_f32 v72, v64, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v64, s0, v168, v66, v168
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v29, v65, v176
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v175, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v67, v71, v62
	v_mul_f32_e32 v65, v64, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v59, v59, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v69, v69, v167
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v71, v36, v70
	v_fma_f32 v68, -v75, v65, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v59, 1.0, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v76, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v62, -v67, v71, v62
	v_fmac_f32_e32 v65, v68, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v67, null, v59, v59, v166
	v_div_fmas_f32 v62, v62, v70, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v75, v65, v64
	v_rcp_f32_e32 v47, v67
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v62, v62, v73, v169
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v64, v64, v72, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v160
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v67, v47, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v24, v182, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v64, v64, v66, v168
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v172, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v74, v76, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v47, v71, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v28, v181, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v63, v76
	v_div_scale_f32 v63, s1, v167, v69, v167
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, s0, v166, v59, v166
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v65, v63, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v159
	v_ldexp_f32 v37, v39, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v39, v72, v47
	v_fma_f32 v66, -v74, v65, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v71, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v67, v39, v72
	v_fmac_f32_e32 v65, v66, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v152
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v37, v47
	v_fma_f32 v63, -v74, v65, v63
	v_div_scale_f32 v74, null, v73, v73, v160
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v68
	v_ldexp_f32 v37, v71, v70
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v68, v74
	v_div_fmas_f32 v63, v63, v76, v65
	v_fma_f32 v65, -v67, v39, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v31, v66
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v158
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v39, v65, v47, v39
	v_div_scale_f32 v66, null, v67, v67, v159
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v74, v68, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v31
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v65, v66
	v_div_scale_f32 v72, vcc_lo, v160, v73, v160
	v_fmac_f32_e32 v68, v37, v68
	v_div_fixup_f32 v37, v63, v69, v167
	v_div_fixup_f32 v31, v39, v59, v166
	v_div_scale_f32 v59, null, v71, v71, v152
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v63, v72, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v47, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v66, v65, 1.0
	v_rcp_f32_e32 v69, v59
	v_div_scale_f32 v75, s0, v159, v67, v159
	v_fma_f32 v70, -v74, v63, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v65, v39, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v39, v162, v64 :: v_dual_add_f32 v64, 1.0, v47
	v_mul_f32_e32 v47, v161, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v63, v70, v68 :: v_dual_mul_f32 v70, v75, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v59, v69, 1.0
	v_div_scale_f32 v77, null, v64, v64, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v74, v63, v72
	v_fma_f32 v72, -v66, v70, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v30, v174, v30 :: v_dual_fmac_f32 v69, v76, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v77
	v_div_scale_f32 v76, s1, v152, v71, v152
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v72, v65
	v_div_fmas_f32 v51, v62, v68, v63
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v68, v76, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v66, v70, v75
	v_div_fixup_f32 v51, v51, v73, v160
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v77, v74, 1.0
	v_fma_f32 v73, -v59, v68, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v40, v66, v65, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_dual_fmac_f32 v63, 0xbfb8aa3b, v151 :: v_dual_fmac_f32 v68, v73, v69
	v_cndmask_b32_e64 v70, 0, 0x42800000, s3
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v72, v74
	v_div_scale_f32 v72, s2, v158, v64, v158
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v63, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v73, 0xbfb8aa3b, v149 :: v_dual_fmac_f32 v70, 0xbfb8aa3b, v150
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v65, v72, v74
	v_fma_f32 v59, -v59, v68, v76
	v_div_fixup_f32 v40, v40, v67, v159
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v60
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v164, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v77, v65, v72
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v163, v37
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v62, v63, v62
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v65, v34, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v59, v59, v69, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_exp_f32_e32 v68, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v77, v65, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v34, v34, v66
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v147
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v33, v74, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v68, v63
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v33, v64, v158
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v65, v65, v150
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v34
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v157, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v62, v62, v151
	v_rcp_f32_e32 v74, v68
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v72, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v73, v73, v149
	v_rcp_f32_e32 v69, v70
	v_div_fixup_f32 v34, v59, v71, v152
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v59, v75
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v67, -v68, v74, 1.0
	v_div_scale_f32 v71, null, v66, v66, v147
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v63, -v70, v69, 1.0
	v_fmac_f32_e32 v69, v63, v69
	v_div_scale_f32 v63, vcc_lo, v151, v62, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v76, v63, v69
	v_fma_f32 v64, -v70, v76, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v76, v64, v69
	v_div_scale_f32 v64, s0, v150, v65, v150
	v_fma_f32 v63, -v70, v76, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v63, v63, v69, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v153, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v63, v62, v151
	v_fmac_f32_e32 v74, v67, v74
	v_fma_f32 v67, -v75, v59, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v51, v141, v51 :: v_dual_mul_f32 v70, v64, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v59, v67, v59
	v_div_scale_f32 v67, s1, v149, v73, v149
	v_fma_f32 v63, -v71, v69, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v68, v70, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v67, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v78, 0xbfb8aa3b, v140 :: v_dual_fmac_f32 v69, v63, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v72, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v75, v76, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v46, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v68, v70, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v139
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v62, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v68, s2, v147, v66, v147
	v_div_fmas_f32 v64, v64, v74, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_exp_f32_e32 v41, v63
	v_ldexp_f32 v46, v46, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v68, v69
	v_fma_f32 v67, -v75, v76, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v71, v70, v68
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v41, v41, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v59, v67, v59, v76
	v_fmac_f32_e32 v70, v46, v69
	v_div_fixup_f32 v46, v64, v65, v150
	v_div_scale_f32 v75, null, v63, v63, v140
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v59, v73, v149
	v_fma_f32 v59, -v71, v70, v68
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v62, v75
	v_div_scale_f32 v67, null, v64, v64, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v59, v59, v69, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v137
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v50
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v143, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v74
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v75, v62, 1.0
	v_fmac_f32_e32 v62, v68, v62
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v71, -v67, v69, 1.0
	v_div_scale_f32 v68, s0, v140, v63, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v65, v65, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v34, v156, v34 :: v_dual_fmac_f32 v69, v71, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v38, v59, v66, v147
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v70, v68, v62 :: v_dual_add_f32 v65, 1.0, v65
	v_div_scale_f32 v71, s1, v139, v64, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v138
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v75, v70, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v65, v65, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v72, v62
	v_mul_f32_e32 v72, v71, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v74, v73
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v68, -v75, v70, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v75, -v67, v72, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v59, v66, v59
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v155, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v62, v68, v62, v70
	v_fmac_f32_e32 v72, v75, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v56
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v59, 1.0, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v73, v74, 1.0
	v_div_fixup_f32 v62, v62, v63, v140
	v_fma_f32 v63, -v67, v72, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v59, v59, v138
	v_fmac_f32_e32 v74, v66, v74
	v_div_scale_f32 v56, s0, v137, v65, v137
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v66, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v132
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v71, v56, v74
	v_div_fmas_f32 v50, v63, v69, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, s2
	v_exp_f32_e32 v70, v70
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v67, v66, 1.0
	v_div_fixup_f32 v50, v50, v64, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v131
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v73, v71, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v72, v66
	v_div_scale_f32 v72, s1, v138, v59, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v69, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v64, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v70, v68
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v64, v72, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v73, v71, v56
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v67, v64, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v130
	v_ldexp_f32 v63, v69, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v69, null, v73, v73, v132
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v64, v49, v66 :: v_dual_add_f32 v63, 1.0, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v49, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v69
	v_div_fmas_f32 v42, v56, v74, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v56, -v67, v64, v72
	v_div_scale_f32 v75, null, v63, v63, v131
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v75
	v_div_fmas_f32 v56, v56, v66, v64
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v69, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v129
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v64, vcc_lo, v132, v73, v132
	v_div_fixup_f32 v56, v56, v59, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v70, v74, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v59, v71
	v_ldexp_f32 v49, v49, v68
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v75, v72, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v71, v64, v70 :: v_dual_add_f32 v68, 1.0, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v72, v66, v72
	v_div_scale_f32 v66, s0, v131, v63, v131
	v_div_fixup_f32 v49, v42, v65, v137
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v42, v136, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v69, v71, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v59, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v65, v66, v72
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v59, v133, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v68, v68, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v71, v56, v70 :: v_dual_add_f32 v62, 1.0, v67
	v_fma_f32 v56, -v75, v65, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v76, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v135, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v69, v71, v64
	v_div_scale_f32 v67, null, v62, v62, v129
	v_fmac_f32_e32 v65, v56, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v64, v64, v70, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v52, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v66, -v75, v65, v66
	v_fma_f32 v56, -v74, v76, 1.0
	v_div_fixup_f32 v64, v64, v73, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v76, v56, v76
	v_div_fmas_f32 v65, v66, v72, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v124
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v67, v52, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v56, s1, v130, v68, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v52, v71, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v144, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v56, v76
	v_div_scale_f32 v72, s0, v129, v62, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v115
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v63, v65, v63, v131
	v_fma_f32 v65, -v74, v66, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	v_ldexp_f32 v43, v44, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v44, v72, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v65, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v67, v44, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v46, v142, v46 :: v_dual_fmac_f32 v69, 0xbfb8aa3b, v107
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v74, v66, v56
	v_div_scale_f32 v74, null, v73, v73, v124
	v_fmac_f32_e32 v44, v43, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v43, v71, v70
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v0, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v74
	v_div_fmas_f32 v56, v56, v76, v66
	v_fma_f32 v66, -v67, v44, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v114
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v44, v66, v52, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v71
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v0, v0, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v74, v69, 1.0
	v_div_scale_f32 v65, null, v67, v67, v115
	v_div_scale_f32 v71, vcc_lo, v124, v73, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v69, v43, v69
	v_rcp_f32_e32 v66, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v70, v52, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v52, v126, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v43, v44, v62, v129
	v_div_scale_f32 v76, s0, v115, v67, v115
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v56, v56, v68, v130
	v_mul_f32_e32 v68, v71, v69
	v_div_scale_f32 v62, null, v0, v0, v107
	v_fma_f32 v44, -v65, v66, 1.0
	v_div_scale_f32 v77, null, v63, v63, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v74, v68, v71
	v_rcp_f32_e32 v72, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v66, v44, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v44, v127, v56
	v_mul_f32_e32 v56, v125, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v68, v75, v69 :: v_dual_mul_f32 v43, v128, v43
	v_mul_f32_e32 v70, v76, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v64, -v74, v68, v71
	v_rcp_f32_e32 v74, v77
	v_fma_f32 v75, -v62, v72, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v71, -v65, v70, v76
	v_div_fmas_f32 v61, v64, v69, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v75, v72
	v_div_scale_f32 v75, s1, v107, v0, v107
	v_fmac_f32_e32 v70, v71, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v106
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v77, v74, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v75, v72
	v_fma_f32 v65, -v65, v70, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v71, v74
	v_div_scale_f32 v71, s2, v114, v63, v114
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v61, v61, v73, v124
	v_fma_f32 v73, -v62, v69, v75
	v_div_fmas_f32 v60, v65, v66, v70
	v_mul_f32_e32 v65, v71, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, s3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	v_ldexp_f32 v64, v68, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v73, v72
	v_fma_f32 v55, -v77, v65, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v105
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v62, v69, v75
	v_fmac_f32_e32 v65, v55, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v70
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v99
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v64, v64, v106
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v62, v62, v72, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v69, v73
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v70
	v_fma_f32 v53, -v77, v65, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v55, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v62, v0, v107
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v60, v60, v67, v115
	v_div_fmas_f32 v53, v53, v74, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v69, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v70, v72, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v98
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v50, v134, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v65, v65, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v72, v68, v72
	v_div_scale_f32 v68, vcc_lo, v106, v64, v106
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v73, 1.0, v55 :: v_dual_mul_f32 v76, v68, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v53, v53, v63, v114
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v122, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v73, v73, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v63, -v70, v76, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v71, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v69, v74, 1.0
	v_rcp_f32_e32 v62, v75
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v53, v123, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v63, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v67, v74
	v_div_scale_f32 v63, s0, v105, v65, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v70, v76, v68
	v_div_scale_f32 v71, null, v0, v0, v98
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v75, v62, 1.0
	v_mul_f32_e32 v70, v63, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v67, v67, v72, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v58, v71
	v_fmac_f32_e32 v62, v66, v62
	v_div_scale_f32 v66, s1, v99, v73, v99
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v69, v70, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v120, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v61, v67, v64, v106
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v97
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v71, v58, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v66, v62
	v_fmac_f32_e32 v70, v72, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v57, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v67, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v75, v76, v66
	v_fma_f32 v63, -v69, v70, v63
	v_div_scale_f32 v69, s2, v98, v0, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v94
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v64, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v57, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v63, v63, v74, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	v_exp_f32_e32 v54, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v70, v69, v58 :: v_dual_add_f32 v57, 1.0, v57
	v_fma_f32 v66, -v75, v76, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v63, v63, v65, v105
	v_fma_f32 v67, -v71, v70, v69
	v_div_scale_f32 v75, null, v57, v57, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v92
	v_ldexp_f32 v54, v54, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v67, v58
	v_rcp_f32_e32 v64, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v71, v70, v69
	v_div_fmas_f32 v62, v66, v62, v76
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v65, v65, v94
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v69, -v75, v64, 1.0
	v_div_fmas_f32 v54, v54, v58, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v58, v67
	v_div_scale_f32 v27, s0, v97, v57, v97
	v_fmac_f32_e32 v64, v69, v64
	v_div_fixup_f32 v0, v54, v0, v98
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v66, v66, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v62, v62, v73, v99
	v_mul_f32_e32 v71, v27, v64
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v54, v104, v0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v67, v58, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v93
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v75, v71, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v72, v58
	v_div_scale_f32 v72, s1, v94, v65, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v66, v64
	v_div_scale_f32 v73, null, v0, v0, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v66, v72, v58
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v27, -v75, v71, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v74, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v67, v66, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v69, v70, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v27, v64, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v103, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v66, v75, v58 :: v_dual_add_f32 v61, 1.0, v69
	v_div_fixup_f32 v27, v27, v57, v97
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v67, v66, v72
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v64, -v73, v74, 1.0
	v_div_scale_f32 v67, null, v61, v61, v93
	v_div_fmas_f32 v26, v57, v58, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v91
	v_cndmask_b32_e64 v58, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v64, v74
	v_rcp_f32_e32 v64, v67
	v_div_scale_f32 v48, s0, v92, v0, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v71
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v90
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v48, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v26, v65, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v67, v64, 1.0
	v_fma_f32 v65, -v73, v66, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v23
	v_ldexp_f32 v25, v71, v69
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v72, v64
	v_div_scale_f32 v72, s1, v93, v61, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v58, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v66, v65, v74 :: v_dual_mul_f32 v65, v72, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v89
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v25, v25, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v73, v66, v48
	v_fma_f32 v73, -v67, v65, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v23, v75
	v_div_scale_f32 v71, null, v57, v57, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v73, v64
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v73, v71
	v_div_fmas_f32 v48, v48, v74, v66
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v66, -v67, v65, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v75, v23, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v58, v58, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v48, v0, v92
	v_div_fmas_f32 v64, v66, v64, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v23, v74, v23
	v_div_scale_f32 v66, vcc_lo, v91, v25, v91
	v_fma_f32 v65, -v71, v73, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v61, v64, v61, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v64, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v72, v66, v23 :: v_dual_fmac_f32 v73, v65, v73
	v_div_scale_f32 v74, s0, v90, v57, v90
	v_div_scale_f32 v76, null, v69, v69, v89
	v_fma_f32 v48, -v75, v72, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v77, v74, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v78, v76
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v58, v118, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v48, v23
	v_fma_f32 v48, -v71, v77, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v64, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v64, v117, v26 :: v_dual_mul_f32 v65, v116, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v75, v72, v66
	v_dual_fmac_f32 v77, v48, v73 :: v_dual_add_f32 v0, 1.0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v27, -v76, v78, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v23, v26, v23, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v26, -v71, v77, v74
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v78, v27, v78
	v_div_scale_f32 v27, s1, v89, v69, v89
	v_div_scale_f32 v48, null, v0, v0, v83
	v_div_fmas_f32 v22, v26, v73, v77
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v26, v27, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, s2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v66, v48
	v_div_fixup_f32 v23, v23, v25, v91
	v_fma_f32 v20, -v76, v26, v27
	v_div_fixup_f32 v22, v22, v57, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v88
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v26, v20, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v20, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v2, -v48, v66, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v86
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s2
	v_exp_f32_e32 v1, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v76, v26, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v85
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v2, v66
	v_div_scale_f32 v73, s0, v83, v0, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v84
	v_ldexp_f32 v20, v20, v67
	v_exp_f32_e32 v67, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v1, v1, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v27, v78, v26
	v_mul_f32_e32 v27, v73, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v25, v57
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v60, v121, v60 :: v_dual_add_f32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v48, v27, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v67, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v57, null, v20, v20, v88
	v_div_fixup_f32 v26, v26, v69, v89
	v_fmac_f32_e32 v27, v72, v66
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v2, v25, v2
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v57
	v_div_scale_f32 v25, null, v1, v1, v86
	v_fma_f32 v48, -v48, v27, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v72, v72, v85
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v73, v25
	v_div_fmas_f32 v27, v48, v66, v27
	v_div_scale_f32 v48, null, v2, v2, v84
	v_rcp_f32_e32 v75, v74
	v_fma_f32 v67, -v57, v69, 1.0
	v_div_scale_f32 v76, vcc_lo, v88, v20, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v77, v48
	v_div_fixup_f32 v0, v27, v0, v83
	v_fmac_f32_e32 v69, v67, v69
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v66, -v25, v73, 1.0
	v_div_scale_f32 v79, s0, v86, v1, v86
	v_fma_f32 v27, -v74, v75, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v78, v76, v69
	v_dual_fmac_f32 v73, v66, v73 :: v_dual_mul_f32 v66, v111, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v48, v77, 1.0
	v_fmac_f32_e32 v75, v27, v75
	v_div_scale_f32 v27, s1, v85, v72, v85
	v_fma_f32 v0, -v57, v78, v76
	v_mul_f32_e32 v80, v79, v73
	v_fmac_f32_e32 v77, v67, v77
	v_div_scale_f32 v82, s2, v84, v2, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v81, v27, v75 :: v_dual_fmac_f32 v78, v0, v69
	v_fma_f32 v0, -v25, v80, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v83, v82, v77
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v67, v110, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v74, v81, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v71, v109, v22 :: v_dual_fmac_f32 v80, v0, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v48, v83, v82
	v_fma_f32 v22, -v57, v78, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v81, v26, v75
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v61, v119, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v25, v80, v79
	v_fmac_f32_e32 v83, v0, v77
	v_div_fmas_f32 v22, v22, v69, v78
	v_fma_f32 v0, -v74, v81, v27
	s_mov_b32 vcc_lo, s0
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v27, |v59|, |v50|, |v49|
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v48, v83, v82
	v_div_fmas_f32 v25, v25, v73, v80
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v73, v108, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v0, v75, v81
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v20, v22, v20, v88
	v_div_fmas_f32 v26, v26, v77, v83
	v_div_fixup_f32 v1, v25, v1, v86
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v22, |v32|, |v28|
	v_max3_f32 v23, |v24|, |v36|, |v35|
	v_max3_f32 v25, |v47|, |v39|, |v37|
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v2, v26, v2, v84
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, |v31|, |v18|, |v16|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v72, v85
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v69, |v42|, |v14|, |v13|
	v_max_f32_e64 v72, |v56|, |v52|
.Ltmp12:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v87, v2
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v22, |v21|, v23
	v_max3_f32 v22, v25, v26, |v17|
	v_max_f32_e64 v23, |v45|, |v40|
	v_max3_f32 v25, |v34|, |v51|, |v46|
	v_max3_f32 v74, |v44|, |v68|, |v60|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v57, v102, v0
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, |v30|, |v29|, |v19|
	v_max3_f32 v26, |v41|, |v38|, |v15|
	v_max3_f32 v23, v23, |v33|, v25
	v_max3_f32 v25, v27, v69, |v12|
	v_max3_f32 v74, v72, |v43|, v74
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v69, v101, v1 :: v_dual_mul_f32 v72, v100, v20
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, v2, v0, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_max3_f32 v1, v23, v26, v25
	v_max_f32_e64 v20, |v65|, |v64|
	v_max3_f32 v22, |v58|, |v73|, |v71|
	v_max3_f32 v25, |v72|, |v69|, |v57|
	v_max3_f32 v26, |v48|, |v4|, |v5|
	v_max3_f32 v23, |v67|, |v66|, |v7|
.Ltmp18:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v63, v112, v63
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v20, v20, |v61|, v22
	v_max3_f32 v76, |v54|, |v10|, |v8|
	v_max3_f32 v25, v25, v26, |v6|
	v_max3_f32 v27, |v55|, |v53|, |v11|
	s_mov_b32 s0, 0x76543210
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v79, 3, v171
	v_permlanex16_b32 v22, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v20, v20, v23, v25
.Ltmp22:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v62, v113, v62
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v25, 4, v170
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v22, v22, v22
	v_max3_f32 v75, |v70|, |v63|, |v62|
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v75, v75, v76, |v9|
	v_max3_f32 v2, v74, v27, v75
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v27, v0, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v1, v22
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v1, v20, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v74, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v26, v27, v27 :: v_dual_max_f32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v27, v74, v74
	v_max_f32_e32 v74, v0, v26
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v0, 3, v170
	v_and_b32_e32 v26, 8, v170
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v2, v27
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v2, 4, v170
	v_lshl_add_u32 v22, v0, 9, 0
	v_lshlrev_b32_e32 v23, 5, v0
	v_and_b32_e32 v27, 0x60, v170
	v_lshl_add_u32 v0, v0, 4, 0
	v_lshl_add_u32 v81, v2, 6, 0
	v_lshl_add_u32 v22, v2, 2, v22
	v_and_or_b32 v77, 0x680, v25, v23
	v_lshlrev_b32_e32 v25, 1, v171
	v_xor_b32_e32 v78, v23, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_add_u32 v22, v26, 4, v22
	v_xor_b32_e32 v80, v77, v27
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v77, v20, v1 :: v_dual_lshlrev_b32 v26, 3, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v22, v25, v78
	v_add3_u32 v20, v81, v79, v80
	ds_store_b128 v1, v[74:77]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[74:77], v20
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v1, v74 :: v_dual_mov_b32 v20, v75
	v_mov_b32_e32 v22, v76
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v74, v74, v74 :: v_dual_max_f32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v22, v22 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v77, v77
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v77, v77 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v20, v20, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v22, v22, v22
	v_dual_max_f32 v1, v74, v1 :: v_dual_max_f32 v74, v76, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v20, v75, v20 :: v_dual_max_f32 v75, v77, v77
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v76, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v22, v74, v22 :: v_dual_mov_b32 v77, v20
	v_max_f32_e32 v74, v78, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v75, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v78, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v76, v76
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v77, v77, v77
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v76
	v_dual_max_f32 v75, v75, v75 :: v_dual_max_f32 v20, v20, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v76, v78, v78 :: v_dual_mov_b32 v77, v1
	v_max_f32_e32 v22, v22, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v78, v20 :: v_dual_max_f32 v79, v74, v76
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v76, v22
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v80, v79
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v74, v77, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v78, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_lshrrev_b32_e32 v78, 1, v27
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v74, v1, v74 :: v_dual_max_f32 v1, v76, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v75, v20, v75
	v_max_f32_e32 v20, v80, v80
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add_nc_u32_e32 v80, 0, v171
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v76, v22, v1 :: v_dual_lshlrev_b32 v1, 5, v2
	v_max_f32_e32 v77, v79, v20
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v80, v78, v26
.Ltmp56:
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v22, 4, v96
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v0, v1, v26
	ds_store_b128 v2, v[74:77]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[74:77], v0
.Ltmp58:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v78, 32, v22
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v74, v74
	v_dual_max_f32 v74, v76, v76 :: v_dual_max_f32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v77, v77, v77 :: v_dual_max_f32 v2, 0x2b8cbccc, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 48, v22
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v74, 0x2b8cbccc, v74 :: v_dual_max_f32 v75, 0x2b8cbccc, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v77, 0x2b8cbccc, v77
	v_div_scale_f32 v20, null, 0x40e00000, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s34, v0
	v_add_co_ci_u32_e64 v1, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v26, v20
	v_div_scale_f32 v80, null, 0x40e00000, 0x40e00000, v74
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v78, s0, s34, v78
	v_add_co_ci_u32_e64 v79, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v82, v80
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[46:47], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[44:45], v[0:1]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v76, -v20, v26, 1.0
	v_div_scale_f32 v84, null, 0x40e00000, 0x40e00000, v75
	v_div_scale_f32 v85, null, 0x40e00000, 0x40e00000, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v26, v76, v26
	v_div_scale_f32 v76, vcc_lo, v2, 0x40e00000, v2
	v_fma_f32 v83, -v80, v82, 1.0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 16, v22
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[46:47], v[78:79]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v81, v76, v26
	v_fmac_f32_e32 v82, v83, v82
	v_div_scale_f32 v83, s6, v74, 0x40e00000, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v20, v81, v76
	v_fmac_f32_e32 v81, v0, v26
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s3, s34, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s35, 0, s3
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v20, -v20, v81, v76
	v_rcp_f32_e32 v76, v84
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[44:45], v[78:79]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v79.h, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[46:47], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v20, v20, v26, v81
	v_rcp_f32_e32 v81, v85
	v_mul_f32_e32 v26, v83, v82
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[44:45], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v2, v20, 0x40e00000, v2
	v_fma_f32 v78, -v84, v76, 1.0
	v_fma_f32 v20, -v80, v26, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v76, v78, v76
	v_div_scale_f32 v78, s7, v75, 0x40e00000, v75
	v_fma_f32 v86, -v85, v81, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v26, v20, v82
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v20.l, v2.h
	v_mov_b16_e32 v20.h, v79.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v87, v78, v76
	v_fmac_f32_e32 v81, v86, v81
	v_div_scale_f32 v86, s8, v77, 0x40e00000, v77
	v_fma_f32 v0, -v80, v26, v83
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v1, 1, v20
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v80, -v84, v87, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v83, v86, v81
	v_div_fmas_f32 v26, v0, v82, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v20, v2, v1, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v87, v80, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v2, -v85, v83, v86
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v26, v26, 0x40e00000, v74
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v80, 0xffff0000, v20
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v74, -v84, v87, v78
	v_fmac_f32_e32 v83, v2, v81
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s6, s34, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v78, null, v80, v80, v32
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v74, v76, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v74, -v85, v83, v86
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v76, v78
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v79.l, v26.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v75
	v_div_fmas_f32 v74, v74, v81, v83
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v81, null, v80, v80, v28
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s35, 0, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v74, v74, 0x40e00000, v77
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v75, 1, v79
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v82, -v78, v76, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v77.l, v2.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v83, v81
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v77.h, v79.h
	v_mov_b16_e32 v79.l, v74.h
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[46:47], v[0:1]
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v76, v82, v76
	v_div_scale_f32 v82, vcc_lo, v32, v80, v32
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[44:45], v[0:1]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v0, 1, v77
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v84, null, v80, v80, v21
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v79, 1, v79
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v86, null, v80, v80, v24
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v26, v75, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v77, v82, v76
	v_fma_f32 v75, -v81, v83, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v26, v2, v0, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v85, v84
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v74, v79, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v79, v86
	v_fma_f32 v0, -v78, v77, v82
	v_fmac_f32_e32 v83, v75, v83
	v_div_scale_f32 v87, s8, v28, v80, v28
	v_div_scale_f32 v91, null, v80, v80, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v77, v0, v76 :: v_dual_mul_f32 v88, v87, v83
	v_fma_f32 v89, -v84, v85, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v86, v79, 1.0
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v75, 0xffff0000, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v78, v77, v82
	v_fma_f32 v82, -v81, v88, v87
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v89, s9, v21, v80, v21
	v_fmac_f32_e32 v79, v90, v79
	v_div_scale_f32 v90, null, v80, v80, v35
	v_div_fmas_f32 v76, v78, v76, v77
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v88, v82, v83 :: v_dual_mul_f32 v77, v89, v85
	v_rcp_f32_e32 v78, v91
	v_div_scale_f32 v82, s10, v24, v80, v24
	v_rcp_f32_e32 v92, v90
	v_div_fixup_f32 v32, v76, v80, v32
	v_fma_f32 v76, -v81, v88, v87
	v_fma_f32 v81, -v84, v77, v89
	v_mul_f32_e32 v87, v82, v79
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v91, v78, 1.0
	v_div_fmas_f32 v76, v76, v83, v88
	v_fmac_f32_e32 v77, v81, v85
	v_fma_f32 v81, -v86, v87, v82
	v_fma_f32 v88, -v90, v92, 1.0
	v_fmac_f32_e32 v78, v93, v78
	v_div_scale_f32 v83, s8, v36, v80, v36
	v_div_fixup_f32 v28, v76, v80, v28
	v_fma_f32 v76, -v84, v77, v89
	v_dual_fmac_f32 v87, v81, v79 :: v_dual_fmac_f32 v92, v88, v92
	v_div_scale_f32 v88, null, v80, v80, v30
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v81, v83, v78
	v_div_scale_f32 v84, s11, v35, v80, v35
	v_div_fmas_f32 v76, v76, v85, v77
	v_fma_f32 v77, -v86, v87, v82
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v89, null, v80, v80, v29
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v82, -v91, v81, v83
	v_mul_f32_e32 v86, v84, v92
	v_div_fmas_f32 v77, v77, v79, v87
	v_rcp_f32_e32 v79, v89
	v_div_fixup_f32 v21, v76, v80, v21
	v_fmac_f32_e32 v81, v82, v78
	v_fma_f32 v82, -v90, v86, v84
	v_fma_f32 v87, -v88, v85, 1.0
	v_div_fixup_f32 v24, v77, v80, v24
	v_div_scale_f32 v77, s9, v30, v80, v30
	v_fma_f32 v76, -v91, v81, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v86, v82, v92 :: v_dual_fmac_f32 v85, v87, v85
	v_fma_f32 v82, -v89, v79, 1.0
	v_div_scale_f32 v83, null, v80, v80, v19
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v87, null, v80, v80, v47
	v_div_fmas_f32 v76, v76, v78, v81
	v_fma_f32 v78, -v90, v86, v84
	v_mul_f32_e32 v81, v77, v85
	v_fmac_f32_e32 v79, v82, v79
	v_rcp_f32_e32 v82, v83
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v84, s8, v29, v80, v29
	v_div_fmas_f32 v78, v78, v92, v86
	v_fma_f32 v86, -v88, v81, v77
	v_rcp_f32_e32 v92, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v90, v84, v79
	v_div_fixup_f32 v36, v76, v80, v36
	v_div_fixup_f32 v35, v78, v80, v35
	v_fma_f32 v91, -v83, v82, 1.0
	v_fmac_f32_e32 v81, v86, v85
	v_div_scale_f32 v86, null, v80, v80, v39
	v_fma_f32 v76, -v89, v90, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v78, s10, v19, v80, v19
	v_fma_f32 v91, -v87, v92, 1.0
	v_fma_f32 v77, -v88, v81, v77
	v_rcp_f32_e32 v88, v86
	v_fmac_f32_e32 v90, v76, v79
	v_mul_f32_e32 v76, v78, v82
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s11, v47, v80, v47
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v93, null, v80, v80, v37
	v_div_fmas_f32 v77, v77, v85, v81
	v_fma_f32 v81, -v89, v90, v84
	v_fma_f32 v84, -v83, v76, v78
	v_mul_f32_e32 v85, v91, v92
	v_fma_f32 v89, -v86, v88, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v30, v77, v80, v30
	v_div_fmas_f32 v79, v81, v79, v90
	v_fmac_f32_e32 v76, v84, v82
	v_rcp_f32_e32 v81, v93
	v_fma_f32 v84, -v87, v85, v91
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, s8, v39, v80, v39
	v_fma_f32 v77, -v83, v76, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v84, v92
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v78, v89, v88
	v_div_fixup_f32 v29, v79, v80, v29
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v79, -v93, v81, 1.0
	v_div_scale_f32 v83, null, v80, v80, v31
	v_div_fmas_f32 v76, v77, v82, v76
	v_fma_f32 v77, -v87, v85, v91
	v_fma_f32 v82, -v86, v78, v89
	v_div_scale_f32 v87, null, v80, v80, v18
	v_fmac_f32_e32 v81, v79, v81
	v_rcp_f32_e32 v79, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v82, v88
	v_rcp_f32_e32 v82, v87
	v_div_scale_f32 v84, s9, v37, v80, v37
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v19, v76, v80, v19
	v_div_fmas_f32 v77, v77, v92, v85
	v_mul_f32_e32 v85, v84, v81
	v_fma_f32 v76, -v86, v78, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v90, -v83, v79, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v89, -v87, v82, 1.0
	v_div_fixup_f32 v47, v77, v80, v47
	v_fma_f32 v77, -v93, v85, v84
	v_fmac_f32_e32 v79, v90, v79
	v_div_scale_f32 v90, null, v80, v80, v16
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v89, null, v80, v80, v17
	v_div_scale_f32 v86, s10, v31, v80, v31
	v_div_fmas_f32 v76, v76, v88, v78
	v_fmac_f32_e32 v85, v77, v81
	v_rcp_f32_e32 v78, v90
	v_rcp_f32_e32 v92, v89
	v_mul_f32_e32 v77, v86, v79
	v_div_scale_f32 v88, s8, v18, v80, v18
	v_div_fixup_f32 v39, v76, v80, v39
	v_fma_f32 v76, -v93, v85, v84
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v84, -v83, v77, v86
	v_mul_f32_e32 v91, v88, v82
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v90, v78, 1.0
	v_div_fmas_f32 v76, v76, v81, v85
	v_fma_f32 v85, -v89, v92, 1.0
	v_fmac_f32_e32 v77, v84, v79
	v_fma_f32 v81, -v87, v91, v88
	v_fmac_f32_e32 v78, v93, v78
	v_div_scale_f32 v84, s9, v16, v80, v16
	v_fmac_f32_e32 v92, v85, v92
	v_div_scale_f32 v85, null, v75, v75, v45
	v_div_fixup_f32 v37, v76, v80, v37
	v_fma_f32 v76, -v83, v77, v86
	v_fmac_f32_e32 v91, v81, v82
	v_mul_f32_e32 v81, v84, v78
	v_rcp_f32_e32 v86, v85
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v76, v79, v77
	v_fma_f32 v77, -v87, v91, v88
	v_fma_f32 v79, -v90, v81, v84
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v88, null, v75, v75, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v77, v77, v82, v91
	v_fmac_f32_e32 v81, v79, v78
	v_fma_f32 v91, -v85, v86, 1.0
	v_div_fixup_f32 v31, v76, v80, v31
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v18, v77, v80, v18
	v_fma_f32 v76, -v90, v81, v84
	v_fmac_f32_e32 v86, v91, v86
	v_div_scale_f32 v77, s8, v45, v75, v45
	v_rcp_f32_e32 v79, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v76, v76, v78, v81
	v_div_scale_f32 v84, null, v75, v75, v33
	v_mul_f32_e32 v81, v77, v86
	v_div_scale_f32 v83, s11, v17, v80, v17
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v16, v76, v80, v16
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v87, v83, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v28, v28
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v89, v87, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v82, v92
	v_fma_f32 v82, -v88, v79, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v89, v87, v83
	v_fmac_f32_e32 v79, v82, v79
	v_rcp_f32_e32 v82, v84
	v_div_scale_f32 v83, s9, v40, v75, v40
	v_div_scale_f32 v89, null, v75, v75, v34
	v_div_fmas_f32 v78, v78, v92, v87
	v_fma_f32 v87, -v85, v81, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v90, v83, v79
	v_rcp_f32_e32 v92, v89
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v84, v82, 1.0
	v_fmac_f32_e32 v81, v87, v86
	v_fma_f32 v76, -v88, v90, v83
	v_div_fixup_f32 v17, v78, v80, v17
	v_div_scale_f32 v78, s10, v33, v75, v33
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v80, null, v75, v75, v51
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v89, v92, 1.0
	v_fma_f32 v77, -v85, v81, v77
	v_fmac_f32_e32 v90, v76, v79
	v_mul_f32_e32 v76, v78, v82
	v_rcp_f32_e32 v85, v80
	v_fmac_f32_e32 v92, v87, v92
	v_div_scale_f32 v87, s11, v34, v75, v34
	v_div_fmas_f32 v77, v77, v86, v81
	v_fma_f32 v81, -v88, v90, v83
	v_div_scale_f32 v91, null, v75, v75, v46
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v83, -v84, v76, v78
	v_mul_f32_e32 v86, v87, v92
	v_div_fmas_f32 v79, v81, v79, v90
	v_rcp_f32_e32 v81, v91
	v_fma_f32 v88, -v80, v85, 1.0
	v_fmac_f32_e32 v76, v83, v82
	v_fma_f32 v83, -v89, v86, v87
	v_div_fixup_f32 v40, v79, v75, v40
	v_div_fixup_f32 v45, v77, v75, v45
	v_fmac_f32_e32 v85, v88, v85
	v_div_scale_f32 v88, s8, v51, v75, v51
	v_fmac_f32_e32 v86, v83, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v91, v81, 1.0
	v_div_scale_f32 v83, null, v75, v75, v41
	v_fma_f32 v77, -v84, v76, v78
	v_mul_f32_e32 v78, v88, v85
	v_fmac_f32_e32 v81, v79, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v79, v83
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v84, s9, v46, v75, v46
	v_div_fmas_f32 v76, v77, v82, v76
	v_fma_f32 v77, -v89, v86, v87
	v_fma_f32 v82, -v80, v78, v88
	v_div_scale_f32 v87, null, v75, v75, v38
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v83, v79, 1.0
	v_fmac_f32_e32 v78, v82, v85
	v_rcp_f32_e32 v82, v87
	v_div_fmas_f32 v77, v77, v92, v86
	v_mul_f32_e32 v86, v84, v81
	v_div_fixup_f32 v33, v76, v75, v33
	v_fma_f32 v76, -v80, v78, v88
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v75, v75, v15
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v34, v77, v75, v34
	v_fma_f32 v77, -v91, v86, v84
	v_div_scale_f32 v80, s10, v41, v75, v41
	v_fma_f32 v88, -v87, v82, 1.0
	v_div_fmas_f32 v76, v76, v85, v78
	v_rcp_f32_e32 v78, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v77, v81 :: v_dual_mul_f32 v77, v80, v79
	v_fmac_f32_e32 v82, v88, v82
	v_div_scale_f32 v85, s8, v38, v75, v38
	v_div_scale_f32 v88, null, v75, v75, v59
	v_div_fixup_f32 v51, v76, v75, v51
	v_fma_f32 v76, -v91, v86, v84
	v_fma_f32 v84, -v83, v77, v80
	v_mul_f32_e32 v90, v85, v82
	v_rcp_f32_e32 v91, v88
	v_fma_f32 v92, -v89, v78, 1.0
	s_mov_b32 vcc_lo, s9
	v_dual_fmac_f32 v77, v84, v79 :: v_dual_and_b32 v74, 0xffff0000, v1
	v_div_fmas_f32 v76, v76, v81, v86
	v_fma_f32 v81, -v87, v90, v85
	v_fmac_f32_e32 v78, v92, v78
	v_div_scale_f32 v84, s9, v15, v75, v15
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v88, v91, 1.0
	v_div_fixup_f32 v46, v76, v75, v46
	v_fma_f32 v76, -v83, v77, v80
	v_fmac_f32_e32 v90, v81, v82
	v_mul_f32_e32 v80, v84, v78
	v_div_scale_f32 v83, null, v75, v75, v50
	s_mov_b32 vcc_lo, s10
	v_dual_fmac_f32 v91, v86, v91 :: v_dual_and_b32 v0, 0xffff0000, v2
	v_div_scale_f32 v81, s11, v59, v75, v59
	v_div_fmas_f32 v76, v76, v79, v77
	v_fma_f32 v77, -v87, v90, v85
	v_fma_f32 v79, -v89, v80, v84
	v_rcp_f32_e32 v85, v83
	v_div_scale_f32 v87, null, v75, v75, v49
	v_mul_f32_e32 v86, v81, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v79, v78
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v79, v87
	v_div_fmas_f32 v77, v77, v82, v90
	v_fma_f32 v82, -v88, v86, v81
	v_div_fixup_f32 v41, v76, v75, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v83, v85, 1.0
	v_fma_f32 v76, -v89, v80, v84
	v_div_fixup_f32 v38, v77, v75, v38
	v_fmac_f32_e32 v86, v82, v91
	v_div_scale_f32 v77, s8, v50, v75, v50
	v_fmac_f32_e32 v85, v90, v85
	v_fma_f32 v82, -v87, v79, 1.0
	v_div_scale_f32 v84, null, v75, v75, v42
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v92, null, v75, v75, v12
	v_div_fmas_f32 v76, v76, v78, v80
	v_fma_f32 v78, -v88, v86, v81
	v_dual_mul_f32 v80, v77, v85 :: v_dual_fmac_f32 v79, v82, v79
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v82, s9, v49, v75, v49
	v_div_scale_f32 v88, null, v75, v75, v14
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v89, v82, v79
	v_div_fmas_f32 v78, v78, v91, v86
	v_fma_f32 v86, -v83, v80, v77
	v_rcp_f32_e32 v91, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v84, v81, 1.0
	v_div_fixup_f32 v15, v76, v75, v15
	v_fma_f32 v76, -v87, v89, v82
	v_fmac_f32_e32 v80, v86, v85
	v_div_fixup_f32 v59, v78, v75, v59
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v78, s10, v42, v75, v42
	v_div_scale_f32 v86, null, v75, v75, v13
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v88, v91, 1.0
	v_fma_f32 v77, -v83, v80, v77
	v_fmac_f32_e32 v89, v76, v79
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v76, v78, v81
	v_rcp_f32_e32 v83, v86
	v_fmac_f32_e32 v91, v90, v91
	v_div_scale_f32 v90, s11, v14, v75, v14
	v_div_fmas_f32 v77, v77, v85, v80
	v_fma_f32 v80, -v87, v89, v82
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v82, -v84, v76, v78
	v_mul_f32_e32 v85, v90, v91
	v_div_fixup_f32 v50, v77, v75, v50
	v_div_fmas_f32 v79, v80, v79, v89
	v_rcp_f32_e32 v80, v92
	v_fma_f32 v87, -v86, v83, 1.0
	v_fmac_f32_e32 v76, v82, v81
	v_fma_f32 v82, -v88, v85, v90
	v_div_fixup_f32 v49, v79, v75, v49
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v83, v87, v83
	v_div_scale_f32 v87, s8, v13, v75, v13
	v_fmac_f32_e32 v85, v82, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v92, v80, 1.0
	v_div_scale_f32 v82, null, v74, v74, v56
	v_fma_f32 v77, -v84, v76, v78
	v_mul_f32_e32 v78, v87, v83
	v_fmac_f32_e32 v80, v79, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v79, v82
	v_div_scale_f32 v84, s9, v12, v75, v12
	v_div_fmas_f32 v76, v77, v81, v76
	v_fma_f32 v77, -v88, v85, v90
	v_fma_f32 v81, -v86, v78, v87
	v_div_scale_f32 v88, null, v74, v74, v52
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v42, v76, v75, v42
	v_fmac_f32_e32 v78, v81, v83
	v_rcp_f32_e32 v81, v88
	v_fma_f32 v89, -v82, v79, 1.0
	v_div_fmas_f32 v77, v77, v91, v85
	v_mul_f32_e32 v85, v84, v80
	v_fma_f32 v76, -v86, v78, v87
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v74, v74, v43
	v_div_fixup_f32 v14, v77, v75, v14
	v_fma_f32 v77, -v92, v85, v84
	v_div_scale_f32 v86, s10, v56, v74, v56
	v_fma_f32 v87, -v88, v81, 1.0
	v_div_fmas_f32 v76, v76, v83, v78
	v_rcp_f32_e32 v78, v89
	v_fmac_f32_e32 v85, v77, v80
	v_mul_f32_e32 v77, v86, v79
	v_fmac_f32_e32 v81, v87, v81
	v_div_scale_f32 v83, s8, v52, v74, v52
	v_div_scale_f32 v87, null, v74, v74, v44
	v_div_fixup_f32 v13, v76, v75, v13
	v_fma_f32 v76, -v92, v85, v84
	v_fma_f32 v84, -v82, v77, v86
	v_mul_f32_e32 v90, v83, v81
	v_rcp_f32_e32 v91, v87
	v_fma_f32 v92, -v89, v78, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v77, v84, v79
	v_div_fmas_f32 v76, v76, v80, v85
	v_fma_f32 v80, -v88, v90, v83
	v_fmac_f32_e32 v78, v92, v78
	v_div_scale_f32 v84, s9, v43, v74, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v12, v76, v75, v12
	v_fma_f32 v85, -v87, v91, 1.0
	v_fma_f32 v75, -v82, v77, v86
	v_fmac_f32_e32 v90, v80, v81
	v_mul_f32_e32 v76, v84, v78
	v_div_scale_f32 v82, null, v74, v74, v68
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v91, v85, v91
	v_div_scale_f32 v80, s11, v44, v74, v44
	v_div_fmas_f32 v75, v75, v79, v77
	v_fma_f32 v77, -v88, v90, v83
	v_fma_f32 v79, -v89, v76, v84
	v_rcp_f32_e32 v83, v82
	v_div_scale_f32 v86, null, v74, v74, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v85, v80, v91 :: v_dual_fmac_f32 v76, v79, v78
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v79, v86
	v_div_fmas_f32 v77, v77, v81, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v81, -v87, v85, v80
	v_div_fixup_f32 v56, v75, v74, v56
	v_fma_f32 v88, -v82, v83, 1.0
	v_fma_f32 v75, -v89, v76, v84
	v_div_fixup_f32 v52, v77, v74, v52
	v_fmac_f32_e32 v85, v81, v91
	v_div_scale_f32 v77, s8, v68, v74, v68
	v_fmac_f32_e32 v83, v88, v83
	v_fma_f32 v81, -v86, v79, 1.0
	v_div_scale_f32 v84, null, v74, v74, v55
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v75, v75, v78, v76
	v_fma_f32 v76, -v87, v85, v80
	v_mul_f32_e32 v78, v77, v83
	v_fmac_f32_e32 v79, v81, v79
	v_rcp_f32_e32 v80, v84
	v_div_scale_f32 v81, s9, v60, v74, v60
	v_div_scale_f32 v87, null, v74, v74, v53
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v88, v81, v79
	v_div_fmas_f32 v76, v76, v91, v85
	v_fma_f32 v85, -v82, v78, v77
	v_rcp_f32_e32 v90, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v84, v80, 1.0
	v_div_fixup_f32 v43, v75, v74, v43
	v_fma_f32 v75, -v86, v88, v81
	v_fmac_f32_e32 v78, v85, v83
	v_div_scale_f32 v85, null, v74, v74, v11
	v_div_fixup_f32 v44, v76, v74, v44
	v_fmac_f32_e32 v80, v89, v80
	v_div_scale_f32 v76, s10, v55, v74, v55
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v87, v90, 1.0
	v_fma_f32 v77, -v82, v78, v77
	v_fmac_f32_e32 v88, v75, v79
	v_rcp_f32_e32 v82, v85
	s_mov_b32 vcc_lo, s8
	v_dual_mul_f32 v75, v76, v80 :: v_dual_fmac_f32 v90, v89, v90
	v_div_scale_f32 v89, s11, v53, v74, v53
	v_div_fmas_f32 v77, v77, v83, v78
	v_fma_f32 v78, -v86, v88, v81
	v_div_scale_f32 v91, null, v74, v74, v70
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v81, -v84, v75, v76
	v_mul_f32_e32 v83, v89, v90
	v_fma_f32 v86, -v85, v82, 1.0
	v_div_fmas_f32 v78, v78, v79, v88
	v_rcp_f32_e32 v79, v91
	v_fmac_f32_e32 v75, v81, v80
	v_fma_f32 v81, -v87, v83, v89
	v_fmac_f32_e32 v82, v86, v82
	v_div_scale_f32 v86, s8, v11, v74, v11
	v_div_fixup_f32 v68, v77, v74, v68
	v_div_fixup_f32 v60, v78, v74, v60
	v_fma_f32 v76, -v84, v75, v76
	v_fmac_f32_e32 v83, v81, v90
	v_mul_f32_e32 v77, v86, v82
	v_fma_f32 v78, -v91, v79, 1.0
	v_div_scale_f32 v81, null, v74, v74, v63
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v84, s9, v70, v74, v70
	v_div_fmas_f32 v75, v76, v80, v75
	v_fma_f32 v76, -v87, v83, v89
	v_fma_f32 v80, -v85, v77, v86
	v_fmac_f32_e32 v79, v78, v79
	v_rcp_f32_e32 v78, v81
	v_div_scale_f32 v87, null, v74, v74, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v77, v80, v82
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v55, v75, v74, v55
	v_rcp_f32_e32 v80, v87
	v_div_fmas_f32 v76, v76, v90, v83
	v_mul_f32_e32 v83, v84, v79
	v_fma_f32 v75, -v85, v77, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v81, v78, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v53, v76, v74, v53
	v_fma_f32 v76, -v91, v83, v84
	v_div_scale_f32 v85, s10, v63, v74, v63
	v_fmac_f32_e32 v78, v88, v78
	v_fma_f32 v86, -v87, v80, 1.0
	v_div_scale_f32 v88, null, v74, v74, v54
	v_div_fmas_f32 v75, v75, v82, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v83, v76, v79 :: v_dual_fmac_f32 v80, v86, v80
	v_rcp_f32_e32 v77, v88
	v_div_scale_f32 v86, null, v74, v74, v10
	v_mul_f32_e32 v76, v85, v78
	v_div_scale_f32 v82, s8, v62, v74, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v90, v86
	v_div_fixup_f32 v11, v75, v74, v11
	v_fma_f32 v75, -v91, v83, v84
	v_fma_f32 v84, -v81, v76, v85
	v_mul_f32_e32 v89, v82, v80
	v_fma_f32 v91, -v88, v77, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v75, v75, v79, v83
	v_fmac_f32_e32 v76, v84, v78
	v_fma_f32 v79, -v87, v89, v82
	v_fmac_f32_e32 v77, v91, v77
	v_div_scale_f32 v83, s9, v54, v74, v54
	v_fma_f32 v84, -v86, v90, 1.0
	v_div_fixup_f32 v70, v75, v74, v70
	v_fma_f32 v75, -v81, v76, v85
	v_fmac_f32_e32 v89, v79, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v79, v83, v77 :: v_dual_fmac_f32 v90, v84, v90
	v_div_scale_f32 v84, null, v74, v74, v8
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v81, s11, v10, v74, v10
	v_div_fmas_f32 v75, v75, v78, v76
	v_fma_f32 v76, -v87, v89, v82
	v_fma_f32 v78, -v88, v79, v83
	v_rcp_f32_e32 v82, v84
	v_div_scale_f32 v87, null, v74, v74, v9
	v_mul_f32_e32 v85, v81, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v78, v77
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v78, v87
	v_div_fmas_f32 v76, v76, v80, v89
	v_fma_f32 v80, -v86, v85, v81
	v_div_fixup_f32 v63, v75, v74, v63
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v84, v82, 1.0
	v_fma_f32 v75, -v88, v79, v83
	v_div_fixup_f32 v62, v76, v74, v62
	v_fmac_f32_e32 v85, v80, v90
	v_div_scale_f32 v76, s8, v8, v74, v8
	v_fmac_f32_e32 v82, v89, v82
	v_fma_f32 v80, -v87, v78, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v88, null, v0, v0, v64
	v_div_fmas_f32 v75, v75, v77, v79
	v_fma_f32 v77, -v86, v85, v81
	v_mul_f32_e32 v79, v76, v82
	v_fmac_f32_e32 v78, v80, v78
	v_div_scale_f32 v80, null, v0, v0, v65
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v81, s9, v9, v74, v9
	v_div_fmas_f32 v77, v77, v90, v85
	v_rcp_f32_e32 v83, v80
	v_fma_f32 v85, -v84, v79, v76
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v86, v81, v78
	v_div_fixup_f32 v54, v75, v74, v54
	v_div_fixup_f32 v10, v77, v74, v10
	v_rcp_f32_e32 v77, v88
	v_fmac_f32_e32 v79, v85, v82
	v_fma_f32 v75, -v87, v86, v81
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v90, null, v0, v0, v58
	v_fma_f32 v85, -v80, v83, 1.0
	v_fma_f32 v76, -v84, v79, v76
	v_div_scale_f32 v84, null, v0, v0, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v75, v78 :: v_dual_fmac_f32 v83, v85, v83
	v_div_scale_f32 v75, s10, v65, v0, v65
	v_rcp_f32_e32 v85, v84
	v_fma_f32 v89, -v88, v77, 1.0
	v_div_fmas_f32 v76, v76, v82, v79
	v_fma_f32 v79, -v87, v86, v81
	v_mul_f32_e32 v81, v75, v83
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v77, v89, v77
	v_div_scale_f32 v82, s8, v64, v0, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v89, -v80, v81, v75
	v_fma_f32 v87, -v84, v85, 1.0
	v_rcp_f32_e32 v92, v90
	v_div_fmas_f32 v78, v79, v78, v86
	v_mul_f32_e32 v91, v82, v77
	v_fmac_f32_e32 v81, v89, v83
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v87, s11, v61, v0, v61
	v_div_fixup_f32 v8, v76, v74, v8
	v_div_fixup_f32 v9, v78, v74, v9
	v_fma_f32 v74, -v80, v81, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v86, v87, v85
	v_div_scale_f32 v78, null, v0, v0, v73
	v_fma_f32 v79, -v88, v91, v82
	v_fma_f32 v76, -v90, v92, 1.0
	v_fma_f32 v75, -v84, v86, v87
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v91, v79, v77 :: v_dual_fmac_f32 v92, v76, v92
	v_fmac_f32_e32 v86, v75, v85
	v_rcp_f32_e32 v75, v78
	v_div_scale_f32 v76, s9, v58, v0, v58
	v_div_fmas_f32 v74, v74, v83, v81
	v_fma_f32 v79, -v88, v91, v82
	v_div_scale_f32 v81, null, v0, v0, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v80, v76, v92
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v65, v74, v0, v65
	v_fma_f32 v82, -v78, v75, 1.0
	v_div_fmas_f32 v77, v79, v77, v91
	v_fma_f32 v79, -v84, v86, v87
	v_rcp_f32_e32 v83, v81
	v_fma_f32 v84, -v90, v80, v76
	v_fmac_f32_e32 v75, v82, v75
	v_div_scale_f32 v82, s8, v73, v0, v73
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v80, v84, v92
	v_div_fmas_f32 v79, v79, v85, v86
	v_mul_f32_e32 v74, v82, v75
	v_div_fixup_f32 v64, v77, v0, v64
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v77, -v81, v83, 1.0
	v_fma_f32 v76, -v90, v80, v76
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v84, -v78, v74, v82
	v_div_fixup_f32 v61, v79, v0, v61
	v_div_scale_f32 v79, null, v0, v0, v67
	v_fmac_f32_e32 v83, v77, v83
	v_div_scale_f32 v77, s10, v71, v0, v71
	v_div_fmas_f32 v76, v76, v92, v80
	v_fmac_f32_e32 v74, v84, v75
	v_rcp_f32_e32 v85, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v80, v77, v83
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v58, v76, v0, v58
	v_fma_f32 v76, -v78, v74, v82
	v_div_scale_f32 v84, null, v0, v0, v66
	v_fma_f32 v78, -v81, v80, v77
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v74, v76, v75, v74
	v_div_scale_f32 v75, null, v0, v0, v7
	v_fma_f32 v82, -v79, v85, 1.0
	v_rcp_f32_e32 v86, v84
	v_fmac_f32_e32 v80, v78, v83
	v_rcp_f32_e32 v78, v75
	v_div_scale_f32 v76, s8, v67, v0, v67
	v_fmac_f32_e32 v85, v82, v85
	v_div_scale_f32 v82, null, v0, v0, v72
	v_div_fixup_f32 v73, v74, v0, v73
	v_fma_f32 v77, -v81, v80, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v84, v86, 1.0
	v_rcp_f32_e32 v88, v82
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v75, v78, 1.0
	v_mul_f32_e32 v81, v76, v85
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v86, v74, v86
	v_div_scale_f32 v74, s9, v66, v0, v66
	v_fmac_f32_e32 v78, v87, v78
	v_div_scale_f32 v87, null, v0, v0, v69
	v_div_fmas_f32 v77, v77, v83, v80
	v_fma_f32 v80, -v79, v81, v76
	v_mul_f32_e32 v83, v74, v86
	v_div_scale_f32 v89, s10, v7, v0, v7
	v_fma_f32 v90, -v82, v88, 1.0
	v_rcp_f32_e32 v91, v87
	v_fmac_f32_e32 v81, v80, v85
	v_fma_f32 v80, -v84, v83, v74
	v_mul_f32_e32 v92, v89, v78
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s11, v72, v0, v72
	v_div_fixup_f32 v71, v77, v0, v71
	v_fma_f32 v76, -v79, v81, v76
	v_fmac_f32_e32 v83, v80, v86
	v_fma_f32 v77, -v75, v92, v89
	v_mul_f32_e32 v79, v90, v88
	v_fma_f32 v80, -v87, v91, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v74, -v84, v83, v74
	v_fmac_f32_e32 v92, v77, v78
	v_fma_f32 v77, -v82, v79, v90
	v_fmac_f32_e32 v91, v80, v91
	v_div_scale_f32 v80, s8, v69, v0, v69
	v_div_fmas_f32 v76, v76, v85, v81
	v_fma_f32 v75, -v75, v92, v89
	v_fmac_f32_e32 v79, v77, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v77, v80, v91
	v_div_scale_f32 v81, null, v0, v0, v57
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v67, v76, v0, v67
	v_div_fmas_f32 v74, v74, v86, v83
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v83, v81
	v_div_fmas_f32 v75, v75, v78, v92
	v_fma_f32 v78, -v82, v79, v90
	v_fma_f32 v82, -v87, v77, v80
	v_div_fixup_f32 v66, v74, v0, v66
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v7, v75, v0, v7
	v_div_scale_f32 v75, null, v0, v0, v48
	v_fmac_f32_e32 v77, v82, v91
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v76, -v81, v83, 1.0
	v_div_fmas_f32 v78, v78, v88, v79
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v85, null, v0, v0, v6
	v_fma_f32 v74, -v87, v77, v80
	v_fmac_f32_e32 v83, v76, v83
	v_div_scale_f32 v76, null, v0, v0, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v87, v85
	v_div_fmas_f32 v74, v74, v91, v77
	v_div_scale_f32 v79, vcc_lo, v57, v0, v57
	v_rcp_f32_e32 v77, v75
	v_div_fixup_f32 v72, v78, v0, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v69, v74, v0, v69
	v_mul_f32_e32 v84, v79, v83
	v_div_scale_f32 v78, null, v0, v0, v5
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v91, -v85, v87, 1.0
	v_rcp_f32_e32 v80, v76
	v_fma_f32 v88, -v81, v84, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v82, v78
	v_fma_f32 v74, -v75, v77, 1.0
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s11, v6, v0, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v84, v88, v83 :: v_dual_fmac_f32 v77, v74, v77
	v_div_scale_f32 v74, s8, v48, v0, v48
	v_mul_f32_e32 v94, v91, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v81, v84, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v90, v74, v77
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v10, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v86, -v76, v80, 1.0
	v_div_fmas_f32 v79, v79, v83, v84
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	v_fma_f32 v88, -v75, v90, v74
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v64, v64, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v57, v79, v0, v57
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v9, v9
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_cvt_i32_f32_e32 v64, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v88, v77
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v78, v82, 1.0
	v_fma_f32 v74, -v75, v90, v74
	v_fma_f32 v75, -v85, v94, v91
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_med3_f32 v9, v9, s8, 0x40e00000
	v_cvt_i32_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v75, v87
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v62, v62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v86, v80
	v_div_scale_f32 v86, s9, v4, v0, v4
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_cvt_i32_f32_e32 v83, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v89, s10, v5, v0, v5
	v_div_fmas_f32 v74, v74, v77, v90
	v_fma_f32 v77, -v85, v94, v91
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v71
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v85, v9
	v_and_b32_e32 v9, 15, v35
	v_and_b32_e32 v35, 15, v38
	v_and_b32_e32 v38, 15, v50
	v_and_b32_e32 v50, 15, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v92, v86, v80 :: v_dual_and_b32 v55, 15, v62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v91, v57
	v_and_b32_e32 v57, 15, v83
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v93, v89, v82
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v71, v71, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v76, v92, v86
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v48, v74, v0, v48
	v_fma_f32 v88, -v78, v93, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v71, v71
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v81, v80
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v7, v7
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v88, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v76, v92, v86
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v75, -v78, v93, v89
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v76, v80, v92
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v75, v75, v82, v93
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v4, v76, v0, v4
	v_div_fmas_f32 v77, v77, v87, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v5, v75, v0, v5
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v18, v18, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v4, v4
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v0, v77, v0, v6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v6, v32
	v_rndne_f32_e32 v32, v36
	v_rndne_f32_e32 v36, v47
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v6, v6, s8, 0x40e00000
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v4, v4, s8, 0x40e00000
	v_cvt_i32_f32_e32 v6, v6
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v24, v24
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v47, v51
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v51, v59
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v59, v68
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v68, v70
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v70, v73
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v73, v16
	v_cvt_i32_f32_e32 v75, v15
	v_cvt_i32_f32_e32 v89, v7
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v93, v4
	v_and_b32_e32 v4, 15, v6
	v_and_b32_e32 v6, 15, v21
	v_and_b32_e32 v7, 15, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v21, 10, v170
	v_and_b32_e32 v24, 16, v170
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v5, v5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v0, v0, s8, 0x40e00000
	v_cvt_i32_f32_e32 v74, v17
	v_cvt_i32_f32_e32 v77, v13
	v_cvt_i32_f32_e32 v90, v69
	v_and_b32_e32 v13, 15, v36
	v_and_b32_e32 v17, 15, v18
	v_and_b32_e32 v18, 15, v73
	v_and_b32_e32 v36, 15, v75
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v21, 0x1800, v21
	v_lshlrev_b32_e32 v73, 6, v24
	v_lshlrev_b32_e32 v75, 6, v170
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v69, 15, v72
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v72, 4, v95
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v11, v11, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_med3_f32 v5, v5, s8, 0x40e00000
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v79, v43
	v_cvt_i32_f32_e32 v80, v44
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v86, v61
	v_cvt_i32_f32_e32 v87, v58
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v27, v72, v27
	v_add3_u32 v21, 0, v21, v73
	v_and_or_b32 v23, 0x1b00, v75, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v81, v11
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v70, v70
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v42, v42
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v76, v14
	v_cvt_i32_f32_e32 v82, v54
	v_cvt_i32_f32_e32 v84, v8
	v_cvt_i32_f32_e32 v94, v5
	v_and_b32_e32 v5, 15, v28
	v_and_b32_e32 v8, 15, v32
	v_and_b32_e32 v10, 15, v30
	v_and_b32_e32 v11, 15, v29
	v_and_b32_e32 v14, 15, v39
	v_and_b32_e32 v16, 15, v31
	v_and_b32_e32 v28, 15, v45
	v_and_b32_e32 v29, 15, v40
	v_and_b32_e32 v30, 15, v33
	v_and_b32_e32 v31, 15, v34
	v_and_b32_e32 v32, 15, v47
	v_and_b32_e32 v33, 15, v46
	v_and_b32_e32 v39, 15, v49
	v_and_b32_e32 v44, 15, v56
	v_and_b32_e32 v45, 15, v52
	v_and_b32_e32 v46, 15, v79
	v_and_b32_e32 v47, 15, v80
	v_and_b32_e32 v49, 15, v60
	v_and_b32_e32 v54, 15, v63
	v_and_b32_e32 v60, 15, v65
	v_and_b32_e32 v61, 15, v64
	v_and_b32_e32 v62, 15, v86
	v_and_b32_e32 v63, 15, v87
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v21, v21, v27, v25
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v75, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v0, v23, v96, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v78, v12
	v_and_b32_e32 v12, 15, v19
	v_and_b32_e32 v15, 15, v37
	v_and_b32_e32 v19, 15, v74
	v_and_b32_e32 v37, 15, v51
	v_and_b32_e32 v51, 15, v53
	v_and_b32_e32 v52, 15, v81
	v_and_b32_e32 v53, 15, v68
	v_and_b32_e32 v64, 15, v70
	v_and_b32_e32 v65, 15, v71
	v_and_b32_e32 v68, 15, v89
	v_and_b32_e32 v70, 15, v90
	v_and_b32_e32 v71, 15, v91
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v21, v[4:7]
	ds_store_b128 v21, v[12:15] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[4:7], v0
	ds_load_b128 v[12:15], v0 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v21, v[28:31]
	ds_store_b128 v21, v[36:39] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[27:30], v0
	ds_load_b128 v[36:39], v0 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v21, v[44:47]
	ds_store_b128 v21, v[52:55] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[44:47], v0
	ds_load_b128 v[52:55], v0 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v21, v[60:63]
	ds_store_b128 v21, v[68:71] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v0
	ds_load_b128 v[68:71], v0 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v21, v[8:11]
	ds_store_b128 v21, v[16:19] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v0
	ds_load_b128 v[16:19], v0 offset:1024
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v48, v48
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v42, v42
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_cvt_i32_f32_e32 v59, v59
	v_and_b32_e32 v34, 15, v41
	v_and_b32_e32 v40, 15, v42
	v_and_b32_e32 v41, 15, v76
	v_and_b32_e32 v42, 15, v77
	v_and_b32_e32 v43, 15, v78
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v88, v66
	v_cvt_i32_f32_e32 v92, v48
	v_and_b32_e32 v48, 15, v59
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v21, v[32:35]
	ds_store_b128 v21, v[40:43] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[31:34], v0
	ds_load_b128 v[40:43], v0 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v56, 15, v82
	v_and_b32_e32 v58, 15, v84
	v_and_b32_e32 v59, 15, v85
	v_and_b32_e32 v66, 15, v67
	v_and_b32_e32 v67, 15, v88
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v21, v[48:51]
	ds_store_b128 v21, v[56:59] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v0
	ds_load_b128 v[56:59], v0 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v72, 15, v92
	v_and_b32_e32 v73, 15, v93
	v_and_b32_e32 v74, 15, v94
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v11, v19, 4, v11
	v_lshl_or_b32 v19, v38, 4, v29
	v_lshl_or_b32 v29, v52, 4, v44
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v44, 3, v95
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v4, v12, 4, v4
	v_lshl_or_b32 v12, v14, 4, v6
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, s34, v22
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v21, v[64:67]
	ds_store_b128 v21, v[72:75] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[64:67], v0
	ds_load_b128 v[72:75], v0 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s19, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s33, 7, v44
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v14, v16, 4, v8
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s19, s8
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 16, v6
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v5, v13, 4, v5
	v_lshl_or_b32 v13, v15, 4, v7
	v_lshl_or_b32 v15, v17, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 32, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v16, v18, 4, v10
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 48, v6
	v_mad_u64_u32 v[6:7], null, v6, s8, v[0:1]
	v_mad_u64_u32 v[7:8], null, v8, s8, v[0:1]
	v_mad_u64_u32 v[8:9], null, v9, s8, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v17, v36, 4, v27
	v_lshl_or_b32 v18, v37, 4, v28
	v_lshl_or_b32 v23, v40, 4, v31
	v_lshl_or_b32 v25, v41, 4, v32
	v_lshl_or_b32 v27, v42, 4, v33
	v_lshl_or_b32 v28, v43, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[9:10], null, v10, s8, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v13.l
	v_and_b16 v0.h, 0xff, v12.l
	v_lshlrev_b16 v1.l, 8, v5.l
	v_and_b16 v2.l, 0xff, v4.l
	v_lshlrev_b16 v4.l, 8, v11.l
	v_and_b16 v4.h, 0xff, v16.l
	v_lshlrev_b16 v5.l, 8, v15.l
	v_and_b16 v5.h, 0xff, v14.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v21, v39, 4, v30
	v_lshl_or_b32 v33, v56, 4, v48
	v_lshl_or_b32 v34, v57, 4, v49
	v_lshl_or_b32 v35, v58, 4, v50
	v_lshl_or_b32 v36, v59, 4, v51
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_or_b16 v10.l, v2.l, v1.l
	v_or_b16 v11.h, v4.h, v4.l
	v_or_b16 v11.l, v5.h, v5.l
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_lshlrev_b16 v4.l, 8, v28.l
	v_and_b16 v4.h, 0xff, v27.l
	v_lshlrev_b16 v5.l, 8, v25.l
	v_and_b16 v5.h, 0xff, v23.l
	s_and_b32 s9, s21, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s20
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v30, v53, 4, v45
	v_lshl_or_b32 v31, v54, 4, v46
	v_lshl_or_b32 v32, v55, 4, v47
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v41, v72, 4, v64
	v_lshl_or_b32 v42, v73, 4, v65
	v_lshl_or_b32 v43, v74, 4, v66
	v_lshl_or_b32 v22, v75, 4, v67
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v21.l
	v_and_b16 v0.h, 0xff, v19.l
	v_lshlrev_b16 v1.l, 8, v18.l
	v_and_b16 v2.l, 0xff, v17.l
	buffer_store_b64 v[10:11], v6, s[8:11], 0 offen
	v_or_b16 v11.h, v4.h, v4.l
	v_or_b16 v11.l, v5.h, v5.l
	v_lshlrev_b16 v4.l, 8, v36.l
	v_and_b16 v4.h, 0xff, v35.l
	v_lshlrev_b16 v5.l, 8, v34.l
	v_and_b16 v5.h, 0xff, v33.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v37, v68, 4, v60
	v_lshl_or_b32 v38, v69, 4, v61
	v_lshl_or_b32 v39, v70, 4, v62
	v_lshl_or_b32 v40, v71, 4, v63
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_or_b16 v10.l, v2.l, v1.l
	v_cndmask_b32_e32 v6, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v0.l, 8, v32.l
	v_and_b16 v0.h, 0xff, v31.l
	v_lshlrev_b16 v1.l, 8, v30.l
	v_and_b16 v2.l, 0xff, v29.l
	v_or_b16 v7.h, v4.h, v4.l
	v_or_b16 v7.l, v5.h, v5.l
	v_lshlrev_b16 v4.l, 8, v22.l
	v_and_b16 v4.h, 0xff, v43.l
	v_lshlrev_b16 v5.l, 8, v42.l
	v_and_b16 v5.h, 0xff, v41.l
	buffer_store_b64 v[10:11], v6, s[8:11], 0 offen
	v_or_b16 v6.h, v0.h, v0.l
	v_or_b16 v6.l, v2.l, v1.l
	v_lshlrev_b16 v0.l, 8, v40.l
	v_and_b16 v0.h, 0xff, v39.l
	v_lshlrev_b16 v1.l, 8, v38.l
	v_and_b16 v2.l, 0xff, v37.l
	v_or_b16 v11.h, v4.h, v4.l
	v_or_b16 v11.l, v5.h, v5.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 4, v170
	v_lshrrev_b32_e32 v5, 2, v24
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.l, v2.l, v1.l
	v_cndmask_b32_e32 v0, 0x80000000, v9, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 2, v4
	v_add_nc_u32_e32 v5, 0, v5
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s19, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[6:7], v8, s[8:11], 0 offen
	buffer_store_b64 v[10:11], v0, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v44
	v_mov_b16_e32 v2.l, v26.h
	v_mov_b16_e32 v1.l, v20.h
	v_add3_u32 v4, v5, v4, v44
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s19, s19, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s19, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v170
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s33, 1
	s_and_b32 vcc_lo, vcc_lo, s49
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp59:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 752
		.amdhsa_kernarg_size 120
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 57
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 57
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 752
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 35628
; TotalNumSgprs: 59
; NumVgprs: 256
; ScratchSize: 752
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 59
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x63:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
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
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 752
    .sgpr_count:     59
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 187
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
