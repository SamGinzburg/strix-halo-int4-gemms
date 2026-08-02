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
	v_mov_b32_e32 v249, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v87, 0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
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
	v_and_b32_e32 v0, 63, v249
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
	v_add_nc_u32_e32 v214, s24, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[28:29], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[26:27], v[1:2]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 0x80, v249
.Ltmp4:
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s24, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow796
	s_load_b128 s[16:19], s[0:1], 0x40
	v_dual_mov_b32 v102, 0 :: v_dual_and_b32 v97, 15, v249
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v98, 0xf0, v249
	v_dual_mov_b32 v85, 0 :: v_dual_and_b32 v96, 0xc0, v249
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v203, 0
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
	v_add_co_u32 v1, s6, s24, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s25, 0, s6
	s_clause 0x1
	s_load_b32 s35, s[0:1], 0x58
	s_load_b32 s36, s[0:1], 0x50
	v_add_co_u32 v3, vcc_lo, v1, 16
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[28:29], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[26:27], v[1:2]
	v_dual_mov_b32 v212, 0 :: v_dual_add_nc_u32 v1, s24, v97
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s20, s2, s4
	s_addc_u32 s21, s3, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[28:29], v[3:4]
	v_dual_mov_b32 v213, 0 :: v_dual_add_nc_u32 v2, 16, v1
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[26:27], v[3:4]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_add_nc_u32_e32 v3, 32, v1
	v_mul_lo_u32 v4, v1, s30
	v_dual_mov_b32 v210, 0 :: v_dual_add_nc_u32 v1, 48, v1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s7, s[20:21], 0x0
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v2, v2, s30
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s20, s31, 8
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v1, v1, s30
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[28:29], v[5:6]
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v4, off offset:1152 ; 4-byte Folded Spill
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_lshrrev_b32_e32 v4, 5, v249
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[26:27], v[5:6]
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s37, s33, 1
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v2, off offset:1156 ; 4-byte Folded Spill
	v_mul_lo_u32 v2, v3, s30
	.loc	1 1045 36                       ; ragged.py:1045:36
	scratch_store_b32 off, v1, off offset:1164 ; 4-byte Folded Spill
	v_or_b32_e32 v1, s20, v4
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, s2, s4
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s4, s35, s37
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[28:29], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[26:27], v[7:8]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v3, 0xf0, v1
	scratch_store_b32 off, v2, off offset:1160 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0xf8, v1
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s22, s4, s7
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v4, 0xe8, v1
	v_or_b32_e32 v10, 0xe0, v1
	v_or_b32_e32 v11, 0xd8, v1
	v_dual_mov_b32 v206, 0 :: v_dual_add_nc_u32 v7, s33, v2
	v_or_b32_e32 v12, 0xd0, v1
	v_or_b32_e32 v13, 0xc8, v1
	v_or_b32_e32 v14, 0xc0, v1
	v_or_b32_e32 v20, 0xb8, v1
	v_or_b32_e32 v21, 0xb0, v1
	v_or_b32_e32 v22, 0xa8, v1
	v_or_b32_e32 v23, 0xa0, v1
	v_or_b32_e32 v24, 0x98, v1
	v_or_b32_e32 v30, 0x90, v1
	v_or_b32_e32 v31, 0x88, v1
	v_or_b32_e32 v32, 0x80, v1
	v_or_b32_e32 v33, 0x78, v1
	v_or_b32_e32 v34, 0x70, v1
	v_or_b32_e32 v40, 0x68, v1
	v_or_b32_e32 v41, 0x60, v1
	v_or_b32_e32 v42, 0x58, v1
	v_or_b32_e32 v43, 0x50, v1
	v_or_b32_e32 v44, 0x48, v1
	v_or_b32_e32 v50, 64, v1
	v_or_b32_e32 v51, 56, v1
	v_or_b32_e32 v52, 48, v1
	v_or_b32_e32 v53, 40, v1
	v_or_b32_e32 v54, 32, v1
	v_or_b32_e32 v60, 24, v1
	v_or_b32_e32 v61, 16, v1
	v_or_b32_e32 v62, 8, v1
	v_dual_mov_b32 v187, 0 :: v_dual_add_nc_u32 v68, s33, v1
	v_mad_u64_u32 v[182:183], null, v1, s35, s[22:23]
	v_mad_u64_u32 v[1:2], null, s35, v2, s[22:23]
	v_dual_mov_b32 v124, 0 :: v_dual_lshlrev_b32 v63, 1, v249
	v_lshrrev_b32_e32 v64, 1, v249
	scratch_store_b32 off, v98, off offset:1188 ; 4-byte Folded Spill
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v67, s33, v62
	scratch_store_b64 off, v[1:2], off offset:312 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v68, s35, s[22:23]
	v_xor_b32_e32 v64, v63, v64
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v215, 3, v96
	v_mad_u64_u32 v[241:242], null, s35, v41, s[22:23]
	v_mad_u64_u32 v[242:243], null, s35, v40, s[22:23]
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v185, 0 :: v_dual_and_b32 v64, 24, v64
	scratch_store_b64 off, v[1:2], off offset:320 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v67, s35, s[22:23]
	v_dual_mov_b32 v208, 0 :: v_dual_add_nc_u32 v5, 0, v0
	v_dual_mov_b32 v189, 0 :: v_dual_add_nc_u32 v66, s33, v61
	v_xor_b32_e32 v64, v64, v215
	v_lshl_add_u32 v0, v0, 5, 0
	v_mad_u64_u32 v[243:244], null, s35, v34, s[22:23]
	v_mad_u64_u32 v[244:245], null, s35, v33, s[22:23]
	v_mad_u64_u32 v[245:246], null, s35, v32, s[22:23]
	v_mad_u64_u32 v[246:247], null, s35, v31, s[22:23]
	v_mad_u64_u32 v[247:248], null, s35, v30, s[22:23]
	scratch_store_b64 off, v[1:2], off offset:328 ; 8-byte Folded Spill
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v248, v0, v64
	v_mad_u64_u32 v[0:1], null, v66, s35, s[22:23]
	v_dual_mov_b32 v93, 0 :: v_dual_lshlrev_b32 v84, 3, v96
	v_dual_mov_b32 v176, 0 :: v_dual_lshlrev_b32 v85, 5, v249
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v65, s33, v60
	scratch_store_b64 off, v[0:1], off offset:340 ; 8-byte Folded Spill
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v0, v5, v84
	v_dual_mov_b32 v91, 0 :: v_dual_lshlrev_b32 v88, 2, v98
	v_dual_mov_b32 v174, 0 :: v_dual_and_b32 v85, 32, v85
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v65, s35, s[22:23]
	v_dual_mov_b32 v152, 0 :: v_dual_and_b32 v69, 24, v63
	v_dual_mov_b32 v170, 0 :: v_dual_and_b32 v63, 28, v63
	v_add3_u32 v85, 0, v88, v85
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v59, s33, v54
	scratch_store_b64 off, v[0:1], off offset:352 ; 8-byte Folded Spill
	v_lshl_or_b32 v217, v97, 5, v69
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v0, v85, v63
	v_mov_b32_e32 v121, 0
	v_mov_b32_e32 v123, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v69, 8, v217
	scratch_store_b32 off, v0, off offset:1172 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v59, s35, s[22:23]
	v_xor_b32_e32 v70, 16, v217
	v_xor_b32_e32 v72, 24, v217
	v_xor_b32_e32 v73, 0x208, v217
	v_xor_b32_e32 v74, 0x218, v217
	v_mov_b32_e32 v151, 0
	v_xor_b32_e32 v76, 0x210, v217
	scratch_store_b64 off, v[0:1], off offset:360 ; 8-byte Folded Spill
	v_dual_mov_b32 v149, 0 :: v_dual_add_nc_u32 v0, 0, v69
	v_xor_b32_e32 v77, 0x410, v217
	v_mov_b32_e32 v145, 0
	v_xor_b32_e32 v78, 0x418, v217
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_dual_mov_b32 v147, 0 :: v_dual_add_nc_u32 v0, 0, v70
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_and_b32_e32 v6, 0xe0, v249
	v_bfe_i32 v71, v249, 7, 1
	v_xor_b32_e32 v79, 0x408, v217
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_dual_mov_b32 v175, 0 :: v_dual_add_nc_u32 v0, 0, v72
	v_dual_mov_b32 v150, 0 :: v_dual_and_b32 v75, 0x7f, v249
	v_dual_mov_b32 v146, 0 :: v_dual_and_b32 v71, 0x88, v71
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v73
	v_lshl_or_b32 v221, v6, 4, v217
	v_xor_b32_e32 v6, 0x618, v217
	v_mov_b32_e32 v173, 0
	v_xor_b32_e32 v218, v71, v75
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v74
	v_xor_b32_e32 v71, 0x610, v217
	v_mov_b32_e32 v169, 0
	v_xor_b32_e32 v75, 0x608, v217
	v_mov_b32_e32 v171, 0
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v76
	v_mad_u64_u32 v[250:251], null, s35, v24, s[22:23]
	v_mad_u64_u32 v[251:252], null, s35, v23, s[22:23]
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v77
	v_xor_b32_e32 v81, 8, v221
	v_mad_u64_u32 v[252:253], null, s35, v22, s[22:23]
	v_mov_b32_e32 v183, 0
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v78
	v_mad_u64_u32 v[253:254], null, s35, v21, s[22:23]
	.loc	1 1175 36                       ; ragged.py:1175:36
	v_add_nc_u32_e32 v18, s33, v13
	v_dual_mov_b32 v196, 0 :: v_dual_add_nc_u32 v19, s33, v14
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v79
	v_dual_mov_b32 v202, 0 :: v_dual_add_nc_u32 v25, s33, v20
	v_dual_mov_b32 v205, 0 :: v_dual_add_nc_u32 v26, s33, v21
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v6
	v_mad_u64_u32 v[254:255], null, s35, v20, s[22:23]
	v_mad_u64_u32 v[20:21], null, s35, v14, s[22:23]
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v71
	v_mad_u64_u32 v[13:14], null, s35, v13, s[22:23]
	v_xor_b32_e32 v82, 16, v221
	v_or_b32_e32 v89, s20, v249
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	v_dual_mov_b32 v181, 0 :: v_dual_add_nc_u32 v0, 0, v75
	v_dual_mov_b32 v200, 0 :: v_dual_add_nc_u32 v17, s33, v12
	v_mov_b32_e32 v177, 0
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v81
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v89, off offset:1168
	scratch_store_b64 off, v[20:21], off offset:256
	v_mov_b32_e32 v179, 0
	v_xor_b32_e32 v83, 24, v221
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v82
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v96, off offset:1180
	scratch_store_b64 off, v[13:14], off offset:264
	v_mad_u64_u32 v[12:13], null, s35, v12, s[22:23]
	v_dual_mov_b32 v209, 0 :: v_dual_add_nc_u32 v16, s33, v11
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	v_dual_mov_b32 v167, 0 :: v_dual_add_nc_u32 v0, 0, v83
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v97, off offset:1184
	scratch_store_b64 off, v[12:13], off offset:272
	v_mad_u64_u32 v[11:12], null, s35, v11, s[22:23]
	v_or_b32_e32 v86, 0x3f0, v249
	v_or_b32_e32 v87, 0x7f0, v249
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	v_dual_mov_b32 v204, 0 :: v_dual_add_nc_u32 v15, s33, v10
	v_dual_mov_b32 v165, 0 :: v_dual_add_nc_u32 v0, 0, v86
	scratch_store_b64 off, v[11:12], off offset:280 ; 8-byte Folded Spill
	v_mad_u64_u32 v[10:11], null, s35, v10, s[22:23]
	v_dual_mov_b32 v109, 0 :: v_dual_lshlrev_b32 v88, 1, v98
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_dual_mov_b32 v161, 0 :: v_dual_add_nc_u32 v0, 0, v87
	v_dual_mov_b32 v191, 0 :: v_dual_add_nc_u32 v58, s33, v53
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[10:11], off offset:288
	scratch_store_b32 off, v0, off offset:420
	v_dual_mov_b32 v163, 0 :: v_dual_add_nc_u32 v0, 0, v88
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v8, s33, v3
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v9, s33, v4
	v_mad_u64_u32 v[10:11], null, s35, v4, s[22:23]
	v_mad_u64_u32 v[3:4], null, s35, v3, s[22:23]
	scratch_store_b32 off, v0, off offset:1176 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v58, s35, s[22:23]
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v57, s33, v52
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[10:11], off offset:296
	scratch_store_b64 off, v[3:4], off offset:304
	v_dual_mov_b32 v193, 0 :: v_dual_add_nc_u32 v56, s33, v51
	scratch_store_b64 off, v[0:1], off offset:424 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v57, s35, s[22:23]
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v55, s33, v50
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v49, s33, v44
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v48, s33, v43
	scratch_store_b64 off, v[0:1], off offset:432 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v56, s35, s[22:23]
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v47, s33, v42
	v_dual_mov_b32 v197, 0 :: v_dual_add_nc_u32 v46, s33, v41
	v_dual_mov_b32 v186, 0 :: v_dual_add_nc_u32 v45, s33, v40
	scratch_store_b64 off, v[0:1], off offset:440 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v55, s35, s[22:23]
	v_dual_mov_b32 v188, 0 :: v_dual_add_nc_u32 v39, s33, v34
	v_dual_mov_b32 v201, 0 :: v_dual_add_nc_u32 v38, s33, v33
	v_dual_mov_b32 v190, 0 :: v_dual_add_nc_u32 v37, s33, v32
	scratch_store_b64 off, v[0:1], off offset:448 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v49, s35, s[22:23]
	v_dual_mov_b32 v203, 0 :: v_dual_add_nc_u32 v36, s33, v31
	v_dual_mov_b32 v192, 0 :: v_dual_add_nc_u32 v35, s33, v30
	v_dual_mov_b32 v194, 0 :: v_dual_add_nc_u32 v29, s33, v24
	scratch_store_b64 off, v[0:1], off offset:456 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v48, s35, s[22:23]
	v_dual_mov_b32 v199, 0 :: v_dual_add_nc_u32 v28, s33, v23
	v_dual_mov_b32 v198, 0 :: v_dual_add_nc_u32 v27, s33, v22
	v_mov_b32_e32 v83, 0
	v_mad_u64_u32 v[236:237], null, s35, v51, s[22:23]
	scratch_store_b64 off, v[0:1], off offset:464 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v47, s35, s[22:23]
	v_xor_b32_e32 v80, 0x110, v218
	v_mad_u64_u32 v[222:223], null, s35, v62, s[22:23]
	v_mad_u64_u32 v[230:231], null, s35, v60, s[22:23]
	v_mad_u64_u32 v[237:238], null, s35, v50, s[22:23]
	scratch_store_b64 off, v[0:1], off offset:472 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v46, s35, s[22:23]
	v_mad_u64_u32 v[223:224], null, s35, v61, s[22:23]
	v_mad_u64_u32 v[231:232], null, s35, v53, s[22:23]
	v_mad_u64_u32 v[238:239], null, s35, v44, s[22:23]
	scratch_store_b64 off, v[0:1], off offset:480 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v45, s35, s[22:23]
	v_mad_u64_u32 v[227:228], null, s35, v54, s[22:23]
	v_mad_u64_u32 v[224:225], null, s35, v52, s[22:23]
	v_mad_u64_u32 v[232:233], null, s35, v43, s[22:23]
	scratch_store_b64 off, v[0:1], off offset:488 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v39, s35, s[22:23]
	v_mad_u64_u32 v[239:240], null, s35, v42, s[22:23]
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v207, 0, v97
	v_dual_mov_b32 v172, 0 :: v_dual_add_nc_u32 v211, 0, v80
	scratch_store_b64 off, v[0:1], off offset:496 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v38, s35, s[22:23]
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v157, 0
	scratch_store_b64 off, v[0:1], off offset:504 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v37, s35, s[22:23]
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v141, 0
	scratch_store_b64 off, v[0:1], off offset:512 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v36, s35, s[22:23]
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v135, 0
	scratch_store_b64 off, v[0:1], off offset:520 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v35, s35, s[22:23]
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v131, 0
	scratch_store_b64 off, v[0:1], off offset:528 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v29, s35, s[22:23]
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v105, 0
	scratch_store_b64 off, v[0:1], off offset:536 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v28, s35, s[22:23]
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v99, 0
	scratch_store_b64 off, v[0:1], off offset:544 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v27, s35, s[22:23]
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v119, 0
	scratch_store_b64 off, v[0:1], off offset:552 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v26, s35, s[22:23]
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v101, 0
	scratch_store_b64 off, v[0:1], off offset:560 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v25, s35, s[22:23]
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v87, 0
	v_mov_b32_e32 v104, 0
	v_mov_b32_e32 v94, 0
	v_mov_b32_e32 v116, 0
	v_mov_b32_e32 v118, 0
	scratch_store_b64 off, v[0:1], off offset:568 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v19, s35, s[22:23]
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v102, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_and_b32 s1, s1, s3
	scratch_store_b64 off, v[0:1], off offset:576 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v18, s35, s[22:23]
	s_and_b32 s3, s5, s6
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s38, s30, s7
	.loc	1 1135 13                       ; ragged.py:1135:13
	s_mov_b32 s39, 0
	s_and_b32 s5, s9, 0xffff
	s_mov_b32 s4, s8
	s_mov_b32 s7, 0x31027000
	scratch_store_b64 off, v[0:1], off offset:584 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v17, s35, s[22:23]
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s9, s11, 0xffff
	s_mov_b32 s8, s10
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s20, s14
	scratch_store_b64 off, v[0:1], off offset:592 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v16, s35, s[22:23]
	.loc	1 1135 19 is_stmt 0             ; ragged.py:1135:19
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b32 off, v249, off offset:252
	scratch_store_b32 off, v248, off offset:336
	scratch_store_b64 off, v[0:1], off offset:600
	v_mad_u64_u32 v[0:1], null, v15, s35, s[22:23]
	scratch_store_b64 off, v[0:1], off offset:608 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v9, s35, s[22:23]
	scratch_store_b64 off, v[0:1], off offset:616 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v8, s35, s[22:23]
	scratch_store_b64 off, v[0:1], off offset:624 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v7, s35, s[22:23]
	scratch_store_b64 off, v[0:1], off offset:632 ; 8-byte Folded Spill
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 19                          ; ragged.py:0:19
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v213, off offset:1148
	scratch_store_b32 off, v212, off offset:1144
	scratch_store_b32 off, v81, off offset:1140
	scratch_store_b32 off, v143, off offset:1136
	scratch_store_b32 off, v82, off offset:1132
	scratch_store_b32 off, v210, off offset:1128
	scratch_store_b32 off, v209, off offset:1124
	scratch_store_b32 off, v208, off offset:1120
	scratch_store_b32 off, v206, off offset:1116
	scratch_store_b32 off, v83, off offset:1112
	scratch_store_b32 off, v84, off offset:1108
	scratch_store_b32 off, v205, off offset:1104
	scratch_store_b32 off, v204, off offset:1100
	scratch_store_b32 off, v203, off offset:1096
	scratch_store_b32 off, v202, off offset:1092
	scratch_store_b32 off, v201, off offset:1088
	scratch_store_b32 off, v200, off offset:1084
	scratch_store_b32 off, v199, off offset:1080
	scratch_store_b32 off, v198, off offset:1076
	scratch_store_b32 off, v197, off offset:1072
	scratch_store_b32 off, v196, off offset:1068
	scratch_store_b32 off, v195, off offset:1064
	scratch_store_b32 off, v194, off offset:1060
	scratch_store_b32 off, v193, off offset:1056
	scratch_store_b32 off, v192, off offset:1052
	scratch_store_b32 off, v191, off offset:1048
	scratch_store_b32 off, v190, off offset:1044
	scratch_store_b32 off, v189, off offset:1040
	scratch_store_b32 off, v188, off offset:1036
	scratch_store_b32 off, v187, off offset:1032
	scratch_store_b32 off, v186, off offset:1028
	scratch_store_b32 off, v185, off offset:1024
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v184, off offset:1020
	scratch_store_b32 off, v183, off offset:1016
	scratch_store_b32 off, v216, off offset:1012
	scratch_store_b32 off, v181, off offset:1008
	scratch_store_b32 off, v180, off offset:1004
	scratch_store_b32 off, v179, off offset:1000
	scratch_store_b32 off, v178, off offset:996
	scratch_store_b32 off, v177, off offset:992
	scratch_store_b32 off, v176, off offset:988
	scratch_store_b32 off, v175, off offset:984
	scratch_store_b32 off, v174, off offset:980
	scratch_store_b32 off, v173, off offset:976
	scratch_store_b32 off, v172, off offset:972
	scratch_store_b32 off, v171, off offset:968
	scratch_store_b32 off, v170, off offset:964
	scratch_store_b32 off, v169, off offset:960
	scratch_store_b32 off, v168, off offset:956
	scratch_store_b32 off, v167, off offset:952
	scratch_store_b32 off, v166, off offset:948
	scratch_store_b32 off, v165, off offset:944
	scratch_store_b32 off, v164, off offset:940
	scratch_store_b32 off, v163, off offset:936
	scratch_store_b32 off, v162, off offset:932
	scratch_store_b32 off, v161, off offset:928
	scratch_store_b32 off, v160, off offset:924
	scratch_store_b32 off, v159, off offset:920
	scratch_store_b32 off, v158, off offset:916
	scratch_store_b32 off, v157, off offset:912
	scratch_store_b32 off, v156, off offset:908
	scratch_store_b32 off, v155, off offset:904
	scratch_store_b32 off, v154, off offset:900
	scratch_store_b32 off, v153, off offset:896
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v152, off offset:892
	scratch_store_b32 off, v151, off offset:888
	scratch_store_b32 off, v150, off offset:884
	scratch_store_b32 off, v149, off offset:880
	scratch_store_b32 off, v148, off offset:876
	scratch_store_b32 off, v147, off offset:872
	scratch_store_b32 off, v146, off offset:868
	scratch_store_b32 off, v145, off offset:864
	scratch_store_b32 off, v144, off offset:860
	scratch_store_b32 off, v142, off offset:856
	scratch_store_b32 off, v141, off offset:852
	scratch_store_b32 off, v140, off offset:848
	scratch_store_b32 off, v139, off offset:844
	scratch_store_b32 off, v138, off offset:840
	scratch_store_b32 off, v137, off offset:836
	scratch_store_b32 off, v136, off offset:832
	scratch_store_b32 off, v135, off offset:828
	scratch_store_b32 off, v134, off offset:824
	scratch_store_b32 off, v133, off offset:820
	scratch_store_b32 off, v130, off offset:816
	scratch_store_b32 off, v132, off offset:812
	scratch_store_b32 off, v131, off offset:808
	scratch_store_b32 off, v129, off offset:804
	scratch_store_b32 off, v128, off offset:800
	scratch_store_b32 off, v127, off offset:796
	scratch_store_b32 off, v126, off offset:792
	scratch_store_b32 off, v125, off offset:788
	scratch_store_b32 off, v124, off offset:784
	scratch_store_b32 off, v123, off offset:780
	scratch_store_b32 off, v122, off offset:776
	scratch_store_b32 off, v121, off offset:772
	scratch_store_b32 off, v120, off offset:768
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v115, off offset:764
	scratch_store_b32 off, v107, off offset:760
	scratch_store_b32 off, v106, off offset:756
	scratch_store_b32 off, v105, off offset:752
	scratch_store_b32 off, v104, off offset:748
	scratch_store_b32 off, v114, off offset:744
	scratch_store_b32 off, v113, off offset:740
	scratch_store_b32 off, v112, off offset:736
	scratch_store_b32 off, v103, off offset:732
	scratch_store_b32 off, v99, off offset:728
	scratch_store_b32 off, v95, off offset:724
	scratch_store_b32 off, v94, off offset:720
	scratch_store_b32 off, v119, off offset:716
	scratch_store_b32 off, v118, off offset:712
	scratch_store_b32 off, v117, off offset:708
	scratch_store_b32 off, v116, off offset:704
	scratch_store_b32 off, v93, off offset:700
	scratch_store_b32 off, v92, off offset:696
	scratch_store_b32 off, v91, off offset:692
	scratch_store_b32 off, v90, off offset:688
	scratch_store_b32 off, v111, off offset:684
	scratch_store_b32 off, v110, off offset:680
	scratch_store_b32 off, v109, off offset:676
	scratch_store_b32 off, v108, off offset:672
	scratch_store_b32 off, v89, off offset:668
	scratch_store_b32 off, v88, off offset:664
	scratch_store_b32 off, v86, off offset:660
	scratch_store_b32 off, v85, off offset:656
	scratch_store_b32 off, v102, off offset:652
	scratch_store_b32 off, v101, off offset:648
	scratch_store_b32 off, v100, off offset:644
	scratch_store_b32 off, v87, off offset:640
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v165, off, off offset:240
	scratch_load_b32 v163, off, off offset:244
	scratch_load_b32 v129, off, off offset:248
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v0, 0
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s14, s39, 6
	v_mov_b32_e32 v9, 0
	v_mov_b32_e32 v17, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v6, v0
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v4, v0
	v_mov_b32_e32 v5, v0
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
	s_mov_b32 s15, -1
	s_mov_b32 s10, 0
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 28 is_stmt 0                ; ragged.py:0:28
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	s_or_b32 s22, s10, s14
	s_clause 0x4                            ; 40-byte Folded Spill
	scratch_store_b64 off, v[254:255], off offset:136
	scratch_store_b64 off, v[253:254], off offset:128
	scratch_store_b64 off, v[252:253], off offset:120
	scratch_store_b64 off, v[251:252], off offset:112
	scratch_store_b64 off, v[250:251], off offset:104
	s_waitcnt vmcnt(2)
	s_clause 0x6                            ; 56-byte Folded Spill
	scratch_store_b64 off, v[247:248], off offset:96
	scratch_store_b64 off, v[246:247], off offset:88
	scratch_store_b64 off, v[245:246], off offset:80
	scratch_store_b64 off, v[244:245], off offset:72
	scratch_store_b64 off, v[243:244], off offset:64
	scratch_store_b64 off, v[242:243], off offset:56
	scratch_store_b64 off, v[241:242], off offset:48
	s_waitcnt vmcnt(1)
	scratch_store_b64 off, v[239:240], off offset:40 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	s_clause 0x4                            ; 40-byte Folded Spill
	scratch_store_b64 off, v[232:233], off offset:32
	scratch_store_b64 off, v[238:239], off offset:24
	scratch_store_b64 off, v[237:238], off offset:16
	scratch_store_b64 off, v[236:237], off offset:8
	scratch_store_b64 off, v[224:225], off
	v_or_b32_e32 v0, s22, v215
	.loc	1 1157 25                       ; ragged.py:1157:25
	scratch_load_b64 v[141:142], off, off offset:256 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
	v_mov_b32_e32 v164, v230
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[194:195], null, v0, s36, v[214:215]
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s35, v0
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v131, 1, v0
	v_or_b32_e32 v132, 2, v0
	v_or_b32_e32 v133, 3, v0
	v_or_b32_e32 v134, 4, v0
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 vcc_lo, s34, vcc_lo
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v135, 5, v0
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e32 v130, 0x80000000, v194, vcc_lo
	.loc	1 1155 42 is_stmt 0             ; ragged.py:1155:42
	v_mad_u64_u32 v[194:195], null, v131, s36, v[214:215]
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s35, v131
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v136, 7, v0
	v_or_b32_e32 v0, 6, v0
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 vcc_lo, s34, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e32 v131, 0x80000000, v194, vcc_lo
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[194:195], null, v132, s36, v[214:215]
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s35, v132
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 vcc_lo, s34, vcc_lo
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e32 v132, 0x80000000, v194, vcc_lo
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[194:195], null, v133, s36, v[214:215]
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s35, v133
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x2
	buffer_load_u8 v198, v130, s[4:7], 0 offen
	buffer_load_u8 v201, v131, s[4:7], 0 offen
	buffer_load_u8 v130, v132, s[4:7], 0 offen
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 vcc_lo, s34, vcc_lo
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e32 v133, 0x80000000, v194, vcc_lo
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[194:195], null, v134, s36, v[214:215]
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s35, v134
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 vcc_lo, s34, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e32 v134, 0x80000000, v194, vcc_lo
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[194:195], null, v135, s36, v[214:215]
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s35, v135
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 vcc_lo, s34, vcc_lo
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e32 v135, 0x80000000, v194, vcc_lo
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[194:195], null, v136, s36, v[214:215]
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s35, v136
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 vcc_lo, s34, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e32 v136, 0x80000000, v194, vcc_lo
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[194:195], null, v0, s36, v[214:215]
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s35, v0
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 vcc_lo, s34, vcc_lo
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e32 v0, 0x80000000, v194, vcc_lo
	s_clause 0x4
	buffer_load_u8 v240, v135, s[4:7], 0 offen
	buffer_load_u8 v229, v136, s[4:7], 0 offen
	buffer_load_u8 v228, v0, s[4:7], 0 offen
	buffer_load_u8 v233, v134, s[4:7], 0 offen
	buffer_load_u8 v202, v133, s[4:7], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v0.l, 8, v240.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v0.h, 8, v229.l
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v195.l, v233.l, v0.l
	v_lshlrev_b16 v0.l, 8, v201.l
	v_or_b16 v195.h, v228.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v194.l, v198.l, v0.l
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v0.l, 8, v202.l
	v_or_b16 v194.h, v130.l, v0.l
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_and_b32_e32 v0, 31, v249
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v0, s22, v0
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e32 vcc_lo, s35, v0
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v205, v243, v0
	v_add_nc_u32_e32 v140, v238, v0
	v_add_nc_u32_e32 v238, v141, v0
	scratch_load_b64 v[141:142], off, off offset:264 ; 8-byte Folded Reload
	v_add_nc_u32_e32 v226, v251, v0
	v_add_nc_u32_e32 v197, v239, v0
	v_add_nc_u32_e32 v234, v252, v0
	v_add_nc_u32_e32 v199, v241, v0
	v_add_nc_u32_e32 v216, v245, v0
	v_add_nc_u32_e32 v131, v182, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_dual_cndmask_b32 v234, 0x80000000, v234 :: v_dual_add_nc_u32 v133, v223, v0
	v_dual_cndmask_b32 v199, 0x80000000, v199 :: v_dual_add_nc_u32 v138, v236, v0
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, v224, v0
	v_add_nc_u32_e32 v135, v227, v0
	v_add_nc_u32_e32 v236, v254, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e32 v138, 0x80000000, v138, vcc_lo
	v_dual_cndmask_b32 v137, 0x80000000, v137 :: v_dual_add_nc_u32 v134, v230, v0
	v_dual_cndmask_b32 v131, 0x80000000, v131 :: v_dual_add_nc_u32 v132, v222, v0
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v220, v247, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_dual_cndmask_b32 v134, 0x80000000, v134 :: v_dual_add_nc_u32 v235, v253, v0
	v_cndmask_b32_e32 v133, 0x80000000, v133, vcc_lo
	v_dual_cndmask_b32 v135, 0x80000000, v135 :: v_dual_cndmask_b32 v226, 0x80000000, v226
	v_dual_cndmask_b32 v197, 0x80000000, v197 :: v_dual_cndmask_b32 v236, 0x80000000, v236
	v_cndmask_b32_e32 v238, 0x80000000, v238, vcc_lo
	v_dual_cndmask_b32 v132, 0x80000000, v132 :: v_dual_cndmask_b32 v205, 0x80000000, v205
	v_dual_cndmask_b32 v220, 0x80000000, v220 :: v_dual_cndmask_b32 v235, 0x80000000, v235
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v239, v141, v0
	scratch_load_b64 v[141:142], off, off offset:272 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_dual_cndmask_b32 v239, 0x80000000, v239 :: v_dual_add_nc_u32 v200, v242, v0
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v241, v141, v0
	scratch_load_b64 v[141:142], off, off offset:280 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_dual_cndmask_b32 v200, 0x80000000, v200 :: v_dual_cndmask_b32 v241, 0x80000000, v241
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v242, v141, v0
	scratch_load_b64 v[141:142], off, off offset:288 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_dual_cndmask_b32 v242, 0x80000000, v242 :: v_dual_add_nc_u32 v219, v246, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v140, 0x80000000, v140 :: v_dual_cndmask_b32 v219, 0x80000000, v219
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v243, v141, v0
	scratch_load_b64 v[141:142], off, off offset:296 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_dual_cndmask_b32 v243, 0x80000000, v243 :: v_dual_add_nc_u32 v206, v244, v0
	v_dual_cndmask_b32 v206, 0x80000000, v206 :: v_dual_add_nc_u32 v139, v237, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v139, 0x80000000, v139 :: v_dual_add_nc_u32 v136, v231, v0
	v_cndmask_b32_e32 v136, 0x80000000, v136, vcc_lo
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v244, v141, v0
	scratch_load_b64 v[141:142], off, off offset:304 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e32 v244, 0x80000000, v244, vcc_lo
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v245, v141, v0
	scratch_load_b64 v[141:142], off, off offset:312 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_dual_cndmask_b32 v245, 0x80000000, v245 :: v_dual_cndmask_b32 v216, 0x80000000, v216
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v246, v141, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_dual_cndmask_b32 v246, 0x80000000, v246 :: v_dual_add_nc_u32 v225, v250, v0
	v_dual_cndmask_b32 v225, 0x80000000, v225 :: v_dual_add_nc_u32 v196, v232, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v196, 0x80000000, v196, vcc_lo
	s_clause 0x1f
	buffer_load_u8 v249, v131, s[8:11], 0 offen
	buffer_load_u8 v250, v133, s[8:11], 0 offen
	buffer_load_u8 v251, v135, s[8:11], 0 offen
	buffer_load_u8 v252, v137, s[8:11], 0 offen
	buffer_load_u8 v255, v139, s[8:11], 0 offen
	buffer_load_u8 v141, v196, s[8:11], 0 offen
	buffer_load_u8 v142, v199, s[8:11], 0 offen
	buffer_load_u8 v143, v205, s[8:11], 0 offen
	buffer_load_u8 v216, v216, s[8:11], 0 offen
	buffer_load_u8 v144, v220, s[8:11], 0 offen
	buffer_load_u8 v145, v226, s[8:11], 0 offen
	buffer_load_u8 v146, v235, s[8:11], 0 offen
	buffer_load_u8 v238, v238, s[8:11], 0 offen
	buffer_load_u8 v147, v241, s[8:11], 0 offen
	buffer_load_u8 v148, v243, s[8:11], 0 offen
	buffer_load_u8 v149, v245, s[8:11], 0 offen
	buffer_load_u8 v150, v138, s[8:11], 0 offen
	buffer_load_u8 v151, v136, s[8:11], 0 offen
	buffer_load_u8 v152, v134, s[8:11], 0 offen
	buffer_load_u8 v153, v132, s[8:11], 0 offen
	buffer_load_u8 v154, v206, s[8:11], 0 offen
	buffer_load_u8 v155, v200, s[8:11], 0 offen
	buffer_load_u8 v197, v197, s[8:11], 0 offen
	buffer_load_u8 v156, v140, s[8:11], 0 offen
	buffer_load_u8 v236, v236, s[8:11], 0 offen
	buffer_load_u8 v157, v234, s[8:11], 0 offen
	buffer_load_u8 v158, v225, s[8:11], 0 offen
	buffer_load_u8 v159, v219, s[8:11], 0 offen
	buffer_load_u8 v160, v246, s[8:11], 0 offen
	buffer_load_u8 v161, v244, s[8:11], 0 offen
	buffer_load_u8 v162, v242, s[8:11], 0 offen
	buffer_load_u8 v239, v239, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v248, v[194:195]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v131, off, off offset:368
	scratch_load_b32 v133, off, off offset:400
	scratch_load_b32 v135, off, off offset:404
	scratch_load_b32 v137, off, off offset:408
	scratch_load_b32 v139, off, off offset:412
	v_add_nc_u32_e32 v194, 0, v217
	s_waitcnt vmcnt(0)
	ds_load_b64 v[139:140], v139
	ds_load_2addr_stride64_b64 v[241:244], v194 offset1:1
	ds_load_2addr_stride64_b64 v[245:248], v194 offset0:2 offset1:3
	ds_load_b64 v[195:196], v131
	ds_load_b64 v[133:134], v133
	scratch_load_b32 v131, off, off offset:372 ; 4-byte Folded Reload
	ds_load_b64 v[135:136], v135
	ds_load_b64 v[137:138], v137
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_add_nc_u32_e32 v194, 0, v218
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	ds_load_b64 v[199:200], v131
	scratch_load_b32 v131, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[205:206], v131
	scratch_load_b32 v131, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[219:220], v131
	scratch_load_b32 v131, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[225:226], v131
	scratch_load_b32 v131, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[234:235], v131
	scratch_load_b32 v131, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[253:254], v131
	scratch_load_b32 v131, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[131:132], v131
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v194, v249
	ds_store_b8 v194, v250 offset:512
	ds_store_b8 v194, v251 offset:1024
	ds_store_b8 v194, v252 offset:1536
	ds_store_b8 v194, v255 offset:2048
	ds_store_b8 v194, v141 offset:2560
	ds_store_b8 v194, v142 offset:3072
	ds_store_b8 v194, v143 offset:3584
	ds_store_b8 v194, v216 offset:4096
	ds_store_b8 v194, v144 offset:4608
	ds_store_b8 v194, v145 offset:5120
	ds_store_b8 v194, v146 offset:5632
	ds_store_b8 v194, v238 offset:6144
	ds_store_b8 v194, v147 offset:6656
	ds_store_b8 v194, v148 offset:7168
	ds_store_b8 v194, v149 offset:7680
	ds_store_b8 v211, v153
	ds_store_b8 v211, v152 offset:512
	ds_store_b8 v211, v151 offset:1024
	ds_store_b8 v211, v150 offset:1536
	ds_store_b8 v211, v156 offset:2048
	ds_store_b8 v211, v197 offset:2560
	ds_store_b8 v211, v155 offset:3072
	ds_store_b8 v211, v154 offset:3584
	ds_store_b8 v211, v159 offset:4096
	ds_store_b8 v211, v158 offset:4608
	ds_store_b8 v211, v157 offset:5120
	ds_store_b8 v211, v236 offset:5632
	ds_store_b8 v211, v239 offset:6144
	ds_store_b8 v211, v162 offset:6656
	ds_store_b8 v211, v161 offset:7168
	ds_store_b8 v211, v160 offset:7680
	v_add_nc_u32_e32 v141, 0, v221
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[249:252], v141 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[249:250], v[219:220], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[251:252], v[219:220], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[249:250], v[253:254], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[251:252], v[253:254], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[249:250], v[135:136], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[251:252], v[135:136], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[249:250], v[241:242], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[251:252], v[241:242], v[73:80] neg_lo:[1,1,0]
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[249:252], v165 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[97:104], v[249:250], v[131:132], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[251:252], v[131:132], v[105:112] neg_lo:[1,1,0]
	.loc	1 1186 29                       ; ragged.py:1186:29
	scratch_load_b64 v[131:132], off, off offset:320 ; 8-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[81:88], v[249:250], v[243:244], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[251:252], v[243:244], v[89:96] neg_lo:[1,1,0]
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[241:244], v163 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[65:72], v[249:250], v[195:196], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[251:252], v[195:196], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[249:250], v[137:138], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[251:252], v[137:138], v[121:128] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[241:242], v[199:200], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[243:244], v[199:200], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[241:242], v[225:226], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[243:244], v[225:226], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[241:242], v[139:140], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[243:244], v[139:140], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[241:242], v[245:246], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[243:244], v[245:246], v[105:112] neg_lo:[1,1,0]
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[241:244], v129 offset1:8
	v_dual_mov_b32 v246, v227 :: v_dual_mov_b32 v245, v222
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[97:104], v[241:242], v[133:134], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[243:244], v[133:134], v[105:112] neg_lo:[1,1,0]
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_clause 0x7                            ; 64-byte Folded Reload
	scratch_load_b64 v[132:133], off, off offset:328
	scratch_load_b64 v[133:134], off, off offset:340
	scratch_load_b64 v[134:135], off, off offset:352
	scratch_load_b64 v[135:136], off, off offset:360
	scratch_load_b64 v[136:137], off, off offset:424
	scratch_load_b64 v[137:138], off, off offset:432
	scratch_load_b64 v[138:139], off, off offset:440
	scratch_load_b64 v[139:140], off, off offset:448
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[121:128], v[243:244], v[247:248], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[243:244], v[205:206], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[243:244], v[234:235], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[241:242], v[247:248], v[113:120] neg_lo:[1,1,0]
	v_mov_b32_e32 v247, v182
	v_wmma_i32_16x16x16_iu4 v[65:72], v[241:242], v[205:206], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[241:242], v[234:235], v[81:88] neg_lo:[1,1,0]
	v_dual_mov_b32 v244, v231 :: v_dual_mov_b32 v205, v214
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v131, v131, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e32 v131, 0x80000000, v131, vcc_lo
	buffer_load_u8 v129, v131, s[8:11], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	scratch_store_b32 off, v141, off offset:144 ; 4-byte Folded Spill
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_clause 0x16                           ; 184-byte Folded Reload
	scratch_load_b64 v[140:141], off, off offset:456
	scratch_load_b64 v[141:142], off, off offset:464
	scratch_load_b64 v[142:143], off, off offset:472
	scratch_load_b64 v[143:144], off, off offset:480
	scratch_load_b64 v[144:145], off, off offset:488
	scratch_load_b64 v[145:146], off, off offset:496
	scratch_load_b64 v[146:147], off, off offset:504
	scratch_load_b64 v[147:148], off, off offset:512
	scratch_load_b64 v[148:149], off, off offset:520
	scratch_load_b64 v[149:150], off, off offset:528
	scratch_load_b64 v[150:151], off, off offset:536
	scratch_load_b64 v[151:152], off, off offset:544
	scratch_load_b64 v[152:153], off, off offset:552
	scratch_load_b64 v[153:154], off, off offset:560
	scratch_load_b64 v[154:155], off, off offset:568
	scratch_load_b64 v[155:156], off, off offset:576
	scratch_load_b64 v[156:157], off, off offset:584
	scratch_load_b64 v[157:158], off, off offset:592
	scratch_load_b64 v[158:159], off, off offset:600
	scratch_load_b64 v[159:160], off, off offset:608
	scratch_load_b64 v[160:161], off, off offset:616
	scratch_load_b64 v[161:162], off, off offset:624
	scratch_load_b64 v[162:163], off, off offset:632
	s_waitcnt vmcnt(28)
	v_add_nc_u32_e32 v135, v135, v0
	s_waitcnt vmcnt(26)
	v_add_nc_u32_e32 v137, v137, v0
	s_waitcnt vmcnt(25)
	v_add_nc_u32_e32 v138, v138, v0
	s_waitcnt vmcnt(24)
	v_add_nc_u32_e32 v139, v139, v0
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e32 v135, 0x80000000, v135, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v137, 0x80000000, v137 :: v_dual_cndmask_b32 v138, 0x80000000, v138
	v_cndmask_b32_e32 v139, 0x80000000, v139, vcc_lo
	s_waitcnt vmcnt(23)
	scratch_store_b32 off, v129, off offset:148 ; 4-byte Folded Spill
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(22)
	v_add_nc_u32_e32 v140, v140, v0
	s_waitcnt vmcnt(21)
	v_add_nc_u32_e32 v141, v141, v0
	s_waitcnt vmcnt(20)
	v_add_nc_u32_e32 v142, v142, v0
	s_waitcnt vmcnt(19)
	v_add_nc_u32_e32 v143, v143, v0
	s_waitcnt vmcnt(18)
	v_add_nc_u32_e32 v144, v144, v0
	s_waitcnt vmcnt(17)
	v_add_nc_u32_e32 v145, v145, v0
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e32 v141, 0x80000000, v141, vcc_lo
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(15)
	v_add_nc_u32_e32 v147, v147, v0
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e32 v143, 0x80000000, v143, vcc_lo
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v149, v149, v0
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_dual_cndmask_b32 v145, 0x80000000, v145 :: v_dual_add_nc_u32 v148, v148, v0
	v_cndmask_b32_e32 v147, 0x80000000, v147, vcc_lo
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v151, v151, v0
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e32 v149, 0x80000000, v149, vcc_lo
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v153, v153, v0
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v155, v155, v0
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v157, v157, v0
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v158, v158, v0
	v_add_nc_u32_e32 v133, v133, v0
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e32 v151, 0x80000000, v151, vcc_lo
	v_cndmask_b32_e32 v153, 0x80000000, v153, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v155, 0x80000000, v155 :: v_dual_cndmask_b32 v158, 0x80000000, v158
	v_dual_cndmask_b32 v133, 0x80000000, v133 :: v_dual_add_nc_u32 v132, v132, v0
	v_cndmask_b32_e32 v157, 0x80000000, v157, vcc_lo
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v159, v159, v0
	v_add_nc_u32_e32 v134, v134, v0
	.loc	1 1185 39                       ; ragged.py:1185:39
	buffer_load_u8 v129, v133, s[8:11], 0 offen
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v161, v161, v0
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_dual_cndmask_b32 v159, 0x80000000, v159 :: v_dual_add_nc_u32 v136, v136, v0
	v_cndmask_b32_e32 v134, 0x80000000, v134, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v132, 0x80000000, v132 :: v_dual_cndmask_b32 v161, 0x80000000, v161
	v_cndmask_b32_e32 v136, 0x80000000, v136, vcc_lo
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v146, v146, v0
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e32 v144, 0x80000000, v144, vcc_lo
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v154, v154, v0
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e32 v142, 0x80000000, v142, vcc_lo
	v_cndmask_b32_e32 v140, 0x80000000, v140, vcc_lo
	v_cndmask_b32_e32 v146, 0x80000000, v146, vcc_lo
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v152, v152, v0
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e32 v154, 0x80000000, v154, vcc_lo
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v150, v150, v0
	v_add_nc_u32_e32 v156, v156, v0
	v_add_nc_u32_e32 v160, v160, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, v162, v0
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e32 v152, 0x80000000, v152, vcc_lo
	v_cndmask_b32_e32 v150, 0x80000000, v150, vcc_lo
	v_cndmask_b32_e32 v148, 0x80000000, v148, vcc_lo
	v_cndmask_b32_e32 v160, 0x80000000, v160, vcc_lo
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_cndmask_b32_e32 v156, 0x80000000, v156, vcc_lo
	s_clause 0x6
	buffer_load_u8 v253, v152, s[8:11], 0 offen
	buffer_load_u8 v250, v150, s[8:11], 0 offen
	buffer_load_u8 v197, v148, s[8:11], 0 offen
	buffer_load_u8 v252, v0, s[8:11], 0 offen
	buffer_load_u8 v249, v160, s[8:11], 0 offen
	buffer_load_u8 v196, v158, s[8:11], 0 offen
	buffer_load_u8 v195, v156, s[8:11], 0 offen
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_and_b32 vcc_lo, exec_lo, s15
	s_mov_b32 s15, 0
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(7)
	scratch_store_b32 off, v129, off offset:152 ; 4-byte Folded Spill
	buffer_load_u8 v129, v135, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v129, off offset:156 ; 4-byte Folded Spill
	buffer_load_u8 v129, v137, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v129, off offset:160 ; 4-byte Folded Spill
	buffer_load_u8 v129, v139, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v129, off offset:168 ; 4-byte Folded Spill
	buffer_load_u8 v129, v141, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v129, off offset:172 ; 4-byte Folded Spill
	buffer_load_u8 v129, v143, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v129, off offset:176 ; 4-byte Folded Spill
	buffer_load_u8 v129, v145, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v129, off offset:180 ; 4-byte Folded Spill
	buffer_load_u8 v129, v147, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v129, off offset:184 ; 4-byte Folded Spill
	buffer_load_u8 v129, v149, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v129, off offset:188 ; 4-byte Folded Spill
	buffer_load_u8 v129, v151, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v129, off offset:192 ; 4-byte Folded Spill
	buffer_load_u8 v129, v153, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v129, off offset:196 ; 4-byte Folded Spill
	buffer_load_u8 v129, v155, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v129, off offset:200 ; 4-byte Folded Spill
	buffer_load_u8 v129, v157, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v129, off offset:204 ; 4-byte Folded Spill
	buffer_load_u8 v129, v159, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v129, off offset:208 ; 4-byte Folded Spill
	buffer_load_u8 v129, v161, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v129, off offset:212 ; 4-byte Folded Spill
	buffer_load_u8 v129, v138, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v129, off offset:164 ; 4-byte Folded Spill
	buffer_load_u8 v129, v136, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v129, off offset:216 ; 4-byte Folded Spill
	buffer_load_u8 v129, v134, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v129, off offset:224 ; 4-byte Folded Spill
	buffer_load_u8 v129, v132, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v129, off offset:232 ; 4-byte Folded Spill
	buffer_load_u8 v129, v146, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v129, off offset:220 ; 4-byte Folded Spill
	buffer_load_u8 v129, v144, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v129, off offset:228 ; 4-byte Folded Spill
	s_clause 0x2
	buffer_load_u8 v254, v142, s[8:11], 0 offen
	buffer_load_u8 v251, v140, s[8:11], 0 offen
	buffer_load_u8 v129, v154, s[8:11], 0 offen
	s_mov_b32 s10, 32
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v129, off offset:236 ; 4-byte Folded Spill
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v198
	ds_store_b8 v0, v201 offset:64
	ds_store_b8 v0, v130 offset:128
	ds_store_b8 v0, v202 offset:192
	ds_store_b8 v0, v233 offset:256
	ds_store_b8 v0, v240 offset:320
	ds_store_b8 v0, v228 offset:384
	ds_store_b8 v0, v229 offset:448
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	scratch_load_b32 v0, off, off offset:416 ; 4-byte Folded Reload
	ds_load_u8 v230, v207 offset:1072
	ds_load_u8 v130, v207 offset:320
	ds_load_u8 v131, v207 offset:256
	ds_load_u8 v132, v207 offset:336
	ds_load_u8 v133, v207 offset:272
	ds_load_u8 v134, v207 offset:352
	ds_load_u8 v135, v207 offset:288
	ds_load_u8 v136, v207 offset:368
	ds_load_u8 v137, v207 offset:304
	ds_load_u8 v231, v207 offset:1472
	ds_load_u8 v243, v207 offset:1536
	ds_load_u8 v237, v207 offset:1488
	ds_load_u8 v167, v207 offset:1424
	ds_load_u8 v168, v207 offset:1504
	ds_load_u8 v169, v207 offset:1440
	ds_load_u8 v170, v207 offset:1520
	ds_load_u8 v171, v207 offset:1456
	ds_load_u8 v172, v207 offset:1408
	ds_load_u8 v173, v207 offset:1344
	ds_load_u8 v174, v207 offset:1360
	ds_load_u8 v175, v207 offset:1296
	ds_load_u8 v176, v207 offset:1376
	ds_load_u8 v177, v207 offset:1312
	ds_load_u8 v178, v207 offset:1392
	ds_load_u8 v179, v207 offset:1328
	ds_load_u8 v180, v207 offset:1984
	ds_load_u8 v220, v207 offset:2000
	ds_load_u8 v206, v207 offset:1936
	ds_load_u8 v235, v207 offset:2016
	ds_load_u8 v234, v207 offset:1952
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v207 offset:448
	ds_load_u8 v138, v207 offset:384
	ds_load_u8 v139, v207 offset:464
	ds_load_u8 v140, v207 offset:400
	ds_load_u8 v141, v207 offset:480
	ds_load_u8 v142, v207 offset:416
	ds_load_u8 v143, v207 offset:496
	ds_load_u8 v144, v207 offset:432
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v131, v138, v131, 0xc0c0004
	ds_load_u8 v138, v207 offset:64
	ds_load_u8 v145, v207
	ds_load_u8 v146, v207 offset:80
	ds_load_u8 v147, v207 offset:16
	ds_load_u8 v148, v207 offset:96
	ds_load_u8 v149, v207 offset:32
	ds_load_u8 v150, v207 offset:112
	ds_load_u8 v151, v207 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v133, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v135, v142, v141, 0xc0c0004
	v_lshl_or_b32 v131, v131, 16, v130
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v137, v144, v143, 0xc0c0004
	v_lshl_or_b32 v133, v133, 16, v132
	v_mov_b32_e32 v142, v223
	v_lshl_or_b32 v135, v135, 16, v134
	ds_load_u8 v223, v207 offset:1152
	ds_load_u8 v224, v207 offset:1088
	ds_load_u8 v203, v207 offset:1104
	ds_load_u8 v204, v207 offset:1040
	ds_load_u8 v209, v207 offset:1120
	ds_load_u8 v144, v207 offset:1056
	ds_load_u8 v210, v207 offset:1136
	v_lshl_or_b32 v137, v137, 16, v136
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v138, v145, v138, 0xc0c0004
	ds_load_u8 v145, v207 offset:192
	ds_load_u8 v152, v207 offset:128
	ds_load_u8 v153, v207 offset:208
	ds_load_u8 v154, v207 offset:144
	ds_load_u8 v155, v207 offset:224
	ds_load_u8 v156, v207 offset:160
	ds_load_u8 v157, v207 offset:240
	ds_load_u8 v158, v207 offset:176
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v145, v152, v145, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v139, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v130, v145, 16, v138
	v_perm_b32 v138, v147, v146, 0xc0c0004
	v_lshl_or_b32 v132, v139, 16, v138
	v_perm_b32 v138, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v139, v156, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v134, v139, 16, v138
	v_perm_b32 v138, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v158, v157, 0xc0c0004
	v_lshl_or_b32 v136, v139, 16, v138
	ds_load_u8 v141, v207 offset:960
	ds_load_u8 v139, v207 offset:896
	ds_load_u8 v248, v207 offset:1024
	ds_load_u8 v145, v207 offset:976
	ds_load_u8 v143, v207 offset:912
	ds_load_u8 v181, v207 offset:992
	ds_load_u8 v165, v207 offset:928
	ds_load_u8 v236, v207 offset:944
	ds_load_u8 v146, v207 offset:832
	ds_load_u8 v147, v207 offset:768
	ds_load_u8 v148, v207 offset:848
	ds_load_u8 v149, v207 offset:784
	ds_load_u8 v150, v207 offset:864
	ds_load_u8 v151, v207 offset:800
	ds_load_u8 v152, v207 offset:880
	ds_load_u8 v153, v207 offset:816
	ds_load_u8 v154, v207 offset:704
	ds_load_u8 v155, v207 offset:640
	ds_load_u8 v156, v207 offset:720
	ds_load_u8 v157, v207 offset:656
	ds_load_u8 v158, v207 offset:736
	ds_load_u8 v159, v207 offset:672
	ds_load_u8 v160, v207 offset:752
	ds_load_u8 v161, v207 offset:688
	ds_load_u8 v162, v207 offset:576
	ds_load_u8 v198, v207 offset:512
	ds_load_u8 v201, v207 offset:592
	ds_load_u8 v202, v207 offset:528
	ds_load_u8 v228, v207 offset:608
	ds_load_u8 v229, v207 offset:544
	ds_load_u8 v233, v207 offset:624
	ds_load_u8 v240, v207 offset:560
	ds_load_u8 v163, v207 offset:1216
	ds_load_u8 v208, v207 offset:1280
	ds_load_u8 v200, v207 offset:1232
	ds_load_u8 v199, v207 offset:1168
	ds_load_u8 v226, v207 offset:1248
	ds_load_u8 v225, v207 offset:1184
	ds_load_u8 v239, v207 offset:1264
	ds_load_u8 v238, v207 offset:1200
	s_waitcnt vmcnt(0)
	ds_load_u8 v185, v0
	scratch_load_b32 v0, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v242, v0
	ds_load_u8 v241, v207 offset:1968
	ds_load_u8 v188, v207 offset:1920
	ds_load_u8 v189, v207 offset:1856
	ds_load_u8 v190, v207 offset:1872
	ds_load_u8 v191, v207 offset:1808
	ds_load_u8 v192, v207 offset:1888
	ds_load_u8 v193, v207 offset:1824
	ds_load_u8 v219, v207 offset:1904
	ds_load_u8 v216, v207 offset:1840
	ds_load_u8 v212, v207 offset:1728
	ds_load_u8 v227, v207 offset:1792
	ds_load_u8 v129, v207 offset:1744
	ds_load_u8 v213, v207 offset:1680
	ds_load_u8 v0, v207 offset:1760
	ds_load_u8 v232, v207 offset:1696
	ds_load_u8 v140, v207 offset:1776
	ds_load_u8 v138, v207 offset:1712
	ds_load_u8 v182, v207 offset:1664
	ds_load_u8 v187, v207 offset:1600
	ds_load_u8 v222, v207 offset:1616
	ds_load_u8 v214, v207 offset:1552
	ds_load_u8 v183, v207 offset:1632
	ds_load_u8 v186, v207 offset:1568
	ds_load_u8 v166, v207 offset:1648
	ds_load_u8 v184, v207 offset:1584
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v255, off, off offset:148 ; 4-byte Folded Reload
	ds_store_b8 v211, v253 offset:5120
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v129, v213, v129, 0xc0c0004
	v_perm_b32 v0, v232, v0, 0xc0c0004
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(0)
	ds_store_b8 v194, v255
	scratch_load_b32 v255, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v194, v255 offset:512
	scratch_load_b32 v255, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v194, v255 offset:1024
	scratch_load_b32 v255, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v194, v255 offset:1536
	scratch_load_b32 v255, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v194, v255 offset:2048
	scratch_load_b32 v255, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v194, v255 offset:2560
	scratch_load_b32 v255, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v194, v255 offset:3072
	scratch_load_b32 v255, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v194, v255 offset:3584
	scratch_load_b32 v255, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v194, v255 offset:4096
	scratch_load_b32 v255, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v194, v255 offset:4608
	scratch_load_b32 v255, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v194, v255 offset:5120
	scratch_load_b32 v255, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v194, v255 offset:5632
	scratch_load_b32 v255, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v194, v255 offset:6144
	scratch_load_b32 v255, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v194, v255 offset:6656
	scratch_load_b32 v255, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v194, v255 offset:7168
	scratch_load_b32 v255, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v194, v255 offset:7680
	scratch_load_b32 v194, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v211, v194
	scratch_load_b32 v194, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v211, v194 offset:512
	scratch_load_b32 v194, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v211, v194 offset:1024
	scratch_load_b32 v194, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v211, v194 offset:1536
	ds_store_b8 v211, v251 offset:2048
	ds_store_b8 v211, v254 offset:2560
	scratch_load_b32 v194, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v211, v194 offset:3072
	scratch_load_b32 v194, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v211, v194 offset:3584
	ds_store_b8 v211, v197 offset:4096
	ds_store_b8 v211, v250 offset:4608
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[250:251], off, off offset:104
	scratch_load_b32 v194, off, off offset:236
	s_waitcnt vmcnt(0)
	ds_store_b8 v211, v194 offset:5632
	ds_store_b8 v211, v195 offset:6144
	ds_store_b8 v211, v196 offset:6656
	ds_store_b8 v211, v249 offset:7168
	ds_store_b8 v211, v252 offset:7680
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[251:252], off, off offset:112
	scratch_load_b64 v[252:253], off, off offset:120
	scratch_load_b64 v[253:254], off, off offset:128
	scratch_load_b64 v[254:255], off, off offset:136
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v194, off, off offset:144
	scratch_load_b32 v249, off, off offset:252
	s_waitcnt vmcnt(1)
	ds_load_2addr_stride64_b64 v[194:197], v194 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[194:195], v[130:131], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[196:197], v[130:131], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[194:195], v[132:133], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[196:197], v[132:133], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v130, v147, v146, 0xc0c0004
	v_perm_b32 v131, v139, v141, 0xc0c0004
	v_perm_b32 v132, v198, v162, 0xc0c0004
	v_perm_b32 v133, v155, v154, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[194:195], v[134:135], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[196:197], v[134:135], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v131, v131, 16, v130
	v_perm_b32 v134, v202, v201, 0xc0c0004
	v_lshl_or_b32 v130, v133, 16, v132
	v_perm_b32 v132, v149, v148, 0xc0c0004
	v_perm_b32 v133, v143, v145, 0xc0c0004
	v_perm_b32 v135, v157, v156, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[194:195], v[136:137], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[196:197], v[136:137], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v136, v229, v228, 0xc0c0004
	v_lshl_or_b32 v133, v133, 16, v132
	v_lshl_or_b32 v132, v135, 16, v134
	v_perm_b32 v135, v165, v181, 0xc0c0004
	scratch_load_b32 v165, off, off offset:240 ; 4-byte Folded Reload
	v_perm_b32 v134, v151, v150, 0xc0c0004
	v_perm_b32 v137, v159, v158, 0xc0c0004
	v_perm_b32 v141, v236, v185, 0xc0c0004
	v_perm_b32 v139, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v135, v135, 16, v134
	v_lshl_or_b32 v134, v137, 16, v136
	v_perm_b32 v136, v240, v233, 0xc0c0004
	v_perm_b32 v137, v161, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v136, v137, 16, v136
	v_lshl_or_b32 v137, v141, 16, v139
	v_perm_b32 v139, v230, v210, 0xc0c0004
	v_perm_b32 v141, v238, v239, 0xc0c0004
	v_mov_b32_e32 v230, v164
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[194:197], v165 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[194:195], v[132:133], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[196:197], v[132:133], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v133, v223, v163, 0xc0c0004
	scratch_load_b32 v163, off, off offset:244 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[1:8], v[194:195], v[130:131], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[196:197], v[130:131], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v130, v208, v173, 0xc0c0004
	v_perm_b32 v131, v172, v231, 0xc0c0004
	v_perm_b32 v132, v248, v224, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[194:195], v[134:135], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[196:197], v[134:135], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[194:195], v[136:137], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v131, v131, 16, v130
	v_lshl_or_b32 v130, v133, 16, v132
	v_perm_b32 v133, v167, v237, 0xc0c0004
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[236:237], off, off offset:8
	scratch_load_b64 v[134:135], off, off
	v_wmma_i32_16x16x16_iu4 v[57:64], v[196:197], v[136:137], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v132, v175, v174, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v135, v199, v200, 0xc0c0004
	v_perm_b32 v136, v144, v209, 0xc0c0004
	v_perm_b32 v137, v225, v226, 0xc0c0004
	scratch_load_b64 v[237:238], off, off offset:16 ; 8-byte Folded Reload
	v_lshl_or_b32 v133, v133, 16, v132
	v_mov_b32_e32 v231, v244
	v_mov_b32_e32 v223, v142
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[194:197], v163 offset1:8
	v_mov_b32_e32 v224, v134
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v134, v204, v203, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v132, v135, 16, v134
	v_perm_b32 v134, v177, v176, 0xc0c0004
	v_perm_b32 v135, v169, v168, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[194:195], v[130:131], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[196:197], v[130:131], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[194:195], v[132:133], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[196:197], v[132:133], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v135, v135, 16, v134
	v_lshl_or_b32 v134, v137, 16, v136
	v_perm_b32 v136, v179, v178, 0xc0c0004
	v_perm_b32 v137, v171, v170, 0xc0c0004
	v_perm_b32 v130, v227, v189, 0xc0c0004
	v_perm_b32 v131, v188, v180, 0xc0c0004
	v_perm_b32 v132, v243, v187, 0xc0c0004
	v_perm_b32 v133, v182, v212, 0xc0c0004
	v_lshl_or_b32 v137, v137, 16, v136
	v_lshl_or_b32 v136, v141, 16, v139
	v_wmma_i32_16x16x16_iu4 v[33:40], v[194:195], v[134:135], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[196:197], v[134:135], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v131, v131, 16, v130
	v_lshl_or_b32 v130, v133, 16, v132
	v_perm_b32 v132, v191, v190, 0xc0c0004
	v_perm_b32 v133, v206, v220, 0xc0c0004
	v_perm_b32 v134, v214, v222, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[194:195], v[136:137], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[196:197], v[136:137], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v136, v186, v183, 0xc0c0004
	v_lshl_or_b32 v133, v133, 16, v132
	v_lshl_or_b32 v132, v129, 16, v134
	v_perm_b32 v129, v193, v192, 0xc0c0004
	v_perm_b32 v134, v234, v235, 0xc0c0004
	v_dual_mov_b32 v222, v245 :: v_dual_mov_b32 v227, v246
	v_mov_b32_e32 v182, v247
	v_perm_b32 v137, v216, v219, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v135, v134, 16, v129
	v_lshl_or_b32 v134, v0, 16, v136
	v_perm_b32 v0, v184, v166, 0xc0c0004
	v_perm_b32 v129, v138, v140, 0xc0c0004
	v_perm_b32 v138, v241, v242, 0xc0c0004
	scratch_load_b64 v[241:242], off, off offset:48 ; 8-byte Folded Reload
	v_mov_b32_e32 v214, v205
	v_lshl_or_b32 v136, v129, 16, v0
	s_clause 0xa                            ; 80-byte Folded Reload
	scratch_load_b32 v129, off, off offset:248
	scratch_load_b64 v[238:239], off, off offset:24
	scratch_load_b64 v[242:243], off, off offset:56
	scratch_load_b64 v[243:244], off, off offset:64
	scratch_load_b64 v[244:245], off, off offset:72
	scratch_load_b64 v[245:246], off, off offset:80
	scratch_load_b64 v[246:247], off, off offset:88
	scratch_load_b64 v[247:248], off, off offset:96
	scratch_load_b32 v248, off, off offset:336
	scratch_load_b64 v[239:240], off, off offset:40
	scratch_load_b64 v[232:233], off, off offset:32
	v_lshl_or_b32 v137, v138, 16, v137
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(10)
	ds_load_2addr_stride64_b64 v[194:197], v129 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[194:195], v[130:131], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[196:197], v[130:131], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[194:195], v[132:133], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[196:197], v[132:133], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[194:195], v[134:135], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[196:197], v[134:135], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[194:195], v[136:137], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[196:197], v[136:137], v[57:64] neg_lo:[1,1,0]
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_vccnz .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v220, v73
	v_cvt_f32_i32_e32 v200, v74
	v_cvt_f32_i32_e32 v136, v83
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v74, v22
	v_cvt_f32_i32_e32 v73, v23
	v_cvt_f32_i32_e32 v83, v36
	v_cvt_f32_i32_e32 v23, v43
	v_cvt_f32_i32_e32 v22, v44
	v_cvt_f32_i32_e32 v36, v55
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v55, off, off offset:1168
	scratch_load_b32 v43, off, off offset:1152
	scratch_load_b32 v44, off, off offset:1156
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v201, v70
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v70, v6
	v_cvt_f32_i32_e32 v6, v30
	v_cvt_f32_i32_e32 v30, v40
	v_cvt_f32_i32_e32 v40, v51
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v202, v69
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v69, v7
	v_cvt_f32_i32_e32 v7, v31
	v_cvt_f32_i32_e32 v31, v39
	v_cvt_f32_i32_e32 v39, v52
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s10, s39, s38
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v228, v86
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s10, s10, s37
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v86, v33
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v133, v68
	v_cvt_f32_i32_e32 v137, v84
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v68, v8
	v_cvt_f32_i32_e32 v8, v32
	v_cvt_f32_i32_e32 v84, v35
	v_cvt_f32_i32_e32 v32, v38
	v_cvt_f32_i32_e32 v38, v53
	v_cvt_f32_i32_e32 v35, v56
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v198, v71
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v71, v5
	v_cvt_f32_i32_e32 v5, v29
	v_cvt_f32_i32_e32 v29, v57
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v129, v65
	v_cvt_f32_i32_e32 v131, v66
	v_cvt_f32_i32_e32 v132, v67
	v_cvt_f32_i32_e32 v130, v72
	v_cvt_f32_i32_e32 v134, v81
	v_cvt_f32_i32_e32 v206, v91
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v91, v1
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
	v_cvt_f32_i32_e32 v229, v85
	v_cvt_f32_i32_e32 v226, v87
	v_cvt_f32_i32_e32 v87, v96
	v_cvt_f32_i32_e32 v96, v128
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v85, v34
	v_cvt_f32_i32_e32 v34, v37
	v_cvt_f32_i32_e32 v37, v54
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v216, v90
	v_cvt_f32_i32_e32 v90, v93
	v_cvt_f32_i32_e32 v93, v111
	v_cvt_f32_i32_e32 v111, v116
	v_cvt_f32_i32_e32 v205, v92
	v_cvt_f32_i32_e32 v92, v112
	v_cvt_f32_i32_e32 v112, v117
	v_cvt_f32_i32_e32 v225, v88
	v_cvt_f32_i32_e32 v88, v95
	v_cvt_f32_i32_e32 v95, v109
	v_cvt_f32_i32_e32 v109, v114
	v_cvt_f32_i32_e32 v114, v119
	v_cvt_f32_i32_e32 v141, v100
	v_cvt_f32_i32_e32 v100, v108
	v_cvt_f32_i32_e32 v108, v113
	v_cvt_f32_i32_e32 v113, v118
	v_cvt_f32_i32_e32 v142, v101
	v_cvt_f32_i32_e32 v234, v103
	v_cvt_f32_i32_e32 v103, v105
	v_cvt_f32_i32_e32 v101, v107
	v_cvt_f32_i32_e32 v107, v121
	v_cvt_f32_i32_e32 v105, v123
	v_cvt_f32_i32_e32 v135, v82
	v_cvt_f32_i32_e32 v219, v89
	v_cvt_f32_i32_e32 v89, v94
	v_cvt_f32_i32_e32 v94, v110
	v_cvt_f32_i32_e32 v110, v115
	v_cvt_f32_i32_e32 v138, v97
	v_cvt_f32_i32_e32 v139, v98
	v_cvt_f32_i32_e32 v115, v120
	v_cvt_f32_i32_e32 v140, v99
	v_cvt_f32_i32_e32 v235, v102
	v_cvt_f32_i32_e32 v102, v106
	v_cvt_f32_i32_e32 v106, v122
	s_waitcnt vmcnt(3)
	v_cvt_f32_i32_e32 v233, v104
	v_cvt_f32_i32_e32 v199, v75
	v_cvt_f32_i32_e32 v197, v76
	v_cvt_f32_i32_e32 v104, v124
	v_cvt_f32_i32_e32 v196, v77
	v_cvt_f32_i32_e32 v194, v79
	v_cvt_f32_i32_e32 v195, v78
	v_cvt_f32_i32_e32 v0, v80
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v76, v4
	v_cvt_f32_i32_e32 v4, v16
	v_cvt_f32_i32_e32 v77, v3
	v_cvt_f32_i32_e32 v3, v15
	v_cvt_f32_i32_e32 v15, v61
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v99, v125
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v79, v20
	v_cvt_f32_i32_e32 v20, v63
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v98, v126
	v_cvt_f32_i32_e32 v97, v127
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v78, v2
	v_cvt_f32_i32_e32 v82, v17
	v_cvt_f32_i32_e32 v80, v19
	v_cvt_f32_i32_e32 v75, v21
	v_cvt_f32_i32_e32 v17, v26
	v_cvt_f32_i32_e32 v16, v27
	v_cvt_f32_i32_e32 v2, v14
	v_cvt_f32_i32_e32 v14, v28
	v_cvt_f32_i32_e32 v27, v59
	v_cvt_f32_i32_e32 v28, v58
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
	scratch_load_b32 v44, off, off offset:1160 ; 4-byte Folded Reload
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
	scratch_load_b32 v44, off, off offset:1164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v52, 16, v52
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s39, v44, 1
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s39, s39, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s39, s30
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v52, v9
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v44, 0x80000000, v44, s3
	buffer_load_u16 v53, v44, s[12:15], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v56, off, off offset:1172 ; 4-byte Folded Reload
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v56, v33
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x13                           ; 80-byte Folded Reload
	scratch_load_b32 v57, off, off offset:1176
	scratch_load_b32 v203, off, off offset:1096
	scratch_load_b32 v193, off, off offset:1056
	scratch_load_b32 v177, off, off offset:992
	scratch_load_b32 v178, off, off offset:996
	scratch_load_b32 v180, off, off offset:1004
	scratch_load_b32 v179, off, off offset:1000
	scratch_load_b32 v169, off, off offset:960
	scratch_load_b32 v170, off, off offset:964
	scratch_load_b32 v171, off, off offset:968
	scratch_load_b32 v172, off, off offset:972
	scratch_load_b32 v153, off, off offset:896
	scratch_load_b32 v156, off, off offset:908
	scratch_load_b32 v162, off, off offset:932
	scratch_load_b32 v146, off, off offset:868
	scratch_load_b32 v154, off, off offset:900
	scratch_load_b32 v161, off, off offset:928
	scratch_load_b32 v163, off, off offset:936
	scratch_load_b32 v164, off, off offset:940
	scratch_load_b32 v147, off, off offset:872
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v33, 16, v43
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(19)
	ds_load_b128 v[43:46], v57
	ds_load_b128 v[47:50], v57 offset:16
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v155, off, off offset:904
	scratch_load_b32 v145, off, off offset:864
	scratch_load_b32 v148, off, off offset:876
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v33, v129
	s_clause 0x10                           ; 68-byte Folded Reload
	scratch_load_b32 v128, off, off offset:800
	scratch_load_b32 v118, off, off offset:712
	scratch_load_b32 v120, off, off offset:768
	scratch_load_b32 v122, off, off offset:776
	scratch_load_b32 v129, off, off offset:804
	scratch_load_b32 v116, off, off offset:704
	scratch_load_b32 v117, off, off offset:708
	scratch_load_b32 v119, off, off offset:716
	scratch_load_b32 v121, off, off offset:772
	scratch_load_b32 v192, off, off offset:1052
	scratch_load_b32 v191, off, off offset:1048
	scratch_load_b32 v188, off, off offset:1036
	scratch_load_b32 v190, off, off offset:1044
	scratch_load_b32 v189, off, off offset:1040
	scratch_load_b32 v187, off, off offset:1032
	scratch_load_b32 v186, off, off offset:1028
	scratch_load_b32 v185, off, off offset:1024
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(36) lgkmcnt(1)
	v_fmac_f32_e32 v177, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v33, v131
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v131, off, off offset:808
	scratch_load_b32 v123, off, off offset:780
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(37)
	v_dual_mul_f32 v15, v53, v15 :: v_dual_fmac_f32 v178, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v33, v132
	scratch_load_b32 v132, off, off offset:812 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(37)
	v_fmac_f32_e32 v180, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v33, v133
	v_mul_f32_e32 v0, v0, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v33, v1
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(36)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v179, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v134
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(31)
	v_fmac_f32_e32 v153, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v135
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(27)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v154, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v136
	scratch_load_b32 v136, off, off offset:832 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v156, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v137
	scratch_load_b32 v137, off, off offset:836 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(24)
	v_fmac_f32_e32 v155, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v138
	scratch_load_b32 v138, off, off offset:840 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(22)
	v_fmac_f32_e32 v128, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v139
	scratch_load_b32 v139, off, off offset:844 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(19)
	v_fmac_f32_e32 v129, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v140
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v132, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v141
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v131, v54, v46 :: v_dual_mul_f32 v54, v53, v108
	scratch_load_b32 v108, off, off offset:672 ; 4-byte Folded Reload
	v_dual_fmac_f32 v116, v54, v43 :: v_dual_mul_f32 v43, v53, v109
	scratch_load_b32 v109, off, off offset:676 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v54, v220, v33 :: v_dual_fmac_f32 v117, v43, v44
	v_mul_f32_e32 v43, v53, v110
	scratch_load_b32 v110, off, off offset:680 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v119, v43, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v111
	scratch_load_b32 v111, off, off offset:684 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v118, v43, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v33, v202
	scratch_load_b32 v202, off, off offset:1092 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v169, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v33, v201
	scratch_load_b32 v201, off, off offset:1088 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v170, v43, v48 :: v_dual_mul_f32 v43, v33, v198
	scratch_load_b32 v198, off, off offset:1076 ; 4-byte Folded Reload
	v_fmac_f32_e32 v171, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v33, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v172, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v229
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v145, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v228
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v146, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v226
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v147, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v225
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v148, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v142
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v120, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v235
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v121, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v234
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v122, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v233
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v123, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v112
	scratch_load_b32 v112, off, off offset:736 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v108, v43, v47 :: v_dual_mul_f32 v43, v53, v113
	scratch_load_b32 v113, off, off offset:740 ; 4-byte Folded Reload
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v109, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v114
	scratch_load_b32 v114, off, off offset:744 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v110, v43, v49 :: v_dual_mul_f32 v43, v53, v115
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v111, v43, v50
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[43:46], v57 offset:512
	ds_load_b128 v[47:50], v57 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v203, v54, v43 :: v_dual_mul_f32 v54, v33, v200
	v_dual_fmac_f32 v161, v54, v44 :: v_dual_mul_f32 v54, v33, v199
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v162, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v33, v197
	scratch_load_b32 v197, off, off offset:1072 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v163, v54, v46 :: v_dual_mul_f32 v54, v219, v51
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v197, v54, v43 :: v_dual_mul_f32 v54, v51, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v136, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v206
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v137, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v138, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v103, v52
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v192, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v102
	scratch_load_b32 v102, off, off offset:652 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v112, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v101
	scratch_load_b32 v101, off, off offset:648 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v113, v54, v45 :: v_dual_mul_f32 v54, v52, v100
	scratch_load_b32 v100, off, off offset:644 ; 4-byte Folded Reload
	v_fmac_f32_e32 v114, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v107, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v188, v54, v43 :: v_dual_mul_f32 v43, v53, v106
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v100, v43, v44 :: v_dual_mul_f32 v43, v53, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v101, v43, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v104
	scratch_load_b32 v104, off, off offset:748 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v102, v43, v46 :: v_dual_mul_f32 v43, v33, v196
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v164, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v195, v33
	scratch_load_b32 v195, off, off offset:1064 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v198, v0, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v51, v90
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v202, v43, v48 :: v_dual_mul_f32 v43, v194, v33
	scratch_load_b32 v194, off, off offset:1060 ; 4-byte Folded Reload
	v_fmac_f32_e32 v139, v0, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v0, v89, v51 :: v_dual_fmac_f32 v201, v43, v49
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v195, v0, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v88, v51
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v194, v0, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v87, v51
	scratch_load_b32 v87, off, off offset:640 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v193, v0, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v52, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v104, v0, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v94, v52
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v191, v0, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v93, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v190, v0, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v92, v52
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v189, v0, v50 :: v_dual_mul_f32 v0, v53, v99
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v87, v0, v47 :: v_dual_mul_f32 v0, v98, v53
	v_dual_fmac_f32 v187, v0, v48 :: v_dual_mul_f32 v0, v97, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v186, v0, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v96, v53
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v185, v0, v50 :: v_dual_add_nc_u32 v0, s33, v55
	s_delay_alu instid0(VALU_DEP_1)
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
	scratch_load_b32 v184, off, off offset:1020
	scratch_load_b32 v183, off, off offset:1016
	scratch_load_b32 v181, off, off offset:1008
	scratch_load_b32 v216, off, off offset:1012
	scratch_load_b32 v176, off, off offset:988
	scratch_load_b32 v175, off, off offset:984
	scratch_load_b32 v173, off, off offset:976
	scratch_load_b32 v174, off, off offset:980
	scratch_load_b32 v160, off, off offset:924
	scratch_load_b32 v168, off, off offset:956
	scratch_load_b32 v167, off, off offset:952
	scratch_load_b32 v166, off, off offset:948
	scratch_load_b32 v165, off, off offset:944
	scratch_load_b32 v159, off, off offset:920
	scratch_load_b32 v158, off, off offset:916
	scratch_load_b32 v157, off, off offset:912
	scratch_load_b32 v135, off, off offset:828
	scratch_load_b32 v134, off, off offset:824
	scratch_load_b32 v130, off, off offset:816
	scratch_load_b32 v133, off, off offset:820
	scratch_load_b32 v127, off, off offset:796
	scratch_load_b32 v126, off, off offset:792
	scratch_load_b32 v124, off, off offset:784
	scratch_load_b32 v125, off, off offset:788
	scratch_load_b32 v103, off, off offset:732
	scratch_load_b32 v115, off, off offset:764
	scratch_load_b32 v107, off, off offset:760
	scratch_load_b32 v106, off, off offset:756
	scratch_load_b32 v105, off, off offset:752
	scratch_load_b32 v99, off, off offset:728
	scratch_load_b32 v95, off, off offset:724
	scratch_load_b32 v94, off, off offset:720
	s_clause 0xc                            ; 52-byte Folded Reload
	scratch_load_b32 v152, off, off offset:892
	scratch_load_b32 v151, off, off offset:888
	scratch_load_b32 v150, off, off offset:884
	scratch_load_b32 v149, off, off offset:880
	scratch_load_b32 v144, off, off offset:860
	scratch_load_b32 v142, off, off offset:856
	scratch_load_b32 v140, off, off offset:848
	scratch_load_b32 v141, off, off offset:852
	scratch_load_b32 v93, off, off offset:700
	scratch_load_b32 v92, off, off offset:696
	scratch_load_b32 v90, off, off offset:688
	scratch_load_b32 v89, off, off offset:668
	scratch_load_b32 v88, off, off offset:664
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v33, v91
	scratch_load_b32 v91, off, off offset:692 ; 4-byte Folded Reload
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[43:46], v57
	ds_load_b128 v[47:50], v57 offset:16
	s_clause 0xb                            ; 48-byte Folded Reload
	scratch_load_b32 v213, off, off offset:1148
	scratch_load_b32 v212, off, off offset:1144
	scratch_load_b32 v143, off, off offset:1136
	scratch_load_b32 v210, off, off offset:1128
	scratch_load_b32 v209, off, off offset:1124
	scratch_load_b32 v208, off, off offset:1120
	scratch_load_b32 v206, off, off offset:1116
	scratch_load_b32 v204, off, off offset:1100
	scratch_load_b32 v205, off, off offset:1104
	scratch_load_b32 v200, off, off offset:1084
	scratch_load_b32 v199, off, off offset:1080
	scratch_load_b32 v196, off, off offset:1068
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
	v_fmac_f32_e32 v216, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v51, v82
	scratch_load_b32 v82, off, off offset:1132 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(50)
	v_fmac_f32_e32 v160, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v51, v81
	scratch_load_b32 v81, off, off offset:1140 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(46)
	v_fmac_f32_e32 v159, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v51, v80
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(45)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v158, v0, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v51, v79
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(44)
	v_fmac_f32_e32 v157, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v86
	scratch_load_b32 v86, off, off offset:660 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(44)
	v_fmac_f32_e32 v135, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v85
	scratch_load_b32 v85, off, off offset:656 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(44)
	v_fmac_f32_e32 v134, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v84
	scratch_load_b32 v84, off, off offset:1108 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(44)
	v_fmac_f32_e32 v130, v0, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v83
	scratch_load_b32 v83, off, off offset:1112 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(44)
	v_fmac_f32_e32 v133, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v53, v42
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(39)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v103, v0, v43 :: v_dual_mul_f32 v0, v53, v41
	s_waitcnt vmcnt(34)
	v_fmac_f32_e32 v99, v0, v44
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
	v_fmac_f32_e32 v152, v0, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v51, v74
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(30)
	v_dual_fmac_f32 v151, v0, v48 :: v_dual_mul_f32 v0, v51, v73
	s_waitcnt vmcnt(29)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v150, v0, v49
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v51, v72
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(28)
	v_fmac_f32_e32 v149, v0, v50
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v127, v0, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v32
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v126, v0, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v124, v0, v49
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v30
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v125, v0, v50
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v213, v0, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v33, v66
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v165, v1, v38
	v_fmac_f32_e32 v141, v5, v38
	v_dual_fmac_f32 v105, v9, v38 :: v_dual_fmac_f32 v168, v0, v35
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
	v_fmac_f32_e32 v144, v0, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v51, v16
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v142, v0, v36
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v51, v14
	v_mul_f32_e32 v14, v21, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v140, v0, v37
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v25, v52
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v196, v14, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v206, v0, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v24
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v115, v0, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v0, v52, v23 :: v_dual_fmac_f32 v85, v15, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v107, v0, v36
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v22
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v84, v10, v40
	v_fmac_f32_e32 v106, v0, v37
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
	v_dual_fmac_f32 v212, v0, v39 :: v_dual_fmac_f32 v81, v2, v40
	v_dual_fmac_f32 v143, v3, v41 :: v_dual_fmac_f32 v210, v4, v39
	v_dual_fmac_f32 v209, v6, v40 :: v_dual_fmac_f32 v208, v7, v41
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v83, v8, v39
	v_fmac_f32_e32 v205, v11, v41
	v_fmac_f32_e32 v199, v13, v40
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v96, off, off offset:1180
	scratch_load_b32 v97, off, off offset:1184
	scratch_load_b32 v98, off, off offset:1188
	v_and_b32_e32 v1, 0x80, v249
	v_mov_b32_e32 v3, v214
