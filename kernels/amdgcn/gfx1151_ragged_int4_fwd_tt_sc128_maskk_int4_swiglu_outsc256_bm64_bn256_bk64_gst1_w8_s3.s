	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[30:31], s[0:1], 0x5c
	v_mov_b32_e32 v161, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v87, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
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
	s_sub_i32 s5, s31, s4
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
	v_and_b32_e32 v0, 63, v161
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
	s_sub_i32 s31, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s31, s5
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
	s_load_b64 s[24:25], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[28:29], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[26:27], s[2:3], 0x0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s30, 0
	s_mov_b32 s6, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s24, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v2, null, s25, 0, s2
	v_add_nc_u32_e32 v213, s24, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[28:29], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[26:27], v[1:2]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 0x80, v161
.Ltmp4:
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s24, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow774
	s_load_b128 s[16:19], s[0:1], 0x40
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v96, 15, v161
	v_dual_mov_b32 v102, 0 :: v_dual_and_b32 v97, 0xf0, v161
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v203, 0
	v_mov_b32_e32 v194, 0
	v_mov_b32_e32 v198, 0
	v_mov_b32_e32 v202, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_and_b32 s34, s2, s3
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[2:3], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s6, s24, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s25, 0, s6
	s_clause 0x1
	s_load_b32 s35, s[0:1], 0x58
	s_load_b32 s36, s[0:1], 0x50
	v_add_co_u32 v2, vcc_lo, v0, 16
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 48
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[28:29], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[26:27], v[0:1]
	v_dual_mov_b32 v211, 0 :: v_dual_add_nc_u32 v0, s24, v96
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s20, s2, s4
	s_addc_u32 s21, s3, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[28:29], v[2:3]
	v_cmp_le_i64_e64 s2, s[28:29], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[26:27], v[2:3]
	v_cmp_gt_i64_e64 s5, s[26:27], v[4:5]
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v2, 16, v0
	v_dual_mov_b32 v212, 0 :: v_dual_add_nc_u32 v3, 32, v0
	v_dual_mov_b32 v209, 0 :: v_dual_add_nc_u32 v4, 48, v0
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v0, v0, s30
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s7, s[20:21], 0x0
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_lshrrev_b32_e32 v1, 5, v161
	.loc	1 1045 18 is_stmt 0             ; ragged.py:1045:18
	s_lshl_b32 s20, s31, 8
	.loc	1 1049 17 is_stmt 1             ; ragged.py:1049:17
	s_lshl_b32 s37, s33, 1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[28:29], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[26:27], v[6:7]
	.loc	1 1045 36 is_stmt 1             ; ragged.py:1045:36
	v_or_b32_e32 v1, s20, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v0, off offset:1140 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s30
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s4
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s4, s35, s37
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v15, 0xc0, v1
	v_or_b32_e32 v7, 0xd8, v1
	v_or_b32_e32 v8, 0xd0, v1
	v_or_b32_e32 v14, 0xc8, v1
	v_or_b32_e32 v5, 0xe8, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v0, off offset:1144 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s30
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v6, 0xe0, v1
	v_dual_mov_b32 v205, 0 :: v_dual_add_nc_u32 v12, s33, v7
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s22, s4, s7
	v_dual_mov_b32 v206, 0 :: v_dual_add_nc_u32 v13, s33, v8
	v_mad_u64_u32 v[253:254], null, s35, v15, s[22:23]
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v0, off offset:1148 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s30
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v4, 0xf0, v1
	v_or_b32_e32 v16, 0xb8, v1
	v_or_b32_e32 v17, 0xb0, v1
	v_or_b32_e32 v18, 0xa8, v1
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v19, s33, v14
	v_dual_mov_b32 v199, 0 :: v_dual_add_nc_u32 v20, s33, v15
	scratch_store_b32 off, v0, off offset:1152 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf8, v1
	v_or_b32_e32 v24, 0xa0, v1
	v_or_b32_e32 v25, 0x98, v1
	v_or_b32_e32 v26, 0x90, v1
	v_or_b32_e32 v27, 0x88, v1
	v_dual_mov_b32 v210, 0 :: v_dual_add_nc_u32 v3, s33, v0
	v_or_b32_e32 v28, 0x80, v1
	v_or_b32_e32 v34, 0x78, v1
	v_or_b32_e32 v35, 0x70, v1
	v_or_b32_e32 v36, 0x68, v1
	v_or_b32_e32 v37, 0x60, v1
	v_or_b32_e32 v38, 0x58, v1
	v_or_b32_e32 v44, 0x50, v1
	v_or_b32_e32 v45, 0x48, v1
	v_or_b32_e32 v46, 64, v1
	v_or_b32_e32 v47, 56, v1
	v_or_b32_e32 v48, 48, v1
	v_or_b32_e32 v54, 40, v1
	v_or_b32_e32 v55, 32, v1
	v_or_b32_e32 v56, 24, v1
	v_or_b32_e32 v57, 16, v1
	v_or_b32_e32 v58, 8, v1
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v64, s33, v1
	v_mad_u64_u32 v[214:215], null, v1, s35, s[22:23]
	v_mad_u64_u32 v[254:255], null, s35, v14, s[22:23]
	v_mad_u64_u32 v[14:15], null, s35, v8, s[22:23]
	v_mad_u64_u32 v[7:8], null, s35, v7, s[22:23]
	v_mad_u64_u32 v[0:1], null, s35, v0, s[22:23]
	v_or_b32_e32 v75, s20, v161
	v_dual_mov_b32 v208, 0 :: v_dual_add_nc_u32 v11, s33, v6
	s_clause 0x3                            ; 28-byte Folded Spill
	scratch_store_b64 off, v[14:15], off offset:312
	scratch_store_b64 off, v[7:8], off offset:320
	scratch_store_b32 off, v75, off offset:1156
	scratch_store_b64 off, v[0:1], off offset:352
	v_mad_u64_u32 v[6:7], null, s35, v6, s[22:23]
	v_mad_u64_u32 v[0:1], null, v64, s35, s[22:23]
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v63, s33, v58
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v10, s33, v5
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b64 off, v[6:7], off offset:328
	scratch_store_b32 off, v96, off offset:1172
	scratch_store_b64 off, v[0:1], off offset:360
	v_mad_u64_u32 v[5:6], null, s35, v5, s[22:23]
	v_mad_u64_u32 v[0:1], null, v63, s35, s[22:23]
	v_dual_mov_b32 v185, 0 :: v_dual_add_nc_u32 v62, s33, v57
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v9, s33, v4
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b64 off, v[5:6], off offset:336
	scratch_store_b32 off, v97, off offset:1176
	scratch_store_b64 off, v[0:1], off offset:368
	v_mad_u64_u32 v[4:5], null, s35, v4, s[22:23]
	v_mad_u64_u32 v[0:1], null, v62, s35, s[22:23]
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v61, s33, v56
	v_dual_mov_b32 v187, 0 :: v_dual_add_nc_u32 v60, s33, v55
	scratch_store_b64 off, v[4:5], off offset:344 ; 8-byte Folded Spill
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v59, s33, v54
	scratch_store_b64 off, v[0:1], off offset:376 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v61, s35, s[22:23]
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v53, s33, v48
	v_dual_mov_b32 v189, 0 :: v_dual_add_nc_u32 v52, s33, v47
	v_dual_mov_b32 v186, 0 :: v_dual_add_nc_u32 v51, s33, v46
	scratch_store_b64 off, v[0:1], off offset:384 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v60, s35, s[22:23]
	v_dual_mov_b32 v191, 0 :: v_dual_add_nc_u32 v50, s33, v45
	v_dual_mov_b32 v188, 0 :: v_dual_add_nc_u32 v49, s33, v44
	v_dual_mov_b32 v190, 0 :: v_dual_add_nc_u32 v43, s33, v38
	scratch_store_b64 off, v[0:1], off offset:392 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v59, s35, s[22:23]
	v_dual_mov_b32 v193, 0 :: v_dual_add_nc_u32 v42, s33, v37
	v_dual_mov_b32 v192, 0 :: v_dual_add_nc_u32 v41, s33, v36
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v40, s33, v35
	scratch_store_b64 off, v[0:1], off offset:400 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v53, s35, s[22:23]
	v_dual_mov_b32 v194, 0 :: v_dual_add_nc_u32 v39, s33, v34
	v_dual_mov_b32 v207, 0 :: v_dual_and_b32 v2, 0xe0, v161
	v_dual_mov_b32 v91, 0 :: v_dual_lshlrev_b32 v66, 1, v161
	scratch_store_b64 off, v[0:1], off offset:408 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v52, s35, s[22:23]
	v_dual_mov_b32 v198, 0 :: v_dual_add_nc_u32 v33, s33, v28
	v_dual_mov_b32 v107, 0 :: v_dual_lshlrev_b32 v68, 5, v96
	v_dual_mov_b32 v109, 0 :: v_dual_lshlrev_b32 v2, 4, v2
	scratch_store_b64 off, v[0:1], off offset:416 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v51, s35, s[22:23]
	v_dual_mov_b32 v120, 0 :: v_dual_and_b32 v69, 24, v66
	v_dual_mov_b32 v197, 0 :: v_dual_add_nc_u32 v32, s33, v27
	v_dual_mov_b32 v125, 0 :: v_dual_lshlrev_b32 v74, 2, v97
	scratch_store_b64 off, v[0:1], off offset:424 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v50, s35, s[22:23]
	v_or3_b32 v217, v68, v69, v2
	v_dual_mov_b32 v144, 0 :: v_dual_lshlrev_b32 v69, 5, v161
	v_dual_mov_b32 v123, 0 :: v_dual_and_b32 v66, 28, v66
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v142, 0 :: v_dual_and_b32 v69, 32, v69
	scratch_store_b64 off, v[0:1], off offset:432 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v49, s35, s[22:23]
	v_bfe_i32 v65, v161, 7, 1
	v_add3_u32 v69, 0, v74, v69
	v_dual_mov_b32 v202, 0 :: v_dual_add_nc_u32 v31, s33, v26
	v_dual_mov_b32 v126, 0 :: v_dual_and_b32 v67, 0x7f, v161
	scratch_store_b64 off, v[0:1], off offset:440 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v43, s35, s[22:23]
	v_dual_mov_b32 v124, 0 :: v_dual_and_b32 v65, 0x88, v65
	v_mov_b32_e32 v121, 0
	v_xor_b32_e32 v72, 16, v217
	v_dual_mov_b32 v119, 0 :: v_dual_lshlrev_b32 v74, 1, v97
	scratch_store_b64 off, v[0:1], off offset:448 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v42, s35, s[22:23]
	v_xor_b32_e32 v216, v65, v67
	v_or_b32_e32 v65, 0x7f0, v161
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v30, s33, v25
	v_mov_b32_e32 v201, 0
	v_mov_b32_e32 v153, 0
	scratch_store_b64 off, v[0:1], off offset:456 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v41, s35, s[22:23]
	v_mov_b32_e32 v173, 0
	v_dual_mov_b32 v196, 0 :: v_dual_add_nc_u32 v29, s33, v24
	v_dual_mov_b32 v200, 0 :: v_dual_add_nc_u32 v23, s33, v18
	v_dual_mov_b32 v203, 0 :: v_dual_add_nc_u32 v22, s33, v17
	scratch_store_b64 off, v[0:1], off offset:464 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v40, s35, s[22:23]
	v_dual_mov_b32 v204, 0 :: v_dual_add_nc_u32 v21, s33, v16
	v_mad_u64_u32 v[223:224], null, s35, v57, s[22:23]
	v_mad_u64_u32 v[224:225], null, s35, v56, s[22:23]
	scratch_store_b64 off, v[0:1], off offset:472 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v39, s35, s[22:23]
	v_mad_u64_u32 v[225:226], null, s35, v55, s[22:23]
	v_mad_u64_u32 v[226:227], null, s35, v54, s[22:23]
	v_mad_u64_u32 v[227:228], null, s35, v48, s[22:23]
	scratch_store_b64 off, v[0:1], off offset:480 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v33, s35, s[22:23]
	v_mad_u64_u32 v[228:229], null, s35, v46, s[22:23]
	v_mad_u64_u32 v[229:230], null, s35, v45, s[22:23]
	v_mad_u64_u32 v[230:231], null, s35, v44, s[22:23]
	scratch_store_b64 off, v[0:1], off offset:488 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v32, s35, s[22:23]
	v_mad_u64_u32 v[231:232], null, s35, v38, s[22:23]
	v_mad_u64_u32 v[232:233], null, s35, v37, s[22:23]
	v_mad_u64_u32 v[233:234], null, s35, v36, s[22:23]
	scratch_store_b64 off, v[0:1], off offset:496 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, v69, v66
	v_mad_u64_u32 v[234:235], null, s35, v35, s[22:23]
	v_mad_u64_u32 v[235:236], null, s35, v34, s[22:23]
	scratch_store_b32 off, v0, off offset:1160 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v31, s35, s[22:23]
	v_mad_u64_u32 v[236:237], null, s35, v28, s[22:23]
	v_mad_u64_u32 v[237:238], null, s35, v27, s[22:23]
	v_mad_u64_u32 v[238:239], null, s35, v26, s[22:23]
	scratch_store_b64 off, v[0:1], off offset:504 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v65
	v_mad_u64_u32 v[239:240], null, s35, v25, s[22:23]
	v_mad_u64_u32 v[240:241], null, s35, v24, s[22:23]
	scratch_store_b32 off, v0, off offset:516 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v72
	v_or_b32_e32 v70, 0x300, v161
	v_or_b32_e32 v71, 0x700, v161
	v_or_b32_e32 v2, 0x3f0, v161
	v_xor_b32_e32 v67, 0x110, v216
	scratch_store_b32 off, v0, off offset:520 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v74
	v_xor_b32_e32 v68, 8, v217
	v_xor_b32_e32 v73, 24, v217
	v_mad_u64_u32 v[241:242], null, s35, v18, s[22:23]
	scratch_store_b32 off, v0, off offset:1164 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v30, s35, s[22:23]
	v_mad_u64_u32 v[220:221], null, s35, v58, s[22:23]
	v_mad_u64_u32 v[242:243], null, s35, v17, s[22:23]
	v_mad_u64_u32 v[221:222], null, s35, v47, s[22:23]
	scratch_store_b64 off, v[0:1], off offset:524 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v29, s35, s[22:23]
	v_mad_u64_u32 v[243:244], null, s35, v16, s[22:23]
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v219, 0, v96
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v215, 0, v70
	scratch_store_b64 off, v[0:1], off offset:532 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v23, s35, s[22:23]
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v218, 0, v71
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v255, 0, v2
	v_dual_mov_b32 v176, 0 :: v_dual_add_nc_u32 v165, 0, v67
	scratch_store_b64 off, v[0:1], off offset:540 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v22, s35, s[22:23]
	v_dual_mov_b32 v151, 0 :: v_dual_add_nc_u32 v222, 0, v68
	v_dual_mov_b32 v175, 0 :: v_dual_add_nc_u32 v244, 0, v73
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v171, 0
	scratch_store_b64 off, v[0:1], off offset:548 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v21, s35, s[22:23]
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v184, 0
	v_mov_b32_e32 v177, 0
	scratch_store_b64 off, v[0:1], off offset:556 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v20, s35, s[22:23]
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v157, 0
	scratch_store_b64 off, v[0:1], off offset:564 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v19, s35, s[22:23]
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v147, 0
	scratch_store_b64 off, v[0:1], off offset:572 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v13, s35, s[22:23]
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v139, 0
	scratch_store_b64 off, v[0:1], off offset:580 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v12, s35, s[22:23]
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v135, 0
	scratch_store_b64 off, v[0:1], off offset:588 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v11, s35, s[22:23]
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v127, 0
	scratch_store_b64 off, v[0:1], off offset:596 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v10, s35, s[22:23]
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v111, 0
	scratch_store_b64 off, v[0:1], off offset:604 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v9, s35, s[22:23]
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v99, 0
	scratch_store_b64 off, v[0:1], off offset:612 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v3, s35, s[22:23]
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v117, 0
	scratch_store_b64 off, v[0:1], off offset:620 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v161
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v87, 0
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v102, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_and_b32 s2, s2, s5
	s_and_b32 s3, s3, s6
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s38, s30, s7
	s_and_b32 s5, s9, 0xffff
	s_mov_b32 s4, s8
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s9, s11, 0xffff
	s_mov_b32 s8, s10
	s_mov_b32 s39, 0
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s20, s14
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1168
	scratch_store_b32 off, v215, off offset:512
	scratch_store_b32 off, v222, off
	scratch_store_b32 off, v244, off offset:4
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v212, off offset:1136
	scratch_store_b32 off, v211, off offset:1132
	scratch_store_b32 off, v81, off offset:1128
	scratch_store_b32 off, v210, off offset:1124
	scratch_store_b32 off, v82, off offset:1120
	scratch_store_b32 off, v209, off offset:1116
	scratch_store_b32 off, v208, off offset:1112
	scratch_store_b32 off, v207, off offset:1108
	scratch_store_b32 off, v206, off offset:1104
	scratch_store_b32 off, v83, off offset:1100
	scratch_store_b32 off, v84, off offset:1096
	scratch_store_b32 off, v205, off offset:1092
	scratch_store_b32 off, v204, off offset:1088
	scratch_store_b32 off, v203, off offset:1084
	scratch_store_b32 off, v202, off offset:1080
	scratch_store_b32 off, v201, off offset:1076
	scratch_store_b32 off, v200, off offset:1072
	scratch_store_b32 off, v199, off offset:1068
	scratch_store_b32 off, v197, off offset:1064
	scratch_store_b32 off, v198, off offset:1060
	scratch_store_b32 off, v196, off offset:1056
	scratch_store_b32 off, v195, off offset:1052
	scratch_store_b32 off, v194, off offset:1048
	scratch_store_b32 off, v193, off offset:1044
	scratch_store_b32 off, v192, off offset:1040
	scratch_store_b32 off, v191, off offset:1036
	scratch_store_b32 off, v190, off offset:1032
	scratch_store_b32 off, v189, off offset:1028
	scratch_store_b32 off, v188, off offset:1024
	scratch_store_b32 off, v187, off offset:1020
	scratch_store_b32 off, v186, off offset:1016
	scratch_store_b32 off, v185, off offset:1012
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v184, off offset:1008
	scratch_store_b32 off, v183, off offset:1004
	scratch_store_b32 off, v182, off offset:1000
	scratch_store_b32 off, v181, off offset:996
	scratch_store_b32 off, v180, off offset:992
	scratch_store_b32 off, v179, off offset:988
	scratch_store_b32 off, v178, off offset:984
	scratch_store_b32 off, v177, off offset:980
	scratch_store_b32 off, v176, off offset:976
	scratch_store_b32 off, v175, off offset:972
	scratch_store_b32 off, v174, off offset:968
	scratch_store_b32 off, v173, off offset:964
	scratch_store_b32 off, v172, off offset:960
	scratch_store_b32 off, v171, off offset:956
	scratch_store_b32 off, v170, off offset:952
	scratch_store_b32 off, v169, off offset:948
	scratch_store_b32 off, v168, off offset:944
	scratch_store_b32 off, v167, off offset:940
	scratch_store_b32 off, v166, off offset:936
	scratch_store_b32 off, v160, off offset:932
	scratch_store_b32 off, v159, off offset:928
	scratch_store_b32 off, v158, off offset:924
	scratch_store_b32 off, v157, off offset:920
	scratch_store_b32 off, v156, off offset:916
	scratch_store_b32 off, v155, off offset:912
	scratch_store_b32 off, v147, off offset:908
	scratch_store_b32 off, v146, off offset:904
	scratch_store_b32 off, v145, off offset:900
	scratch_store_b32 off, v164, off offset:896
	scratch_store_b32 off, v154, off offset:892
	scratch_store_b32 off, v163, off offset:888
	scratch_store_b32 off, v162, off offset:884
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v144, off offset:880
	scratch_store_b32 off, v143, off offset:876
	scratch_store_b32 off, v142, off offset:872
	scratch_store_b32 off, v141, off offset:868
	scratch_store_b32 off, v153, off offset:864
	scratch_store_b32 off, v152, off offset:860
	scratch_store_b32 off, v151, off offset:856
	scratch_store_b32 off, v150, off offset:852
	scratch_store_b32 off, v140, off offset:848
	scratch_store_b32 off, v139, off offset:844
	scratch_store_b32 off, v138, off offset:840
	scratch_store_b32 off, v137, off offset:836
	scratch_store_b32 off, v136, off offset:832
	scratch_store_b32 off, v135, off offset:828
	scratch_store_b32 off, v134, off offset:824
	scratch_store_b32 off, v133, off offset:820
	scratch_store_b32 off, v132, off offset:816
	scratch_store_b32 off, v131, off offset:812
	scratch_store_b32 off, v130, off offset:808
	scratch_store_b32 off, v129, off offset:804
	scratch_store_b32 off, v149, off offset:800
	scratch_store_b32 off, v148, off offset:796
	scratch_store_b32 off, v128, off offset:792
	scratch_store_b32 off, v127, off offset:788
	scratch_store_b32 off, v126, off offset:784
	scratch_store_b32 off, v125, off offset:780
	scratch_store_b32 off, v124, off offset:776
	scratch_store_b32 off, v123, off offset:772
	scratch_store_b32 off, v122, off offset:768
	scratch_store_b32 off, v121, off offset:764
	scratch_store_b32 off, v120, off offset:760
	scratch_store_b32 off, v119, off offset:756
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v114, off offset:752
	scratch_store_b32 off, v106, off offset:748
	scratch_store_b32 off, v105, off offset:744
	scratch_store_b32 off, v104, off offset:740
	scratch_store_b32 off, v103, off offset:736
	scratch_store_b32 off, v113, off offset:732
	scratch_store_b32 off, v112, off offset:728
	scratch_store_b32 off, v111, off offset:724
	scratch_store_b32 off, v99, off offset:720
	scratch_store_b32 off, v98, off offset:716
	scratch_store_b32 off, v95, off offset:712
	scratch_store_b32 off, v94, off offset:708
	scratch_store_b32 off, v118, off offset:704
	scratch_store_b32 off, v117, off offset:700
	scratch_store_b32 off, v116, off offset:696
	scratch_store_b32 off, v115, off offset:692
	scratch_store_b32 off, v93, off offset:688
	scratch_store_b32 off, v92, off offset:684
	scratch_store_b32 off, v91, off offset:680
	scratch_store_b32 off, v90, off offset:676
	scratch_store_b32 off, v110, off offset:672
	scratch_store_b32 off, v109, off offset:668
	scratch_store_b32 off, v108, off offset:664
	scratch_store_b32 off, v107, off offset:660
	scratch_store_b32 off, v89, off offset:656
	scratch_store_b32 off, v88, off offset:652
	scratch_store_b32 off, v86, off offset:648
	scratch_store_b32 off, v85, off offset:644
	scratch_store_b32 off, v102, off offset:640
	scratch_store_b32 off, v101, off offset:636
	scratch_store_b32 off, v100, off offset:632
	scratch_store_b32 off, v87, off offset:628
	scratch_load_b32 v167, off, off offset:1168 ; 4-byte Folded Reload
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v0, 0
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s14, s39, 6
	v_mov_b32_e32 v9, 0
	v_mov_b32_e32 v17, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v250, v0
	v_mov_b32_e32 v246, v0
	v_mov_b32_e32 v247, v0
	v_mov_b32_e32 v248, v0
	v_mov_b32_e32 v249, v0
	v_mov_b32_e32 v251, v0
	v_dual_mov_b32 v252, v0 :: v_dual_mov_b32 v33, 0
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
	s_mov_b32 s15, -1
	s_mov_b32 s10, 0
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_clause 0x5                            ; 48-byte Folded Reload
	scratch_load_b64 v[154:155], off, off offset:312
	scratch_load_b64 v[155:156], off, off offset:320
	scratch_load_b64 v[156:157], off, off offset:328
	scratch_load_b64 v[157:158], off, off offset:336
	scratch_load_b64 v[158:159], off, off offset:344
	scratch_load_b64 v[159:160], off, off offset:352
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v0, 6, v161
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s22, s10, s14
	s_clause 0x10                           ; 136-byte Folded Spill
	scratch_store_b64 off, v[243:244], off offset:144
	scratch_store_b64 off, v[242:243], off offset:136
	scratch_store_b64 off, v[241:242], off offset:128
	scratch_store_b64 off, v[240:241], off offset:120
	scratch_store_b64 off, v[239:240], off offset:112
	scratch_store_b64 off, v[238:239], off offset:104
	scratch_store_b64 off, v[237:238], off offset:96
	scratch_store_b64 off, v[236:237], off offset:88
	scratch_store_b64 off, v[235:236], off offset:80
	scratch_store_b64 off, v[234:235], off offset:72
	scratch_store_b64 off, v[233:234], off offset:64
	scratch_store_b64 off, v[232:233], off offset:56
	scratch_store_b64 off, v[231:232], off offset:48
	scratch_store_b64 off, v[230:231], off offset:40
	scratch_store_b64 off, v[229:230], off offset:32
	scratch_store_b64 off, v[228:229], off offset:24
	scratch_store_b64 off, v[221:222], off offset:16
	s_waitcnt vmcnt(6)
	scratch_store_b64 off, v[214:215], off offset:8 ; 8-byte Folded Spill
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v0, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v0, s36, v[213:214]
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s35, v0
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v2, 4, v0
	v_or_b32_e32 v3, 8, v0
	v_or_b32_e32 v4, 12, v0
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 vcc_lo, s34, vcc_lo
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e32 v1, 0x80000000, v129, vcc_lo
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v2, s36, v[213:214]
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s35, v2
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 vcc_lo, s34, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e32 v2, 0x80000000, v129, vcc_lo
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v3, s36, v[213:214]
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s35, v3
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 vcc_lo, s34, vcc_lo
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e32 v3, 0x80000000, v129, vcc_lo
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v4, s36, v[213:214]
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s35, v4
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v4, 16, v0
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 vcc_lo, s34, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e32 v131, 0x80000000, v129, vcc_lo
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v4, s36, v[213:214]
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s35, v4
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v4, 20, v0
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 vcc_lo, s34, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e32 v132, 0x80000000, v129, vcc_lo
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v4, s36, v[213:214]
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s35, v4
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v4, 24, v0
	v_or_b32_e32 v0, 28, v0
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 vcc_lo, s34, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e32 v133, 0x80000000, v129, vcc_lo
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s35, v4
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v4, s36, v[213:214]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_and_b32_e32 v4, 31, v161
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 vcc_lo, s34, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v222, s22, v4
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_dual_cndmask_b32 v134, 0x80000000, v129 :: v_dual_add_nc_u32 v7, v224, v222
	.loc	1 1155 42 is_stmt 0             ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v0, s36, v[213:214]
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s35, v0
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v5, v220, v222
	v_add_nc_u32_e32 v147, v239, v222
	v_add_nc_u32_e32 v4, v214, v222
	v_add_nc_u32_e32 v153, v254, v222
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 vcc_lo, s34, vcc_lo
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v6, v223, v222
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_dual_cndmask_b32 v0, 0x80000000, v129 :: v_dual_add_nc_u32 v129, v226, v222
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s35, v222
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v140, v232, v222
	v_add_nc_u32_e32 v152, v253, v222
	v_add_nc_u32_e32 v8, v225, v222
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_dual_cndmask_b32 v153, 0x80000000, v153 :: v_dual_add_nc_u32 v144, v236, v222
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	v_cndmask_b32_e32 v147, 0x80000000, v147, vcc_lo
	v_dual_cndmask_b32 v140, 0x80000000, v140 :: v_dual_add_nc_u32 v137, v229, v222
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v130, v227, v222
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_add_nc_u32 v139, v231, v222
	v_dual_cndmask_b32 v144, 0x80000000, v144 :: v_dual_add_nc_u32 v143, v235, v222
	v_cndmask_b32_e32 v152, 0x80000000, v152, vcc_lo
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v138, v230, v222
	v_add_nc_u32_e32 v149, v241, v222
	v_add_nc_u32_e32 v142, v234, v222
	v_add_nc_u32_e32 v150, v242, v222
	v_add_nc_u32_e32 v151, v243, v222
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v129, 0x80000000, v129
	v_dual_cndmask_b32 v137, 0x80000000, v137 :: v_dual_cndmask_b32 v130, 0x80000000, v130
	v_cndmask_b32_e32 v139, 0x80000000, v139, vcc_lo
	v_cndmask_b32_e32 v143, 0x80000000, v143, vcc_lo
	v_dual_cndmask_b32 v149, 0x80000000, v149 :: v_dual_cndmask_b32 v142, 0x80000000, v142
	v_dual_cndmask_b32 v151, 0x80000000, v151 :: v_dual_cndmask_b32 v150, 0x80000000, v150
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v154, v154, v222
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v155, v155, v222
	v_add_nc_u32_e32 v146, v238, v222
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v156, v156, v222
	v_add_nc_u32_e32 v145, v237, v222
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v159, v159, v222
	v_add_nc_u32_e32 v148, v240, v222
	v_add_nc_u32_e32 v157, v157, v222
	v_add_nc_u32_e32 v158, v158, v222
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_dual_cndmask_b32 v154, 0x80000000, v154 :: v_dual_cndmask_b32 v159, 0x80000000, v159
	v_dual_cndmask_b32 v148, 0x80000000, v148 :: v_dual_add_nc_u32 v141, v233, v222
	v_dual_cndmask_b32 v155, 0x80000000, v155 :: v_dual_add_nc_u32 v136, v228, v222
	v_dual_cndmask_b32 v146, 0x80000000, v146 :: v_dual_cndmask_b32 v157, 0x80000000, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v141, 0x80000000, v141, vcc_lo
	v_dual_cndmask_b32 v136, 0x80000000, v136 :: v_dual_add_nc_u32 v135, v221, v222
	v_cndmask_b32_e32 v156, 0x80000000, v156, vcc_lo
	v_dual_cndmask_b32 v138, 0x80000000, v138 :: v_dual_cndmask_b32 v145, 0x80000000, v145
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v135, 0x80000000, v135 :: v_dual_cndmask_b32 v158, 0x80000000, v158
	s_clause 0x1f
	buffer_load_u8 v235, v4, s[8:11], 0 offen
	buffer_load_u8 v160, v5, s[8:11], 0 offen
	buffer_load_u8 v239, v6, s[8:11], 0 offen
	buffer_load_u8 v162, v7, s[8:11], 0 offen
	buffer_load_u8 v244, v8, s[8:11], 0 offen
	buffer_load_u8 v163, v129, s[8:11], 0 offen
	buffer_load_u8 v234, v130, s[8:11], 0 offen
	buffer_load_u8 v164, v135, s[8:11], 0 offen
	buffer_load_u8 v233, v136, s[8:11], 0 offen
	buffer_load_u8 v166, v137, s[8:11], 0 offen
	buffer_load_u8 v240, v138, s[8:11], 0 offen
	buffer_load_u8 v198, v139, s[8:11], 0 offen
	buffer_load_u8 v6, v140, s[8:11], 0 offen
	buffer_load_u8 v199, v141, s[8:11], 0 offen
	buffer_load_u8 v241, v142, s[8:11], 0 offen
	buffer_load_u8 v200, v143, s[8:11], 0 offen
	buffer_load_u8 v232, v144, s[8:11], 0 offen
	buffer_load_u8 v201, v145, s[8:11], 0 offen
	buffer_load_u8 v7, v146, s[8:11], 0 offen
	buffer_load_u8 v202, v147, s[8:11], 0 offen
	buffer_load_u8 v242, v148, s[8:11], 0 offen
	buffer_load_u8 v203, v149, s[8:11], 0 offen
	buffer_load_u8 v4, v150, s[8:11], 0 offen
	buffer_load_u8 v206, v151, s[8:11], 0 offen
	buffer_load_u8 v231, v152, s[8:11], 0 offen
	buffer_load_u8 v243, v153, s[8:11], 0 offen
	buffer_load_u8 v230, v154, s[8:11], 0 offen
	buffer_load_u8 v238, v155, s[8:11], 0 offen
	buffer_load_u8 v236, v156, s[8:11], 0 offen
	buffer_load_u8 v237, v157, s[8:11], 0 offen
	buffer_load_u8 v229, v158, s[8:11], 0 offen
	buffer_load_u8 v5, v159, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v1, v1, s[4:7], 0 offen
	buffer_load_u8 v2, v2, s[4:7], 0 offen
	buffer_load_u8 v3, v3, s[4:7], 0 offen
	buffer_load_u8 v129, v132, s[4:7], 0 offen
	buffer_load_u8 v130, v133, s[4:7], 0 offen
	buffer_load_u8 v132, v134, s[4:7], 0 offen
	buffer_load_u8 v0, v0, s[4:7], 0 offen
	buffer_load_u8 v131, v131, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v154, v224
	s_waitcnt vmcnt(7)
	ds_store_b8 v167, v1
	s_waitcnt vmcnt(6)
	ds_store_b8 v167, v2 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v167, v3 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v167, v129 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v167, v130 offset:1280
	s_waitcnt vmcnt(0)
	ds_store_b8 v215, v131
	ds_store_b8 v167, v132 offset:1536
	ds_store_b8 v218, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v0, v219 offset:320
	ds_load_u8 v1, v219 offset:256
	ds_load_u8 v2, v219 offset:336
	ds_load_u8 v3, v219 offset:272
	ds_load_u8 v129, v219 offset:352
	ds_load_u8 v130, v219 offset:288
	ds_load_u8 v131, v219 offset:368
	ds_load_u8 v132, v219 offset:304
	ds_load_u8 v172, v219 offset:960
	ds_load_u8 v174, v219 offset:896
	ds_load_u8 v8, v219 offset:1024
	ds_load_u8 v221, v219 offset:704
	ds_load_u8 v158, v219 offset:1584
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v219 offset:448
	ds_load_u8 v133, v219 offset:384
	ds_load_u8 v134, v219 offset:464
	ds_load_u8 v135, v219 offset:400
	ds_load_u8 v136, v219 offset:480
	ds_load_u8 v137, v219 offset:416
	ds_load_u8 v138, v219 offset:496
	ds_load_u8 v139, v219 offset:432
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	scratch_store_b32 off, v8, off offset:152 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v133, v1, 0xc0c0004
	ds_load_u8 v133, v219 offset:64
	ds_load_u8 v140, v219
	ds_load_u8 v141, v219 offset:80
	ds_load_u8 v142, v219 offset:16
	ds_load_u8 v143, v219 offset:96
	ds_load_u8 v144, v219 offset:32
	ds_load_u8 v145, v219 offset:112
	ds_load_u8 v146, v219 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v3, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v130, v137, v136, 0xc0c0004
	v_lshl_or_b32 v1, v1, 16, v0
	v_mov_b32_e32 v137, v227
	v_lshl_or_b32 v3, v3, 16, v2
	v_mov_b32_e32 v136, v226
	v_lshl_or_b32 v197, v130, 16, v129
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v130, v139, v138, 0xc0c0004
	v_mov_b32_e32 v138, v225
	v_perm_b32 v129, v132, v131, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v133, v140, v133, 0xc0c0004
	ds_load_u8 v140, v219 offset:192
	ds_load_u8 v147, v219 offset:128
	ds_load_u8 v148, v219 offset:208
	ds_load_u8 v149, v219 offset:144
	ds_load_u8 v150, v219 offset:224
	ds_load_u8 v151, v219 offset:160
	ds_load_u8 v152, v219 offset:240
	ds_load_u8 v153, v219 offset:176
	v_lshl_or_b32 v195, v130, 16, v129
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v131, v146, v145, 0xc0c0004
	v_mov_b32_e32 v145, v213
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v140, v147, v140, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v134, v149, v148, 0xc0c0004
	ds_load_u8 v148, v219 offset:976
	ds_load_u8 v168, v219 offset:912
	ds_load_u8 v8, v219 offset:992
	v_lshl_or_b32 v0, v140, 16, v133
	v_perm_b32 v133, v142, v141, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v132, v153, v152, 0xc0c0004
	v_mov_b32_e32 v140, v220
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_add_nc_u32_e32 v220, 0, v216
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v177, v219 offset:1488
	ds_load_u8 v179, v219 offset:1424
	ds_load_u8 v169, v219 offset:1504
	ds_load_u8 v171, v219 offset:1440
	ds_load_u8 v157, v219 offset:1520
	ds_load_u8 v152, v219 offset:1456
	v_lshl_or_b32 v2, v134, 16, v133
	v_perm_b32 v133, v144, v143, 0xc0c0004
	v_perm_b32 v134, v151, v150, 0xc0c0004
	v_lshl_or_b32 v194, v132, 16, v131
	ds_load_u8 v188, v219 offset:832
	ds_load_u8 v189, v219 offset:768
	ds_load_u8 v215, v219 offset:848
	ds_load_u8 v183, v219 offset:784
	ds_load_u8 v175, v219 offset:864
	ds_load_u8 v178, v219 offset:800
	ds_load_u8 v153, v219 offset:880
	ds_load_u8 v151, v219 offset:816
	ds_load_u8 v224, v219 offset:1408
	ds_load_u8 v142, v219 offset:1344
	ds_load_u8 v192, v219 offset:1360
	ds_load_u8 v193, v219 offset:1296
	ds_load_u8 v186, v219 offset:1376
	ds_load_u8 v187, v219 offset:1312
	ds_load_u8 v180, v219 offset:1392
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_add_nc_u32_e32 v132, 0, v217
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v196, v134, 16, v133
	ds_load_u8 v227, v219 offset:640
	ds_load_u8 v190, v219 offset:720
	ds_load_u8 v191, v219 offset:656
	ds_load_u8 v184, v219 offset:736
	ds_load_u8 v185, v219 offset:672
	ds_load_u8 v205, v219 offset:752
	ds_load_u8 v181, v219 offset:688
	ds_load_u8 v134, v219 offset:576
	ds_load_u8 v131, v219 offset:512
	ds_load_u8 v139, v219 offset:592
	ds_load_u8 v135, v219 offset:528
	ds_load_u8 v144, v219 offset:608
	ds_load_u8 v143, v219 offset:544
	ds_load_u8 v209, v219 offset:624
	v_mov_b32_e32 v141, v223
	ds_load_u8 v133, v255
	s_waitcnt lgkmcnt(36)
	scratch_store_b32 off, v8, off offset:296 ; 4-byte Folded Spill
	ds_load_u8 v156, v219 offset:928
	ds_load_u8 v8, v219 offset:944
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:260 ; 4-byte Folded Spill
	ds_load_u8 v225, v219 offset:560
	ds_load_u8 v8, v219 offset:1216
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:264 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:1280
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:288 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:1232
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:220 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:1168
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:228 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:1248
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:204 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:1184
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:208 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:1264
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:188 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:1200
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:196 ; 4-byte Folded Spill
	ds_load_u8 v149, v219 offset:1152
	ds_load_u8 v146, v219 offset:1088
	ds_load_u8 v8, v219 offset:1104
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:292 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:1040
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:308 ; 4-byte Folded Spill
	ds_load_u8 v155, v219 offset:1120
	ds_load_u8 v8, v219 offset:1056
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:280 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:1136
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:236 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:1072
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:252 ; 4-byte Folded Spill
	ds_load_u8 v182, v219 offset:1472
	ds_load_u8 v8, v219 offset:1536
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:156 ; 4-byte Folded Spill
	ds_load_u8 v214, v219 offset:1328
	ds_load_u8 v8, v219 offset:1984
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:200 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:2000
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:176 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:1936
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:184 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:2016
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:168 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:1952
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:172 ; 4-byte Folded Spill
	scratch_load_b32 v8, off, off offset:516 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v8, v8
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:160 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:1968
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:164 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:1920
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:268 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:1856
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:272 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:1872
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:232 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:1808
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:244 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:1888
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:212 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:1824
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:216 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:1904
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:180 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:1840
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:192 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:1728
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:304 ; 4-byte Folded Spill
	ds_load_u8 v147, v219 offset:1792
	ds_load_u8 v8, v219 offset:1744
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:276 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:1680
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:284 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:1760
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:248 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:1696
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:256 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:1776
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:224 ; 4-byte Folded Spill
	ds_load_u8 v8, v219 offset:1712
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:240 ; 4-byte Folded Spill
	ds_load_u8 v176, v219 offset:1664
	ds_load_u8 v204, v219 offset:1600
	ds_load_u8 v170, v219 offset:1616
	ds_load_u8 v173, v219 offset:1552
	ds_load_u8 v159, v219 offset:1632
	ds_load_u8 v150, v219 offset:1568
	ds_load_u8 v8, v219 offset:1648
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:300 ; 4-byte Folded Spill
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v220, v235
	ds_store_b8 v220, v239 offset:512
	ds_store_b8 v220, v244 offset:1024
	ds_store_b8 v220, v234 offset:1536
	ds_store_b8 v220, v233 offset:2048
	ds_store_b8 v220, v240 offset:2560
	ds_store_b8 v220, v6 offset:3072
	ds_store_b8 v220, v241 offset:3584
	ds_store_b8 v220, v232 offset:4096
	ds_store_b8 v220, v7 offset:4608
	ds_store_b8 v220, v242 offset:5120
	ds_store_b8 v220, v4 offset:5632
	ds_store_b8 v220, v231 offset:6144
	ds_store_b8 v220, v230 offset:6656
	ds_store_b8 v220, v236 offset:7168
	ds_store_b8 v220, v229 offset:7680
	ds_store_b8 v165, v160
	ds_store_b8 v165, v162 offset:512
	ds_store_b8 v165, v163 offset:1024
	ds_store_b8 v165, v164 offset:1536
	ds_store_b8 v165, v166 offset:2048
	ds_store_b8 v165, v198 offset:2560
	ds_store_b8 v165, v199 offset:3072
	ds_store_b8 v165, v200 offset:3584
	ds_store_b8 v165, v201 offset:4096
	ds_store_b8 v165, v202 offset:4608
	ds_store_b8 v165, v203 offset:5120
	ds_store_b8 v165, v206 offset:5632
	ds_store_b8 v165, v243 offset:6144
	ds_store_b8 v165, v238 offset:6656
	ds_store_b8 v165, v237 offset:7168
	ds_store_b8 v165, v5 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[4:5], off, off offset:360
	scratch_load_b64 v[6:7], off, off offset:368
	scratch_load_b64 v[129:130], off, off offset:384
	scratch_load_b64 v[162:163], off, off offset:524
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[229:232], v132 offset1:8
	.loc	1 1186 29                       ; ragged.py:1186:29
	scratch_load_b64 v[7:8], off, off offset:376 ; 8-byte Folded Reload
	v_mov_b32_e32 v164, v255
	scratch_load_b32 v166, off, off offset:520 ; 4-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[229:230], v[0:1], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[229:230], v[2:3], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[229:230], v[196:197], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[229:230], v[194:195], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[231:232], v[0:1], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[231:232], v[2:3], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[231:232], v[196:197], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[231:232], v[194:195], v[121:128] neg_lo:[1,1,0]
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v229, v129, v222
	scratch_load_b64 v[129:130], off, off offset:392 ; 8-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v8, v217 :: v_dual_add_nc_u32 v7, v7, v222
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v230, v129, v222
	scratch_load_b64 v[129:130], off, off offset:400 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v231, v129, v222
	scratch_load_b64 v[129:130], off, off offset:408 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v232, v129, v222
	scratch_load_b64 v[129:130], off, off offset:416 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v233, v129, v222
	scratch_load_b64 v[129:130], off, off offset:424 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v234, v129, v222
	scratch_load_b64 v[129:130], off, off offset:432 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v235, v129, v222
	scratch_load_b64 v[129:130], off, off offset:440 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v236, v129, v222
	scratch_load_b64 v[129:130], off, off offset:448 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v237, v129, v222
	scratch_load_b64 v[129:130], off, off offset:456 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v238, v129, v222
	scratch_load_b64 v[129:130], off, off offset:464 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v239, v129, v222
	scratch_load_b64 v[129:130], off, off offset:472 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v240, v129, v222
	scratch_load_b64 v[129:130], off, off offset:480 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v241, v129, v222
	scratch_load_b64 v[129:130], off, off offset:488 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e32 v241, 0x80000000, v241, vcc_lo
	v_dual_cndmask_b32 v232, 0x80000000, v232 :: v_dual_add_nc_u32 v5, v4, v222
	v_dual_mov_b32 v4, v216 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_add_nc_u32 v242, v129, v222
	.loc	1 1186 29                       ; ragged.py:1186:29
	scratch_load_b64 v[129:130], off, off offset:496 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v243, v129, v222
	scratch_load_b64 v[129:130], off, off offset:504 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v130, v254
	v_add_nc_u32_e32 v254, v162, v222
	scratch_load_b64 v[162:163], off, off offset:532 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_dual_cndmask_b32 v243, 0x80000000, v243 :: v_dual_cndmask_b32 v234, 0x80000000, v234
	v_cndmask_b32_e32 v254, 0x80000000, v254, vcc_lo
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v244, v129, v222
	v_mov_b32_e32 v129, v253
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v253, v162, v222
	scratch_load_b64 v[162:163], off, off offset:540 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v228, v162, v222
	scratch_load_b64 v[162:163], off, off offset:548 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_dual_cndmask_b32 v228, 0x80000000, v228 :: v_dual_cndmask_b32 v235, 0x80000000, v235
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v223, v162, v222
	scratch_load_b64 v[162:163], off, off offset:556 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_dual_cndmask_b32 v223, 0x80000000, v223 :: v_dual_cndmask_b32 v238, 0x80000000, v238
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v255, v162, v222
	scratch_load_b64 v[162:163], off, off offset:564 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_dual_cndmask_b32 v255, 0x80000000, v255 :: v_dual_cndmask_b32 v240, 0x80000000, v240
	v_cndmask_b32_e32 v231, 0x80000000, v231, vcc_lo
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v217, v162, v222
	scratch_load_b64 v[162:163], off, off offset:572 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_dual_cndmask_b32 v217, 0x80000000, v217 :: v_dual_cndmask_b32 v242, 0x80000000, v242
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v211, v162, v222
	scratch_load_b64 v[162:163], off, off offset:580 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_dual_cndmask_b32 v211, 0x80000000, v211 :: v_dual_cndmask_b32 v244, 0x80000000, v244
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v233, 0x80000000, v233 :: v_dual_add_nc_u32 v216, v162, v222
	.loc	1 1186 29                       ; ragged.py:1186:29
	scratch_load_b64 v[162:163], off, off offset:588 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e32 v216, 0x80000000, v216, vcc_lo
	v_dual_cndmask_b32 v237, 0x80000000, v237 :: v_dual_add_nc_u32 v6, v6, v222
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v208, v162, v222
	scratch_load_b64 v[162:163], off, off offset:596 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_dual_cndmask_b32 v208, 0x80000000, v208 :: v_dual_cndmask_b32 v239, 0x80000000, v239
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v210, v162, v222
	scratch_load_b64 v[162:163], off, off offset:604 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e32 v210, 0x80000000, v210, vcc_lo
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v212, v162, v222
	scratch_load_b64 v[162:163], off, off offset:612 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e32 v212, 0x80000000, v212, vcc_lo
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v226, v162, v222
	scratch_load_b64 v[162:163], off, off offset:620 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v163, v218 :: v_dual_cndmask_b32 v226, 0x80000000, v226
	v_add_nc_u32_e32 v222, v162, v222
	v_dual_mov_b32 v162, v161 :: v_dual_cndmask_b32 v253, 0x80000000, v253
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e32 v236, 0x80000000, v236, vcc_lo
	v_dual_cndmask_b32 v230, 0x80000000, v230 :: v_dual_cndmask_b32 v229, 0x80000000, v229
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v222, 0x80000000, v222, vcc_lo
	s_clause 0x1f
	buffer_load_u8 v5, v5, s[8:11], 0 offen
	buffer_load_u8 v7, v7, s[8:11], 0 offen
	buffer_load_u8 v207, v230, s[8:11], 0 offen
	buffer_load_u8 v213, v232, s[8:11], 0 offen
	buffer_load_u8 v206, v234, s[8:11], 0 offen
	buffer_load_u8 v218, v236, s[8:11], 0 offen
	buffer_load_u8 v203, v238, s[8:11], 0 offen
	buffer_load_u8 v201, v240, s[8:11], 0 offen
	buffer_load_u8 v242, v242, s[8:11], 0 offen
	buffer_load_u8 v244, v244, s[8:11], 0 offen
	buffer_load_u8 v253, v253, s[8:11], 0 offen
	buffer_load_u8 v223, v223, s[8:11], 0 offen
	buffer_load_u8 v217, v217, s[8:11], 0 offen
	buffer_load_u8 v216, v216, s[8:11], 0 offen
	buffer_load_u8 v210, v210, s[8:11], 0 offen
	buffer_load_u8 v226, v226, s[8:11], 0 offen
	buffer_load_u8 v202, v233, s[8:11], 0 offen
	buffer_load_u8 v198, v231, s[8:11], 0 offen
	buffer_load_u8 v199, v229, s[8:11], 0 offen
	buffer_load_u8 v6, v6, s[8:11], 0 offen
	buffer_load_u8 v241, v241, s[8:11], 0 offen
	buffer_load_u8 v200, v239, s[8:11], 0 offen
	buffer_load_u8 v160, v237, s[8:11], 0 offen
	buffer_load_u8 v161, v235, s[8:11], 0 offen
	buffer_load_u8 v255, v255, s[8:11], 0 offen
	buffer_load_u8 v228, v228, s[8:11], 0 offen
	buffer_load_u8 v254, v254, s[8:11], 0 offen
	buffer_load_u8 v243, v243, s[8:11], 0 offen
	buffer_load_u8 v222, v222, s[8:11], 0 offen
	buffer_load_u8 v212, v212, s[8:11], 0 offen
	buffer_load_u8 v208, v208, s[8:11], 0 offen
	buffer_load_u8 v211, v211, s[8:11], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v229, off, off
	scratch_load_b32 v237, off, off offset:4
	ds_load_2addr_stride64_b64 v[233:236], v166 offset1:8
	s_mov_b32 s10, 32
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_and_b32 vcc_lo, exec_lo, s15
	s_mov_b32 s15, 0
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(1)
	ds_load_2addr_stride64_b64 v[229:232], v229 offset1:8
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[237:240], v237 offset1:8
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v220, v5
	ds_store_b8 v220, v7 offset:512
	ds_store_b8 v220, v207 offset:1024
	ds_store_b8 v220, v213 offset:1536
	ds_store_b8 v220, v206 offset:2048
	ds_store_b8 v220, v218 offset:2560
	ds_store_b8 v220, v203 offset:3072
	ds_store_b8 v220, v201 offset:3584
	ds_store_b8 v220, v242 offset:4096
	ds_store_b8 v220, v244 offset:4608
	ds_store_b8 v220, v253 offset:5120
	ds_store_b8 v220, v223 offset:5632
	ds_store_b8 v220, v217 offset:6144
	ds_store_b8 v220, v216 offset:6656
	ds_store_b8 v220, v210 offset:7168
	ds_store_b8 v220, v226 offset:7680
	ds_store_b8 v165, v6
	ds_store_b8 v165, v199 offset:512
	ds_store_b8 v165, v198 offset:1024
	ds_store_b8 v165, v202 offset:1536
	ds_store_b8 v165, v161 offset:2048
	ds_store_b8 v165, v160 offset:2560
	ds_store_b8 v165, v200 offset:3072
	ds_store_b8 v165, v241 offset:3584
	ds_store_b8 v165, v243 offset:4096
	ds_store_b8 v165, v254 offset:4608
	ds_store_b8 v165, v228 offset:5120
	ds_store_b8 v165, v255 offset:5632
	ds_store_b8 v165, v211 offset:6144
	ds_store_b8 v165, v208 offset:6656
	ds_store_b8 v165, v212 offset:7168
	ds_store_b8 v165, v222 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[241:244], v132 offset1:8
	v_mov_b32_e32 v216, v4
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v4, v135, v139, 0xc0c0004
	v_perm_b32 v5, v191, v190, 0xc0c0004
	v_mov_b32_e32 v217, v8
	scratch_load_b32 v8, off, off offset:260 ; 4-byte Folded Reload
	v_perm_b32 v6, v143, v144, 0xc0c0004
	v_perm_b32 v7, v185, v184, 0xc0c0004
	v_dual_mov_b32 v253, v129 :: v_dual_mov_b32 v254, v130
	v_perm_b32 v130, v151, v153, 0xc0c0004
	v_dual_mov_b32 v218, v163 :: v_dual_mov_b32 v161, v162
	v_mov_b32_e32 v255, v164
	v_mov_b32_e32 v226, v136
	v_dual_mov_b32 v220, v140 :: v_dual_mov_b32 v223, v141
	v_mov_b32_e32 v213, v145
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[241:242], v[0:1], v[245:252] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[243:244], v[0:1], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[241:242], v[2:3], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[243:244], v[2:3], v[25:32] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v0, v189, v188, 0xc0c0004
	v_perm_b32 v1, v174, v172, 0xc0c0004
	v_perm_b32 v2, v131, v134, 0xc0c0004
	v_perm_b32 v3, v227, v221, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[33:40], v[241:242], v[196:197], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[243:244], v[196:197], v[41:48] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v1, v1, 16, v0
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[49:56], v[241:242], v[194:195], v[49:56] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v0, v3, 16, v2
	v_perm_b32 v2, v183, v215, 0xc0c0004
	v_perm_b32 v3, v168, v148, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[57:64], v[243:244], v[194:195], v[57:64] neg_lo:[1,1,0]
	v_mov_b32_e32 v227, v137
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[65:72], v[229:230], v[0:1], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[231:232], v[0:1], v[73:80] neg_lo:[1,1,0]
	v_lshl_or_b32 v3, v3, 16, v2
	v_lshl_or_b32 v2, v5, 16, v4
	scratch_load_b32 v5, off, off offset:296 ; 4-byte Folded Reload
	v_perm_b32 v4, v178, v175, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[81:88], v[229:230], v[2:3], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[231:232], v[2:3], v[89:96] neg_lo:[1,1,0]
	s_waitcnt vmcnt(1)
	v_perm_b32 v129, v8, v133, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v5, v156, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v5, v5, 16, v4
	v_lshl_or_b32 v4, v7, 16, v6
	v_perm_b32 v6, v225, v209, 0xc0c0004
	v_perm_b32 v7, v181, v205, 0xc0c0004
	v_mov_b32_e32 v225, v138
	v_wmma_i32_16x16x16_iu4 v[97:104], v[229:230], v[4:5], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[231:232], v[4:5], v[105:112] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v6, v7, 16, v6
	v_lshl_or_b32 v7, v129, 16, v130
	v_wmma_i32_16x16x16_iu4 v[113:120], v[229:230], v[6:7], v[113:120] neg_lo:[1,1,0]
	s_clause 0x3                            ; 28-byte Folded Reload
	scratch_load_b64 v[228:229], off, off offset:24
	scratch_load_b64 v[229:230], off, off offset:32
	scratch_load_b64 v[221:222], off, off offset:16
	scratch_load_b32 v222, off, off
	v_wmma_i32_16x16x16_iu4 v[121:128], v[231:232], v[6:7], v[121:128] neg_lo:[1,1,0]
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[230:231], off, off offset:40
	scratch_load_b64 v[231:232], off, off offset:48
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(2)
	ds_load_2addr_stride64_b64 v[129:132], v222 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[129:130], v[4:5], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[131:132], v[4:5], v[41:48] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v4, off, off offset:292
	scratch_load_b32 v5, off, off offset:308
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[49:56], v[129:130], v[6:7], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[131:132], v[6:7], v[57:64] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v7, off, off offset:204
	scratch_load_b32 v8, off, off offset:208
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[245:252], v[129:130], v[0:1], v[245:252] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[129:130], v[2:3], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[131:132], v[0:1], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[131:132], v[2:3], v[25:32] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:288
	scratch_load_b32 v3, off, off offset:264
	scratch_load_b32 v2, off, off offset:152
	v_perm_b32 v1, v224, v182, 0xc0c0004
	v_mov_b32_e32 v224, v154
	s_waitcnt vmcnt(5)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:220
	scratch_load_b32 v6, off, off offset:228
	s_waitcnt vmcnt(5)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v8, off, off offset:236
	scratch_load_b32 v129, off, off offset:252
	s_waitcnt vmcnt(4)
	v_perm_b32 v2, v2, v146, 0xc0c0004
	s_waitcnt vmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	scratch_load_b32 v6, off, off offset:280 ; 4-byte Folded Reload
	v_perm_b32 v0, v0, v142, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_perm_b32 v8, v129, v8, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v129, off, off offset:188
	scratch_load_b32 v130, off, off offset:196
	v_perm_b32 v3, v149, v3, 0xc0c0004
	v_lshl_or_b32 v1, v1, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v0, v3, 16, v2
	v_perm_b32 v2, v193, v192, 0xc0c0004
	v_perm_b32 v3, v179, v177, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[65:72], v[233:234], v[0:1], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[235:236], v[0:1], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v3, v3, 16, v2
	v_lshl_or_b32 v2, v5, 16, v4
	v_perm_b32 v4, v187, v186, 0xc0c0004
	v_perm_b32 v5, v171, v169, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[81:88], v[233:234], v[2:3], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[235:236], v[2:3], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v5, v5, 16, v4
	s_waitcnt vmcnt(2)
	v_perm_b32 v6, v6, v155, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	v_lshl_or_b32 v4, v7, 16, v6
	v_perm_b32 v6, v214, v180, 0xc0c0004
	v_perm_b32 v7, v152, v157, 0xc0c0004
	scratch_load_b64 v[214:215], off, off offset:8 ; 8-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[97:104], v[233:234], v[4:5], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[235:236], v[4:5], v[105:112] neg_lo:[1,1,0]
	v_lshl_or_b32 v7, v7, 16, v6
	v_lshl_or_b32 v6, v129, 16, v8
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[129:132], v166 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[113:120], v[233:234], v[6:7], v[113:120] neg_lo:[1,1,0]
	scratch_load_b64 v[232:233], off, off offset:56 ; 8-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[121:128], v[235:236], v[6:7], v[121:128] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[129:130], v[0:1], v[245:252] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[131:132], v[0:1], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[129:130], v[2:3], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[131:132], v[2:3], v[25:32] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:200
	scratch_load_b32 v2, off, off offset:268
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[33:40], v[129:130], v[4:5], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[131:132], v[4:5], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[129:130], v[6:7], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[131:132], v[6:7], v[57:64] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v5, off, off offset:276
	scratch_load_b32 v6, off, off offset:284
	scratch_load_b32 v7, off, off offset:248
	scratch_load_b32 v8, off, off offset:256
	scratch_load_b32 v0, off, off offset:272
	scratch_load_b32 v3, off, off offset:304
	s_waitcnt vmcnt(6)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x2                            ; 20-byte Folded Reload
	scratch_load_b32 v2, off, off offset:156
	scratch_load_b64 v[233:234], off, off offset:64
	scratch_load_b64 v[234:235], off, off offset:72
	s_waitcnt vmcnt(7)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt vmcnt(5)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	s_waitcnt vmcnt(4)
	v_perm_b32 v0, v147, v0, 0xc0c0004
	s_waitcnt vmcnt(3)
	v_perm_b32 v3, v176, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v1, 16, v0
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v2, v204, 0xc0c0004
	v_lshl_or_b32 v0, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:232
	scratch_load_b32 v3, off, off offset:244
	v_wmma_i32_16x16x16_iu4 v[65:72], v[237:238], v[0:1], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[239:240], v[0:1], v[73:80] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:176
	scratch_load_b32 v4, off, off offset:184
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	v_perm_b32 v4, v173, v170, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v3, v3, 16, v2
	v_lshl_or_b32 v2, v5, 16, v4
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v4, off, off offset:212
	scratch_load_b32 v5, off, off offset:216
	v_wmma_i32_16x16x16_iu4 v[81:88], v[237:238], v[2:3], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[239:240], v[2:3], v[89:96] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:168
	scratch_load_b32 v6, off, off offset:172
	s_waitcnt vmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	v_perm_b32 v6, v150, v159, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v5, v5, 16, v4
	v_lshl_or_b32 v4, v7, 16, v6
	s_clause 0x3                            ; 20-byte Folded Reload
	scratch_load_b32 v7, off, off offset:224
	scratch_load_b32 v8, off, off offset:240
	scratch_load_b32 v6, off, off offset:300
	scratch_load_b64 v[235:236], off, off offset:80
	v_wmma_i32_16x16x16_iu4 v[97:104], v[237:238], v[4:5], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[239:240], v[4:5], v[105:112] neg_lo:[1,1,0]
	s_waitcnt vmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v8, off, off offset:180
	scratch_load_b32 v129, off, off offset:192
	s_waitcnt vmcnt(3)
	v_perm_b32 v6, v158, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v6, v7, 16, v6
	s_waitcnt vmcnt(0)
	v_perm_b32 v8, v129, v8, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v129, off, off offset:160
	scratch_load_b32 v130, off, off offset:164
	s_waitcnt vmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v7, v129, 16, v8
	v_wmma_i32_16x16x16_iu4 v[113:120], v[237:238], v[6:7], v[113:120] neg_lo:[1,1,0]
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[236:237], off, off offset:88
	scratch_load_b64 v[237:238], off, off offset:96
	v_wmma_i32_16x16x16_iu4 v[121:128], v[239:240], v[6:7], v[121:128] neg_lo:[1,1,0]
	s_clause 0x7                            ; 56-byte Folded Reload
	scratch_load_b64 v[238:239], off, off offset:104
	scratch_load_b64 v[239:240], off, off offset:112
	scratch_load_b64 v[240:241], off, off offset:120
	scratch_load_b64 v[241:242], off, off offset:128
	scratch_load_b64 v[242:243], off, off offset:136
	scratch_load_b64 v[243:244], off, off offset:144
	scratch_load_b32 v244, off, off offset:4
	scratch_load_b32 v215, off, off offset:512
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(1)
	ds_load_2addr_stride64_b64 v[129:132], v244 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[129:130], v[0:1], v[245:252] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[131:132], v[0:1], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[129:130], v[2:3], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[131:132], v[2:3], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[129:130], v[4:5], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[131:132], v[4:5], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[129:130], v[6:7], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[131:132], v[6:7], v[57:64] neg_lo:[1,1,0]
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_vccnz .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v130, v73
	v_cvt_f32_i32_e32 v147, v74
	v_cvt_f32_i32_e32 v154, v83
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v74, v22
	v_cvt_f32_i32_e32 v73, v23
	v_cvt_f32_i32_e32 v83, v36
	v_cvt_f32_i32_e32 v23, v43
	v_cvt_f32_i32_e32 v22, v44
	v_cvt_f32_i32_e32 v36, v55
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v55, off, off offset:1156
	scratch_load_b32 v43, off, off offset:1140
	scratch_load_b32 v44, off, off offset:1144
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v6, v30
	v_cvt_f32_i32_e32 v30, v40
	v_cvt_f32_i32_e32 v40, v51
	v_cvt_f32_i32_e32 v7, v31
	v_cvt_f32_i32_e32 v31, v39
	v_cvt_f32_i32_e32 v39, v52
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s10, s39, s38
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v136, v86
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s10, s10, s37
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v86, v33
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v155, v84
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v8, v32
	v_cvt_f32_i32_e32 v84, v35
	v_cvt_f32_i32_e32 v32, v38
	v_cvt_f32_i32_e32 v38, v53
	v_cvt_f32_i32_e32 v35, v56
	v_cvt_f32_i32_e32 v5, v29
	v_cvt_f32_i32_e32 v29, v57
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v148, v65
	v_cvt_f32_i32_e32 v149, v66
	v_cvt_f32_i32_e32 v150, v67
	v_cvt_f32_i32_e32 v129, v72
	v_cvt_f32_i32_e32 v152, v81
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v67, v9
	v_cvt_f32_i32_e32 v66, v10
	v_cvt_f32_i32_e32 v65, v11
	v_cvt_f32_i32_e32 v10, v12
	v_cvt_f32_i32_e32 v1, v13
	v_cvt_f32_i32_e32 v81, v18
	v_cvt_f32_i32_e32 v72, v24
	v_cvt_f32_i32_e32 v18, v25
	v_cvt_f32_i32_e32 v25, v41
	v_cvt_f32_i32_e32 v24, v42
	v_cvt_f32_i32_e32 v9, v45
	v_cvt_f32_i32_e32 v11, v46
	v_cvt_f32_i32_e32 v12, v47
	v_cvt_f32_i32_e32 v13, v48
	v_cvt_f32_i32_e32 v42, v49
	v_cvt_f32_i32_e32 v41, v50
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v137, v85
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v85, v34
	v_cvt_f32_i32_e32 v34, v37
	v_cvt_f32_i32_e32 v37, v54
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v151, v68
	v_cvt_f32_i32_e32 v142, v90
	v_cvt_f32_i32_e32 v90, v93
	v_cvt_f32_i32_e32 v156, v97
	v_cvt_f32_i32_e32 v159, v100
	v_cvt_f32_i32_e32 v160, v101
	v_cvt_f32_i32_e32 v101, v106
	v_cvt_f32_i32_e32 v100, v107
	v_cvt_f32_i32_e32 v93, v111
	v_cvt_f32_i32_e32 v107, v113
	v_cvt_f32_i32_e32 v111, v117
	v_cvt_f32_i32_e32 v113, v119
	v_cvt_f32_i32_e32 v106, v121
	v_cvt_f32_i32_e32 v97, v127
	v_cvt_f32_i32_e32 v153, v82
	v_cvt_f32_i32_e32 v141, v89
	v_cvt_f32_i32_e32 v89, v94
	v_cvt_f32_i32_e32 v0, v108
	v_cvt_f32_i32_e32 v94, v110
	v_cvt_f32_i32_e32 v108, v114
	v_cvt_f32_i32_e32 v110, v116
	v_cvt_f32_i32_e32 v135, v87
	v_cvt_f32_i32_e32 v87, v96
	v_cvt_f32_i32_e32 v96, v128
	v_cvt_f32_i32_e32 v134, v88
	v_cvt_f32_i32_e32 v88, v95
	v_cvt_f32_i32_e32 v95, v109
	v_cvt_f32_i32_e32 v109, v115
	v_cvt_f32_i32_e32 v143, v92
	v_cvt_f32_i32_e32 v92, v112
	v_cvt_f32_i32_e32 v112, v118
	v_cvt_f32_i32_e32 v114, v120
	v_cvt_f32_i32_e32 v140, v102
	v_cvt_f32_i32_e32 v102, v105
	v_cvt_f32_i32_e32 v105, v122
	v_cvt_f32_i32_e32 v133, v69
	v_cvt_f32_i32_e32 v131, v71
	v_cvt_f32_i32_e32 v157, v98
	v_cvt_f32_i32_e32 v132, v70
	v_cvt_f32_i32_e32 v158, v99
	v_cvt_f32_i32_e32 v139, v103
	v_cvt_f32_i32_e32 v138, v104
	v_cvt_f32_i32_e32 v145, v76
	v_cvt_f32_i32_e32 v146, v75
	v_cvt_f32_i32_e32 v144, v91
	v_cvt_f32_i32_e32 v104, v123
	v_cvt_f32_i32_e32 v103, v124
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v3, v15
	v_cvt_f32_i32_e32 v4, v16
	v_cvt_f32_i32_e32 v15, v61
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v197, v77
	v_cvt_f32_i32_e32 v196, v78
	v_cvt_f32_i32_e32 v195, v79
	v_cvt_f32_i32_e32 v194, v80
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v79, v20
	v_cvt_f32_i32_e32 v20, v63
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v99, v125
	v_cvt_f32_i32_e32 v98, v126
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v91, v245
	v_cvt_f32_i32_e32 v78, v246
	v_cvt_f32_i32_e32 v77, v247
	v_cvt_f32_i32_e32 v76, v248
	v_cvt_f32_i32_e32 v82, v17
	v_cvt_f32_i32_e32 v80, v19
	v_cvt_f32_i32_e32 v70, v250
	v_cvt_f32_i32_e32 v71, v249
	v_cvt_f32_i32_e32 v69, v251
	v_cvt_f32_i32_e32 v68, v252
	v_cvt_f32_i32_e32 v75, v21
	v_cvt_f32_i32_e32 v17, v26
	v_cvt_f32_i32_e32 v16, v27
	v_cvt_f32_i32_e32 v2, v14
	v_cvt_f32_i32_e32 v14, v28
	v_cvt_f32_i32_e32 v28, v58
	v_cvt_f32_i32_e32 v27, v59
	v_cvt_f32_i32_e32 v26, v60
	v_cvt_f32_i32_e32 v19, v62
	v_cvt_f32_i32_e32 v21, v64
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v33, v55, s10, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v43, s39, v43, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s39, v44, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v33, v33, s[20:23], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v43, 0x80000000, v43, s0
	v_cndmask_b32_e64 v44, 0x80000000, v44, s1
	s_clause 0x1
	buffer_load_u16 v43, v43, s[12:15], 0 offen
	buffer_load_u16 v51, v44, s[12:15], 0 offen
	scratch_load_b32 v44, off, off offset:1148 ; 4-byte Folded Reload
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v51, 16, v51
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s39, v44, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v5, v51, v5
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	buffer_load_u16 v52, v44, s[12:15], 0 offen
	scratch_load_b32 v44, off, off offset:1152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s39, v44, 1
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s39, s39, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s39, s30
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v44, 0x80000000, v44, s3
	buffer_load_u16 v53, v44, s[12:15], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v56, off, off offset:1160 ; 4-byte Folded Reload
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v56, v33
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0xc                            ; 52-byte Folded Reload
	scratch_load_b32 v57, off, off offset:1164
	scratch_load_b32 v202, off, off offset:1080
	scratch_load_b32 v193, off, off offset:1044
	scratch_load_b32 v177, off, off offset:980
	scratch_load_b32 v180, off, off offset:992
	scratch_load_b32 v190, off, off offset:1032
	scratch_load_b32 v187, off, off offset:1020
	scratch_load_b32 v179, off, off offset:988
	scratch_load_b32 v162, off, off offset:884
	scratch_load_b32 v169, off, off offset:948
	scratch_load_b32 v178, off, off offset:984
	scratch_load_b32 v163, off, off offset:888
	scratch_load_b32 v170, off, off offset:952
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v33, 16, v43
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(12)
	ds_load_b128 v[43:46], v57
	ds_load_b128 v[47:50], v57 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v33, v148
	s_clause 0xf                            ; 64-byte Folded Reload
	scratch_load_b32 v127, off, off offset:788
	scratch_load_b32 v117, off, off offset:700
	scratch_load_b32 v119, off, off offset:756
	scratch_load_b32 v121, off, off offset:764
	scratch_load_b32 v164, off, off offset:896
	scratch_load_b32 v172, off, off offset:960
	scratch_load_b32 v128, off, off offset:792
	scratch_load_b32 v148, off, off offset:796
	scratch_load_b32 v115, off, off offset:692
	scratch_load_b32 v116, off, off offset:696
	scratch_load_b32 v118, off, off offset:704
	scratch_load_b32 v120, off, off offset:760
	scratch_load_b32 v122, off, off offset:768
	scratch_load_b32 v171, off, off offset:956
	scratch_load_b32 v189, off, off offset:1028
	scratch_load_b32 v186, off, off offset:1016
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(25) lgkmcnt(1)
	v_dual_fmac_f32 v177, v54, v43 :: v_dual_lshlrev_b32 v52, 16, v52
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v33, v149
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v149, off, off offset:800
	scratch_load_b32 v203, off, off offset:1084
	scratch_load_b32 v198, off, off offset:1060
	scratch_load_b32 v201, off, off offset:1076
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(22)
	v_fmac_f32_e32 v178, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v33, v150
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v150, off, off offset:852
	scratch_load_b32 v192, off, off offset:1040
	scratch_load_b32 v188, off, off offset:1024
	scratch_load_b32 v191, off, off offset:1036
	scratch_load_b32 v185, off, off offset:1012
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v180, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v33, v151
	scratch_load_b32 v151, off, off offset:856 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v15, v53, v15
	v_mul_f32_e32 v1, v33, v1
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v179, v54, v46 :: v_dual_mul_f32 v54, v51, v152
	scratch_load_b32 v152, off, off offset:860 ; 4-byte Folded Reload
	v_fmac_f32_e32 v162, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v153
	scratch_load_b32 v153, off, off offset:864 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(29)
	v_dual_fmac_f32 v163, v54, v44 :: v_dual_mul_f32 v54, v51, v154
	scratch_load_b32 v154, off, off offset:892 ; 4-byte Folded Reload
	s_waitcnt vmcnt(24)
	v_fmac_f32_e32 v164, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v155
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v154, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v156
	scratch_load_b32 v156, off, off offset:916 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v127, v54, v43 :: v_dual_mul_f32 v54, v52, v157
	scratch_load_b32 v157, off, off offset:920 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v52, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v9, v52, v9 :: v_dual_fmac_f32 v128, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v158
	scratch_load_b32 v158, off, off offset:924 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v149, v54, v45 :: v_dual_mul_f32 v54, v52, v159
	scratch_load_b32 v159, off, off offset:928 ; 4-byte Folded Reload
	v_fmac_f32_e32 v148, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v53, v107
	scratch_load_b32 v107, off, off offset:660 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v115, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v108
	scratch_load_b32 v108, off, off offset:664 ; 4-byte Folded Reload
	v_mul_f32_e32 v54, v130, v33
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v116, v43, v44 :: v_dual_mul_f32 v43, v53, v109
	scratch_load_b32 v109, off, off offset:668 ; 4-byte Folded Reload
	v_dual_fmac_f32 v118, v43, v45 :: v_dual_mul_f32 v43, v53, v110
	scratch_load_b32 v110, off, off offset:672 ; 4-byte Folded Reload
	v_fmac_f32_e32 v117, v43, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v33, v133
	scratch_load_b32 v133, off, off offset:820 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v169, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v33, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v170, v43, v48 :: v_dual_mul_f32 v43, v33, v131
	v_fmac_f32_e32 v171, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v33, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v172, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v137
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v150, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v136
	scratch_load_b32 v136, off, off offset:832 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v151, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v135
	scratch_load_b32 v135, off, off offset:828 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v152, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v134
	scratch_load_b32 v134, off, off offset:824 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v153, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v119, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v140
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v120, v43, v48 :: v_dual_mul_f32 v43, v52, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v121, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v138
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v122, v43, v50 :: v_dual_mul_f32 v43, v53, v111
	scratch_load_b32 v111, off, off offset:724 ; 4-byte Folded Reload
	s_waitcnt vmcnt(8)
	v_fmac_f32_e32 v107, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v112
	scratch_load_b32 v112, off, off offset:728 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v108, v43, v48 :: v_dual_mul_f32 v43, v53, v113
	scratch_load_b32 v113, off, off offset:732 ; 4-byte Folded Reload
	s_waitcnt vmcnt(8)
	v_fmac_f32_e32 v109, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v114
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(7)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v110, v43, v50
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[43:46], v57 offset:512
	ds_load_b128 v[47:50], v57 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v203, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v33, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v156, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v33, v146
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v157, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v33, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v158, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v141, v51
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v198, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v142
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v133, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v144
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v134, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v143
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v135, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v102, v52
	scratch_load_b32 v102, off, off offset:640 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v192, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v101
	scratch_load_b32 v101, off, off offset:636 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v111, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v100
	scratch_load_b32 v100, off, off offset:632 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v113, v0, v46 :: v_dual_mul_f32 v0, v106, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v188, v0, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v53, v105
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v100, v0, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v53, v104
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v101, v0, v45 :: v_dual_mul_f32 v0, v53, v103
	scratch_load_b32 v103, off, off offset:736 ; 4-byte Folded Reload
	v_fmac_f32_e32 v102, v0, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v33, v197
	scratch_load_b32 v197, off, off offset:1064 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v159, v0, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v196, v33
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v202, v0, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v195, v33
	scratch_load_b32 v195, off, off offset:1052 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v201, v0, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v194, v33
	scratch_load_b32 v194, off, off offset:1048 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v197, v0, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v51, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v136, v0, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v89, v51
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v195, v0, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v88, v51
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v194, v0, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v87, v51
	scratch_load_b32 v87, off, off offset:628 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v112, v54, v45 :: v_dual_fmac_f32 v193, v0, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v52, v95
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v103, v0, v47 :: v_dual_mul_f32 v0, v94, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v191, v0, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v93, v52
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v190, v0, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v92, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v189, v0, v50 :: v_dual_mul_f32 v0, v53, v99
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v87, v0, v47 :: v_dual_mul_f32 v0, v98, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v187, v0, v48 :: v_dual_mul_f32 v0, v97, v53
	v_fmac_f32_e32 v186, v0, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v96, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v185, v0, v50 :: v_dual_add_nc_u32 v0, s33, v55
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v0, v0, s10, 1
	buffer_load_u16 v0, v0, s[20:23], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v56, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1f                           ; 128-byte Folded Reload
	scratch_load_b32 v184, off, off offset:1008
	scratch_load_b32 v183, off, off offset:1004
	scratch_load_b32 v181, off, off offset:996
	scratch_load_b32 v182, off, off offset:1000
	scratch_load_b32 v176, off, off offset:976
	scratch_load_b32 v175, off, off offset:972
	scratch_load_b32 v173, off, off offset:964
	scratch_load_b32 v174, off, off offset:968
	scratch_load_b32 v155, off, off offset:912
	scratch_load_b32 v168, off, off offset:944
	scratch_load_b32 v167, off, off offset:940
	scratch_load_b32 v166, off, off offset:936
	scratch_load_b32 v160, off, off offset:932
	scratch_load_b32 v147, off, off offset:908
	scratch_load_b32 v146, off, off offset:904
	scratch_load_b32 v145, off, off offset:900
	scratch_load_b32 v132, off, off offset:816
	scratch_load_b32 v131, off, off offset:812
	scratch_load_b32 v129, off, off offset:804
	scratch_load_b32 v130, off, off offset:808
	scratch_load_b32 v126, off, off offset:784
	scratch_load_b32 v125, off, off offset:780
	scratch_load_b32 v123, off, off offset:772
	scratch_load_b32 v124, off, off offset:776
	scratch_load_b32 v99, off, off offset:720
	scratch_load_b32 v114, off, off offset:752
	scratch_load_b32 v106, off, off offset:748
	scratch_load_b32 v105, off, off offset:744
	scratch_load_b32 v104, off, off offset:740
	scratch_load_b32 v98, off, off offset:716
	scratch_load_b32 v95, off, off offset:712
	scratch_load_b32 v94, off, off offset:708
	s_clause 0xc                            ; 52-byte Folded Reload
	scratch_load_b32 v144, off, off offset:880
	scratch_load_b32 v143, off, off offset:876
	scratch_load_b32 v142, off, off offset:872
	scratch_load_b32 v141, off, off offset:868
	scratch_load_b32 v140, off, off offset:848
	scratch_load_b32 v139, off, off offset:844
	scratch_load_b32 v137, off, off offset:836
	scratch_load_b32 v138, off, off offset:840
	scratch_load_b32 v93, off, off offset:688
	scratch_load_b32 v92, off, off offset:684
	scratch_load_b32 v90, off, off offset:676
	scratch_load_b32 v89, off, off offset:656
	scratch_load_b32 v88, off, off offset:652
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v33, v91
	scratch_load_b32 v91, off, off offset:680 ; 4-byte Folded Reload
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[43:46], v57
	ds_load_b128 v[47:50], v57 offset:16
	s_clause 0xb                            ; 48-byte Folded Reload
	scratch_load_b32 v212, off, off offset:1136
	scratch_load_b32 v211, off, off offset:1132
	scratch_load_b32 v210, off, off offset:1124
	scratch_load_b32 v209, off, off offset:1116
	scratch_load_b32 v208, off, off offset:1112
	scratch_load_b32 v207, off, off offset:1108
	scratch_load_b32 v206, off, off offset:1104
	scratch_load_b32 v204, off, off offset:1088
	scratch_load_b32 v205, off, off offset:1092
	scratch_load_b32 v200, off, off offset:1072
	scratch_load_b32 v199, off, off offset:1068
	scratch_load_b32 v196, off, off offset:1056
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(57) lgkmcnt(1)
	v_fmac_f32_e32 v184, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v33, v78
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(56)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v183, v0, v44 :: v_dual_mul_f32 v0, v33, v77
	s_waitcnt vmcnt(55)
	v_dual_fmac_f32 v181, v0, v45 :: v_dual_mul_f32 v0, v33, v76
	s_waitcnt vmcnt(54)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v182, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v51, v82
	scratch_load_b32 v82, off, off offset:1120 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(50)
	v_dual_fmac_f32 v155, v0, v43 :: v_dual_mul_f32 v0, v51, v81
	scratch_load_b32 v81, off, off offset:1128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(46)
	v_fmac_f32_e32 v147, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v51, v80
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(45)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v146, v0, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v51, v79
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(44)
	v_fmac_f32_e32 v145, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v86
	scratch_load_b32 v86, off, off offset:648 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(44)
	v_fmac_f32_e32 v132, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v85
	scratch_load_b32 v85, off, off offset:644 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(44)
	v_fmac_f32_e32 v131, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v84
	scratch_load_b32 v84, off, off offset:1096 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(44)
	v_fmac_f32_e32 v129, v0, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v83
	scratch_load_b32 v83, off, off offset:1100 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(44)
	v_fmac_f32_e32 v130, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v53, v42
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(39)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v99, v0, v43 :: v_dual_mul_f32 v0, v53, v41
	s_waitcnt vmcnt(34)
	v_fmac_f32_e32 v98, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v53, v40
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(33)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v95, v0, v45 :: v_dual_mul_f32 v0, v53, v39
	s_waitcnt vmcnt(32)
	v_fmac_f32_e32 v94, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v33, v71
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v176, v0, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v33, v70
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v175, v0, v48 :: v_dual_mul_f32 v0, v33, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v173, v0, v49 :: v_dual_mul_f32 v0, v33, v68
	v_fmac_f32_e32 v174, v0, v50
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v51, v75
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(31)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v144, v0, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v51, v74
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(30)
	v_dual_fmac_f32 v143, v0, v48 :: v_dual_mul_f32 v0, v51, v73
	s_waitcnt vmcnt(29)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v0, v49
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v51, v72
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(28)
	v_fmac_f32_e32 v141, v0, v50
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v126, v0, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v32
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v125, v0, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v123, v0, v49
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v30
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v124, v0, v50
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v53, v38
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(23)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v93, v0, v47 :: v_dual_mul_f32 v0, v53, v37
	s_waitcnt vmcnt(22)
	v_fmac_f32_e32 v92, v0, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v53, v36
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(18)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v91, v0, v49 :: v_dual_mul_f32 v0, v53, v35
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[34:37], v57 offset:512
	ds_load_b128 v[38:41], v57 offset:528
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v90, v0, v50
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v67, v33
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(17) lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v212, v0, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v33, v66
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v160, v1, v38
	v_fmac_f32_e32 v138, v5, v38
	v_fmac_f32_e32 v104, v9, v38
	v_fmac_f32_e32 v168, v0, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v33, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v167, v0, v36 :: v_dual_mul_f32 v0, v33, v10
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v12, v52
	v_mul_f32_e32 v12, v19, v53
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v166, v0, v37
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v18, v51
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(8)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v200, v12, v39
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v82, v0, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v51, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v140, v0, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v51, v16
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v139, v0, v36 :: v_dual_mul_f32 v0, v51, v14
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v21, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v137, v0, v37 :: v_dual_mul_f32 v0, v25, v52
	v_fmac_f32_e32 v196, v14, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v206, v0, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v24
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v114, v0, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v0, v52, v23 :: v_dual_fmac_f32 v85, v15, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v106, v0, v36
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v22
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v84, v10, v40 :: v_dual_fmac_f32 v105, v0, v37
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v29, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v204, v0, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v53, v28
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v89, v0, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v53, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v88, v0, v36
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v53, v26
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v86, v0, v37
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v2, v33
	v_mul_f32_e32 v2, v3, v33
	v_dual_mul_f32 v3, v4, v33 :: v_dual_mul_f32 v4, v6, v51
	v_mul_f32_e32 v6, v7, v51
	v_dual_mul_f32 v7, v8, v51 :: v_dual_mul_f32 v8, v11, v52
	v_mul_f32_e32 v11, v13, v52
	v_mul_f32_e32 v13, v20, v53
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v211, v0, v39
	v_dual_fmac_f32 v81, v2, v40 :: v_dual_fmac_f32 v210, v3, v41
	v_dual_fmac_f32 v209, v4, v39 :: v_dual_fmac_f32 v208, v6, v40
	v_fmac_f32_e32 v207, v7, v41
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v83, v8, v39
	v_fmac_f32_e32 v205, v11, v41
	v_fmac_f32_e32 v199, v13, v40
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v96, off, off offset:1172
	scratch_load_b32 v97, off, off offset:1176
	v_and_b32_e32 v1, 0x80, v161
	v_mov_b32_e32 v3, v213
.LBB0_9:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v212 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v182
	v_dual_mul_f32 v6, 0xbfb8aa3b, v210 :: v_dual_mul_f32 v35, 0xbfb8aa3b, v167
	v_dual_mul_f32 v2, 0xbfb8aa3b, v81 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v160
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v6
	v_dual_mul_f32 v24, 0xbfb8aa3b, v173 :: v_dual_mul_f32 v15, 0xbfb8aa3b, v207
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0x42800000, s1
	v_mul_f32_e32 v0, 0xbfb8aa3b, v211
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0x42800000, s0
	v_dual_fmac_f32 v10, 0xbfb8aa3b, v212 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v146
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v210
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v6, 0xbfb8aa3b, v81 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v147
	v_exp_f32_e32 v10, v10
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v14, v6
	v_exp_f32_e32 v13, v13
	v_mul_f32_e32 v37, 0xbfb8aa3b, v145
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v211
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s1
	v_mul_f32_e32 v45, 0xbfb8aa3b, v140
	v_ldexp_f32 v9, v10, v9
	v_mul_f32_e32 v10, 0xbfb8aa3b, v82
	v_exp_f32_e32 v2, v2
	v_ldexp_f32 v11, v14, v11
	v_dual_mul_f32 v14, 0xbfb8aa3b, v208 :: v_dual_mul_f32 v19, 0xbfb8aa3b, v205
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_dual_mul_f32 v10, 0xbfb8aa3b, v209 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v131
	v_ldexp_f32 v12, v13, v12
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v14
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v0, v2, v0
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v15
	v_dual_mul_f32 v28, 0xbfb8aa3b, v175 :: v_dual_fmac_f32 v13, 0xbfb8aa3b, v82
	v_cndmask_b32_e64 v16, 0, 0x42800000, s0
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v18, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v19
	v_exp_f32_e32 v13, v13
	v_dual_fmac_f32 v14, 0xbfb8aa3b, v209 :: v_dual_mul_f32 v59, 0xbfb8aa3b, v132
	v_dual_fmac_f32 v18, 0xbfb8aa3b, v207 :: v_dual_mul_f32 v43, 0xbfb8aa3b, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v23, 0, 0x42800000, s1
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v208
	v_exp_f32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v18, v18
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v205
	v_exp_f32_e32 v16, v16
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s0
	v_ldexp_f32 v13, v13, v2
	v_dual_mul_f32 v2, 0xbfb8aa3b, v206 :: v_dual_add_f32 v9, 1.0, v9
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v10, v14, v10
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_dual_mul_f32 v56, 0xbfb8aa3b, v126 :: v_dual_add_f32 v11, 1.0, v11
	v_ldexp_f32 v14, v16, v15
	v_ldexp_f32 v15, v18, v17
	v_mul_f32_e32 v16, 0xbfb8aa3b, v83
	v_mul_f32_e32 v18, 0xbfb8aa3b, v84
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v48, 0xbfb8aa3b, v155
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v18
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v9, v9, v212
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v206
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v20, 0, 0x42800000, s0
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s0
	v_exp_f32_e32 v17, v17
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v83
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, s1, v81, v11, v81
	v_rcp_f32_e32 v70, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v18, v18
	v_exp_f32_e32 v20, v20
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v17, v17, v2
	v_dual_mul_f32 v54, 0xbfb8aa3b, v104 :: v_dual_add_f32 v13, 1.0, v13
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v60, 0xbfb8aa3b, v106 :: v_dual_add_f32 v15, 1.0, v15
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v16, v18, v16
	v_ldexp_f32 v18, v20, v19
	v_mul_f32_e32 v20, 0xbfb8aa3b, v200
	v_ldexp_f32 v19, v23, v22
	v_mul_f32_e32 v23, 0xbfb8aa3b, v196
	v_mul_f32_e32 v2, 0xbfb8aa3b, v204
	v_mul_f32_e32 v22, 0xbfb8aa3b, v199
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v20
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v13, v13, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v49, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v23
	v_dual_mul_f32 v62, 0xbfb8aa3b, v114 :: v_dual_add_f32 v17, 1.0, v17
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v23, 0, 0x42800000, s0
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v200
	v_dual_mul_f32 v8, 0xbfb8aa3b, v184 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v174
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v196
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v65, v49
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, vcc_lo, v212, v9, v212
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v23
	v_dual_mul_f32 v4, 0xbfb8aa3b, v181 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v183
	v_dual_mul_f32 v6, 0xbfb8aa3b, v176 :: v_dual_mul_f32 v33, 0xbfb8aa3b, v141
	v_dual_mul_f32 v36, 0xbfb8aa3b, v168 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v139
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v32, v65, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v66, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v30, 0xbfb8aa3b, v166 :: v_dual_mul_f32 v41, 0xbfb8aa3b, v137
	v_ldexp_f32 v64, v68, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v11, v11, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v70, v65, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v46, 0xbfb8aa3b, v95
	v_dual_mul_f32 v52, 0xbfb8aa3b, v144 :: v_dual_mul_f32 v57, 0xbfb8aa3b, v94
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v73, v71, v70 :: v_dual_mul_f32 v40, 0xbfb8aa3b, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v55, 0xbfb8aa3b, v105 :: v_dual_mul_f32 v34, 0xbfb8aa3b, v142
	v_mul_f32_e32 v53, 0xbfb8aa3b, v125
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v66, v73, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v91
	v_dual_mul_f32 v38, 0xbfb8aa3b, v138 :: v_dual_mul_f32 v61, 0xbfb8aa3b, v99
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v68, v72, 1.0
	v_fmac_f32_e32 v73, v75, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v50, 0xbfb8aa3b, v130 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v92
	v_dual_mul_f32 v42, 0xbfb8aa3b, v129 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v76, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v199
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v66, v73, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v44, 0xbfb8aa3b, v123 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v89
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v79, v77, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v66, v66, v70, v73
	v_rcp_f32_e32 v70, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v49, 0xbfb8aa3b, v93
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v9, v66, v9, v212
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_ldexp_f32 v63, v67, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v0, v0, v211
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v20, 0xbfb8aa3b, v204 :: v_dual_add_f32 v63, 1.0, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v65, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v67, v65, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v58, 0xbfb8aa3b, v98
	v_ldexp_f32 v69, v20, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v74, v65
	v_div_scale_f32 v74, s0, v211, v0, v211
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v75, v74, v65
	v_fma_f32 v71, -v67, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v20, 0xbfb8aa3b, v86 :: v_dual_fmac_f32 v75, v71, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v68, v79, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v2, 0xbfb8aa3b, v85
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v67, v75, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v71, v72
	v_fma_f32 v71, -v80, v70, 1.0
	v_div_fmas_f32 v65, v66, v65, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v66, -v68, v79, v77
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v77, null, v14, v14, v208
	v_fmac_f32_e32 v70, v71, v70
	v_div_fmas_f32 v66, v66, v72, v79
	v_div_scale_f32 v71, null, v10, v10, v209
	v_div_fixup_f32 v0, v65, v0, v211
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v11, v66, v11, v81
	v_rcp_f32_e32 v66, v77
	v_rcp_f32_e32 v72, v71
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v77, v66, 1.0
	v_fmac_f32_e32 v66, v79, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v12, v12, v210
	v_div_scale_f32 v67, s2, v210, v12, v210
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v78, v76
	v_fma_f32 v73, -v76, v78, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v73, v78
	v_div_scale_f32 v73, s0, v82, v13, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v88
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v67, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v75, v73, v70
	v_fma_f32 v74, -v76, v68, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v65, -v80, v75, v73
	v_fmac_f32_e32 v68, v74, v78
	v_fma_f32 v74, -v71, v72, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v75, v65, v70
	v_div_scale_f32 v65, s1, v209, v10, v209
	v_fma_f32 v67, -v76, v68, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v72, v74, v72
	v_div_scale_f32 v76, null, v15, v15, v207
	v_div_fmas_f32 v67, v67, v78, v68
	v_fma_f32 v68, -v80, v75, v73
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v73, v65, v72
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v74, v76
	v_div_scale_f32 v80, null, v17, v17, v206
	v_div_fmas_f32 v68, v68, v70, v75
	v_fma_f32 v70, -v71, v73, v65
	v_div_scale_f32 v81, s0, v207, v15, v207
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v13, v68, v13, v82
	v_fmac_f32_e32 v73, v70, v72
	v_div_scale_f32 v78, s2, v208, v14, v208
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v76, v74, 1.0
	v_fma_f32 v65, -v71, v73, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v75, v78, v66
	v_div_fixup_f32 v12, v67, v12, v210
	v_fmac_f32_e32 v74, v79, v74
	v_rcp_f32_e32 v79, v80
	v_div_fmas_f32 v65, v65, v72, v73
	v_fma_f32 v67, -v77, v75, v78
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v81, v74
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v10, v65, v10, v209
	v_fmac_f32_e32 v75, v67, v66
	v_div_scale_f32 v70, null, v16, v16, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v80, v79, 1.0
	v_fma_f32 v67, -v76, v68, v81
	v_fma_f32 v72, -v77, v75, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v71, v70
	v_fmac_f32_e32 v79, v82, v79
	v_div_scale_f32 v82, s3, v206, v17, v206
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v66, v72, v66, v75
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v65, v66, v14, v208
	v_dual_fmac_f32 v68, v67, v74 :: v_dual_mul_f32 v67, v82, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v73, -v70, v71, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v76, v68, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v80, v67, v82
	v_fmac_f32_e32 v71, v73, v71
	v_div_scale_f32 v76, s1, v83, v16, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v68, v72, v74, v68
	v_fmac_f32_e32 v67, v75, v79
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v74, v76, v71
	v_div_scale_f32 v73, null, v18, v18, v84
	v_div_fixup_f32 v66, v68, v15, v207
	v_fma_f32 v14, -v80, v67, v82
	v_div_scale_f32 v68, null, v19, v19, v205
	v_fma_f32 v15, -v70, v74, v76
	v_rcp_f32_e32 v72, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v14, v14, v79, v67
	v_rcp_f32_e32 v67, v68
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v74, v15, v71
	v_div_scale_f32 v15, s0, v84, v18, v84
	v_div_fixup_f32 v77, v14, v17, v206
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v14, -v70, v74, v76
	v_fma_f32 v75, -v73, v72, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v68, v67, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v14, v14, v71, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v72, v75, v72
	v_div_scale_f32 v75, null, v69, v69, v204
	v_fmac_f32_e32 v67, v70, v67
	v_div_scale_f32 v70, null, v32, v32, v200
	v_div_fixup_f32 v79, v14, v16, v83
	v_mul_f32_e32 v17, v15, v72
	v_div_scale_f32 v74, s1, v205, v19, v205
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v14, v70
	v_rcp_f32_e32 v76, v75
	v_fma_f32 v71, -v73, v17, v15
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v83, null, v64, v64, v196
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v17, v71, v72
	v_div_scale_f32 v71, s2, v204, v69, v204
	v_fma_f32 v81, -v70, v14, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v75, v76, 1.0
	v_fma_f32 v15, -v73, v17, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v14, v81, v14
	v_mul_f32_e32 v16, v74, v67
	v_div_fmas_f32 v15, v15, v72, v17
	v_fmac_f32_e32 v76, v78, v76
	v_div_scale_f32 v78, null, v63, v63, v199
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v68, v16, v74
	v_div_fixup_f32 v84, v15, v18, v84
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v82, v78
	v_div_scale_f32 v18, s3, v199, v63, v199
	v_fmac_f32_e32 v16, v73, v67
	v_div_scale_f32 v73, s0, v200, v32, v200
	v_rcp_f32_e32 v72, v83
	v_fma_f32 v15, -v68, v16, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v81, -v78, v82, 1.0
	v_div_fmas_f32 v15, v15, v67, v16
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v82, v81, v82
	v_fma_f32 v68, -v83, v72, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v74, v15, v19, v205
	v_mul_f32_e32 v80, v71, v76
	v_fma_f32 v17, -v75, v80, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v80, v17, v76
	v_mul_f32_e32 v17, v73, v14
	v_fma_f32 v16, -v75, v80, v71
	v_mul_f32_e32 v71, v18, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v67, -v70, v17, v73
	v_fma_f32 v15, -v78, v71, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v17, v67, v14
	v_fmac_f32_e32 v71, v15, v82
	v_div_fmas_f32 v16, v16, v76, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v70, v17, v73
	v_div_fixup_f32 v67, v16, v69, v204
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v8, v8, v14, v17
	v_fma_f32 v14, -v78, v71, v18
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v184
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v202, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v8, v32, v200
	v_div_fmas_f32 v14, v14, v82, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, s0
	v_exp_f32_e32 v17, v69
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v63, v14, v63, v199
	v_fmac_f32_e32 v72, v68, v72
	v_div_scale_f32 v68, s1, v196, v64, v196
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0x42800000, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v19, v68, v72 :: v_dual_fmac_f32 v14, 0xbfb8aa3b, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v83, v19, v68
	v_fmac_f32_e32 v19, v15, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v83, v19, v68
	v_div_fmas_f32 v7, v15, v72, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	v_ldexp_f32 v5, v17, v16
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v203, v9
	v_mul_f32_e32 v15, v198, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v64, v7, v64, v196
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v5, v14
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v182
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v0, v0, v184
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v13, v194, v65 :: v_dual_mul_f32 v16, v201, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v9, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v68
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v5, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, vcc_lo, v184, v0, v184
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v65, 1.0, v4 :: v_dual_fmac_f32 v8, 0xbfb8aa3b, v181
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v17, v197, v12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v9, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v68, v69, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v12, v193, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v11, v192, v77 :: v_dual_add_f32 v70, 1.0, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v7, v69
	v_div_scale_f32 v66, null, v65, v65, v183
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v189, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v70, v70, v182
	v_mul_f32_e32 v76, v71, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v72, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v4, v187, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v73, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v68, v76, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v5, v186, v63 :: v_dual_mul_f32 v14, v195, v10
	v_mul_f32_e32 v10, v191, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v77, v69
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v78, -v66, v72, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v188, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v75, v74, 1.0
	v_div_scale_f32 v67, s0, v183, v65, v183
	v_fma_f32 v63, -v68, v76, v71
	v_fmac_f32_e32 v72, v78, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v74, v73, v74
	v_div_scale_f32 v73, null, v32, v32, v181
	v_div_fmas_f32 v63, v63, v69, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v67, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v69, v73
	v_div_scale_f32 v71, s1, v182, v70, v182
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v66, v68, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v6, v185, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v176
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v77, v71, v74
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v64, -v73, v69, 1.0
	v_fmac_f32_e32 v68, v76, v72
	v_div_fixup_f32 v0, v63, v0, v184
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v75, v77, v71
	v_fmac_f32_e32 v69, v64, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v66, v68, v67
	v_div_scale_f32 v67, s2, v181, v32, v181
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v77, v63, v74 :: v_dual_fmac_f32 v64, 0xbfb8aa3b, v175
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v28, v28, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v71, -v75, v77, v71
	v_div_fmas_f32 v66, v66, v72, v68
	v_mul_f32_e32 v68, v67, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_exp_f32_e32 v24, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v73, v68, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v64, v64, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v68, v28, v69
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v24, v24, v63
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v63, v76
	v_div_fmas_f32 v71, v71, v74, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v173
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v66, v65, v183
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v73, v68, v67
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v24, v71, v70, v182
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v65, v65, v175
	v_fma_f32 v71, -v76, v63, 1.0
	v_div_fmas_f32 v66, v66, v69, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v68, v70
	v_div_scale_f32 v69, s0, v176, v64, v176
	v_fmac_f32_e32 v63, v71, v63
	v_div_fixup_f32 v21, v66, v32, v181
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v67, v67, v72
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v69, v63
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v174
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v70, v68, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v76, v71, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v190, v84
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v72, v68
	v_div_scale_f32 v72, s1, v175, v65, v175
	v_div_scale_f32 v74, null, v67, v67, v173
	v_fmac_f32_e32 v71, v73, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v73, v72, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v66, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v76, v71, v69
	v_fma_f32 v76, -v70, v73, v72
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v32, v177, v0 :: v_dual_mul_f32 v21, v180, v21
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v63, v69, v63, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v76, v68
	v_fma_f32 v66, -v74, v75, 1.0
	v_div_scale_f32 v69, null, v0, v0, v174
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v63, v63, v64, v176
	v_fma_f32 v64, -v70, v73, v72
	v_fmac_f32_e32 v75, v66, v75
	v_div_scale_f32 v36, s0, v173, v67, v173
	v_rcp_f32_e32 v66, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v168
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v72, v36, v75
	v_div_fmas_f32 v35, v64, v68, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, s2
	v_exp_f32_e32 v71, v71
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v69, v66, 1.0
	v_div_fixup_f32 v35, v35, v65, v175
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v167
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v74, v72, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v73, v66
	v_div_scale_f32 v73, s1, v174, v0, v174
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v65, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v71, v70
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v65, v73, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v74, v72, v36
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v69, v65, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v166
	v_ldexp_f32 v64, v68, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v68, null, v74, v74, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v65, v30, v66 :: v_dual_add_f32 v64, 1.0, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v68
	v_div_fmas_f32 v29, v36, v75, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v69, v65, v73
	v_div_scale_f32 v76, null, v64, v64, v167
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v73, v76
	v_div_fmas_f32 v36, v36, v66, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v68, v71, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v30, v70
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v160
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, vcc_lo, v168, v74, v168
	v_fmac_f32_e32 v71, v75, v71
	v_div_fixup_f32 v0, v36, v0, v174
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v76, v73, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v72, v65, v71
	v_div_fixup_f32 v30, v29, v67, v173
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v172, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v66, v73
	v_div_scale_f32 v66, s0, v167, v64, v167
	v_div_scale_f32 v75, null, v70, v70, v166
	v_fma_f32 v0, -v68, v72, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v67, v66, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v69, v36, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v77, v75
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v169, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v0, v71
	v_fma_f32 v0, -v76, v67, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v63, 1.0, v69 :: v_dual_mul_f32 v24, v179, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v68, v72, v65
	v_fmac_f32_e32 v67, v0, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v68, null, v63, v63, v160
	v_fma_f32 v0, -v75, v77, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v65, v65, v71, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v28, v178, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v76, v67, v66
	v_fmac_f32_e32 v77, v0, v77
	v_rcp_f32_e32 v0, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v48, s1, v166, v70, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v155
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v66, v66, v73, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v67, v48, v77
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v72, -v68, v0, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v64, v66, v64, v167
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v75, v67, v48
	v_fmac_f32_e32 v0, v72, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, s0, v160, v63, v160
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v65, v65, v74, v168
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v147
	v_ldexp_f32 v37, v39, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v66, v77
	v_mul_f32_e32 v39, v73, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v72, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v68, v39, v73
	v_fma_f32 v48, -v75, v67, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v145
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v74, v74, v155
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v37, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v69
	v_ldexp_f32 v37, v72, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v170, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v48, v48, v77, v67
	v_fma_f32 v67, -v68, v39, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v146
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v31, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v75, v69, 1.0
	v_div_scale_f32 v66, null, v68, v68, v147
	v_div_fmas_f32 v0, v67, v0, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v37, v69
	v_rcp_f32_e32 v67, v66
	v_div_scale_f32 v73, vcc_lo, v155, v74, v155
	v_div_fixup_f32 v0, v0, v63, v160
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, s0, v147, v68, v147
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v159, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v39, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v39, v157, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v37, v48, v70, v166
	v_mul_f32_e32 v70, v73, v69
	v_fma_f32 v48, -v66, v67, 1.0
	v_div_scale_f32 v63, null, v72, v72, v145
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v75, v70, v73
	v_fmac_f32_e32 v67, v48, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v71, v63
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v156, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v78, null, v0, v0, v146
	v_fmac_f32_e32 v70, v76, v69
	v_dual_mul_f32 v64, v77, v67 :: v_dual_mul_f32 v37, v158, v37
	v_fma_f32 v65, -v75, v70, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v73, -v66, v64, v77
	v_rcp_f32_e32 v75, v78
	v_fma_f32 v76, -v63, v71, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v30, v171, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v52, v65, v69, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v73, v67
	v_fmac_f32_e32 v71, v76, v71
	v_div_scale_f32 v76, s1, v145, v72, v145
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v144
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v78, v75, 1.0
	v_fma_f32 v66, -v66, v64, v77
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s2
	v_exp_f32_e32 v69, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v76, v71
	v_fmac_f32_e32 v75, v73, v75
	v_div_scale_f32 v73, s2, v146, v0, v146
	v_div_fmas_f32 v40, v66, v67, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, s3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v64, v73, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s3
	v_ldexp_f32 v65, v69, v65
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v143
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v52, v52, v74, v155
	v_fma_f32 v74, -v63, v70, v76
	v_fma_f32 v34, -v78, v64, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v74, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v34, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v65, v65, v144
	v_fma_f32 v63, -v63, v70, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v142
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v63, v63, v71, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v78, v64, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v34, v66
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v33, v33, v75, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v70, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v67, v71, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v73, 0xbfb8aa3b, v141 :: v_dual_add_f32 v74, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v69, v71
	v_div_scale_f32 v69, vcc_lo, v144, v65, v144
	v_div_fixup_f32 v40, v40, v68, v147
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v76, null, v74, v74, v142
	v_mul_f32_e32 v77, v69, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v67, v77, v69
	v_fmac_f32_e32 v77, v68, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v77, v69
	v_div_fmas_f32 v67, v67, v71, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v162, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v34, v63, v72, v145
	v_rcp_f32_e32 v63, v76
	v_div_fixup_f32 v52, v67, v65, v144
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v140
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v76, v63, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v63, v68, v63
	v_div_scale_f32 v68, s1, v142, v74, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v77, v68, v63
	v_div_scale_f32 v70, null, v64, v64, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v47, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v76, v77, v68
	v_rcp_f32_e32 v75, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v77, v65, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v76, v77, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v70, v75, 1.0
	v_fmac_f32_e32 v75, v72, v75
	v_div_fixup_f32 v0, v33, v0, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v164, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v73, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, s0, v143, v64, v143
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_mul_f32 v69, v66, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, null, v0, v0, v141
	v_fma_f32 v73, -v70, v69, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v71, v72
	v_fmac_f32_e32 v69, v73, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v66, -v70, v69, v66
	v_div_scale_f32 v70, s2, v141, v0, v141
	v_fma_f32 v67, -v72, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v34, v154, v34 :: v_dual_fmac_f32 v71, v67, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v163, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v66, v66, v75, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v139
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v70, v71
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v67
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v63, v68, v63, v77
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v137
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v51
	v_ldexp_f32 v41, v41, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v72, v69, v70
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v69, v47, v71
	v_div_fixup_f32 v47, v66, v64, v143
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v67, v67, v140
	v_div_fixup_f32 v41, v63, v74, v142
	v_fma_f32 v63, -v72, v69, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v65, v76
	v_div_scale_f32 v68, null, v64, v64, v139
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v151, v47
	v_mul_f32_e32 v41, v152, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v66, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v76, v65, 1.0
	v_fmac_f32_e32 v65, v70, v65
	v_div_scale_f32 v70, s0, v140, v67, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v72, v70, v65
	v_div_fmas_f32 v63, v63, v71, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v68
	v_div_fixup_f32 v0, v63, v0, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v38, v153, v0 :: v_dual_fmac_f32 v71, 0xbfb8aa3b, v138
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v68, v69, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v73, v69
	v_div_scale_f32 v73, s1, v139, v64, v139
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v63, v71, v63
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v76, v72, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v0, v0, v137
	v_fmac_f32_e32 v72, v66, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v75, v74
	v_fma_f32 v70, -v76, v72, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v65, v70, v65, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, s0, v137, v0, v137
	v_fma_f32 v70, -v74, v75, 1.0
	v_mul_f32_e32 v66, v73, v69
	v_div_fixup_f32 v65, v65, v67, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v70, v75
	v_fma_f32 v76, -v68, v66, v73
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v132
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v76, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v68, v66, v73
	v_div_scale_f32 v68, null, v63, v63, v138
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v51, v67, v69, v66
	v_rcp_f32_e32 v70, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v59, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v51, v64, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v131
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v74, v69, v59
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v52, v150, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v72, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v68, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v64, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v73, v70
	v_div_scale_f32 v73, s1, v138, v63, v138
	v_fma_f32 v59, -v74, v69, v59
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v64, v73, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v67, v66
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v42, v59, v75, v69
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v50, -v68, v64, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v72, 0xbfb8aa3b, v130 :: v_dual_mul_f32 v51, v134, v51
	v_cndmask_b32_e64 v69, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v50, v70
	v_div_scale_f32 v76, null, v66, v66, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v50, v72
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v68, v64, v73
	v_rcp_f32_e32 v73, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v42, v0, v137
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v59, v59, v70, v64
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v50, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v59, v59, v63, v138
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v70, -v76, v73, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v63, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v69, 1.0, v50 :: v_dual_mul_f32 v50, v135, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v70, v73
	v_div_scale_f32 v70, s0, v131, v66, v131
	v_mul_f32_e32 v77, v70, v73
	v_div_scale_f32 v67, null, v74, v74, v132
	v_div_scale_f32 v64, vcc_lo, v132, v74, v132
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v63, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v67
	v_fma_f32 v63, -v76, v77, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v42, v136, v59 :: v_dual_fmac_f32 v77, v63, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v67, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v72, v75, v72
	v_div_scale_f32 v75, null, v69, v69, v130
	v_mul_f32_e32 v71, v64, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v78, v75
	v_fma_f32 v59, -v67, v71, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v71, v59, v72
	v_fma_f32 v63, -v75, v78, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v59, v133, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v67, v71, v64
	v_fmac_f32_e32 v78, v63, v78
	v_div_scale_f32 v63, s1, v130, v69, v130
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v64, v64, v72, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v63, v78
	v_fma_f32 v67, -v76, v77, v70
	v_div_scale_f32 v65, null, v0, v0, v129
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v56, v65
	v_div_fmas_f32 v67, v67, v73, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, s0, v129, v0, v129
	v_div_fixup_f32 v64, v64, v74, v132
	v_div_fixup_f32 v66, v67, v66, v131
	v_fma_f32 v67, -v75, v71, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v65, v56, 1.0
	v_fmac_f32_e32 v56, v72, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v126
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v53, v70
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v72, v72
	v_ldexp_f32 v44, v53, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v53, v73, v56
	v_fmac_f32_e32 v71, v67, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v65, v53, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v75, v71, v63
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v53, v44, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v44, v72, v70
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v65, -v65, v53, v73
	v_div_fmas_f32 v63, v63, v78, v71
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v124
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v53, v65, v56, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v76, s0, v125, v71, v125
	v_div_fixup_f32 v0, v53, v0, v129
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v123
	v_exp_f32_e32 v56, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v43, v68
	v_ldexp_f32 v43, v43, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v71, v71, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v65, v67
	v_fma_f32 v53, -v67, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v65, v53, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v53, v128, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v74, v74, v126
	v_div_scale_f32 v73, vcc_lo, v126, v74, v126
	v_mul_f32_e32 v66, v76, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v75
	v_fma_f32 v44, -v75, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v68, v44, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v44, v63, v69, v130
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v149, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v56, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v73, v68
	v_div_scale_f32 v63, null, v72, v72, v123
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v56, -v75, v69, v73
	v_rcp_f32_e32 v70, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v77, -v63, v70, 1.0
	v_fmac_f32_e32 v69, v56, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v127, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v77, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v75, v69, v73
	v_fma_f32 v73, -v67, v66, v76
	v_div_scale_f32 v77, s1, v123, v72, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v78, null, v0, v0, v124
	v_fmac_f32_e32 v66, v73, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v75, v78
	v_fma_f32 v67, -v67, v66, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v78, v75, 1.0
	v_fmac_f32_e32 v75, v73, v75
	v_div_fmas_f32 v62, v64, v68, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v77, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v62, v62, v74, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v114
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v63, v69, v77
	v_div_fmas_f32 v60, v67, v65, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, s3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	v_exp_f32_e32 v68, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v74, v70
	v_div_scale_f32 v73, s2, v124, v0, v124
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v44, v148, v44 :: v_dual_fmac_f32 v67, 0xbfb8aa3b, v106
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v65, v73, v75
	v_fma_f32 v63, -v63, v69, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s3
	v_ldexp_f32 v64, v68, v64
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v105
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v78, v65, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v63, v63, v70, v69
	v_fmac_f32_e32 v65, v55, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v67
	v_exp_f32_e32 v69, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v64, v64, v114
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v78, v65, v73
	v_div_fixup_f32 v60, v60, v71, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v70, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v55, v55, v66
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v54, v54, v75, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v69, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v67, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v104
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v54, v0, v124
	v_div_scale_f32 v69, null, v65, v65, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v68, v70
	v_div_scale_f32 v68, vcc_lo, v114, v64, v114
	v_rcp_f32_e32 v75, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v77, v68, v70
	v_fma_f32 v71, -v67, v77, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v55, v63, v72, v123
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v69, v75, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v54, v122, v0 :: v_dual_fmac_f32 v77, v71, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v74, v74, v105
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v73, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v72, v75
	v_fma_f32 v67, -v67, v77, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v63, v76
	v_div_scale_f32 v66, s0, v106, v65, v106
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v121, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v76, v63, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v63, v71, v63
	v_div_fmas_f32 v67, v67, v70, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, s1, v105, v74, v105
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v120, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v64, v67, v64, v114
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v77, v71, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v99
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v0, v0, v104
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v119, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v76, v77, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v61, v73
	v_fmac_f32_e32 v77, v62, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v76, v77, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v58, v58, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v73, v61, 1.0
	v_dual_mul_f32 v72, v66, v75 :: v_dual_fmac_f32 v61, v67, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v69, v72, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_dual_fmac_f32 v72, v70, v75 :: v_dual_fmac_f32 v67, 0xbfb8aa3b, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v66, -v69, v72, v66
	v_div_scale_f32 v69, s2, v104, v0, v104
	v_div_fmas_f32 v66, v66, v75, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	v_exp_f32_e32 v57, v67
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v65, v66, v65, v106
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v69, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v63, v71, v63, v77
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v57, v62
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v58, 1.0, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v94
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v73, v70, v69
	v_div_fixup_f32 v62, v63, v74, v105
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v58, v58, v99
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v75
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v76
	v_fmac_f32_e32 v70, v67, v61
	v_div_scale_f32 v67, null, v57, v57, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v63, -v73, v70, v69
	v_rcp_f32_e32 v73, v67
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v66, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v76, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v71, v69, v71
	v_div_fmas_f32 v61, v63, v61, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, s0, v99, v58, v99
	v_fma_f32 v72, -v67, v73, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v0, v61, v0, v104
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v69, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v73, v72, v73 :: v_dual_mul_f32 v46, v103, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v63, 0xbfb8aa3b, v95 :: v_dual_add_f32 v0, 1.0, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v76, v70, v69
	v_div_scale_f32 v72, s1, v98, v57, v98
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v63
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v63, v112, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v0, v0, v94
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v65, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v61, v74, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v66, v71
	v_mul_f32_e32 v66, v72, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v76, v70, v69
	v_fma_f32 v76, -v67, v66, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v69, v69, v71, v70
	v_fmac_f32_e32 v66, v76, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v49, s0, v94, v0, v94
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v111, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v75, v65, 1.0
	v_div_fixup_f32 v69, v69, v58, v99
	v_fma_f32 v58, -v67, v66, v72
	v_div_scale_f32 v67, null, v61, v61, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v62, v113, v62 :: v_dual_fmac_f32 v65, v64, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v64, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v27, v58, v73, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v73, v49, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v27, v57, v98
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v67, v64, 1.0
	v_fma_f32 v57, -v75, v73, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v92
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v74, v64
	v_div_scale_f32 v74, s1, v95, v61, v95
	v_fmac_f32_e32 v73, v57, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v57, v74, v64
	v_fma_f32 v49, -v75, v73, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v75, -v67, v57, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v58, v66, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v72, 0xbfb8aa3b, v93 :: v_dual_fmac_f32 v57, v75, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v75, 1.0, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	v_ldexp_f32 v26, v72, v71
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v77, s0, v92, v75, v92
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v91
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v49, v49, v65, v73
	v_fma_f32 v65, -v67, v57, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v26, v26, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, null, v75, v75, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v25, v66
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v90
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v72
	v_div_fmas_f32 v57, v65, v64, v57
	v_div_fixup_f32 v0, v49, v0, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s2
	s_delay_alu instid0(TRANS32_DEP_3)
	v_ldexp_f32 v58, v58, v71
	v_exp_f32_e32 v65, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v57, v57, v61, v95
	v_fma_f32 v76, -v66, v25, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v72, v74, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v61, v118, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v25, v76, v25
	v_div_scale_f32 v71, vcc_lo, v93, v26, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v74, v64, v74
	v_div_scale_f32 v78, null, v73, v73, v91
	v_mul_f32_e32 v76, v71, v25
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v58, v117, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v57, v77, v74
	v_rcp_f32_e32 v79, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v65, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v66, v76, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v65, v115, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, s2
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v49, v25
	v_fma_f32 v49, -v72, v57, v77
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v64, v116, v27 :: v_dual_fmac_f32 v69, 0xbfb8aa3b, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v66, v76, v71
	v_fmac_f32_e32 v57, v49, v74
	v_fma_f32 v49, -v78, v79, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v27, v25, v76
	v_fma_f32 v27, -v72, v57, v77
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v79, v49, v79
	v_div_scale_f32 v49, s1, v91, v73, v91
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v23, v27, v74, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v25, v26, v93
	v_div_scale_f32 v66, null, v0, v0, v90
	v_div_scale_f32 v74, s0, v90, v0, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v57, v66
	v_div_fixup_f32 v23, v23, v75, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v88
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v27, v49, v79 :: v_dual_fmac_f32 v72, 0xbfb8aa3b, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v22, -v78, v27, v49
	v_fma_f32 v20, -v66, v57, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v27, v22, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v69
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_exp_f32_e32 v2, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v20, v57
	v_fma_f32 v49, -v78, v27, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v22, v67
	v_exp_f32_e32 v67, v72
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v85
	v_ldexp_f32 v2, v2, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v49, v79, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v26, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v27, v73, v91
	v_div_scale_f32 v72, null, v22, v22, v89
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v67, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, s0, v88, v2, v88
	v_rcp_f32_e32 v69, v72
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v20, v26, v20
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v75, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v2, v2, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_mul_f32 v49, v74, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v75, v75, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v72, v69, 1.0
	v_div_scale_f32 v83, s2, v85, v20, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v66, v49, v74
	v_rcp_f32_e32 v76, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v49, v71, v57
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v71, v108, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v66, v49, v74
	v_rcp_f32_e32 v74, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v49, v66, v57, v49
	v_div_scale_f32 v57, null, v20, v20, v85
	v_div_scale_f32 v77, vcc_lo, v89, v22, v89
	v_div_fixup_f32 v0, v49, v0, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v78, v57
	v_fma_f32 v49, -v73, v76, 1.0
	v_fma_f32 v66, -v26, v74, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v76, v49, v76
	v_div_scale_f32 v49, s1, v86, v75, v86
	v_fmac_f32_e32 v69, v67, v69
	v_fma_f32 v67, -v57, v78, 1.0
	v_fmac_f32_e32 v74, v66, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v82, v49, v76
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v66, v110, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v78, v67, v78 :: v_dual_mul_f32 v79, v77, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v84, v83, v78
	v_fma_f32 v0, -v72, v79, v77
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v67, v109, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v73, v82, v49
	v_mul_f32_e32 v81, v80, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v79, v0, v69 :: v_dual_fmac_f32 v82, v27, v76
	v_fma_f32 v0, -v26, v81, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v72, v79, v77
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v77, |v46|, |v10|, |v8|
	v_max3_f32 v72, |v42|, |v14|, |v13|
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v81, v0, v74
	v_fma_f32 v0, -v57, v84, v83
	v_div_fmas_f32 v23, v23, v69, v79
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0x76543210
	v_fma_f32 v26, -v26, v81, v80
	v_fmac_f32_e32 v84, v0, v78
	v_fma_f32 v0, -v73, v82, v49
	v_div_fixup_f32 v22, v23, v22, v89
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v73, v107, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v26, v74, v81
	v_fma_f32 v27, -v57, v84, v83
	s_mov_b32 vcc_lo, s1
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v23, |v32|, |v28|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v0, v76, v82
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v2, v26, v2, v88
	v_div_fmas_f32 v27, v27, v78, v84
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, |v24|, |v36|, |v35|
.Ltmp12:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v75, v86
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, |v48|, |v39|, |v37|
	v_max_f32_e64 v74, |v56|, |v53|