.LBB0_9:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v213 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v216
	v_dual_mul_f32 v6, 0xbfb8aa3b, v143 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v165
	v_dual_mul_f32 v2, 0xbfb8aa3b, v81 :: v_dual_mul_f32 v35, 0xbfb8aa3b, v167
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v6
	v_dual_mul_f32 v24, 0xbfb8aa3b, v173 :: v_dual_mul_f32 v15, 0xbfb8aa3b, v208
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0x42800000, s1
	v_mul_f32_e32 v0, 0xbfb8aa3b, v212
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0x42800000, s0
	v_dual_fmac_f32 v10, 0xbfb8aa3b, v213 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v158
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v143
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v6, 0xbfb8aa3b, v81 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v159
	v_exp_f32_e32 v10, v10
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v14, v6
	v_exp_f32_e32 v13, v13
	v_mul_f32_e32 v37, 0xbfb8aa3b, v157
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v212
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s1
	v_mul_f32_e32 v45, 0xbfb8aa3b, v144
	v_ldexp_f32 v9, v10, v9
	v_mul_f32_e32 v10, 0xbfb8aa3b, v82
	v_exp_f32_e32 v2, v2
	v_ldexp_f32 v11, v14, v11
	v_dual_mul_f32 v14, 0xbfb8aa3b, v209 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_dual_mul_f32 v10, 0xbfb8aa3b, v210 :: v_dual_mul_f32 v19, 0xbfb8aa3b, v205
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
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v18, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v19
	v_exp_f32_e32 v13, v13
	v_dual_fmac_f32 v14, 0xbfb8aa3b, v210 :: v_dual_mul_f32 v59, 0xbfb8aa3b, v135
	v_dual_fmac_f32 v16, 0xbfb8aa3b, v209 :: v_dual_mul_f32 v53, 0xbfb8aa3b, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v23, 0, 0x42800000, s1
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v208
	v_exp_f32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v16, v16
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v205
	v_exp_f32_e32 v18, v18
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s0
	v_ldexp_f32 v13, v13, v2
	v_dual_mul_f32 v2, 0xbfb8aa3b, v206 :: v_dual_add_f32 v9, 1.0, v9
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v10, v14, v10
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v14, v16, v15
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_mul_f32_e32 v16, 0xbfb8aa3b, v83
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v15, v18, v17
	v_mul_f32_e32 v18, 0xbfb8aa3b, v84
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v18
	v_mul_f32_e32 v48, 0xbfb8aa3b, v160
	v_dual_mul_f32 v54, 0xbfb8aa3b, v105 :: v_dual_add_f32 v11, 1.0, v11
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v20, 0, 0x42800000, s0
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s0
	v_dual_fmac_f32 v17, 0xbfb8aa3b, v206 :: v_dual_fmac_f32 v18, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v20, 0xbfb8aa3b, v84 :: v_dual_add_f32 v15, 1.0, v15
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v9, v9, v213
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_2)
	v_exp_f32_e32 v20, v20
	v_exp_f32_e32 v17, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, s1, v81, v11, v81
	v_rcp_f32_e32 v70, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v56, 0xbfb8aa3b, v127 :: v_dual_add_f32 v13, 1.0, v13
	v_ldexp_f32 v16, v18, v16
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_ldexp_f32 v18, v20, v19
	v_ldexp_f32 v19, v23, v22
	v_mul_f32_e32 v20, 0xbfb8aa3b, v200
	v_mul_f32_e32 v23, 0xbfb8aa3b, v196
	v_ldexp_f32 v17, v17, v2
	v_dual_mul_f32 v2, 0xbfb8aa3b, v204 :: v_dual_add_f32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v20
	v_mul_f32_e32 v22, 0xbfb8aa3b, v199
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v13, v13, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v49, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v23, 0, 0x42800000, s0
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s0
	v_dual_fmac_f32 v49, 0xbfb8aa3b, v200 :: v_dual_mul_f32 v60, 0xbfb8aa3b, v107
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v196
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v65, v49
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, vcc_lo, v213, v9, v213
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v23
	v_dual_mul_f32 v8, 0xbfb8aa3b, v184 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v174
	v_dual_mul_f32 v4, 0xbfb8aa3b, v181 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v183
	v_dual_mul_f32 v6, 0xbfb8aa3b, v176 :: v_dual_mul_f32 v33, 0xbfb8aa3b, v149
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v32, v65, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v66, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v36, 0xbfb8aa3b, v168 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v142
	v_ldexp_f32 v64, v68, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v11, v11, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v70, v65, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v62, 0xbfb8aa3b, v115
	v_dual_mul_f32 v30, 0xbfb8aa3b, v166 :: v_dual_mul_f32 v41, 0xbfb8aa3b, v140
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v73, v71, v70 :: v_dual_mul_f32 v52, 0xbfb8aa3b, v152
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v57, 0xbfb8aa3b, v94 :: v_dual_mul_f32 v40, 0xbfb8aa3b, v151
	v_mul_f32_e32 v55, 0xbfb8aa3b, v106
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v66, v73, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v91
	v_dual_mul_f32 v34, 0xbfb8aa3b, v150 :: v_dual_mul_f32 v43, 0xbfb8aa3b, v125
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v68, v72, 1.0
	v_dual_fmac_f32 v73, v75, v70 :: v_dual_mul_f32 v38, 0xbfb8aa3b, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v61, 0xbfb8aa3b, v103 :: v_dual_mul_f32 v50, 0xbfb8aa3b, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v25, 0xbfb8aa3b, v90 :: v_dual_fmac_f32 v72, v76, v72
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v199
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v66, v73, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v42, 0xbfb8aa3b, v130 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v79, v77, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v66, v66, v70, v73
	v_rcp_f32_e32 v70, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v44, 0xbfb8aa3b, v124 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v89
	v_mul_f32_e32 v49, 0xbfb8aa3b, v93
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v9, v66, v9, v213
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp6:
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v63, v67, v63
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v0, v0, v212
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
	v_mul_f32_e32 v46, 0xbfb8aa3b, v95
	v_ldexp_f32 v69, v20, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v58, 0xbfb8aa3b, v99 :: v_dual_fmac_f32 v65, v74, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, s0, v212, v0, v212
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
	v_div_scale_f32 v77, null, v14, v14, v209
	v_fmac_f32_e32 v70, v71, v70
	v_div_fmas_f32 v66, v66, v72, v79
	v_div_scale_f32 v71, null, v10, v10, v210
	v_div_fixup_f32 v0, v65, v0, v212
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
	v_div_scale_f32 v76, null, v12, v12, v143
	v_div_scale_f32 v67, s2, v143, v12, v143
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
	v_div_scale_f32 v65, s1, v210, v10, v210
	v_fma_f32 v67, -v76, v68, v67
	v_div_scale_f32 v76, null, v15, v15, v208
	v_fmac_f32_e32 v72, v74, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v67, v67, v78, v68
	v_rcp_f32_e32 v74, v76
	v_fma_f32 v68, -v80, v75, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v73, v65, v72
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v80, null, v17, v17, v206
	v_div_fmas_f32 v68, v68, v70, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v70, -v71, v73, v65
	v_div_scale_f32 v81, s0, v208, v15, v208
	v_fma_f32 v79, -v76, v74, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v13, v68, v13, v82
	v_fmac_f32_e32 v73, v70, v72
	v_div_scale_f32 v78, s2, v209, v14, v209
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v65, -v71, v73, v65
	v_mul_f32_e32 v75, v78, v66
	v_div_fixup_f32 v12, v67, v12, v143
	v_fmac_f32_e32 v74, v79, v74
	v_rcp_f32_e32 v79, v80
	v_div_fmas_f32 v65, v65, v72, v73
	v_fma_f32 v67, -v77, v75, v78
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v81, v74
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v10, v65, v10, v210
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
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v67, v74
	v_div_fmas_f32 v66, v72, v66, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v67, v82, v79
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v73, -v70, v71, 1.0
	v_fma_f32 v72, -v76, v68, v81
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v80, v67, v82
	v_div_scale_f32 v76, s1, v83, v16, v83
	v_fmac_f32_e32 v71, v73, v71
	v_div_fmas_f32 v68, v72, v74, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v67, v75, v79
	v_div_fixup_f32 v65, v66, v14, v209
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v74, v76, v71
	v_div_fixup_f32 v66, v68, v15, v208
	v_fma_f32 v14, -v80, v67, v82
	v_div_scale_f32 v68, null, v19, v19, v205
	v_div_scale_f32 v73, null, v18, v18, v84
	v_fma_f32 v15, -v70, v74, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v14, v14, v79, v67
	v_rcp_f32_e32 v67, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v72, v73
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v74, v15, v71
	v_div_fixup_f32 v77, v14, v17, v206
	v_div_scale_f32 v15, s0, v84, v18, v84
	v_fma_f32 v14, -v70, v74, v76
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v70, -v68, v67, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v73, v72, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v14, v14, v71, v74
	v_div_scale_f32 v74, s1, v205, v19, v205
	v_fmac_f32_e32 v67, v70, v67
	v_div_scale_f32 v70, null, v32, v32, v200
	v_fmac_f32_e32 v72, v75, v72
	v_div_fixup_f32 v79, v14, v16, v83
	v_div_scale_f32 v75, null, v69, v69, v204
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v14, v70
	v_mul_f32_e32 v17, v15, v72
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v76, v75
	v_div_scale_f32 v83, null, v64, v64, v196
	v_fma_f32 v71, -v73, v17, v15
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v81, -v70, v14, 1.0
	v_fmac_f32_e32 v17, v71, v72
	v_div_scale_f32 v71, s2, v204, v69, v204
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v75, v76, 1.0
	v_fmac_f32_e32 v14, v81, v14
	v_mul_f32_e32 v16, v74, v67
	v_fma_f32 v15, -v73, v17, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v76, v78, v76
	v_div_scale_f32 v78, null, v63, v63, v199
	v_fma_f32 v73, -v68, v16, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v15, v15, v72, v17
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v82, v78
	v_rcp_f32_e32 v72, v83
	v_fmac_f32_e32 v16, v73, v67
	v_div_fixup_f32 v84, v15, v18, v84
	v_div_scale_f32 v73, s0, v200, v32, v200
	v_div_scale_f32 v18, s3, v199, v63, v199
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v15, -v68, v16, v74
	v_fma_f32 v81, -v78, v82, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v68, -v83, v72, 1.0
	v_div_fmas_f32 v15, v15, v67, v16
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v82, v81, v82
	v_div_fixup_f32 v74, v15, v19, v205
	v_mul_f32_e32 v80, v71, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v75, v80, v71
	v_fmac_f32_e32 v80, v17, v76
	v_mul_f32_e32 v17, v73, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v16, -v75, v80, v71
	v_mul_f32_e32 v71, v18, v82
	v_fma_f32 v67, -v70, v17, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v15, -v78, v71, v18
	v_fmac_f32_e32 v17, v67, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v71, v15, v82
	v_div_fmas_f32 v16, v16, v76, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v70, v17, v73
	s_delay_alu instid0(VALU_DEP_3)
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
	v_mul_f32_e32 v15, v197, v13
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
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v216
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
	v_mul_f32_e32 v17, v198, v12
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
	v_div_scale_f32 v75, null, v70, v70, v216
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
	v_div_scale_f32 v71, s1, v216, v70, v216
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
	v_div_fixup_f32 v24, v71, v70, v216
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
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v165
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
	v_div_scale_f32 v68, null, v63, v63, v165
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
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v160
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
	v_div_scale_f32 v73, s0, v165, v63, v165
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v65, v65, v74, v168
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v159
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
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v157
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v74, v74, v160
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
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v158
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v31, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v75, v69, 1.0
	v_div_scale_f32 v66, null, v68, v68, v159
	v_div_fmas_f32 v0, v67, v0, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v37, v69
	v_rcp_f32_e32 v67, v66
	v_div_scale_f32 v73, vcc_lo, v160, v74, v160
	v_div_fixup_f32 v0, v0, v63, v165
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, s0, v159, v68, v159
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v164, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v39, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v39, v162, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v37, v48, v70, v166
	v_mul_f32_e32 v70, v73, v69
	v_fma_f32 v48, -v66, v67, 1.0
	v_div_scale_f32 v63, null, v72, v72, v157
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v75, v70, v73
	v_fmac_f32_e32 v67, v48, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v71, v63
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v161, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v78, null, v0, v0, v158
	v_fmac_f32_e32 v70, v76, v69
	v_dual_mul_f32 v64, v77, v67 :: v_dual_mul_f32 v37, v163, v37
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
	v_div_scale_f32 v76, s1, v157, v72, v157
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v152
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
	v_div_scale_f32 v73, s2, v158, v0, v158
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
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v151
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v52, v52, v74, v160
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
	v_div_scale_f32 v67, null, v65, v65, v152
	v_fma_f32 v63, -v63, v70, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v150
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
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v149
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v64, v64, v151
	v_fmac_f32_e32 v71, v69, v71
	v_div_scale_f32 v69, vcc_lo, v152, v65, v152
	v_div_fixup_f32 v40, v40, v68, v159
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v75, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v74, 1.0, v34 :: v_dual_mul_f32 v77, v69, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v74, v74, v150
	v_fma_f32 v68, -v67, v77, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v68, v71
	v_fma_f32 v67, -v67, v77, v69
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v67, v67, v71, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v153, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v34, v63, v72, v157
	v_fma_f32 v72, -v70, v75, 1.0
	v_rcp_f32_e32 v63, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v72, v75
	v_div_fixup_f32 v0, v33, v0, v158
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v144
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v52, v67, v65, v152
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v156, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v79
	v_ldexp_f32 v0, v73, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, s0, v151, v64, v151
	v_fma_f32 v68, -v76, v63, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v69, v66, v75
	v_fmac_f32_e32 v63, v68, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v47, v78
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, s1, v150, v74, v150
	v_fma_f32 v73, -v70, v69, v66
	v_div_scale_f32 v72, null, v0, v0, v149
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v77, v68, v63
	v_fmac_f32_e32 v69, v73, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v71, v72
	v_fma_f32 v65, -v76, v77, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v66, -v70, v69, v66
	v_fmac_f32_e32 v77, v65, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v72, v71, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v154, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v76, v77, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v71, v67, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v66, v66, v75, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v142
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_exp_f32_e32 v41, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, s2, v149, v0, v149
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v34, v155, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v69, v70, v71
	v_div_fmas_f32 v63, v68, v63, v77
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v41, v41, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v67, v67, v144
	v_fma_f32 v47, -v72, v69, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v140
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v65, v76
	v_fmac_f32_e32 v69, v47, v71
	v_div_fixup_f32 v47, v66, v64, v151
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v63, v74, v150
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v72, v69, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v146, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v64, v64, v142
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v76, v65, 1.0
	v_div_fmas_f32 v63, v63, v71, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v147, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v70, v65
	v_div_scale_f32 v70, s0, v144, v67, v144
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v63, v0, v149
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v66, v66, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v71, 0xbfb8aa3b, v141 :: v_dual_mul_f32 v38, v148, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v68, v69, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v73, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_scale_f32 v74, null, v0, v0, v140
	v_div_scale_f32 v73, s1, v142, v64, v142
	v_rcp_f32_e32 v75, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v63, v71, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v72, v70, v65 :: v_dual_add_f32 v63, 1.0, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v76, v72, v70
	v_fmac_f32_e32 v72, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v76, v72, v70
	v_div_fmas_f32 v65, v70, v65, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v74, v75, 1.0
	v_mul_f32_e32 v66, v73, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, s0, v140, v0, v140
	v_fmac_f32_e32 v75, v70, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v76, -v68, v66, v73
	v_div_fixup_f32 v65, v65, v67, v144
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v66, v76, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v135
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v68, v66, v73
	v_div_scale_f32 v68, null, v63, v63, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v51, v67, v69, v66
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v70, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v59, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v51, v64, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v134
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v74, v69, v59
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v52, v145, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v72, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v68, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v64, v75
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v51, v137, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v73, v70
	v_div_scale_f32 v73, s1, v141, v63, v141
	v_fma_f32 v59, -v74, v69, v59
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v64, v73, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v67, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v42, v59, v75, v69
	v_fma_f32 v50, -v68, v64, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v133
	v_cndmask_b32_e64 v69, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v50, v70
	v_div_scale_f32 v76, null, v66, v66, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v50, v72
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v68, v64, v73
	v_rcp_f32_e32 v73, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v42, v0, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v59, v59, v70, v64
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v50, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v59, v59, v63, v141
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v70, -v76, v73, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v63, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v69, 1.0, v50 :: v_dual_mul_f32 v42, v139, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v70, v73
	v_div_scale_f32 v70, s0, v134, v66, v134
	v_mul_f32_e32 v77, v70, v73
	v_div_scale_f32 v67, null, v74, v74, v135
	v_div_scale_f32 v64, vcc_lo, v135, v74, v135
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v50, v138, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v63, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v76, v77, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v77, v63, v73
	v_fma_f32 v75, -v67, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v72, v75, v72
	v_div_scale_f32 v75, null, v69, v69, v133
	v_mul_f32_e32 v71, v64, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v78, v75
	v_fma_f32 v59, -v67, v71, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v71, v59, v72
	v_fma_f32 v63, -v75, v78, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v59, v136, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v67, v71, v64
	v_fmac_f32_e32 v78, v63, v78
	v_div_scale_f32 v63, s1, v133, v69, v133
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v64, v64, v72, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v76, v77, v70
	v_mul_f32_e32 v71, v63, v78
	v_div_scale_f32 v65, null, v0, v0, v130
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
	v_div_scale_f32 v73, s0, v130, v0, v130
	v_div_fixup_f32 v64, v64, v74, v135
	v_div_fixup_f32 v66, v67, v66, v134
	v_fma_f32 v67, -v75, v71, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v127
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v65, v56, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v53, v70
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v72, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v126
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_ldexp_f32 v44, v53, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v53, v73, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v65, v53, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v124
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v53, v44, v56
	v_fmac_f32_e32 v71, v67, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	v_exp_f32_e32 v43, v68
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v44, v72, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v75, v71, v63
	v_fma_f32 v65, -v65, v53, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v63, v63, v78, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v43, v43, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v53, v65, v56, v53
	v_div_scale_f32 v67, null, v71, v71, v126
	v_div_scale_f32 v76, s0, v126, v71, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v0, v53, v0, v130
	v_rcp_f32_e32 v65, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v67, v65, 1.0
	v_fmac_f32_e32 v65, v53, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v53, v129, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v74, v74, v127
	v_div_scale_f32 v73, vcc_lo, v127, v74, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v66, v76, v65
	v_rcp_f32_e32 v68, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v75, v68, 1.0
	v_fmac_f32_e32 v68, v44, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v125
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v44, v63, v69, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v69, v73, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v72, 1.0, v43 :: v_dual_mul_f32 v43, v132, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, null, v72, v72, v124
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v56, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v63
	v_fma_f32 v56, -v75, v69, v73
	v_fma_f32 v77, -v63, v70, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v69, v56, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v128, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v77, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v75, v69, v73
	v_fma_f32 v73, -v67, v66, v76
	v_div_scale_f32 v77, s1, v124, v72, v124
	v_div_scale_f32 v78, null, v0, v0, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v66, v73, v65
	v_rcp_f32_e32 v75, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v67, -v67, v66, v76
	v_fma_f32 v73, -v78, v75, 1.0
	s_delay_alu instid0(VALU_DEP_1)
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
	v_div_fixup_f32 v62, v62, v74, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v115
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v63, v69, v77
	v_div_fmas_f32 v60, v67, v65, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, s3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	v_exp_f32_e32 v68, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v74, v70
	v_div_scale_f32 v73, s2, v125, v0, v125
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v44, v131, v44 :: v_dual_fmac_f32 v67, 0xbfb8aa3b, v107
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v65, v73, v75
	v_fma_f32 v63, -v63, v69, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s3
	v_ldexp_f32 v64, v68, v64
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v106
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
	v_div_scale_f32 v67, null, v64, v64, v115
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v78, v65, v73
	v_div_fixup_f32 v60, v60, v71, v126
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
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v105
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v54, v0, v125
	v_div_scale_f32 v69, null, v65, v65, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v68, v70
	v_div_scale_f32 v68, vcc_lo, v115, v64, v115
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
	v_div_fixup_f32 v55, v63, v72, v124
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v72, -v69, v75, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v54, v123, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v71, v70
	v_div_scale_f32 v76, null, v74, v74, v106
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v73, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v72, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v67, v77, v68
	v_rcp_f32_e32 v63, v76
	v_div_scale_f32 v66, s0, v107, v65, v107
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v122, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v76, v63, 1.0
	v_fmac_f32_e32 v63, v71, v63
	v_div_fmas_f32 v67, v67, v70, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, s1, v106, v74, v106
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v121, v60
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v64, v67, v64, v115
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
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v103
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v0, v0, v105
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v120, v62
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v70, -v69, v72, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v72, v70, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v66, -v69, v72, v66
	v_div_scale_f32 v69, s2, v105, v0, v105
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v99
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v66, v66, v75, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v70, v69, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	v_exp_f32_e32 v57, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v65, v66, v65, v107
	v_fma_f32 v67, -v73, v70, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v63, v71, v63, v77
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v57, v62
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v58, 1.0, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v94
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v62, v63, v74, v106
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v58, v58, v103
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v76
	v_fmac_f32_e32 v70, v67, v61
	v_div_scale_f32 v67, null, v57, v57, v99
	v_fma_f32 v63, -v73, v70, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v73, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v66, v72
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v76, v71, 1.0
	v_fmac_f32_e32 v71, v69, v71
	v_div_fmas_f32 v61, v63, v61, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, s0, v103, v58, v103
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v67, v73, 1.0
	v_div_fixup_f32 v0, v61, v0, v105
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v69, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v72, v73
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v46, v104, v0 :: v_dual_fmac_f32 v63, 0xbfb8aa3b, v95
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v76, v70, v69
	v_div_scale_f32 v72, s1, v99, v57, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v63
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v63, v113, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v0, v0, v94
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v65, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v61, v74, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v66, v71
	v_mul_f32_e32 v66, v72, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v76, v70, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v76, -v67, v66, v72
	v_div_fmas_f32 v69, v69, v71, v70
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v66, v76, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v49, s0, v94, v0, v94
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v112, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v75, v65, 1.0
	v_div_fixup_f32 v69, v69, v58, v103
	v_fma_f32 v58, -v67, v66, v72
	v_div_scale_f32 v67, null, v61, v61, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v62, v114, v62 :: v_dual_fmac_f32 v65, v64, v65
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
	v_div_fixup_f32 v27, v27, v57, v99
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
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v49, v0, v94
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
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
	v_mul_f32_e32 v61, v119, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v25, v76, v25
	v_div_scale_f32 v71, vcc_lo, v93, v26, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v74, v64, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v58, v118, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v65, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v71, v25
	v_div_scale_f32 v78, null, v73, v73, v91
	v_mul_f32_e32 v57, v77, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v65, v116, v69
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v66, v76, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, s2
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v117, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v79, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v49, v25
	v_fma_f32 v49, -v72, v57, v77
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_fmac_f32 v69, 0xbfb8aa3b, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v66, v76, v71
	v_fmac_f32_e32 v57, v49, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v66, null, v0, v0, v90
	v_fma_f32 v49, -v78, v79, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v25, v27, v25, v76
	v_fma_f32 v27, -v72, v57, v77
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v25, v25, v26, v93
	v_div_fmas_f32 v23, v27, v74, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v57, v66
	v_div_scale_f32 v74, s0, v90, v0, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v23, v23, v75, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v88
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v79, v49, v79
	v_div_scale_f32 v49, s1, v91, v73, v91
	v_fma_f32 v20, -v66, v57, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v72, 0xbfb8aa3b, v86 :: v_dual_mul_f32 v27, v49, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v20, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v78, v27, v49
	v_fmac_f32_e32 v27, v22, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v69
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_exp_f32_e32 v2, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
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
	v_mul_f32_e32 v71, v109, v23
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
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v76, v49, v76
	v_div_scale_f32 v49, s1, v86, v75, v86
	v_dual_fmac_f32 v69, v67, v69 :: v_dual_fmac_f32 v74, v66, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v57, v78, 1.0
	v_mul_f32_e32 v82, v49, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v66, v111, v0 :: v_dual_mul_f32 v79, v77, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v78, v67, v78 :: v_dual_mul_f32 v67, v110, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v27, -v73, v82, v49
	v_fma_f32 v0, -v72, v79, v77
	v_mul_f32_e32 v81, v80, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v84, v83, v78
	v_dual_fmac_f32 v82, v27, v76 :: v_dual_fmac_f32 v79, v0, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v26, v81, v80
	v_fma_f32 v23, -v72, v79, v77
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v81, v0, v74
	v_fma_f32 v0, -v57, v84, v83
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v77, |v46|, |v10|, |v8|
	v_max3_f32 v72, |v42|, |v14|, |v13|
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v23, v23, v69, v79
	v_fma_f32 v26, -v26, v81, v80
	v_fmac_f32_e32 v84, v0, v78
	v_fma_f32 v0, -v73, v82, v49
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v73, v108, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v26, v74, v81
	v_fma_f32 v27, -v57, v84, v83
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v23, v22, v89
	v_div_fmas_f32 v0, v0, v76, v82
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v2, v26, v2, v88
	v_div_fmas_f32 v27, v27, v78, v84
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v23, |v32|, |v28|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v75, v86
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, |v24|, |v36|, |v35|
	v_max3_f32 v26, |v48|, |v39|, |v37|
.Ltmp12:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v20, v27, v20, v85
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v27, |v31|, |v18|, |v16|
	v_max_f32_e64 v74, |v56|, |v53|
	v_max3_f32 v75, |v44|, |v68|, |v60|
	v_max3_f32 v76, |v70|, |v63|, |v62|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v87, v20
	v_mul_f32_e32 v57, v102, v0
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, |v30|, |v29|, |v19|
	v_max3_f32 v20, v23, |v21|, v25
	v_max3_f32 v23, v26, v27, |v17|
	v_max3_f32 v78, |v55|, |v54|, |v11|
	v_max3_f32 v74, v74, |v43|, v75
	v_max3_f32 v75, v76, v77, |v9|
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v0, v20, v0, v23
	v_max_f32_e64 v25, |v45|, |v40|
	v_max3_f32 v26, |v34|, |v52|, |v47|
	v_max3_f32 v20, v74, v78, v75
	v_max3_f32 v69, |v59|, |v51|, |v50|
	v_max3_f32 v27, |v41|, |v38|, |v15|
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v74, v0, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, v25, |v33|, v26
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v75, v20, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, v69, v72, |v12|
.Ltmp20:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v72, v100, v22
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v22, |v65|, |v64|
	v_max3_f32 v23, |v58|, |v73|, |v71|
	v_dual_max_f32 v76, v75, v75 :: v_dual_mul_f32 v69, v101, v2
	v_max3_f32 v2, v25, v27, v26
	v_max3_f32 v27, |v49|, |v4|, |v5|
	v_max3_f32 v25, |v67|, |v66|, |v7|
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v76, v20, v76
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v20, 4, v249
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, |v72|, |v69|, |v57|
	v_max3_f32 v22, v22, |v61|, v23
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v23, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v78, 8, v249
	v_lshrrev_b32_e32 v81, 3, v1
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, v26, v27, |v6|
	v_max_f32_e32 v27, v74, v74
	v_max_f32_e32 v23, v23, v23
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v82, v20, 6, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, v22, v25, v26
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v26, 4, v249
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v74, v0, v27
	v_dual_max_f32 v75, v2, v23 :: v_dual_and_b32 v0, 3, v249
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v2, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v27, 0x60, v249
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_add_u32 v25, v0, 9, 0
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_lshlrev_b32 v23, 5, v0
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v0, v0, 4, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_add_u32 v77, v20, 2, v25
	v_and_or_b32 v26, 0x680, v26, v23
	v_lshlrev_b32_e32 v25, 1, v1
	v_xor_b32_e32 v79, v23, v27
	v_add_nc_u32_e32 v1, 0, v1
	v_lshl_add_u32 v80, v78, 4, v77
	v_xor_b32_e32 v26, v26, v27
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v77, v22, v2
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v78, 3, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v2, v80, v25, v79
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
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v74, v74, v74 :: v_dual_max_f32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v22, v22 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v26, v26 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v77, v77
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v77, v77 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp39:
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
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v76, v2 :: v_dual_max_f32 v75, v75, v75
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v77, v22 :: v_dual_max_f32 v76, v76, v76
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v76 :: v_dual_max_f32 v77, v77, v77
	v_max_f32_e32 v22, v22, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v77, v2
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v79, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v76, v79, v79 :: v_dual_mov_b32 v79, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v80, v74, v76
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v74, v77, v77 :: v_dual_mov_b32 v81, v80
	v_max_f32_e32 v26, v26, v75
	v_dual_max_f32 v75, v79, v79 :: v_dual_max_f32 v74, v2, v74
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v79, 1, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v22, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v1, v79, v78
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v22, v81, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v76, v26 :: v_dual_max_f32 v77, v80, v22
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v22, 4, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v76, v76
	v_max_f32_e32 v76, v26, v2
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v2, 5, v20
	ds_store_b128 v1, v[74:77]
	v_add3_u32 v0, v0, v2, v78
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp54:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v78, 32, v22
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[74:77], v0
.Ltmp56:
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
	v_rndne_f32_e32 v28, v28
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
	v_div_fixup_f32 v0, v0, v75, v43
	v_div_fixup_f32 v43, v76, v75, v44
	v_fmac_f32_e32 v78, v85, v83
	v_fma_f32 v44, -v86, v88, v81
	v_fmac_f32_e32 v80, v89, v80
	v_div_scale_f32 v76, s10, v55, v75, v55
	v_div_scale_f32 v85, null, v75, v75, v11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v87, v90, 1.0
	v_fma_f32 v77, -v82, v78, v77
	v_fmac_f32_e32 v88, v44, v79
	v_mul_f32_e32 v82, v76, v80
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v91, v85
	v_fmac_f32_e32 v90, v89, v90
	v_div_scale_f32 v89, s11, v54, v75, v54
	v_div_fmas_f32 v44, v77, v83, v78
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
	v_div_fixup_f32 v44, v44, v75, v68
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
	v_rndne_f32_e32 v46, v46
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
	v_lshlrev_b32_e32 v24, 4, v97
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v73, v73, v77, v90
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v77, -v85, v94, v91
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	v_xor_b32_e32 v24, v24, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v92, v86, v80 :: v_dual_lshlrev_b32 v27, 6, v249
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v0, v0, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v46, v46, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v76, v92, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v57, v79, v74, v57
	v_fmac_f32_e32 v92, v81, v80
	v_div_fixup_f32 v49, v73, v74, v49
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v30, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v76, v92, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v76, v80, v92
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v75, v75, v82, v93
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v4, v76, v74, v4
	v_div_fmas_f32 v77, v77, v87, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v5, v75, v74, v5
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v47, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v6, v77, v74, v6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v6, v6
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v55, v55
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v6, v6, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v58, v58
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_cvt_i32_f32_e32 v82, v46
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v95, v6
	v_and_b32_e32 v6, 15, v21
	v_and_b32_e32 v46, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v249
	v_and_b32_e32 v21, 16, v249
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v48, v48
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
	v_rndne_f32_e32 v44, v44
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
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v12, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
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
	v_med3_f32 v44, v44, s8, 0x40e00000
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
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v48, v48
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
	v_cvt_i32_f32_e32 v80, v44
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
	v_and_b32_e32 v47, 15, v79
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
	v_xad_u32 v23, v23, v98, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v77, v13
	v_cvt_i32_f32_e32 v78, v12
	v_and_b32_e32 v12, 15, v19
	v_and_b32_e32 v13, 15, v48
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
	v_and_b32_e32 v48, 15, v80
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
	v_lshlrev_b32_e32 v44, 3, v97
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
	v_lshrrev_b32_e32 v4, 4, v249
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
	v_cmp_eq_u32_e32 vcc_lo, 0, v96
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	s_and_b32 vcc_lo, vcc_lo, s34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v1, v1, s31, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp57:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1196
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
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 1196
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 35500
; TotalNumSgprs: 42
; NumVgprs: 256
; ScratchSize: 1196
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
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
	.quad	.Ltmp21-.Lfunc_begin0
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
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
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
    .private_segment_fixed_size: 1196
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 298
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