.Ltmp14:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v20, v27, v20, v85
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v27, |v31|, |v18|, |v16|
	v_max3_f32 v75, |v44|, |v68|, |v60|
	v_max3_f32 v76, |v70|, |v63|, |v62|
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v57, v102, v0
	v_mul_f32_e32 v49, v87, v20
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, |v30|, |v29|, |v19|
	v_max3_f32 v20, v23, |v21|, v25
	v_max3_f32 v23, v26, v27, |v17|
	v_max3_f32 v78, |v55|, |v54|, |v11|
	v_max3_f32 v74, v74, |v43|, v75
	v_max3_f32 v75, v76, v77, |v9|
	v_max_f32_e64 v25, |v45|, |v40|
	v_max3_f32 v0, v20, v0, v23
	v_max3_f32 v26, |v34|, |v52|, |v47|
	v_max3_f32 v69, |v59|, |v51|, |v50|
	v_max3_f32 v20, v74, v78, v75
	v_max3_f32 v27, |v41|, |v38|, |v15|
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v74, v0, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, v25, |v33|, v26
	v_max3_f32 v26, v69, v72, |v12|
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v75, v20, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v72, v100, v22
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v22, |v65|, |v64|
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v78, 8, v161
	v_lshrrev_b32_e32 v81, 3, v1
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v76, v75, v75 :: v_dual_mul_f32 v69, v101, v2
	v_max3_f32 v2, v25, v27, v26
	v_max3_f32 v27, |v49|, |v4|, |v5|
	v_max3_f32 v25, |v67|, |v66|, |v7|
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v76, v20, v76
	v_max3_f32 v26, |v72|, |v69|, |v57|
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v20, 4, v161
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, v26, v27, |v6|
	v_max_f32_e32 v27, v74, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v82, v20, 6, 0
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v74, v0, v27
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v0, 3, v161
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v23, |v58|, |v73|, |v71|
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v27, 0x60, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, v22, |v61|, v23
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v23, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, v22, v25, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v23, v23, v23
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v25, v0, 9, 0
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v75, v2, v23 :: v_dual_lshlrev_b32 v26, 4, v161
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v23, 5, v0
	v_permlanex16_b32 v2, v22, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_add_u32 v77, v20, 2, v25
	v_lshlrev_b32_e32 v25, 1, v1
	v_add_nc_u32_e32 v1, 0, v1
	v_and_or_b32 v26, 0x680, v26, v23
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v79, v23, v27
	v_lshl_add_u32 v80, v78, 4, v77
	v_lshlrev_b32_e32 v78, 3, v78
	v_xor_b32_e32 v26, v26, v27
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v77, v22, v2
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v0, v0, 4, 0
	v_add3_u32 v2, v80, v25, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v22, v82, v81, v26
	ds_store_b128 v2, v[74:77]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[74:77], v22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v2, v74
	v_mov_b32_e32 v22, v75
	v_mov_b32_e32 v26, v76
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v74, v74, v74 :: v_dual_max_f32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v22, v22 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v26, v26 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v77, v77
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v77, v77 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v22, v22, v22
	v_max_f32_e32 v26, v26, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v74, v2
	v_max_f32_e32 v74, v76, v76
	v_max_f32_e32 v26, v74, v26
	v_dual_max_f32 v22, v75, v22 :: v_dual_max_f32 v75, v77, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v74, v79, v75 :: v_dual_mov_b32 v75, v26
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v76, v2 :: v_dual_max_f32 v75, v75, v75
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v77, v22 :: v_dual_max_f32 v76, v76, v76
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v76 :: v_dual_max_f32 v77, v77, v77
	v_max_f32_e32 v22, v22, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v77, v2
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v79, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v76, v79, v79 :: v_dual_mov_b32 v79, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v80, v74, v76
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v74, v77, v77 :: v_dual_mov_b32 v81, v80
	v_max_f32_e32 v26, v26, v75
	v_dual_max_f32 v75, v79, v79 :: v_dual_max_f32 v74, v2, v74
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v79, 1, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v22, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v1, v79, v78
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v22, v81, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v76, v26 :: v_dual_max_f32 v77, v80, v22
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v22, 4, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v76, v76
	v_max_f32_e32 v76, v26, v2
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v2, 5, v20
	ds_store_b128 v1, v[74:77]
	v_add3_u32 v0, v0, v2, v78
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp61:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v78, 32, v22
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[74:77], v0
.Ltmp63:
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
	v_max_f32_e32 v75, 0x2b8cbccc, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v77, 0x2b8cbccc, v77
	v_div_scale_f32 v20, null, 0x40e00000, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s24, v0
	v_add_co_ci_u32_e64 v1, null, s25, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v26, v20
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v78, s0, s24, v78
	v_add_co_ci_u32_e64 v79, null, s25, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[28:29], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[26:27], v[0:1]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v84, null, 0x40e00000, 0x40e00000, v75
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 16, v22
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v76, -v20, v26, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[28:29], v[78:79]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v85, null, 0x40e00000, 0x40e00000, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v76, v26
	v_div_scale_f32 v76, vcc_lo, v2, 0x40e00000, v2
	v_mul_f32_e32 v81, v76, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v20, v81, v76
	v_fmac_f32_e32 v81, v0, v26
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s3, s24, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s25, 0, s3
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v20, -v20, v81, v76
	v_rcp_f32_e32 v76, v84
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[26:27], v[78:79]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v79.h, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[28:29], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v20, v20, v26, v81
	v_rcp_f32_e32 v81, v85
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[26:27], v[0:1]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v20, 0x40e00000, v2
	v_fma_f32 v78, -v84, v76, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v76, v78, v76
	v_div_scale_f32 v78, s7, v75, 0x40e00000, v75
	v_max_f32_e32 v74, 0x2b8cbccc, v74
	v_fma_f32 v86, -v85, v81, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v87, v78, v76
	v_div_scale_f32 v80, null, 0x40e00000, 0x40e00000, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v86, v81
	v_div_scale_f32 v86, s8, v77, 0x40e00000, v77
	v_rcp_f32_e32 v82, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v80, v82, 1.0
	v_fmac_f32_e32 v82, v83, v82
	v_div_scale_f32 v83, s6, v74, 0x40e00000, v74
	s_mov_b32 vcc_lo, s6
	v_mul_f32_e32 v26, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v80, v26, v83
	v_fmac_f32_e32 v26, v20, v82
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v20.l, v2.h
	v_mov_b16_e32 v20.h, v79.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v0, -v80, v26, v83
	v_fma_f32 v80, -v84, v87, v78
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v1, 1, v20
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v83, v86, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v80, v76
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v20, v2, v1, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v26, v0, v82, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v2, -v85, v83, v86
	s_mov_b32 vcc_lo, s7
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s6, s24, v22
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v80, 0xffff0000, v20
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v26, v26, 0x40e00000, v74
	v_fma_f32 v74, -v84, v87, v78
	v_fmac_f32_e32 v83, v2, v81
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s25, 0, s6
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v78, null, v80, v80, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v74, v76, v87
	v_fma_f32 v74, -v85, v83, v86
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v82, v78
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v79.l, v26.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v75
	v_div_fmas_f32 v74, v74, v81, v83
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v84, vcc_lo, v32, v80, v32
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[28:29], v[0:1]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v75, 1, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v74, v74, 0x40e00000, v77
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v77.l, v2.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v76, -v78, v82, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v77.h, v79.h
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[26:27], v[0:1]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v26, v75, 0x7fff
	v_mov_b16_e32 v79.l, v74.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v76, v82
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v0, 1, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v77, v84, v82
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v26, v2, v0, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v78, v77, v84
	v_fmac_f32_e32 v77, v0, v82
	v_div_scale_f32 v81, null, v80, v80, v28
	v_div_scale_f32 v86, null, v80, v80, v24
	v_div_scale_f32 v87, s8, v28, v80, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v83, v81
	v_rcp_f32_e32 v0, v86
	v_div_scale_f32 v85, null, v80, v80, v21
	v_fma_f32 v78, -v78, v77, v84
	v_div_scale_f32 v91, null, v80, v80, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v75, -v81, v83, 1.0
	v_fma_f32 v90, -v86, v0, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v83, v75, v83 :: v_dual_fmac_f32 v0, v90, v0
	v_div_scale_f32 v90, null, v80, v80, v35
	v_dual_mul_f32 v88, v87, v83 :: v_dual_and_b32 v75, 0xffff0000, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v92, v90
	v_fma_f32 v84, -v81, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v88, v84, v83
	v_div_scale_f32 v84, s10, v24, v80, v24
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v76, 1, v79
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v79, v85
	v_fma_f32 v89, -v85, v79, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, s9, v21, v80, v21
	v_div_fmas_f32 v77, v78, v82, v77
	v_rcp_f32_e32 v82, v91
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v78, v89, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v32, v77, v80, v32
	v_fma_f32 v77, -v81, v88, v87
	v_mul_f32_e32 v87, v84, v0
	v_fma_f32 v81, -v85, v78, v89
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v74, v76, 0x7fff
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v93, -v91, v82, 1.0
	v_div_fmas_f32 v77, v77, v83, v88
	v_fmac_f32_e32 v78, v81, v79
	v_fma_f32 v81, -v86, v87, v84
	v_fma_f32 v88, -v90, v92, 1.0
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v76, 0xffff0000, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v93, v82
	v_div_scale_f32 v83, s8, v36, v80, v36
	v_div_fixup_f32 v28, v77, v80, v28
	v_fma_f32 v77, -v85, v78, v89
	v_fmac_f32_e32 v87, v81, v0
	v_fmac_f32_e32 v92, v88, v92
	v_div_scale_f32 v88, null, v80, v80, v30
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v81, v83, v82
	v_div_scale_f32 v85, s11, v35, v80, v35
	v_div_fmas_f32 v77, v77, v79, v78
	v_fma_f32 v78, -v86, v87, v84
	v_rcp_f32_e32 v84, v88
	v_div_scale_f32 v89, null, v80, v80, v29
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v79, -v91, v81, v83
	v_mul_f32_e32 v86, v85, v92
	v_div_fmas_f32 v0, v78, v0, v87
	v_rcp_f32_e32 v78, v89
	v_div_fixup_f32 v21, v77, v80, v21
	v_fmac_f32_e32 v81, v79, v82
	v_fma_f32 v79, -v90, v86, v85
	v_fma_f32 v87, -v88, v84, 1.0
	v_div_fixup_f32 v24, v0, v80, v24
	v_div_scale_f32 v77, s9, v30, v80, v30
	v_fma_f32 v0, -v91, v81, v83
	v_fmac_f32_e32 v86, v79, v92
	v_fmac_f32_e32 v84, v87, v84
	v_fma_f32 v79, -v89, v78, 1.0
	v_div_scale_f32 v83, null, v80, v80, v19
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v87, null, v80, v80, v48
	v_div_fmas_f32 v0, v0, v82, v81
	v_fma_f32 v81, -v90, v86, v85
	v_mul_f32_e32 v82, v77, v84
	v_fmac_f32_e32 v78, v79, v78
	v_rcp_f32_e32 v79, v83
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v85, s8, v29, v80, v29
	v_div_fmas_f32 v81, v81, v92, v86
	v_fma_f32 v86, -v88, v82, v77
	v_rcp_f32_e32 v92, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v90, v85, v78
	v_div_fixup_f32 v36, v0, v80, v36
	v_div_fixup_f32 v35, v81, v80, v35
	v_fma_f32 v91, -v83, v79, 1.0
	v_fmac_f32_e32 v82, v86, v84
	v_div_scale_f32 v86, null, v80, v80, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v79, v91, v79 :: v_dual_and_b32 v74, 0xffff0000, v2
	v_fma_f32 v0, -v89, v90, v85
	v_div_scale_f32 v81, s10, v19, v80, v19
	v_fma_f32 v91, -v87, v92, 1.0
	v_fma_f32 v77, -v88, v82, v77
	v_rcp_f32_e32 v88, v86
	v_fmac_f32_e32 v90, v0, v78
	v_mul_f32_e32 v0, v81, v79
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s11, v48, v80, v48
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v93, null, v80, v80, v37
	v_div_fmas_f32 v77, v77, v84, v82
	v_fma_f32 v82, -v89, v90, v85
	v_fma_f32 v84, -v83, v0, v81
	v_mul_f32_e32 v85, v91, v92
	v_fma_f32 v89, -v86, v88, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v30, v77, v80, v30
	v_div_fmas_f32 v78, v82, v78, v90
	v_fmac_f32_e32 v0, v84, v79
	v_rcp_f32_e32 v82, v93
	v_fma_f32 v84, -v87, v85, v91
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, s8, v39, v80, v39
	v_div_fixup_f32 v29, v78, v80, v29
	v_fma_f32 v77, -v83, v0, v81
	v_fmac_f32_e32 v85, v84, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v78, v89, v88
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v81, -v93, v82, 1.0
	v_div_scale_f32 v83, null, v80, v80, v31
	v_div_fmas_f32 v0, v77, v79, v0
	v_fma_f32 v77, -v87, v85, v91
	v_fma_f32 v79, -v86, v78, v89
	v_div_scale_f32 v87, null, v80, v80, v18
	v_fmac_f32_e32 v82, v81, v82
	v_rcp_f32_e32 v81, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v79, v88
	v_rcp_f32_e32 v79, v87
	v_div_scale_f32 v84, s9, v37, v80, v37
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v19, v0, v80, v19
	v_div_fmas_f32 v77, v77, v92, v85
	v_mul_f32_e32 v85, v84, v82
	v_fma_f32 v0, -v86, v78, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v90, -v83, v81, 1.0
	v_div_scale_f32 v86, s10, v31, v80, v31
	v_fma_f32 v89, -v87, v79, 1.0
	v_div_fixup_f32 v48, v77, v80, v48
	v_fma_f32 v77, -v93, v85, v84
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v90, null, v80, v80, v16
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v80, v80, v17
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v85, v77, v82
	v_div_fmas_f32 v0, v0, v88, v78
	v_mul_f32_e32 v77, v86, v81
	v_rcp_f32_e32 v78, v90
	v_div_scale_f32 v88, s8, v18, v80, v18
	v_rcp_f32_e32 v92, v89
	v_div_fixup_f32 v39, v0, v80, v39
	v_fma_f32 v0, -v93, v85, v84
	v_fma_f32 v84, -v83, v77, v86
	v_mul_f32_e32 v91, v88, v79
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v90, v78, 1.0
	v_div_fmas_f32 v0, v0, v82, v85
	v_fmac_f32_e32 v77, v84, v81
	v_fma_f32 v82, -v87, v91, v88
	v_fma_f32 v85, -v89, v92, 1.0
	v_fmac_f32_e32 v78, v93, v78
	v_div_scale_f32 v84, s9, v16, v80, v16
	v_div_fixup_f32 v37, v0, v80, v37
	v_fma_f32 v0, -v83, v77, v86
	v_dual_fmac_f32 v91, v82, v79 :: v_dual_fmac_f32 v92, v85, v92
	v_div_scale_f32 v85, null, v76, v76, v45
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v82, v84, v78
	v_div_scale_f32 v83, s11, v17, v80, v17
	v_div_fmas_f32 v0, v0, v81, v77
	v_fma_f32 v77, -v87, v91, v88
	v_rcp_f32_e32 v86, v85
	v_div_scale_f32 v88, null, v76, v76, v40
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v81, -v90, v82, v84
	v_mul_f32_e32 v87, v83, v92
	v_div_fmas_f32 v77, v77, v79, v91
	v_rcp_f32_e32 v79, v88
	v_div_fixup_f32 v31, v0, v80, v31
	v_fmac_f32_e32 v82, v81, v78
	v_fma_f32 v81, -v89, v87, v83
	v_fma_f32 v91, -v85, v86, 1.0
	v_div_fixup_f32 v18, v77, v80, v18
	v_div_scale_f32 v77, s8, v45, v76, v45
	v_fma_f32 v0, -v90, v82, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v87, v81, v92 :: v_dual_fmac_f32 v86, v91, v86
	v_fma_f32 v81, -v88, v79, 1.0
	v_div_scale_f32 v84, null, v76, v76, v33
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v78, v82
	v_fma_f32 v78, -v89, v87, v83
	v_mul_f32_e32 v82, v77, v86
	v_fmac_f32_e32 v79, v81, v79
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v83, s9, v40, v76, v40
	v_div_scale_f32 v89, null, v76, v76, v34
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v90, v83, v79
	v_div_fmas_f32 v78, v78, v92, v87
	v_fma_f32 v87, -v85, v82, v77
	v_rcp_f32_e32 v92, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v84, v81, 1.0
	v_div_fixup_f32 v16, v0, v80, v16
	v_fma_f32 v0, -v88, v90, v83
	v_fmac_f32_e32 v82, v87, v86
	v_div_fixup_f32 v17, v78, v80, v17
	v_fmac_f32_e32 v81, v91, v81
	v_div_scale_f32 v78, s10, v33, v76, v33
	v_div_scale_f32 v80, null, v76, v76, v52
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v89, v92, 1.0
	v_fma_f32 v77, -v85, v82, v77
	v_fmac_f32_e32 v90, v0, v79
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v0, v78, v81
	v_rcp_f32_e32 v85, v80
	v_fmac_f32_e32 v92, v87, v92
	v_div_scale_f32 v87, s11, v34, v76, v34
	v_div_fmas_f32 v77, v77, v86, v82
	v_fma_f32 v82, -v88, v90, v83
	v_div_scale_f32 v91, null, v76, v76, v47
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v83, -v84, v0, v78
	v_mul_f32_e32 v86, v87, v92
	v_div_fmas_f32 v79, v82, v79, v90
	v_rcp_f32_e32 v82, v91
	v_fma_f32 v88, -v80, v85, 1.0
	v_fmac_f32_e32 v0, v83, v81
	v_fma_f32 v83, -v89, v86, v87
	v_div_fixup_f32 v40, v79, v76, v40
	v_div_fixup_f32 v45, v77, v76, v45
	v_fmac_f32_e32 v85, v88, v85
	v_div_scale_f32 v88, s8, v52, v76, v52
	v_fmac_f32_e32 v86, v83, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v91, v82, 1.0
	v_div_scale_f32 v83, null, v76, v76, v41
	v_fma_f32 v77, -v84, v0, v78
	v_mul_f32_e32 v78, v88, v85
	v_fmac_f32_e32 v82, v79, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v79, v83
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v84, s9, v47, v76, v47
	v_div_fmas_f32 v0, v77, v81, v0
	v_fma_f32 v77, -v89, v86, v87
	v_fma_f32 v81, -v80, v78, v88
	v_div_scale_f32 v87, null, v76, v76, v38
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v83, v79, 1.0
	v_fmac_f32_e32 v78, v81, v85
	v_rcp_f32_e32 v81, v87
	v_div_fmas_f32 v77, v77, v92, v86
	v_mul_f32_e32 v86, v84, v82
	v_div_fixup_f32 v33, v0, v76, v33
	v_fma_f32 v0, -v80, v78, v88
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v76, v76, v15
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v34, v77, v76, v34
	v_fma_f32 v77, -v91, v86, v84
	v_div_scale_f32 v80, s10, v41, v76, v41
	v_fma_f32 v88, -v87, v81, 1.0
	v_div_fmas_f32 v0, v0, v85, v78
	v_rcp_f32_e32 v78, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v77, v82 :: v_dual_mul_f32 v77, v80, v79
	v_fmac_f32_e32 v81, v88, v81
	v_div_scale_f32 v85, s8, v38, v76, v38
	v_div_scale_f32 v88, null, v76, v76, v59
	v_div_fixup_f32 v52, v0, v76, v52
	v_fma_f32 v0, -v91, v86, v84
	v_fma_f32 v84, -v83, v77, v80
	v_mul_f32_e32 v90, v85, v81
	v_rcp_f32_e32 v91, v88
	v_fma_f32 v92, -v89, v78, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v77, v84, v79
	v_div_fmas_f32 v0, v0, v82, v86
	v_fma_f32 v82, -v87, v90, v85
	v_fmac_f32_e32 v78, v92, v78
	v_div_scale_f32 v84, s9, v15, v76, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v47, v0, v76, v47
	v_fma_f32 v86, -v88, v91, 1.0
	v_fma_f32 v0, -v83, v77, v80
	v_fmac_f32_e32 v90, v82, v81
	v_mul_f32_e32 v80, v84, v78
	v_div_scale_f32 v83, null, v76, v76, v51
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v91, v86, v91
	v_div_scale_f32 v82, s11, v59, v76, v59
	v_div_fmas_f32 v0, v0, v79, v77
	v_fma_f32 v77, -v87, v90, v85
	v_fma_f32 v79, -v89, v80, v84
	v_rcp_f32_e32 v85, v83
	v_div_scale_f32 v87, null, v76, v76, v50
	v_mul_f32_e32 v86, v82, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v79, v78
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v79, v87
	v_div_fmas_f32 v77, v77, v81, v90
	v_fma_f32 v81, -v88, v86, v82
	v_div_fixup_f32 v41, v0, v76, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v83, v85, 1.0
	v_fma_f32 v0, -v89, v80, v84
	v_div_fixup_f32 v38, v77, v76, v38
	v_fmac_f32_e32 v86, v81, v91
	v_div_scale_f32 v77, s8, v51, v76, v51
	v_fmac_f32_e32 v85, v90, v85
	v_fma_f32 v81, -v87, v79, 1.0
	v_div_scale_f32 v84, null, v76, v76, v42
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v92, null, v76, v76, v12
	v_div_fmas_f32 v0, v0, v78, v80
	v_fma_f32 v78, -v88, v86, v82
	v_mul_f32_e32 v80, v77, v85
	v_fmac_f32_e32 v79, v81, v79
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v82, s9, v50, v76, v50
	v_div_scale_f32 v88, null, v76, v76, v14
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v89, v82, v79
	v_div_fmas_f32 v78, v78, v91, v86
	v_fma_f32 v86, -v83, v80, v77
	v_rcp_f32_e32 v91, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v84, v81, 1.0
	v_div_fixup_f32 v15, v0, v76, v15
	v_fma_f32 v0, -v87, v89, v82
	v_fmac_f32_e32 v80, v86, v85
	v_div_scale_f32 v86, null, v76, v76, v13
	v_div_fixup_f32 v59, v78, v76, v59
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v78, s10, v42, v76, v42
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v88, v91, 1.0
	v_fma_f32 v77, -v83, v80, v77
	v_fmac_f32_e32 v89, v0, v79
	v_rcp_f32_e32 v83, v86
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v0, v78, v81
	v_fmac_f32_e32 v91, v90, v91
	v_div_scale_f32 v90, s11, v14, v76, v14
	v_div_fmas_f32 v77, v77, v85, v80
	v_fma_f32 v80, -v87, v89, v82
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v82, -v84, v0, v78
	v_mul_f32_e32 v85, v90, v91
	v_fma_f32 v87, -v86, v83, 1.0
	v_div_fmas_f32 v79, v80, v79, v89
	v_rcp_f32_e32 v80, v92
	v_fmac_f32_e32 v0, v82, v81
	v_fma_f32 v82, -v88, v85, v90
	v_fmac_f32_e32 v83, v87, v83
	v_div_scale_f32 v87, s8, v13, v76, v13
	v_div_fixup_f32 v51, v77, v76, v51
	v_div_fixup_f32 v50, v79, v76, v50
	v_fma_f32 v77, -v84, v0, v78
	v_fmac_f32_e32 v85, v82, v91
	v_mul_f32_e32 v78, v87, v83
	v_fma_f32 v79, -v92, v80, 1.0
	v_div_scale_f32 v82, null, v75, v75, v56
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v84, s9, v12, v76, v12
	v_div_fmas_f32 v0, v77, v81, v0
	v_fma_f32 v77, -v88, v85, v90
	v_fma_f32 v81, -v86, v78, v87
	v_fmac_f32_e32 v80, v79, v80
	v_rcp_f32_e32 v79, v82
	v_div_scale_f32 v88, null, v75, v75, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v81, v83
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v42, v0, v76, v42
	v_rcp_f32_e32 v81, v88
	v_div_fmas_f32 v77, v77, v91, v85
	v_mul_f32_e32 v85, v84, v80
	v_fma_f32 v0, -v86, v78, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v82, v79, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v14, v77, v76, v14
	v_fma_f32 v77, -v92, v85, v84
	v_div_scale_f32 v86, s10, v56, v75, v56
	v_fmac_f32_e32 v79, v89, v79
	v_fma_f32 v87, -v88, v81, 1.0
	v_div_scale_f32 v89, null, v75, v75, v43
	v_div_fmas_f32 v0, v0, v83, v78
	v_fmac_f32_e32 v85, v77, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v87, v81
	v_rcp_f32_e32 v78, v89
	v_div_scale_f32 v87, null, v75, v75, v44
	v_mul_f32_e32 v77, v86, v79
	v_div_scale_f32 v83, s8, v53, v75, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v91, v87
	v_div_fixup_f32 v13, v0, v76, v13
	v_fma_f32 v0, -v92, v85, v84
	v_fma_f32 v84, -v82, v77, v86
	v_mul_f32_e32 v90, v83, v81
	v_fma_f32 v92, -v89, v78, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v80, v85
	v_fmac_f32_e32 v77, v84, v79
	v_fma_f32 v80, -v88, v90, v83
	v_fmac_f32_e32 v78, v92, v78
	v_div_scale_f32 v84, s9, v43, v75, v43
	v_fma_f32 v85, -v87, v91, 1.0
	v_div_fixup_f32 v12, v0, v76, v12
	v_fma_f32 v0, -v82, v77, v86
	v_fmac_f32_e32 v90, v80, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v76, v84, v78 :: v_dual_fmac_f32 v91, v85, v91
	v_div_scale_f32 v80, s11, v44, v75, v44
	v_div_scale_f32 v82, null, v75, v75, v68
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v85, v80, v91
	v_div_fmas_f32 v0, v0, v79, v77
	v_fma_f32 v77, -v88, v90, v83
	v_fma_f32 v79, -v89, v76, v84
	v_rcp_f32_e32 v83, v82
	v_div_scale_f32 v86, null, v75, v75, v60
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v76, v79, v78
	v_div_fmas_f32 v77, v77, v81, v90
	v_rcp_f32_e32 v79, v86
	v_fma_f32 v81, -v87, v85, v80
	v_div_fixup_f32 v56, v0, v75, v56
	v_fma_f32 v0, -v89, v76, v84
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v82, v83, 1.0
	v_div_scale_f32 v84, null, v75, v75, v55
	v_fmac_f32_e32 v85, v81, v91
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v53, v77, v75, v53
	v_fmac_f32_e32 v83, v88, v83
	v_div_scale_f32 v77, s8, v68, v75, v68
	v_fma_f32 v81, -v86, v79, 1.0
	v_div_fmas_f32 v0, v0, v78, v76
	v_fma_f32 v76, -v87, v85, v80
	v_rcp_f32_e32 v80, v84
	v_mul_f32_e32 v78, v77, v83
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v81, s9, v60, v75, v60
	v_div_scale_f32 v87, null, v75, v75, v54
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v88, v81, v79
	v_div_fmas_f32 v76, v76, v91, v85
	v_fma_f32 v85, -v82, v78, v77
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v84, v80, 1.0
	v_rcp_f32_e32 v90, v87
	v_div_fixup_f32 v43, v0, v75, v43
	v_div_fixup_f32 v44, v76, v75, v44
	v_fmac_f32_e32 v78, v85, v83
	v_fma_f32 v0, -v86, v88, v81
	v_fmac_f32_e32 v80, v89, v80
	v_div_scale_f32 v76, s10, v55, v75, v55
	v_div_scale_f32 v85, null, v75, v75, v11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v87, v90, 1.0
	v_fma_f32 v77, -v82, v78, v77
	v_fmac_f32_e32 v88, v0, v79
	v_mul_f32_e32 v82, v76, v80
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v91, v85
	v_fmac_f32_e32 v90, v89, v90
	v_div_scale_f32 v89, s11, v54, v75, v54
	v_div_fmas_f32 v0, v77, v83, v78
	v_fma_f32 v77, -v86, v88, v81
	v_fma_f32 v78, -v84, v82, v76
	v_div_scale_f32 v86, null, v75, v75, v70
	v_mul_f32_e32 v81, v89, v90
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v78, v80
	v_rcp_f32_e32 v78, v86
	v_fma_f32 v83, -v85, v91, 1.0
	v_div_fmas_f32 v77, v77, v79, v88
	v_fma_f32 v79, -v87, v81, v89
	v_div_fixup_f32 v0, v0, v75, v68
	v_fma_f32 v68, -v84, v82, v76
	v_fmac_f32_e32 v91, v83, v91
	v_div_scale_f32 v83, s8, v11, v75, v11
	v_div_fixup_f32 v60, v77, v75, v60
	v_fmac_f32_e32 v81, v79, v90
	v_fma_f32 v77, -v86, v78, 1.0
	v_div_scale_f32 v79, null, v75, v75, v63
	v_mul_f32_e32 v76, v83, v91
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v77, v78
	v_rcp_f32_e32 v77, v79
	v_div_fmas_f32 v68, v68, v80, v82
	v_fma_f32 v80, -v87, v81, v89
	v_fma_f32 v82, -v85, v76, v83
	v_div_scale_f32 v84, s9, v70, v75, v70
	v_div_scale_f32 v87, null, v75, v75, v62
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v76, v82, v91
	v_div_fmas_f32 v80, v80, v90, v81
	v_rcp_f32_e32 v81, v87
	v_mul_f32_e32 v82, v84, v78
	v_fma_f32 v88, -v79, v77, 1.0
	v_div_fixup_f32 v55, v68, v75, v55
	v_div_fixup_f32 v54, v80, v75, v54
	v_fma_f32 v68, -v85, v76, v83
	v_fma_f32 v80, -v86, v82, v84
	v_fmac_f32_e32 v77, v88, v77
	v_div_scale_f32 v83, s10, v63, v75, v63
	v_div_scale_f32 v88, null, v75, v75, v46
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v85, -v87, v81, 1.0
	v_div_fmas_f32 v68, v68, v91, v76
	v_fmac_f32_e32 v82, v80, v78
	v_mul_f32_e32 v76, v83, v77
	v_rcp_f32_e32 v80, v88
	v_div_scale_f32 v89, null, v75, v75, v10
	v_fmac_f32_e32 v81, v85, v81
	v_div_scale_f32 v85, s8, v62, v75, v62
	v_div_fixup_f32 v11, v68, v75, v11
	v_fma_f32 v68, -v86, v82, v84
	v_fma_f32 v84, -v79, v76, v83
	v_rcp_f32_e32 v90, v89
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v86, v85, v81
	v_fma_f32 v91, -v88, v80, 1.0
	v_div_fmas_f32 v68, v68, v78, v82
	v_fmac_f32_e32 v76, v84, v77
	v_div_scale_f32 v82, s9, v46, v75, v46
	v_fma_f32 v78, -v87, v86, v85
	v_fmac_f32_e32 v80, v91, v80
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v84, -v89, v90, 1.0
	v_div_fixup_f32 v68, v68, v75, v70
	v_fma_f32 v70, -v79, v76, v83
	v_div_scale_f32 v83, null, v75, v75, v8
	v_fmac_f32_e32 v86, v78, v81
	v_mul_f32_e32 v78, v82, v80
	v_fmac_f32_e32 v90, v84, v90
	v_div_scale_f32 v79, s11, v10, v75, v10
	v_rcp_f32_e32 v84, v83
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v70, v70, v77, v76
	v_fma_f32 v76, -v87, v86, v85
	v_fma_f32 v77, -v88, v78, v82
	v_mul_f32_e32 v85, v79, v90
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v87, null, v75, v75, v9
	v_div_fmas_f32 v76, v76, v81, v86
	v_fmac_f32_e32 v78, v77, v80
	v_fma_f32 v81, -v89, v85, v79
	v_fma_f32 v86, -v83, v84, 1.0
	v_rcp_f32_e32 v77, v87
	v_div_fixup_f32 v63, v70, v75, v63
	v_div_fixup_f32 v62, v76, v75, v62
	v_fma_f32 v70, -v88, v78, v82
	v_dual_fmac_f32 v85, v81, v90 :: v_dual_fmac_f32 v84, v86, v84
	v_div_scale_f32 v76, s8, v8, v75, v8
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v88, null, v74, v74, v64
	v_div_fmas_f32 v70, v70, v80, v78
	v_fma_f32 v78, -v89, v85, v79
	v_mul_f32_e32 v79, v76, v84
	v_div_scale_f32 v80, null, v74, v74, v65
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v81, -v87, v77, 1.0
	v_div_fmas_f32 v78, v78, v90, v85
	v_rcp_f32_e32 v82, v80
	v_fma_f32 v85, -v83, v79, v76
	v_div_fixup_f32 v46, v70, v75, v46
	v_fmac_f32_e32 v77, v81, v77
	v_div_scale_f32 v81, s9, v9, v75, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v85, v84
	v_div_fixup_f32 v10, v78, v75, v10
	v_rcp_f32_e32 v78, v88
	v_mul_f32_e32 v86, v81, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v80, v82, 1.0
	v_fma_f32 v76, -v83, v79, v76
	v_div_scale_f32 v83, null, v74, v74, v61
	v_fma_f32 v70, -v87, v86, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v85, v82
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v85, v83
	v_div_fmas_f32 v76, v76, v84, v79
	v_fmac_f32_e32 v86, v70, v77
	v_div_scale_f32 v70, s10, v65, v74, v65
	v_fma_f32 v89, -v88, v78, 1.0
	v_div_scale_f32 v90, null, v74, v74, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v79, -v87, v86, v81
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v87, -v83, v85, 1.0
	v_mul_f32_e32 v81, v70, v82
	v_fmac_f32_e32 v78, v89, v78
	v_div_scale_f32 v84, s8, v64, v74, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v87, s11, v61, v74, v61
	v_rcp_f32_e32 v92, v90
	v_div_fmas_f32 v77, v79, v77, v86
	v_fma_f32 v89, -v80, v81, v70
	v_dual_mul_f32 v86, v87, v85 :: v_dual_mul_f32 v91, v84, v78
	v_div_fixup_f32 v8, v76, v75, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v9, v77, v75, v9
	v_div_scale_f32 v77, null, v74, v74, v73
	v_fma_f32 v75, -v83, v86, v87
	v_fmac_f32_e32 v81, v89, v82
	v_fma_f32 v79, -v88, v91, v84
	v_fma_f32 v76, -v90, v92, 1.0
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v86, v75, v85
	v_rcp_f32_e32 v75, v77
	v_fma_f32 v70, -v80, v81, v70
	v_dual_fmac_f32 v91, v79, v78 :: v_dual_fmac_f32 v92, v76, v92
	v_div_scale_f32 v76, s9, v58, v74, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v70, v70, v82, v81
	v_fma_f32 v79, -v88, v91, v84
	v_div_scale_f32 v81, null, v74, v74, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v80, v76, v92
	v_fma_f32 v82, -v77, v75, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v65, v70, v74, v65
	v_div_fmas_f32 v78, v79, v78, v91
	v_fma_f32 v79, -v83, v86, v87
	v_rcp_f32_e32 v83, v81
	v_fma_f32 v84, -v90, v80, v76
	v_fmac_f32_e32 v75, v82, v75
	v_div_scale_f32 v82, s8, v73, v74, v73
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v80, v84, v92
	v_div_fmas_f32 v79, v79, v85, v86
	v_mul_f32_e32 v70, v82, v75
	v_div_fixup_f32 v64, v78, v74, v64
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v78, -v81, v83, 1.0
	v_fma_f32 v76, -v90, v80, v76
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v84, -v77, v70, v82
	v_div_fixup_f32 v61, v79, v74, v61
	v_div_scale_f32 v79, null, v74, v74, v67
	v_fmac_f32_e32 v83, v78, v83
	v_div_scale_f32 v78, s10, v71, v74, v71
	v_div_fmas_f32 v76, v76, v92, v80
	v_fmac_f32_e32 v70, v84, v75
	v_rcp_f32_e32 v85, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v80, v78, v83
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v58, v76, v74, v58
	v_fma_f32 v76, -v77, v70, v82
	v_div_scale_f32 v84, null, v74, v74, v66
	v_fma_f32 v77, -v81, v80, v78
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v70, v76, v75, v70
	v_div_scale_f32 v75, null, v74, v74, v7
	v_fma_f32 v82, -v79, v85, 1.0
	v_rcp_f32_e32 v86, v84
	v_fmac_f32_e32 v80, v77, v83
	v_rcp_f32_e32 v77, v75
	v_div_scale_f32 v76, s8, v67, v74, v67
	v_fmac_f32_e32 v85, v82, v85
	v_div_scale_f32 v82, null, v74, v74, v72
	v_div_fixup_f32 v70, v70, v74, v73
	v_fma_f32 v78, -v81, v80, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v84, v86, 1.0
	v_rcp_f32_e32 v88, v82
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v75, v77, 1.0
	v_mul_f32_e32 v81, v76, v85
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v86, v73, v86
	v_div_scale_f32 v73, s9, v66, v74, v66
	v_fmac_f32_e32 v77, v87, v77
	v_div_scale_f32 v87, null, v74, v74, v69
	v_div_fmas_f32 v78, v78, v83, v80
	v_fma_f32 v80, -v79, v81, v76
	v_mul_f32_e32 v83, v73, v86
	v_div_scale_f32 v89, s10, v7, v74, v7
	v_fma_f32 v90, -v82, v88, 1.0
	v_rcp_f32_e32 v91, v87
	v_fmac_f32_e32 v81, v80, v85
	v_fma_f32 v80, -v84, v83, v73
	v_mul_f32_e32 v92, v89, v77
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s11, v72, v74, v72
	v_div_fixup_f32 v71, v78, v74, v71
	v_fma_f32 v76, -v79, v81, v76
	v_fmac_f32_e32 v83, v80, v86
	v_fma_f32 v78, -v75, v92, v89
	v_mul_f32_e32 v79, v90, v88
	v_fma_f32 v80, -v87, v91, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v73, -v84, v83, v73
	v_fmac_f32_e32 v92, v78, v77
	v_fma_f32 v78, -v82, v79, v90
	v_fmac_f32_e32 v91, v80, v91
	v_div_scale_f32 v80, s8, v69, v74, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v75, v92, v89
	v_fmac_f32_e32 v79, v78, v88
	v_div_fmas_f32 v76, v76, v85, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v78, v80, v91
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v81, null, v74, v74, v57
	v_div_fmas_f32 v73, v73, v86, v83
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v67, v76, v74, v67
	v_div_fmas_f32 v75, v75, v77, v92
	v_fma_f32 v77, -v82, v79, v90
	v_fma_f32 v82, -v87, v78, v80
	v_rcp_f32_e32 v83, v81
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v66, v73, v74, v66
	v_div_fmas_f32 v77, v77, v88, v79
	v_fmac_f32_e32 v78, v82, v91
	v_div_fixup_f32 v7, v75, v74, v7
	v_div_scale_f32 v75, null, v74, v74, v49
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v73, -v87, v78, v80
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v76, -v81, v83, 1.0
	v_div_fixup_f32 v72, v77, v74, v72
	v_rcp_f32_e32 v77, v75
	v_div_scale_f32 v85, null, v74, v74, v6
	v_div_fmas_f32 v73, v73, v91, v78
	v_div_scale_f32 v78, null, v74, v74, v5
	v_fmac_f32_e32 v83, v76, v83
	v_div_scale_f32 v79, vcc_lo, v57, v74, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v82, v78
	v_div_fixup_f32 v69, v73, v74, v69
	v_fma_f32 v73, -v75, v77, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v84, v79, v83
	v_rcp_f32_e32 v87, v85
	v_div_scale_f32 v76, null, v74, v74, v4
	v_fmac_f32_e32 v77, v73, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v88, -v81, v84, v79
	v_div_scale_f32 v73, s8, v49, v74, v49
	v_fma_f32 v89, -v78, v82, 1.0
	v_rcp_f32_e32 v80, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v88, v83
	v_mul_f32_e32 v90, v73, v77
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v85, v87, 1.0
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v89, s10, v5, v74, v5
	v_fma_f32 v79, -v81, v84, v79
	v_fma_f32 v88, -v75, v90, v73
	v_fmac_f32_e32 v87, v91, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v93, v89, v82
	v_div_scale_f32 v91, s11, v6, v74, v6
	v_div_fmas_f32 v79, v79, v83, v84
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	v_fmac_f32_e32 v90, v88, v77
	v_fma_f32 v88, -v78, v93, v89
	v_mul_f32_e32 v94, v91, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v24, v24, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v86, -v76, v80, 1.0
	v_fma_f32 v73, -v75, v90, v73
	v_fmac_f32_e32 v93, v88, v82
	v_fma_f32 v75, -v85, v94, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_cvt_i32_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v86, v80
	v_div_scale_f32 v86, s9, v4, v74, v4
	v_fmac_f32_e32 v94, v75, v87
	v_fma_f32 v75, -v78, v93, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v89, v7
	v_and_b32_e32 v7, 15, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v24, 4, v96
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v73, v73, v77, v90
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v77, -v85, v94, v91
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	v_xor_b32_e32 v24, v24, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v92, v86, v80 :: v_dual_lshlrev_b32 v27, 6, v161
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v0, v0, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v81, -v76, v92, v86
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v48, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v81, v80
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v57, v79, v74, v57
	v_div_fixup_f32 v49, v73, v74, v49
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v76, v92, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v76, v80, v92
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v75, v75, v82, v93
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v4, v76, v74, v4
	v_div_fmas_f32 v77, v77, v87, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v5, v75, v74, v5
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v40, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v6, v77, v74, v6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v6, v6
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v53, v53
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v6, v6, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v58, v58
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_cvt_i32_f32_e32 v77, v13
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v95, v6
	v_and_b32_e32 v6, 15, v21
	v_and_b32_e32 v13, 15, v48
	v_and_b32_e32 v48, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v161
	v_and_b32_e32 v21, 16, v161
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v4, v4
	v_rndne_f32_e32 v5, v5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_cvt_i32_f32_e32 v90, v69
	v_and_b32_e32 v69, 15, v72
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v72, 6, v21
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v11, v11, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_med3_f32 v9, v9, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v4, v4, s8, 0x40e00000
	v_med3_f32 v5, v5, s8, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v79, v43
	v_cvt_i32_f32_e32 v80, v44
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v86, v61
	v_cvt_i32_f32_e32 v87, v58
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v72
	v_and_or_b32 v23, 0x1b00, v27, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v73, v16
	v_cvt_i32_f32_e32 v74, v17
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v75, v15
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v81, v11
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v91, v57
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v42, v42
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v76, v14
	v_cvt_i32_f32_e32 v82, v46
	v_cvt_i32_f32_e32 v83, v10
	v_cvt_i32_f32_e32 v84, v8
	v_cvt_i32_f32_e32 v85, v9
	v_cvt_i32_f32_e32 v92, v49
	v_cvt_i32_f32_e32 v93, v4
	v_cvt_i32_f32_e32 v94, v5
	v_and_b32_e32 v4, 15, v32
	v_and_b32_e32 v5, 15, v28
	v_and_b32_e32 v8, 15, v36
	v_and_b32_e32 v9, 15, v35
	v_and_b32_e32 v10, 15, v30
	v_and_b32_e32 v11, 15, v29
	v_and_b32_e32 v14, 15, v39
	v_and_b32_e32 v16, 15, v31
	v_and_b32_e32 v28, 15, v45
	v_and_b32_e32 v29, 15, v40
	v_and_b32_e32 v30, 15, v33
	v_and_b32_e32 v31, 15, v34
	v_and_b32_e32 v33, 15, v47
	v_and_b32_e32 v35, 15, v38
	v_and_b32_e32 v38, 15, v51
	v_and_b32_e32 v39, 15, v50
	v_and_b32_e32 v44, 15, v56
	v_and_b32_e32 v45, 15, v53
	v_and_b32_e32 v46, 15, v79
	v_and_b32_e32 v47, 15, v80
	v_and_b32_e32 v49, 15, v60
	v_and_b32_e32 v50, 15, v55
	v_and_b32_e32 v51, 15, v54
	v_and_b32_e32 v54, 15, v63
	v_and_b32_e32 v55, 15, v62
	v_and_b32_e32 v60, 15, v65
	v_and_b32_e32 v61, 15, v64
	v_and_b32_e32 v62, 15, v86
	v_and_b32_e32 v63, 15, v87
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v24, v25
	v_xad_u32 v23, v23, v97, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v78, v12
	v_and_b32_e32 v12, 15, v19
	v_and_b32_e32 v15, 15, v37
	v_and_b32_e32 v17, 15, v18
	v_and_b32_e32 v18, 15, v73
	v_and_b32_e32 v19, 15, v74
	v_and_b32_e32 v32, 15, v52
	v_and_b32_e32 v36, 15, v75
	v_and_b32_e32 v37, 15, v59
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
	ds_store_b128 v0, v[4:7]
	ds_store_b128 v0, v[12:15] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[4:7], v23
	ds_load_b128 v[12:15], v23 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[28:31]
	ds_store_b128 v0, v[36:39] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[27:30], v23
	ds_load_b128 v[36:39], v23 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[44:47]
	ds_store_b128 v0, v[52:55] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[44:47], v23
	ds_load_b128 v[52:55], v23 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[60:63]
	ds_store_b128 v0, v[68:71] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v23
	ds_load_b128 v[68:71], v23 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[8:11]
	ds_store_b128 v0, v[16:19] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v23
	ds_load_b128 v[16:19], v23 offset:1024
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v66, v66
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v42, v42
	v_and_b32_e32 v43, 15, v78
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_and_b32_e32 v34, 15, v41
	v_and_b32_e32 v40, 15, v42
	v_and_b32_e32 v41, 15, v76
	v_and_b32_e32 v42, 15, v77
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v88, v66
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[32:35]
	ds_store_b128 v0, v[40:43] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[31:34], v23
	ds_load_b128 v[40:43], v23 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v56, 15, v82
	v_and_b32_e32 v57, 15, v83
	v_and_b32_e32 v58, 15, v84
	v_and_b32_e32 v59, 15, v85
	v_and_b32_e32 v66, 15, v67
	v_and_b32_e32 v67, 15, v88
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[48:51]
	ds_store_b128 v0, v[56:59] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v23
	ds_load_b128 v[56:59], v23 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v72, 15, v92
	v_and_b32_e32 v73, 15, v93
	v_and_b32_e32 v74, 15, v94
	v_and_b32_e32 v75, 15, v95
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v11, v19, 4, v11
	v_lshl_or_b32 v19, v38, 4, v29
	v_lshl_or_b32 v29, v52, 4, v44
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v44, 3, v96
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v4, v12, 4, v4
	v_lshl_or_b32 v12, v14, 4, v6
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, s24, v22
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[64:67]
	ds_store_b128 v0, v[72:75] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[64:67], v23
	ds_load_b128 v[72:75], v23 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s31, 7, v44
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v14, v16, 4, v8
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
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
	v_lshl_or_b32 v24, v40, 4, v31
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
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v23, v39, 4, v30
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
	v_and_b16 v5.h, 0xff, v24.l
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s16
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
	v_lshlrev_b16 v0.l, 8, v23.l
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
	v_lshrrev_b32_e32 v4, 4, v161
	v_lshrrev_b32_e32 v5, 2, v21
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
	s_ashr_i32 s0, s33, 31
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
	s_add_i32 s33, s33, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v161
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s31, 1
	s_and_b32 vcc_lo, vcc_lo, s34
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp64:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1184
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 1184
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 35180
; TotalNumSgprs: 42
; NumVgprs: 256
; ScratchSize: 1184
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 42
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
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 1184
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 295
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
