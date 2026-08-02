	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x54
	s_load_b32 s3, s[0:1], 0x60
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s8, s2
	v_mov_b32_e32 v167, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v71, 0 :: v_dual_and_b32 v2, 63, v167
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_and_b32_e32 v177, 15, v167
	v_lshlrev_b32_e32 v0, 1, v167
	v_lshlrev_b32_e32 v42, 4, v167
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s20, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s5, s4, 31
	s_lshr_b32 s5, s5, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, s5
	s_ashr_i32 s4, s4, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s7
	s_sub_i32 s12, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s3, s3, s12
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s4, s12, s4
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s3, s3, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s4
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s13, s3
	s_cvt_f32_u32 s5, s13
	s_sub_i32 s6, 0, s13
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s6
	s_abs_i32 s6, s2
	s_add_i32 s5, s5, s4
	s_xor_b32 s4, s2, s3
	s_mul_hi_u32 s14, s6, s5
	s_ashr_i32 s15, s4, 31
	s_mul_i32 s5, s14, s13
	s_add_i32 s17, s14, 1
	s_sub_i32 s16, s6, s5
	s_load_b256 s[4:11], s[0:1], 0x20
	s_sub_i32 s18, s16, s13
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s14, s17, s14
	s_cselect_b32 s16, s18, s16
	s_add_i32 s17, s14, 1
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s13, s17, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s13, s13, s15
	s_sub_i32 s30, s13, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s30, s3
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s12
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshl_b64 s[2:3], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s2
	s_addc_u32 s5, s5, s3
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_add_u32 s6, s6, s2
	s_addc_u32 s7, s7, s3
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[28:29], s[4:5], 0x0
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_load_b64 s[22:23], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s8, s2
	s_addc_u32 s7, s9, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s10, s2
	s_addc_u32 s3, s11, s3
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[24:25], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[26:27], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v3, s2, s22, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v4, null, s23, 0, s2
	v_add_nc_u32_e32 v129, s22, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[24:25], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[26:27], v[3:4]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	s_cmp_gt_i32 s21, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v4, s22 :: v_dual_lshlrev_b32 v1, 1, v167
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v5, 4, v167
.Ltmp4:
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s22, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x40
	s_load_b128 s[16:19], s[0:1], 0x10
	v_dual_mov_b32 v97, 0 :: v_dual_and_b32 v178, 0xf0, v167
	v_dual_mov_b32 v98, 0 :: v_dual_lshlrev_b32 v179, 4, v177
	v_dual_mov_b32 v11, 0 :: v_dual_and_b32 v168, 0xc0, v167
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v137, 0
	v_mov_b32_e32 v136, 0
	v_mov_b32_e32 v150, 0
	s_lshl_b32 s29, s30, 8
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_lshl_b32 s31, s20, 1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_lshrrev_b32_e32 v11, 2, v167
	v_lshrrev_b32_e32 v3, 1, v167
	.loc	1 1068 35 is_stmt 1             ; ragged.py:1068:35
	v_dual_mov_b32 v1, 0 :: v_dual_lshlrev_b32 v4, 5, v177
	v_and_b32_e32 v17, 0xe00, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v11, v0, v11
	v_xor_b32_e32 v3, v0, v3
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_lshrrev_b32_e32 v136, 3, v168
	v_and_or_b32 v6, v0, 24, v4
	.loc	1 1058 13                       ; ragged.py:1058:13
	v_add_nc_u32_e32 v5, 0, v2
	v_and_b32_e32 v11, 24, v11
	v_and_b32_e32 v3, 24, v3
	v_lshl_add_u32 v2, v2, 5, 0
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_lshrrev_b32_e32 v16, 3, v178
	v_xor_b32_e32 v7, 8, v6
	v_or3_b32 v4, v17, v11, v4
	v_lshlrev_b32_e32 v8, 3, v167
	scratch_store_b32 off, v0, off offset:80 ; 4-byte Folded Spill
	v_xor_b32_e32 v9, 16, v6
	v_lshlrev_b32_e32 v26, 3, v168
	v_xor_b32_e32 v23, 8, v4
	v_xor_b32_e32 v24, 16, v4
	v_xor_b32_e32 v25, 24, v4
	v_add_nc_u32_e32 v161, 0, v4
	v_mov_b32_e32 v4, v1
	v_xor_b32_e32 v3, v3, v136
	v_xor_b32_e32 v10, 24, v6
	v_xor_b32_e32 v12, 0x208, v6
	v_xor_b32_e32 v13, 0x218, v6
	v_xor_b32_e32 v14, 0x210, v6
	v_add_nc_u32_e32 v0, v2, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v16, off
	scratch_store_b32 off, v167, off offset:60
	v_dual_mov_b32 v3, v1 :: v_dual_and_b32 v8, 24, v8
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v7
	scratch_store_b32 off, v168, off offset:64 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v7, v1
	v_add_nc_u32_e32 v156, v5, v26
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_dual_mov_b32 v5, v1 :: v_dual_add_nc_u32 v0, 0, v9
	v_xor_b32_e32 v8, v8, v16
	v_xor_b32_e32 v15, 0x410, v6
	v_xor_b32_e32 v16, 0x418, v6
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:12
	scratch_store_b32 off, v177, off offset:68
	v_lshl_or_b32 v8, v177, 9, v8
	v_add_nc_u32_e32 v0, 0, v10
	scratch_store_b32 off, v178, off offset:72 ; 4-byte Folded Spill
	v_xor_b32_e32 v18, 0x408, v6
	v_add_nc_u32_e32 v153, 0, v23
	v_xor_b32_e32 v17, 0x88, v8
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v12
	v_xor_b32_e32 v21, 0x110, v8
	v_xor_b32_e32 v19, 0x618, v6
	v_dual_mov_b32 v35, v1 :: v_dual_add_nc_u32 v150, 0, v17
	v_mov_b32_e32 v17, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:20
	scratch_store_b32 off, v179, off offset:76
	v_add_nc_u32_e32 v0, 0, v13
	scratch_store_b32 off, v42, off offset:84 ; 4-byte Folded Spill
	v_dual_mov_b32 v10, v1 :: v_dual_add_nc_u32 v151, 0, v21
	v_mov_b32_e32 v21, v1
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_dual_mov_b32 v23, v1 :: v_dual_add_nc_u32 v0, 0, v14
	v_dual_mov_b32 v14, v1 :: v_dual_add_nc_u32 v155, 0, v25
	v_mov_b32_e32 v25, v1
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v15
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x0
	s_load_b32 s0, s[0:1], 0x50
	v_xor_b32_e32 v20, 0x610, v6
	v_xor_b32_e32 v11, 0x608, v6
	v_mov_b32_e32 v29, v1
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v16
	v_xor_b32_e32 v22, 0x198, v8
	v_or_b32_e32 v27, 0x3f0, v167
	v_or_b32_e32 v28, 0x7f0, v167
	v_mov_b32_e32 v31, v1
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v18
	.loc	1 1068 35                       ; ragged.py:1068:35
	s_mul_i32 s3, s31, s21
	v_dual_mov_b32 v37, v1 :: v_dual_add_nc_u32 v152, 0, v22
	v_dual_mov_b32 v39, v1 :: v_dual_add_nc_u32 v154, 0, v24
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v19
	v_dual_mov_b32 v43, v1 :: v_dual_add_nc_u32 v158, 0, v28
	v_dual_mov_b32 v16, v1 :: v_dual_add_nc_u32 v159, 0, v6
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v20
	v_dual_mov_b32 v45, v1 :: v_dual_add_nc_u32 v160, 0, v8
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v8, v1
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	v_dual_mov_b32 v33, v1 :: v_dual_add_nc_u32 v0, 0, v11
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	v_dual_mov_b32 v41, v1 :: v_dual_add_nc_u32 v0, 0, v27
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v46, v1
	v_dual_mov_b32 v47, v1 :: v_dual_add_nc_u32 v162, 0, v177
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v49, v1
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v52, v1
	v_mov_b32_e32 v53, v1
	v_mov_b32_e32 v54, v1
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v57, v1
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v64, v1
	v_mov_b32_e32 v65, v1
	v_mov_b32_e32 v66, v1
	v_mov_b32_e32 v67, v1
	v_mov_b32_e32 v68, v1
	v_mov_b32_e32 v69, v1
	v_mov_b32_e32 v70, v1
	v_mov_b32_e32 v71, v1
	v_mov_b32_e32 v72, v1
	v_mov_b32_e32 v73, v1
	v_mov_b32_e32 v74, v1
	v_mov_b32_e32 v75, v1
	v_mov_b32_e32 v76, v1
	v_mov_b32_e32 v77, v1
	v_mov_b32_e32 v78, v1
	v_mov_b32_e32 v79, v1
	v_mov_b32_e32 v80, v1
	v_mov_b32_e32 v81, v1
	v_mov_b32_e32 v82, v1
	v_mov_b32_e32 v83, v1
	v_mov_b32_e32 v84, v1
	v_mov_b32_e32 v85, v1
	v_mov_b32_e32 v86, v1
	v_mov_b32_e32 v87, v1
	v_mov_b32_e32 v88, v1
	v_mov_b32_e32 v89, v1
	v_mov_b32_e32 v90, v1
	v_mov_b32_e32 v91, v1
	v_mov_b32_e32 v92, v1
	v_mov_b32_e32 v93, v1
	v_mov_b32_e32 v94, v1
	v_mov_b32_e32 v95, v1
	v_mov_b32_e32 v96, v1
	v_mov_b32_e32 v97, v1
	v_mov_b32_e32 v98, v1
	v_mov_b32_e32 v99, v1
	v_mov_b32_e32 v100, v1
	v_mov_b32_e32 v101, v1
	v_mov_b32_e32 v102, v1
	v_mov_b32_e32 v103, v1
	v_mov_b32_e32 v104, v1
	v_mov_b32_e32 v105, v1
	v_mov_b32_e32 v106, v1
	v_mov_b32_e32 v107, v1
	v_mov_b32_e32 v108, v1
	v_mov_b32_e32 v109, v1
	v_mov_b32_e32 v110, v1
	v_mov_b32_e32 v111, v1
	v_mov_b32_e32 v112, v1
	v_mov_b32_e32 v113, v1
	v_mov_b32_e32 v114, v1
	v_mov_b32_e32 v115, v1
	v_mov_b32_e32 v116, v1
	v_mov_b32_e32 v117, v1
	v_mov_b32_e32 v118, v1
	v_mov_b32_e32 v119, v1
	v_mov_b32_e32 v120, v1
	v_mov_b32_e32 v121, v1
	v_mov_b32_e32 v122, v1
	v_mov_b32_e32 v123, v1
	v_mov_b32_e32 v124, v1
	v_mov_b32_e32 v125, v1
	v_mov_b32_e32 v126, v1
	v_mov_b32_e32 v127, v1
	v_mov_b32_e32 v128, v1
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v130, s29, v179
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 1068 35                       ; ragged.py:1068:35
	s_mul_i32 s3, s3, s28
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 1058 13                       ; ragged.py:1058:13
	s_mov_b32 s1, 0
	s_add_u32 s33, s3, s20
	s_mov_b32 s4, s12
	s_mov_b32 s5, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	scratch_store_b32 off, v0, off offset:56 ; 4-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v164, 1, v0
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v163, s1, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b32_e32 v164, s1, v164
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_mad_u64_u32 v[173:174], null, v163, s31, v[130:131]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[174:175], null, v164, s31, v[130:131]
	v_add_nc_u32_e32 v163, s3, v173
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v169, s3, v174
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v185, s33, v174
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_clause 0x1
	buffer_load_b128 v[163:166], v163, s[12:15], 0 offen
	buffer_load_b128 v[169:172], v169, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_perm_b32 v175, v169, v163, 0x5010400
	v_perm_b32 v169, v169, v163, 0x7030602
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v163, s1, v136
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_perm_b32 v176, v170, v164, 0x5010400
	v_perm_b32 v170, v170, v164, 0x7030602
	v_perm_b32 v178, v172, v166, 0x5010400
	v_perm_b32 v179, v172, v166, 0x7030602
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[163:164], null, v163, s0, v[129:130]
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_perm_b32 v177, v171, v165, 0x5010400
	v_perm_b32 v171, v171, v165, 0x7030602
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v166, 0x80000000, v163, s2
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_or_b32_e32 v163, 1, v136
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v163, s1, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[163:164], null, v163, s0, v[129:130]
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v172, 0x80000000, v163, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v163, 2, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v163, s1, v163
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[163:164], null, v163, s0, v[129:130]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v180, 0x80000000, v163, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v163, 3, v136
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_clause 0x2
	buffer_load_u8 v218, v172, s[4:7], 0 offen
	buffer_load_u8 v219, v180, s[4:7], 0 offen
	buffer_load_u8 v220, v166, s[4:7], 0 offen
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_lshrrev_b32_e32 v166, 24, v176
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v163, s1, v163
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_lshrrev_b32_e32 v172, 24, v171
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v166.l, 8, v166.l
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[163:164], null, v163, s0, v[129:130]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v165, 0x80000000, v163, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v163, 4, v136
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v163, s1, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[163:164], null, v163, s0, v[129:130]
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v181, 0x80000000, v163, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v163, 5, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v163, s1, v163
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[163:164], null, v163, s0, v[129:130]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v182, 0x80000000, v163, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v163, 7, v136
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v163, s1, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[163:164], null, v163, s0, v[129:130]
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v183, 0x80000000, v163, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v163, 6, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v163, s1, v163
	.loc	1 1110 17                       ; ragged.py:1110:17
	s_add_i32 s1, s1, 32
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_lt_i32 s1, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[163:164], null, v163, s0, v[129:130]
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v163, 0x80000000, v163, s2
	s_clause 0x4
	buffer_load_u8 v213, v182, s[4:7], 0 offen
	buffer_load_u8 v214, v183, s[4:7], 0 offen
	buffer_load_u8 v215, v163, s[4:7], 0 offen
	buffer_load_u8 v216, v181, s[4:7], 0 offen
	buffer_load_u8 v217, v165, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	.loc	1 1096 25 is_stmt 1             ; ragged.py:1096:25
	v_add_nc_u32_e32 v181, s33, v173
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_lshrrev_b32_e32 v173, 24, v179
	s_delay_alu instid0(VALU_DEP_1)
	v_lshlrev_b16 v173.l, 8, v173.l
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v163.l, 8, v213.l
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v163.h, 8, v214.l
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v165.l, v216.l, v163.l
	v_lshlrev_b16 v163.l, 8, v218.l
	v_or_b16 v165.h, v215.l, v163.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v164.l, v220.l, v163.l
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v163.l, 8, v217.l
	v_or_b16 v164.h, v219.l, v163.l
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_lshrrev_b32_e32 v163, 8, v175
	v_and_b16 v163.h, 0xff, v175.l
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt vmcnt(0)
	ds_store_b64 v0, v[164:165]
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:8  ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_lshlrev_b16 v163.l, 8, v163.l
	v_lshrrev_b32_e32 v164, 24, v175
	v_lshrrev_b32_e32 v165, 24, v169
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or_b16 v163.l, v163.h, v163.l
	v_and_b16 v163.h, 0xff, v175.h
	v_lshlrev_b16 v164.l, 8, v164.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v165.l, 8, v165.l
	v_or_b16 v163.h, v163.h, v164.l
	v_lshrrev_b32_e32 v164, 8, v169
	v_and_b16 v164.h, 0xff, v169.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v164.l, 8, v164.l
	v_or_b16 v164.l, v164.h, v164.l
	v_and_b16 v164.h, 0xff, v169.h
	v_lshrrev_b32_e32 v169, 24, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or_b16 v164.h, v164.h, v165.l
	v_lshrrev_b32_e32 v165, 8, v176
	v_and_b16 v165.h, 0xff, v176.l
	v_lshlrev_b16 v169.l, 8, v169.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v165.l, 8, v165.l
	v_or_b16 v165.l, v165.h, v165.l
	v_and_b16 v165.h, 0xff, v176.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v165.h, v165.h, v166.l
	v_lshrrev_b32_e32 v166, 8, v170
	v_and_b16 v166.h, 0xff, v170.l
	v_lshlrev_b16 v166.l, 8, v166.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v166.l, v166.h, v166.l
	v_and_b16 v166.h, 0xff, v170.h
	v_lshrrev_b32_e32 v170, 24, v177
	v_or_b16 v166.h, v166.h, v169.l
	v_lshrrev_b32_e32 v169, 8, v177
	v_and_b16 v169.h, 0xff, v177.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v170.l, 8, v170.l
	v_lshlrev_b16 v169.l, 8, v169.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v169.l, v169.h, v169.l
	v_and_b16 v169.h, 0xff, v177.h
	v_or_b16 v169.h, v169.h, v170.l
	v_lshrrev_b32_e32 v170, 8, v171
	v_and_b16 v170.h, 0xff, v171.l
	v_lshlrev_b16 v171.l, 8, v172.l
	v_lshrrev_b32_e32 v172, 24, v178
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v170.l, 8, v170.l
	v_lshlrev_b16 v172.l, 8, v172.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v170.l, v170.h, v170.l
	v_and_b16 v170.h, 0xff, v171.h
	v_or_b16 v170.h, v170.h, v171.l
	v_lshrrev_b32_e32 v171, 8, v178
	v_and_b16 v171.h, 0xff, v178.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v171.l, 8, v171.l
	v_or_b16 v171.l, v171.h, v171.l
	v_and_b16 v171.h, 0xff, v178.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v171.h, v171.h, v172.l
	v_lshrrev_b32_e32 v172, 8, v179
	v_and_b16 v172.h, 0xff, v179.l
	v_lshlrev_b16 v172.l, 8, v172.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v172.l, v172.h, v172.l
	v_and_b16 v172.h, 0xff, v179.h
	v_or_b16 v172.h, v172.h, v173.l
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt vmcnt(0)
	ds_load_b64 v[189:190], v0
	scratch_load_b32 v0, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[191:192], v0
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[193:194], v0
	scratch_load_b32 v0, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[195:196], v0
	scratch_load_b32 v0, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[197:198], v0
	scratch_load_b32 v0, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[199:200], v0
	scratch_load_b32 v0, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[201:202], v0
	scratch_load_b32 v0, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[203:204], v0
	scratch_load_b32 v0, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[205:206], v0
	scratch_load_b32 v0, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[207:208], v0
	scratch_load_b32 v0, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[209:210], v0
	scratch_load_b32 v0, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[211:212], v0
	ds_load_2addr_stride64_b64 v[173:176], v159 offset1:1
	ds_load_2addr_stride64_b64 v[177:180], v159 offset0:2 offset1:3
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v160, v163
	ds_store_b16_d16_hi v160, v163 offset:32
	ds_store_b16 v160, v164 offset:64
	ds_store_b16_d16_hi v160, v164 offset:96
	ds_store_b16 v150, v165
	ds_store_b16_d16_hi v150, v165 offset:32
	ds_store_b16 v150, v166 offset:64
	ds_store_b16_d16_hi v150, v166 offset:96
	ds_store_b16 v151, v169
	ds_store_b16_d16_hi v151, v169 offset:32
	ds_store_b16 v151, v170 offset:64
	ds_store_b16_d16_hi v151, v170 offset:96
	ds_store_b16 v152, v171
	ds_store_b16_d16_hi v152, v171 offset:32
	ds_store_b16 v152, v172 offset:64
	ds_store_b16_d16_hi v152, v172 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_clause 0x1
	buffer_load_b128 v[181:184], v181, s[12:15], 0 offen
	buffer_load_b128 v[185:188], v185, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_perm_b32 v172, v185, v181, 0x5010400
	v_perm_b32 v171, v185, v181, 0x7030602
	v_perm_b32 v170, v186, v182, 0x5010400
	v_perm_b32 v169, v186, v182, 0x7030602
	v_perm_b32 v166, v187, v183, 0x5010400
	v_perm_b32 v165, v187, v183, 0x7030602
	v_perm_b32 v164, v188, v184, 0x5010400
	v_perm_b32 v163, v188, v184, 0x7030602
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[181:184], v161 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[181:182], v[195:196], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[183:184], v[195:196], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[181:182], v[201:202], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[183:184], v[201:202], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[181:182], v[207:208], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[183:184], v[207:208], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[181:182], v[173:174], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[183:184], v[173:174], v[73:80] neg_lo:[1,1,0]
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[181:184], v153 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[181:182], v[175:176], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[183:184], v[175:176], v[89:96] neg_lo:[1,1,0]
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[173:176], v154 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_wmma_i32_16x16x16_iu4 v[65:72], v[181:182], v[189:190], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[183:184], v[189:190], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[181:182], v[203:204], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[183:184], v[203:204], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[181:182], v[209:210], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[183:184], v[209:210], v[121:128] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[173:174], v[191:192], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[175:176], v[191:192], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[173:174], v[197:198], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[175:176], v[197:198], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[173:174], v[211:212], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[175:176], v[211:212], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[173:174], v[177:178], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[175:176], v[177:178], v[105:112] neg_lo:[1,1,0]
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[173:176], v155 offset1:8
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v156, v220
	ds_store_b8 v156, v218 offset:64
	ds_store_b8 v156, v219 offset:128
	ds_store_b8 v156, v217 offset:192
	ds_store_b8 v156, v216 offset:256
	ds_store_b8 v156, v213 offset:320
	ds_store_b8 v156, v215 offset:384
	ds_store_b8 v156, v214 offset:448
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1100 32                       ; ragged.py:1100:32
	scratch_load_b32 v0, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v251, v0
	ds_load_u8 v252, v158
	ds_load_u8 v253, v162 offset:1968
	ds_load_u8 v254, v162 offset:1920
	ds_load_u8 v255, v162 offset:1856
	ds_load_u8 v134, v162 offset:1872
	ds_load_u8 v133, v162 offset:1808
	ds_load_u8 v131, v162 offset:1888
	ds_load_u8 v132, v162 offset:1824
	ds_load_u8 v168, v162 offset:1904
	ds_load_u8 v167, v162 offset:1840
	ds_load_u8 v135, v162 offset:1728
	ds_load_u8 v0, v162 offset:1792
	ds_load_u8 v137, v162 offset:1744
	ds_load_u8 v138, v162 offset:1680
	ds_load_u8 v139, v162 offset:1760
	ds_load_u8 v140, v162 offset:1696
	ds_load_u8 v141, v162 offset:1776
	ds_load_u8 v142, v162 offset:1712
	ds_load_u8 v143, v162 offset:1664
	ds_load_u8 v144, v162 offset:1600
	ds_load_u8 v145, v162 offset:1616
	ds_load_u8 v146, v162 offset:1552
	ds_load_u8 v147, v162 offset:1632
	ds_load_u8 v148, v162 offset:1568
	ds_load_u8 v149, v162 offset:1648
	ds_load_u8 v157, v162 offset:1584
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_wmma_i32_16x16x16_iu4 v[113:120], v[173:174], v[179:180], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[175:176], v[179:180], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[173:174], v[193:194], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[175:176], v[193:194], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[173:174], v[199:200], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[175:176], v[199:200], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[173:174], v[205:206], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[175:176], v[205:206], v[105:112] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	ds_load_u8 v173, v162 offset:320
	ds_load_u8 v174, v162 offset:256
	ds_load_u8 v176, v162 offset:336
	ds_load_u8 v177, v162 offset:272
	ds_load_u8 v178, v162 offset:352
	ds_load_u8 v179, v162 offset:288
	ds_load_u8 v180, v162 offset:368
	ds_load_u8 v181, v162 offset:304
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v0, v0, v255, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v135, v143, v135, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	ds_load_u8 v174, v162 offset:448
	ds_load_u8 v175, v162 offset:384
	ds_load_u8 v182, v162 offset:464
	ds_load_u8 v183, v162 offset:400
	ds_load_u8 v184, v162 offset:480
	ds_load_u8 v185, v162 offset:416
	ds_load_u8 v186, v162 offset:496
	ds_load_u8 v187, v162 offset:432
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	ds_load_u8 v175, v162 offset:64
	ds_load_u8 v188, v162
	ds_load_u8 v189, v162 offset:80
	ds_load_u8 v190, v162 offset:16
	ds_load_u8 v191, v162 offset:96
	ds_load_u8 v192, v162 offset:32
	ds_load_u8 v193, v162 offset:112
	ds_load_u8 v194, v162 offset:48
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v188, v188, v175, 0xc0c0004
	ds_load_u8 v175, v162 offset:192
	ds_load_u8 v195, v162 offset:128
	ds_load_u8 v196, v162 offset:208
	ds_load_u8 v197, v162 offset:144
	ds_load_u8 v198, v162 offset:224
	ds_load_u8 v199, v162 offset:160
	ds_load_u8 v200, v162 offset:240
	ds_load_u8 v201, v162 offset:176
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v195, v195, v175, 0xc0c0004
	v_lshl_or_b32 v175, v174, 16, v173
	v_perm_b32 v173, v177, v176, 0xc0c0004
	v_perm_b32 v176, v183, v182, 0xc0c0004
	v_perm_b32 v182, v190, v189, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v183, v197, v196, 0xc0c0004
	v_lshl_or_b32 v174, v195, 16, v188
	v_lshl_or_b32 v177, v176, 16, v173
	v_perm_b32 v173, v179, v178, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v176, v183, 16, v182
	v_perm_b32 v178, v185, v184, 0xc0c0004
	v_perm_b32 v182, v192, v191, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v183, v199, v198, 0xc0c0004
	v_lshl_or_b32 v179, v178, 16, v173
	v_perm_b32 v173, v181, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v178, v183, 16, v182
	v_perm_b32 v180, v187, v186, 0xc0c0004
	v_perm_b32 v182, v194, v193, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v201, v200, 0xc0c0004
	v_lshl_or_b32 v181, v180, 16, v173
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_lshrrev_b32_e32 v173, 8, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_lshl_or_b32 v180, v183, 16, v182
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_lshrrev_b32_e32 v182, 24, v172
	v_and_b16 v173.h, 0xff, v172.l
	v_and_b16 v172.l, 0xff, v172.h
	v_lshlrev_b16 v173.l, 8, v173.l
	v_lshlrev_b16 v172.h, 8, v182.l
	v_lshrrev_b32_e32 v182, 8, v171
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or_b16 v173.l, v173.h, v173.l
	v_and_b16 v173.h, 0xff, v171.l
	v_or_b16 v172.l, v172.l, v172.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v172.h, 8, v182.l
	v_lshrrev_b32_e32 v182, 24, v171
	v_and_b16 v171.l, 0xff, v171.h
	v_or_b16 v172.h, v173.h, v172.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v171.h, 8, v182.l
	v_lshrrev_b32_e32 v182, 8, v170
	v_and_b16 v173.h, 0xff, v170.l
	v_or_b16 v171.l, v171.l, v171.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v171.h, 8, v182.l
	v_lshrrev_b32_e32 v182, 24, v170
	v_and_b16 v170.l, 0xff, v170.h
	v_or_b16 v171.h, v173.h, v171.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v170.h, 8, v182.l
	v_lshrrev_b32_e32 v182, 8, v169
	v_and_b16 v173.h, 0xff, v169.l
	v_or_b16 v170.l, v170.l, v170.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v170.h, 8, v182.l
	v_lshrrev_b32_e32 v182, 24, v169
	v_and_b16 v169.l, 0xff, v169.h
	v_or_b16 v170.h, v173.h, v170.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v169.h, 8, v182.l
	v_lshrrev_b32_e32 v182, 8, v166
	v_and_b16 v173.h, 0xff, v166.l
	v_or_b16 v169.l, v169.l, v169.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v169.h, 8, v182.l
	v_lshrrev_b32_e32 v182, 24, v166
	v_and_b16 v166.l, 0xff, v166.h
	v_or_b16 v169.h, v173.h, v169.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v166.h, 8, v182.l
	v_lshrrev_b32_e32 v182, 8, v165
	v_and_b16 v173.h, 0xff, v165.l
	v_or_b16 v166.l, v166.l, v166.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v166.h, 8, v182.l
	v_lshrrev_b32_e32 v182, 24, v165
	v_and_b16 v165.l, 0xff, v165.h
	v_or_b16 v166.h, v173.h, v166.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v165.h, 8, v182.l
	v_lshrrev_b32_e32 v182, 8, v164
	v_and_b16 v173.h, 0xff, v164.l
	v_or_b16 v165.l, v165.l, v165.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v165.h, 8, v182.l
	v_lshrrev_b32_e32 v182, 24, v164
	v_and_b16 v164.l, 0xff, v164.h
	v_or_b16 v165.h, v173.h, v165.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v164.h, 8, v182.l
	v_lshrrev_b32_e32 v182, 8, v163
	v_and_b16 v173.h, 0xff, v163.l
	v_or_b16 v164.l, v164.l, v164.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v164.h, 8, v182.l
	v_lshrrev_b32_e32 v182, 24, v163
	v_and_b16 v163.l, 0xff, v163.h
	v_or_b16 v164.h, v173.h, v164.h
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b16 v163.h, 8, v182.l
	.loc	1 1100 32                       ; ragged.py:1100:32
	ds_load_u8 v182, v162 offset:960
	ds_load_u8 v183, v162 offset:896
	ds_load_u8 v184, v162 offset:1024
	ds_load_u8 v185, v162 offset:976
	ds_load_u8 v186, v162 offset:912
	ds_load_u8 v187, v162 offset:992
	ds_load_u8 v188, v162 offset:928
	ds_load_u8 v189, v162 offset:944
	ds_load_u8 v190, v162 offset:832
	ds_load_u8 v191, v162 offset:768
	ds_load_u8 v192, v162 offset:848
	ds_load_u8 v193, v162 offset:784
	ds_load_u8 v194, v162 offset:864
	ds_load_u8 v195, v162 offset:800
	ds_load_u8 v196, v162 offset:880
	ds_load_u8 v197, v162 offset:816
	ds_load_u8 v198, v162 offset:704
	ds_load_u8 v199, v162 offset:640
	ds_load_u8 v200, v162 offset:720
	ds_load_u8 v201, v162 offset:656
	ds_load_u8 v202, v162 offset:736
	ds_load_u8 v203, v162 offset:672
	ds_load_u8 v204, v162 offset:752
	ds_load_u8 v205, v162 offset:688
	ds_load_u8 v206, v162 offset:576
	ds_load_u8 v207, v162 offset:512
	ds_load_u8 v208, v162 offset:592
	ds_load_u8 v209, v162 offset:528
	ds_load_u8 v210, v162 offset:608
	ds_load_u8 v211, v162 offset:544
	ds_load_u8 v212, v162 offset:624
	ds_load_u8 v213, v162 offset:560
	ds_load_u8 v214, v162 offset:1216
	ds_load_u8 v215, v162 offset:1280
	ds_load_u8 v216, v162 offset:1232
	ds_load_u8 v217, v162 offset:1168
	ds_load_u8 v218, v162 offset:1248
	ds_load_u8 v219, v162 offset:1184
	ds_load_u8 v220, v162 offset:1264
	ds_load_u8 v221, v162 offset:1200
	ds_load_u8 v222, v162 offset:1152
	ds_load_u8 v223, v162 offset:1088
	ds_load_u8 v224, v162 offset:1104
	ds_load_u8 v225, v162 offset:1040
	ds_load_u8 v226, v162 offset:1120
	ds_load_u8 v227, v162 offset:1056
	ds_load_u8 v228, v162 offset:1136
	ds_load_u8 v229, v162 offset:1072
	ds_load_u8 v230, v162 offset:1472
	ds_load_u8 v231, v162 offset:1536
	ds_load_u8 v232, v162 offset:1488
	ds_load_u8 v233, v162 offset:1424
	ds_load_u8 v234, v162 offset:1504
	ds_load_u8 v235, v162 offset:1440
	ds_load_u8 v236, v162 offset:1520
	ds_load_u8 v237, v162 offset:1456
	ds_load_u8 v238, v162 offset:1408
	ds_load_u8 v239, v162 offset:1344
	ds_load_u8 v240, v162 offset:1360
	ds_load_u8 v241, v162 offset:1296
	ds_load_u8 v242, v162 offset:1376
	ds_load_u8 v243, v162 offset:1312
	ds_load_u8 v244, v162 offset:1392
	ds_load_u8 v245, v162 offset:1328
	ds_load_u8 v246, v162 offset:1984
	ds_load_u8 v247, v162 offset:2000
	ds_load_u8 v248, v162 offset:1936
	ds_load_u8 v249, v162 offset:2016
	ds_load_u8 v250, v162 offset:1952
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_perm_b32 v144, v231, v144, 0xc0c0004
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_or_b16 v163.l, v163.l, v163.h
	ds_store_b16 v160, v173
	ds_store_b16 v160, v172 offset:32
	ds_store_b16_d16_hi v160, v172 offset:64
	ds_store_b16 v160, v171 offset:96
	ds_store_b16_d16_hi v150, v171
	ds_store_b16 v150, v170 offset:32
	ds_store_b16_d16_hi v150, v170 offset:64
	ds_store_b16 v150, v169 offset:96
	ds_store_b16_d16_hi v151, v169
	ds_store_b16 v151, v166 offset:32
	ds_store_b16_d16_hi v151, v166 offset:64
	ds_store_b16 v151, v165 offset:96
	ds_store_b16_d16_hi v152, v165
	ds_store_b16 v152, v164 offset:32
	ds_store_b16_d16_hi v152, v164 offset:64
	ds_store_b16 v152, v163 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[163:166], v161 offset1:8
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[163:164], v[174:175], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[165:166], v[174:175], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[163:164], v[176:177], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[165:166], v[176:177], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[163:164], v[178:179], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[165:166], v[178:179], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[163:164], v[180:181], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[165:166], v[180:181], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v163, v191, v190, 0xc0c0004
	v_perm_b32 v164, v183, v182, 0xc0c0004
	v_perm_b32 v165, v207, v206, 0xc0c0004
	v_perm_b32 v166, v199, v198, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v170, v164, 16, v163
	v_perm_b32 v163, v193, v192, 0xc0c0004
	v_lshl_or_b32 v169, v166, 16, v165
	v_perm_b32 v164, v186, v185, 0xc0c0004
	v_perm_b32 v165, v209, v208, 0xc0c0004
	v_perm_b32 v166, v201, v200, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v172, v164, 16, v163
	v_perm_b32 v163, v195, v194, 0xc0c0004
	v_lshl_or_b32 v171, v166, 16, v165
	v_perm_b32 v164, v188, v187, 0xc0c0004
	v_perm_b32 v165, v211, v210, 0xc0c0004
	v_perm_b32 v166, v203, v202, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v174, v164, 16, v163
	v_perm_b32 v163, v213, v212, 0xc0c0004
	v_lshl_or_b32 v173, v166, 16, v165
	v_perm_b32 v164, v205, v204, 0xc0c0004
	v_perm_b32 v165, v197, v196, 0xc0c0004
	v_perm_b32 v166, v189, v251, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v175, v164, 16, v163
	v_lshl_or_b32 v176, v166, 16, v165
	.loc	1 1095 35                       ; ragged.py:1095:35
	ds_load_2addr_stride64_b64 v[163:166], v153 offset1:8
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[163:164], v[169:170], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[165:166], v[169:170], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[163:164], v[171:172], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[165:166], v[171:172], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[163:164], v[173:174], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[165:166], v[173:174], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[163:164], v[175:176], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[165:166], v[175:176], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v163, v215, v239, 0xc0c0004
	v_perm_b32 v164, v238, v230, 0xc0c0004
	v_perm_b32 v165, v184, v223, 0xc0c0004
	v_perm_b32 v166, v222, v214, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v170, v164, 16, v163
	v_perm_b32 v163, v241, v240, 0xc0c0004
	v_lshl_or_b32 v169, v166, 16, v165
	v_perm_b32 v164, v233, v232, 0xc0c0004
	v_perm_b32 v165, v225, v224, 0xc0c0004
	v_perm_b32 v166, v217, v216, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v172, v164, 16, v163
	v_perm_b32 v163, v243, v242, 0xc0c0004
	v_lshl_or_b32 v171, v166, 16, v165
	v_perm_b32 v164, v235, v234, 0xc0c0004
	v_perm_b32 v165, v227, v226, 0xc0c0004
	v_perm_b32 v166, v219, v218, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v174, v164, 16, v163
	v_perm_b32 v163, v245, v244, 0xc0c0004
	v_lshl_or_b32 v173, v166, 16, v165
	v_perm_b32 v164, v237, v236, 0xc0c0004
	v_perm_b32 v165, v229, v228, 0xc0c0004
	v_perm_b32 v166, v221, v220, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v176, v164, 16, v163
	v_lshl_or_b32 v175, v166, 16, v165
	.loc	1 1095 35                       ; ragged.py:1095:35
	ds_load_2addr_stride64_b64 v[163:166], v154 offset1:8
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[163:164], v[169:170], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[163:164], v[171:172], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[163:164], v[173:174], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[163:164], v[175:176], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v163, v254, v246, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[165:166], v[169:170], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[165:166], v[171:172], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[165:166], v[173:174], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[165:166], v[175:176], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v170, v163, 16, v0
	v_perm_b32 v0, v133, v134, 0xc0c0004
	v_perm_b32 v133, v248, v247, 0xc0c0004
	.loc	1 1095 35                       ; ragged.py:1095:35
	ds_load_2addr_stride64_b64 v[163:166], v155 offset1:8
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_lshl_or_b32 v169, v135, 16, v144
	v_perm_b32 v134, v146, v145, 0xc0c0004
	v_perm_b32 v135, v138, v137, 0xc0c0004
	v_lshl_or_b32 v172, v133, 16, v0
	v_perm_b32 v0, v132, v131, 0xc0c0004
	v_perm_b32 v131, v250, v249, 0xc0c0004
	v_perm_b32 v132, v148, v147, 0xc0c0004
	v_perm_b32 v133, v140, v139, 0xc0c0004
	v_lshl_or_b32 v171, v135, 16, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v174, v131, 16, v0
	v_perm_b32 v0, v157, v149, 0xc0c0004
	v_lshl_or_b32 v173, v133, 16, v132
	v_perm_b32 v131, v142, v141, 0xc0c0004
	v_perm_b32 v132, v167, v168, 0xc0c0004
	v_perm_b32 v133, v253, v252, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v175, v131, 16, v0
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[163:164], v[169:170], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v176, v133, 16, v132
	v_wmma_i32_16x16x16_iu4 v[9:16], v[165:166], v[169:170], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[163:164], v[171:172], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[165:166], v[171:172], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[163:164], v[173:174], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[165:166], v[173:174], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[163:164], v[175:176], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[165:166], v[175:176], v[57:64] neg_lo:[1,1,0]
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v167, off, off offset:60
	scratch_load_b32 v168, off, off offset:64
	scratch_load_b32 v177, off, off offset:68
	scratch_load_b32 v178, off, off offset:72
	scratch_load_b32 v179, off, off offset:76
	.loc	1 1111 19 is_stmt 1             ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v151, v72
	v_cvt_f32_i32_e32 v143, v92
	.loc	1 1112 24                       ; ragged.py:1112:24
	v_cvt_f32_i32_e32 v92, v1
	v_cvt_f32_i32_e32 v72, v5
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:80
	scratch_load_b32 v5, off, off offset:84
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v173, v65
	v_cvt_f32_i32_e32 v174, v66
	v_cvt_f32_i32_e32 v176, v67
	v_cvt_f32_i32_e32 v175, v68
	v_cvt_f32_i32_e32 v147, v69
	v_cvt_f32_i32_e32 v148, v70
	v_cvt_f32_i32_e32 v149, v71
	v_cvt_f32_i32_e32 v150, v73
	v_cvt_f32_i32_e32 v144, v74
	v_cvt_f32_i32_e32 v145, v75
	v_cvt_f32_i32_e32 v146, v76
	v_cvt_f32_i32_e32 v130, v77
	v_cvt_f32_i32_e32 v137, v78
	v_cvt_f32_i32_e32 v136, v79
	v_cvt_f32_i32_e32 v135, v80
	v_cvt_f32_i32_e32 v170, v81
	v_cvt_f32_i32_e32 v169, v82
	v_cvt_f32_i32_e32 v172, v83
	v_cvt_f32_i32_e32 v171, v84
	v_cvt_f32_i32_e32 v154, v85
	v_cvt_f32_i32_e32 v153, v86
	v_cvt_f32_i32_e32 v156, v87
	v_cvt_f32_i32_e32 v157, v88
	v_cvt_f32_i32_e32 v152, v89
	v_cvt_f32_i32_e32 v142, v90
	v_cvt_f32_i32_e32 v141, v91
	v_cvt_f32_i32_e32 v83, v93
	v_cvt_f32_i32_e32 v140, v94
	v_cvt_f32_i32_e32 v139, v95
	v_cvt_f32_i32_e32 v138, v96
	v_cvt_f32_i32_e32 v164, v97
	v_cvt_f32_i32_e32 v163, v98
	v_cvt_f32_i32_e32 v166, v99
	v_cvt_f32_i32_e32 v165, v100
	v_cvt_f32_i32_e32 v159, v101
	v_cvt_f32_i32_e32 v158, v102
	v_cvt_f32_i32_e32 v160, v103
	v_cvt_f32_i32_e32 v161, v104
	v_cvt_f32_i32_e32 v155, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v105, v107
	v_cvt_f32_i32_e32 v107, v108
	v_cvt_f32_i32_e32 v82, v109
	v_cvt_f32_i32_e32 v101, v110
	v_cvt_f32_i32_e32 v100, v111
	v_cvt_f32_i32_e32 v99, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v162, v115
	v_cvt_f32_i32_e32 v115, v116
	v_cvt_f32_i32_e32 v109, v117
	v_cvt_f32_i32_e32 v110, v118
	v_cvt_f32_i32_e32 v111, v119
	v_cvt_f32_i32_e32 v112, v120
	v_cvt_f32_i32_e32 v108, v121
	v_cvt_f32_i32_e32 v96, v122
	v_cvt_f32_i32_e32 v97, v123
	v_cvt_f32_i32_e32 v98, v124
	v_cvt_f32_i32_e32 v71, v125
	v_cvt_f32_i32_e32 v104, v126
	v_cvt_f32_i32_e32 v103, v127
	v_cvt_f32_i32_e32 v102, v128
	.loc	1 1112 24                       ; ragged.py:1112:24
	v_cvt_f32_i32_e32 v93, v2
	v_cvt_f32_i32_e32 v95, v3
	v_cvt_f32_i32_e32 v94, v4
	v_cvt_f32_i32_e32 v73, v6
	v_cvt_f32_i32_e32 v74, v7
	v_cvt_f32_i32_e32 v75, v8
	v_cvt_f32_i32_e32 v76, v9
	v_cvt_f32_i32_e32 v68, v10
	v_cvt_f32_i32_e32 v69, v11
	v_cvt_f32_i32_e32 v70, v12
	v_cvt_f32_i32_e32 v9, v13
	v_cvt_f32_i32_e32 v67, v14
	v_cvt_f32_i32_e32 v66, v15
	v_cvt_f32_i32_e32 v65, v16
	v_cvt_f32_i32_e32 v90, v17
	v_cvt_f32_i32_e32 v91, v18
	v_cvt_f32_i32_e32 v88, v19
	v_cvt_f32_i32_e32 v89, v20
	v_cvt_f32_i32_e32 v80, v21
	v_cvt_f32_i32_e32 v79, v22
	v_cvt_f32_i32_e32 v78, v23
	v_cvt_f32_i32_e32 v77, v24
	v_cvt_f32_i32_e32 v81, v25
	v_cvt_f32_i32_e32 v18, v26
	v_cvt_f32_i32_e32 v17, v27
	v_cvt_f32_i32_e32 v16, v28
	v_cvt_f32_i32_e32 v8, v29
	v_cvt_f32_i32_e32 v21, v30
	v_cvt_f32_i32_e32 v20, v31
	v_cvt_f32_i32_e32 v19, v32
	v_cvt_f32_i32_e32 v87, v33
	v_cvt_f32_i32_e32 v86, v34
	v_cvt_f32_i32_e32 v84, v35
	v_cvt_f32_i32_e32 v85, v36
	v_cvt_f32_i32_e32 v32, v37
	v_cvt_f32_i32_e32 v31, v38
	v_cvt_f32_i32_e32 v30, v39
	v_cvt_f32_i32_e32 v29, v40
	v_cvt_f32_i32_e32 v28, v41
	v_cvt_f32_i32_e32 v15, v42
	v_cvt_f32_i32_e32 v14, v43
	v_cvt_f32_i32_e32 v13, v44
	v_cvt_f32_i32_e32 v7, v45
	v_cvt_f32_i32_e32 v24, v46
	v_cvt_f32_i32_e32 v23, v47
	v_cvt_f32_i32_e32 v22, v48
	v_cvt_f32_i32_e32 v37, v49
	v_cvt_f32_i32_e32 v36, v50
	v_cvt_f32_i32_e32 v33, v51
	v_cvt_f32_i32_e32 v34, v52
	v_cvt_f32_i32_e32 v41, v53
	v_cvt_f32_i32_e32 v40, v54
	v_cvt_f32_i32_e32 v39, v55
	v_cvt_f32_i32_e32 v38, v56
	v_cvt_f32_i32_e32 v35, v57
	v_cvt_f32_i32_e32 v12, v58
	v_cvt_f32_i32_e32 v11, v59
	v_cvt_f32_i32_e32 v10, v60
	v_cvt_f32_i32_e32 v6, v61
	v_cvt_f32_i32_e32 v27, v62
	v_cvt_f32_i32_e32 v26, v63
	v_cvt_f32_i32_e32 v25, v64
	v_dual_mov_b32 v4, s22 :: v_dual_mov_b32 v3, v129
.LBB0_7:                                ; %._crit_edge
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v0, 28, v1
	v_lshlrev_b32_e32 v1, 5, v167
	v_lshl_add_u32 v2, v178, 2, 0
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s17, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v1, 32, v1
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_mov_b32 s12, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_add3_u32 v45, v2, v1, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s22, v177
	v_add_co_ci_u32_e64 v2, null, s23, 0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v0, 1, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[24:25], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[26:27], v[1:2]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v1, 16, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v1, s1, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, 0, s1
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v42, 1, v1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[24:25], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[26:27], v[1:2]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v1, 32, v177
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v1, s4, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, 0, s4
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 vcc_lo, s1, s3
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v43, 1, v1
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s1, s20, 31
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[24:25], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[26:27], v[1:2]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v1, 48, v177
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s1, s20, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, 0, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v44, 1, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[24:25], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[26:27], v[1:2]
	.loc	1 1120 21 is_stmt 1             ; ragged.py:1120:21
	v_or_b32_e32 v1, s29, v167
	s_delay_alu instid0(VALU_DEP_1)
	v_mad_u64_u32 v[1:2], null, s31, s28, v[1:2]
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v2, 0x80000000, v42, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v42, 0x80000000, v43, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s6, s1, 1
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v43, 0x80000000, v44, vcc_lo
	s_clause 0x3
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	buffer_load_u16 v2, v2, s[12:15], 0 offen
	buffer_load_u16 v42, v42, s[12:15], 0 offen
	buffer_load_u16 v46, v43, s[12:15], 0 offen
	.loc	1 1119 36                       ; ragged.py:1119:36
	v_lshlrev_b32_e32 v43, 1, v1
	s_and_b32 s13, s19, 0xffff
	s_mov_b32 s12, s18
	buffer_load_u16 v43, v43, s[12:15], 0 offen
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v44, 16, v0
	.loc	1 1115 17                       ; ragged.py:1115:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v48, v174, v44 :: v_dual_lshlrev_b32 v43, 16, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v45, v43
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v43, 16, v2
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v51, v169, v43
	v_dual_mul_f32 v47, v175, v44 :: v_dual_lshlrev_b32 v2, 16, v46
	v_mul_f32_e32 v46, v176, v44
	v_mul_f32_e32 v49, v173, v44
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v9, v9, v44 :: v_dual_mul_f32 v0, v162, v2
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v162, v178, 1, 0
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v63, v115, v2
	v_mul_f32_e32 v64, v114, v2
	v_mul_f32_e32 v117, v113, v2
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[113:116], v162
	ds_load_b128 v[123:126], v162 offset:16
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v57, v49, v113 :: v_dual_lshlrev_b32 v42, 16, v42
	v_mul_f32_e32 v60, v46, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v52, v171, v43 :: v_dual_mul_f32 v55, v166, v42
	v_mul_f32_e32 v53, v172, v43
	v_dual_mul_f32 v50, v170, v43 :: v_dual_mul_f32 v61, v164, v42
	v_dual_mul_f32 v56, v165, v42 :: v_dual_mul_f32 v49, v55, v115
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v52, v52, v116
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v62, v163, v42
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v58, v48, v114 :: v_dual_mul_f32 v59, v47, v116
	v_dual_mul_f32 v50, v50, v113 :: v_dual_mul_f32 v51, v51, v114
	v_mul_f32_e32 v54, v53, v115
	v_dual_mul_f32 v48, v56, v116 :: v_dual_mul_f32 v53, v117, v113
	v_dual_mul_f32 v46, v61, v113 :: v_dual_mul_f32 v47, v62, v114
	v_dual_mul_f32 v62, v63, v116 :: v_dual_mul_f32 v127, v161, v42
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v55, v149, v44
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v63, v0, v115
	v_dual_mul_f32 v61, v64, v114 :: v_dual_mul_f32 v0, v151, v44
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v56, v148, v44 :: v_dual_mul_f32 v129, v159, v42
	v_dual_mul_f32 v64, v147, v44 :: v_dual_mul_f32 v131, v158, v42
	v_mul_f32_e32 v113, v157, v43
	v_dual_mul_f32 v114, v156, v43 :: v_dual_mul_f32 v133, v111, v2
	v_mul_f32_e32 v115, v154, v43
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v116, v153, v43 :: v_dual_mul_f32 v121, v55, v125
	v_mul_f32_e32 v128, v160, v42
	v_dual_mul_f32 v132, v112, v2 :: v_dual_mul_f32 v117, v114, v125
	v_dual_mul_f32 v134, v110, v2 :: v_dual_mul_f32 v119, v64, v123
	v_dual_mul_f32 v109, v109, v2 :: v_dual_mul_f32 v120, v56, v124
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v122, v0, v126 :: v_dual_mul_f32 v111, v131, v124
	v_dual_mul_f32 v55, v115, v123 :: v_dual_mul_f32 v56, v116, v124
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v109, v109, v123
	v_dual_mul_f32 v118, v113, v126 :: v_dual_mul_f32 v113, v134, v124
	v_mul_f32_e32 v110, v129, v123
	v_mul_f32_e32 v112, v128, v125
	v_dual_mul_f32 v114, v127, v126 :: v_dual_mul_f32 v115, v133, v125
	v_dual_mul_f32 v116, v132, v126 :: v_dual_mul_f32 v129, v143, v43
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v0, v150, v44 :: v_dual_mul_f32 v123, v152, v43
	v_mul_f32_e32 v124, v146, v44
	v_mul_f32_e32 v125, v145, v44
	v_dual_mul_f32 v126, v144, v44 :: v_dual_mul_f32 v131, v142, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[143:146], v162 offset:512
	ds_load_b128 v[147:150], v162 offset:528
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v132, v141, v43
	v_mul_f32_e32 v97, v97, v2
	v_mul_f32_e32 v133, v107, v42
	v_mul_f32_e32 v107, v105, v42
	v_mul_f32_e32 v99, v99, v42
	v_mul_f32_e32 v108, v108, v2
	v_mul_f32_e32 v96, v96, v2
	v_mul_f32_e32 v100, v100, v42
	v_mul_f32_e32 v104, v104, v2
	v_mul_f32_e32 v101, v101, v42
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v91, v91, v43
	v_mul_f32_e32 v87, v87, v42
	v_mul_f32_e32 v86, v86, v42
	v_mul_f32_e32 v37, v37, v2
	v_mul_f32_e32 v34, v34, v2
	v_mul_f32_e32 v29, v29, v42
	v_mul_f32_e32 v38, v38, v2
	v_mul_f32_e32 v152, v33, v2
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v64, v0, v143
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v0, v137, v44
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v141, v126, v144
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v98, v98, v2
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v142, v125, v145
	v_dual_mul_f32 v125, v132, v145 :: v_dual_mul_f32 v126, v129, v146
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v129, v135, v44
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v132, v139, v43 :: v_dual_mul_f32 v135, v0, v148
	.loc	1 1124 41                       ; ragged.py:1124:41
	v_add_lshl_u32 v0, v1, s20, 1
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v127, v123, v143
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v128, v155, v42 :: v_dual_mul_f32 v105, v108, v143
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v1, v94, v44
	.loc	1 1124 41                       ; ragged.py:1124:41
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v106, v106, v42 :: v_dual_mul_f32 v123, v128, v143
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v143, v124, v146 :: v_dual_mul_f32 v124, v131, v144
	v_mul_f32_e32 v97, v97, v145
	v_dual_mul_f32 v107, v107, v145 :: v_dual_mul_f32 v108, v133, v146
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v131, v130, v44
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v96, v96, v144 :: v_dual_mul_f32 v133, v138, v43
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v106, v106, v144
	v_dual_mul_f32 v98, v98, v146 :: v_dual_mul_f32 v139, v83, v43
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v128, v136, v44 :: v_dual_mul_f32 v137, v129, v150
	v_dual_mul_f32 v130, v140, v43 :: v_dual_mul_f32 v101, v101, v148
	v_dual_mul_f32 v134, v103, v2 :: v_dual_mul_f32 v129, v132, v149
	v_mul_f32_e32 v144, v71, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v136, v128, v149 :: v_dual_mul_f32 v103, v99, v150
	v_mul_f32_e32 v128, v130, v148
	v_mul_f32_e32 v130, v133, v150
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v133, v84, v42
	v_mul_f32_e32 v31, v31, v42
	v_mul_f32_e32 v35, v35, v2
	v_dual_mul_f32 v19, v19, v43 :: v_dual_mul_f32 v68, v68, v44
	v_mul_f32_e32 v21, v21, v43
	v_dual_mul_f32 v18, v18, v43 :: v_dual_mul_f32 v23, v23, v42
	v_mul_f32_e32 v24, v24, v42
	v_mul_f32_e32 v22, v22, v42
	v_mul_f32_e32 v8, v8, v43
	v_mul_f32_e32 v20, v20, v43
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s13, s9, 0xffff
	s_mov_b32 s12, s8
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v27, v27, v2
	v_mul_f32_e32 v25, v25, v2
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v7, v42 :: v_dual_lshlrev_b32 v0, 16, v0
	.loc	1 1127 21                       ; ragged.py:1127:21
	ds_store_b32 v45, v0
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v45, v93, v44 :: v_dual_mul_f32 v138, v102, v2
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v71, v104, v148
	v_mul_f32_e32 v102, v100, v149
	v_mul_f32_e32 v104, v139, v147
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(0)
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v83, v138, v150 :: v_dual_mul_f32 v138, v131, v147
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v131, v88, v43 :: v_dual_mul_f32 v140, v82, v42
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v99, v144, v147 :: v_dual_mul_f32 v82, v134, v149
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_barrier
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v134, v36, v2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v100, v140, v147
	.loc	1 1127 21                       ; ragged.py:1127:21
	ds_load_b128 v[144:147], v162
	ds_load_b128 v[148:151], v162 offset:16
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v92, v92, v44
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v32, v32, v42 :: v_dual_mul_f32 v139, v45, v145
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v84, v87, v144
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v45, v73, v44
	v_dual_mul_f32 v0, v95, v44 :: v_dual_mul_f32 v95, v1, v147
	v_dual_mul_f32 v1, v74, v44 :: v_dual_mul_f32 v94, v89, v43
	v_dual_mul_f32 v73, v80, v43 :: v_dual_mul_f32 v132, v85, v42
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v33, v34, v147
	v_mul_f32_e32 v85, v86, v145
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v90, v90, v43 :: v_dual_mul_f32 v93, v0, v146
	v_dual_mul_f32 v80, v41, v2 :: v_dual_mul_f32 v89, v91, v145
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v91, v131, v146 :: v_dual_mul_f32 v140, v92, v144
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v87, v133, v146 :: v_dual_mul_f32 v88, v90, v144
	v_mul_f32_e32 v86, v132, v147
	v_dual_mul_f32 v36, v37, v144 :: v_dual_mul_f32 v131, v40, v2
	v_mul_f32_e32 v37, v134, v145
	v_mul_f32_e32 v90, v94, v147
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v132, v39, v2
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v92, v45, v149
	v_mul_f32_e32 v45, v29, v151
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v74, v79, v43 :: v_dual_mul_f32 v39, v32, v148
	v_dual_mul_f32 v79, v77, v43 :: v_dual_mul_f32 v72, v72, v44
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v77, v1, v150
	v_mul_f32_e32 v1, v38, v151
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v30, v30, v42 :: v_dual_mul_f32 v29, v80, v148
	v_dual_mul_f32 v0, v75, v44 :: v_dual_mul_f32 v75, v78, v43
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v34, v152, v146
	v_mul_f32_e32 v94, v72, v148
	v_dual_mul_f32 v72, v73, v148 :: v_dual_mul_f32 v145, v11, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v41, v30, v150 :: v_dual_mul_f32 v78, v0, v151
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v133, v14, v42 :: v_dual_mul_f32 v0, v76, v44
	v_mul_f32_e32 v38, v69, v44
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v30, v131, v149 :: v_dual_mul_f32 v69, v81, v43
	v_dual_mul_f32 v40, v31, v149 :: v_dual_mul_f32 v31, v132, v150
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v76, v17, v43
	v_dual_mul_f32 v131, v16, v43 :: v_dual_mul_f32 v132, v15, v42
	v_mul_f32_e32 v134, v13, v42
	v_mul_f32_e32 v144, v12, v2
	v_mul_f32_e32 v146, v10, v2
	.loc	1 1127 21                       ; ragged.py:1127:21
	ds_load_b128 v[10:13], v162 offset:512
	ds_load_b128 v[14:17], v162 offset:528
	v_dual_mul_f32 v73, v74, v149 :: v_dual_mul_f32 v74, v75, v150
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v32, v70, v44
	v_dual_mul_f32 v28, v28, v42 :: v_dual_mul_f32 v75, v79, v151
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp6:
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v149, v35, v10
	v_dual_mul_f32 v0, v0, v10 :: v_dual_mul_f32 v23, v23, v16
	v_mul_f32_e32 v81, v68, v11
	v_mul_f32_e32 v70, v18, v11
	v_dual_mul_f32 v68, v76, v12 :: v_dual_mul_f32 v19, v19, v17
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v26, v26, v2
	v_mul_f32_e32 v2, v6, v2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v6, 0xbfb8aa3b, v0 :: v_dual_mul_f32 v147, v69, v10
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v69, v131, v13
	v_mul_f32_e32 v80, v32, v13
	v_mul_f32_e32 v32, v134, v13
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v42, v21, v15 :: v_dual_mul_f32 v21, v7, v14
	v_dual_mul_f32 v148, v28, v10 :: v_dual_mul_f32 v27, v27, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v28, v133, v12 :: v_dual_mul_f32 v43, v24, v15
	v_mul_f32_e32 v24, v8, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v6, 0xbfb8aa3b, v0 :: v_dual_mul_f32 v35, v132, v11
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v79, v38, v12 :: v_dual_mul_f32 v10, v144, v11
	v_mul_f32_e32 v25, v25, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v6, v6
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v11, v145, v12 :: v_dual_mul_f32 v12, v146, v13
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v13, v67, v44
	v_mul_f32_e32 v18, v66, v44
	v_mul_f32_e32 v38, v65, v44
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v44, v26, v16
	v_mul_f32_e32 v26, v9, v14
	v_dual_mul_f32 v2, v2, v14 :: v_dual_mul_f32 v13, v13, v15
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v6, v6, v7
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v18, v18, v16
	v_mul_f32_e32 v20, v20, v16
	v_mul_f32_e32 v38, v38, v17
	v_mul_f32_e32 v22, v22, v17
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v6, 1.0, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v7, null, v6, v6, v0
	v_rcp_f32_e32 v8, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v9, -v7, v8, 1.0
	v_fmac_f32_e32 v8, v9, v8
	v_div_scale_f32 v9, vcc_lo, v0, v6, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v14, v9, v8
	v_fma_f32 v15, -v7, v14, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v15, v8
	v_fma_f32 v7, -v7, v14, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v7, v7, v8, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v8, 0xbfb8aa3b, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v6, v7, v6, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	v_mul_f32_e32 v0, 0xbfb8aa3b, v38
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v64, v6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v13
	v_exp_f32_e32 v8, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v8, v8, v9
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v8, 1.0, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v9, null, v8, v8, v13
	v_rcp_f32_e32 v14, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v9, v14, 1.0
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, vcc_lo, v13, v8, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v16, v15, v14
	v_fma_f32 v17, -v9, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, v17, v14
	v_fma_f32 v9, -v9, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v9, v9, v14, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v14, 0xbfb8aa3b, v18
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v18
	v_exp_f32_e32 v14, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v14, v14, v15
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v15, null, v14, v14, v18
	v_rcp_f32_e32 v16, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v15, v16, 1.0
	v_fmac_f32_e32 v16, v17, v16
	v_div_scale_f32 v17, vcc_lo, v18, v14, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v17, v16
	v_fma_f32 v66, -v15, v65, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v16
	v_fma_f32 v15, -v15, v65, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v15, v15, v16, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v7, null, v0, v0, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v16, v7
	v_fma_f32 v17, -v7, v16, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, v17, v16
	v_div_scale_f32 v17, vcc_lo, v38, v0, v38
	v_mul_f32_e32 v65, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v7, v65, v17
	v_fmac_f32_e32 v65, v66, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v7, -v7, v65, v17
	v_div_fmas_f32 v16, v7, v16, v65
	v_div_fixup_f32 v7, v9, v8, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v8, 0xbfb8aa3b, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v8, v8
	v_ldexp_f32 v8, v8, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v9, null, v8, v8, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v13, v9
	v_fma_f32 v17, -v9, v13, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v13, v17, v13
	v_div_scale_f32 v17, vcc_lo, v147, v8, v147
	v_mul_f32_e32 v65, v17, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v9, v65, v17
	v_fmac_f32_e32 v65, v66, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v9, -v9, v65, v17
	v_div_fmas_f32 v13, v9, v13, v65
	v_div_fixup_f32 v9, v15, v14, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v14, 0xbfb8aa3b, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v8, v13, v8, v147
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v13, 0xbfb8aa3b, v19
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v42
	v_exp_f32_e32 v14, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v14, v14, v15
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v15, 1.0, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v14, null, v15, v15, v42
	v_rcp_f32_e32 v17, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v14, v17, 1.0
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v42, v15, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v18, v17
	v_fma_f32 v66, -v14, v65, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v17
	v_fma_f32 v14, -v14, v65, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v17, v14, v17, v65
	v_div_fixup_f32 v14, v16, v0, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v20
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v16
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v16, null, v0, v0, v20
	v_rcp_f32_e32 v18, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v16, v18, 1.0
	v_fmac_f32_e32 v18, v38, v18
	v_div_scale_f32 v38, vcc_lo, v20, v0, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v38, v18
	v_fma_f32 v66, -v16, v65, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v18
	v_fma_f32 v16, -v16, v65, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v16, v16, v18, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v13, v13
	v_ldexp_f32 v13, v13, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v13, null, v18, v18, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v38, v13
	v_fma_f32 v65, -v13, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v65, v38
	v_div_scale_f32 v65, vcc_lo, v19, v18, v19
	v_mul_f32_e32 v66, v65, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v13, v66, v65
	v_fmac_f32_e32 v66, v67, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v13, -v13, v66, v65
	v_div_fmas_f32 v38, v13, v38, v66
	v_div_fixup_f32 v13, v17, v15, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v15, 0xbfb8aa3b, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v15, v15, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v15, null, v42, v42, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v15
	v_fma_f32 v65, -v15, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v65, v17
	v_div_scale_f32 v65, vcc_lo, v148, v42, v148
	v_mul_f32_e32 v66, v65, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v15, v66, v65
	v_fmac_f32_e32 v66, v67, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v15, v66, v65
	v_div_fmas_f32 v65, v15, v17, v66
	v_div_fixup_f32 v15, v16, v0, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v16, null, v0, v0, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v16
	v_fma_f32 v20, -v16, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v20, v17
	v_div_scale_f32 v20, vcc_lo, v43, v0, v43
	v_mul_f32_e32 v66, v20, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v16, v66, v20
	v_fmac_f32_e32 v66, v67, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v16, v66, v20
	v_div_fmas_f32 v20, v16, v17, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v16, 0xbfb8aa3b, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v17, v38, v18, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v16, null, v19, v19, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v18, v16
	v_fma_f32 v38, -v16, v18, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v38, v18
	v_div_scale_f32 v38, vcc_lo, v23, v19, v23
	v_mul_f32_e32 v66, v38, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v16, v66, v38
	v_fmac_f32_e32 v66, v67, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v16, v66, v38
	v_div_fmas_f32 v38, v16, v18, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v18, 0xbfb8aa3b, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v16, v65, v42, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v19, v38, v19, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v22
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v18, v18, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v18, null, v42, v42, v22
	v_rcp_f32_e32 v65, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v18, v65, 1.0
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v22, v42, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v66, v65
	v_fma_f32 v76, -v18, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v76, v65
	v_fma_f32 v18, -v18, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v65, v18, v65, v67
	v_div_fixup_f32 v18, v20, v0, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v149
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v149
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v20
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v20, null, v0, v0, v149
	v_rcp_f32_e32 v43, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v20, v43, 1.0
	v_fmac_f32_e32 v43, v66, v43
	v_div_scale_f32 v66, vcc_lo, v149, v0, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v66, v43
	v_fma_f32 v76, -v20, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v76, v43
	v_fma_f32 v20, -v20, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v43, v20, v43, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v20, 0xbfb8aa3b, v27
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v27
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v20, v20, v23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v20, null, v23, v23, v27
	v_rcp_f32_e32 v38, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v20, v38, 1.0
	v_fmac_f32_e32 v38, v66, v38
	v_div_scale_f32 v66, vcc_lo, v27, v23, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v66, v38
	v_fma_f32 v76, -v20, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v76, v38
	v_fma_f32 v20, -v20, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v66, v20, v38, v67
	v_div_fixup_f32 v20, v65, v42, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v44
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v22, v38
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, null, v22, v22, v44
	v_rcp_f32_e32 v42, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v38, v42, 1.0
	v_fmac_f32_e32 v42, v65, v42
	v_div_scale_f32 v65, vcc_lo, v44, v22, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v65, v42
	v_fma_f32 v76, -v38, v67, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v76, v42
	v_fma_f32 v38, -v38, v67, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v65, v38, v42, v67
	v_div_fixup_f32 v38, v43, v0, v149
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v25
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v105, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v0, v0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v67, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v67, v43
	v_div_scale_f32 v67, vcc_lo, v25, v0, v25
	v_mul_f32_e32 v76, v67, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v131, -v42, v76, v67
	v_fmac_f32_e32 v76, v131, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v76, v67
	v_div_fmas_f32 v67, v42, v43, v76
	v_div_fixup_f32 v42, v66, v23, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v23, 0xbfb8aa3b, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v23, v23, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v23, v23, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v27
	v_fma_f32 v66, -v27, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v66, v43
	v_div_scale_f32 v66, vcc_lo, v140, v23, v140
	v_mul_f32_e32 v76, v66, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v131, -v27, v76, v66
	v_fmac_f32_e32 v76, v131, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v27, v76, v66
	v_div_fmas_f32 v27, v27, v43, v76
	v_div_fixup_f32 v43, v65, v22, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v22, null, v65, v65, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v22
	v_fma_f32 v66, -v22, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v66, v44
	v_div_scale_f32 v66, vcc_lo, v139, v65, v139
	v_mul_f32_e32 v76, v66, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v131, -v22, v76, v66
	v_fmac_f32_e32 v76, v131, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v76, v66
	v_div_fmas_f32 v66, v22, v44, v76
	v_div_fixup_f32 v44, v67, v0, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v22, null, v0, v0, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v25, v22
	v_fma_f32 v67, -v22, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v67, v25
	v_div_scale_f32 v67, vcc_lo, v95, v0, v95
	v_mul_f32_e32 v76, v67, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v131, -v22, v76, v67
	v_fmac_f32_e32 v76, v131, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v76, v67
	v_div_fmas_f32 v25, v22, v25, v76
	v_div_fixup_f32 v22, v27, v23, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v23, 0xbfb8aa3b, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v25, v0, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v92
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v93
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v23, v23, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v23, null, v27, v27, v93
	v_rcp_f32_e32 v67, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v23, v67, 1.0
	v_fmac_f32_e32 v67, v76, v67
	v_div_scale_f32 v76, vcc_lo, v93, v27, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v131, v76, v67
	v_fma_f32 v132, -v23, v131, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v131, v132, v67
	v_fma_f32 v23, -v23, v131, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v67, v23, v67, v131
	v_div_fixup_f32 v23, v66, v65, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v65, 0xbfb8aa3b, v94
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v94
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v66, v66, v94
	v_rcp_f32_e32 v76, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v131, -v65, v76, 1.0
	v_fmac_f32_e32 v76, v131, v76
	v_div_scale_f32 v131, vcc_lo, v94, v66, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v132, v131, v76
	v_fma_f32 v133, -v65, v132, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v132, v133, v76
	v_fma_f32 v65, -v65, v132, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v76, v65, v76, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v66, v76, v66, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v92
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v0, v0, v92
	v_rcp_f32_e32 v95, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v131, -v65, v95, 1.0
	v_fmac_f32_e32 v95, v131, v95
	v_div_scale_f32 v131, vcc_lo, v92, v0, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v132, v131, v95
	v_fma_f32 v133, -v65, v132, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v132, v133, v95
	v_fma_f32 v65, -v65, v132, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v95, v65, v95, v132
	v_div_fixup_f32 v65, v67, v27, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v77
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v77
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v27, v27, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v27, v27, v77
	v_rcp_f32_e32 v93, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v131, -v67, v93, 1.0
	v_fmac_f32_e32 v93, v131, v93
	v_div_scale_f32 v131, vcc_lo, v77, v27, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v132, v131, v93
	v_fma_f32 v133, -v67, v132, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v132, v133, v93
	v_fma_f32 v67, -v67, v132, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v93, v67, v93, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v67, 0xbfb8aa3b, v78
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v78
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v67, v76
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v94, 1.0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v94, v94, v78
	v_rcp_f32_e32 v76, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v131, -v67, v76, 1.0
	v_fmac_f32_e32 v76, v131, v76
	v_div_scale_f32 v131, vcc_lo, v78, v94, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v132, v131, v76
	v_fma_f32 v133, -v67, v132, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v132, v133, v76
	v_fma_f32 v67, -v67, v132, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v131, v67, v76, v132
	v_div_fixup_f32 v67, v95, v0, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v81
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v81
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v76
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v0, v0, v81
	v_rcp_f32_e32 v92, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v76, v92, 1.0
	v_fmac_f32_e32 v92, v95, v92
	v_div_scale_f32 v95, vcc_lo, v81, v0, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v132, v95, v92
	v_fma_f32 v133, -v76, v132, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v132, v133, v92
	v_fma_f32 v76, -v76, v132, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v92, v76, v92, v132
	v_div_fixup_f32 v76, v93, v27, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v77, v131, v94, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v79
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v27, v27, v78
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v78, null, v27, v27, v79
	v_rcp_f32_e32 v93, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v78, v93, 1.0
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, vcc_lo, v79, v27, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v95, v94, v93
	v_fma_f32 v131, -v78, v95, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v131, v93
	v_fma_f32 v78, -v78, v95, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v93, v78, v93, v95
	v_div_fixup_f32 v78, v92, v0, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v80
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v79, v93, v27, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v81, null, v0, v0, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v92, v81
	v_fma_f32 v94, -v81, v92, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v94, v92
	v_div_scale_f32 v94, vcc_lo, v80, v0, v80
	v_mul_f32_e32 v95, v94, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v131, -v81, v95, v94
	v_fmac_f32_e32 v95, v131, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v81, v95, v94
	v_div_fmas_f32 v81, v81, v92, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v92, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v80, v81, v0, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v92
	v_mul_f32_e32 v0, 0xbfb8aa3b, v88
	v_cndmask_b32_e64 v92, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v94, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, 0xbfb8aa3b, v26
	v_exp_f32_e32 v92, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v92, v92, v94
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v92, 1.0, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v94, null, v92, v92, v26
	v_rcp_f32_e32 v95, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v131, -v94, v95, 1.0
	v_fmac_f32_e32 v95, v131, v95
	v_div_scale_f32 v131, vcc_lo, v26, v92, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v132, v131, v95
	v_fma_f32 v133, -v94, v132, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v132, v133, v95
	v_fma_f32 v94, -v94, v132, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v94, v94, v95, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v92, v94, v92, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v88
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v0, v0, v88
	v_rcp_f32_e32 v81, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v27, v81, 1.0
	v_fmac_f32_e32 v81, v93, v81
	v_div_scale_f32 v93, vcc_lo, v88, v0, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v95, v93, v81
	v_fma_f32 v131, -v27, v95, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v131, v81
	v_fma_f32 v27, -v27, v95, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v27, v27, v81, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v81, 0xbfb8aa3b, v89
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v93, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v89
	v_exp_f32_e32 v81, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v81, v81, v93
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v93, 1.0, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v81, null, v93, v93, v89
	v_rcp_f32_e32 v95, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v131, -v81, v95, 1.0
	v_fmac_f32_e32 v95, v131, v95
	v_div_scale_f32 v131, vcc_lo, v89, v93, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v132, v131, v95
	v_fma_f32 v133, -v81, v132, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v132, v133, v95
	v_fma_f32 v81, -v81, v132, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v95, v81, v95, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v81, 0xbfb8aa3b, v90
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v131, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v90
	v_exp_f32_e32 v81, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v81, v81, v131
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v131, 1.0, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v81, null, v131, v131, v90
	v_rcp_f32_e32 v132, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v133, -v81, v132, 1.0
	v_fmac_f32_e32 v132, v133, v132
	v_div_scale_f32 v133, vcc_lo, v90, v131, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v134, v133, v132
	v_fma_f32 v139, -v81, v134, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v134, v139, v132
	v_fma_f32 v81, -v81, v134, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v132, v81, v132, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v81, 0xbfb8aa3b, v91
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v133, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v91
	v_exp_f32_e32 v81, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v81, v81, v133
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v133, 1.0, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v81, null, v133, v133, v91
	v_rcp_f32_e32 v134, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v81, v134, 1.0
	v_fmac_f32_e32 v134, v139, v134
	v_div_scale_f32 v139, vcc_lo, v91, v133, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v140, v139, v134
	v_fma_f32 v144, -v81, v140, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v144, v134
	v_fma_f32 v81, -v81, v140, v139
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v134, v81, v134, v140
	v_div_fixup_f32 v81, v27, v0, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v88, v95, v93, v89
	v_div_fixup_f32 v89, v132, v131, v90
	v_div_fixup_f32 v90, v134, v133, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v0, v0, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v26
	v_fma_f32 v91, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v91, v27
	v_div_scale_f32 v91, vcc_lo, v72, v0, v72
	v_mul_f32_e32 v93, v91, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v26, v93, v91
	v_fmac_f32_e32 v93, v94, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v93, v91
	v_div_fmas_f32 v26, v26, v27, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v91, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v91, null, v27, v27, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v93, v91
	v_fma_f32 v94, -v91, v93, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, vcc_lo, v73, v27, v73
	v_mul_f32_e32 v95, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v131, -v91, v95, v94
	v_fmac_f32_e32 v95, v131, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v91, v95, v94
	v_div_fmas_f32 v93, v91, v93, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v91, 0xbfb8aa3b, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v93, v93, v27, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v91
	v_cndmask_b32_e64 v91, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v94, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, 0xbfb8aa3b, v74
	v_exp_f32_e32 v91, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v91, v91, v94
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v94, 1.0, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v91, null, v94, v94, v74
	v_rcp_f32_e32 v95, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v131, -v91, v95, 1.0
	v_fmac_f32_e32 v95, v131, v95
	v_div_scale_f32 v131, vcc_lo, v74, v94, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v132, v131, v95
	v_fma_f32 v133, -v91, v132, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v132, v133, v95
	v_fma_f32 v91, -v91, v132, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v95, v91, v95, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v91, 0xbfb8aa3b, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v74, v95, v94, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v91
	v_cndmask_b32_e64 v91, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v131, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v91, 0xbfb8aa3b, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v91, v91
	v_ldexp_f32 v91, v91, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v131, 1.0, v91
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v91, null, v131, v131, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v132, v91
	v_fma_f32 v133, -v91, v132, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v132, v133, v132
	v_div_scale_f32 v133, vcc_lo, v75, v131, v75
	v_mul_f32_e32 v134, v133, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v91, v134, v133
	v_fmac_f32_e32 v134, v139, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v91, v134, v133
	v_div_fmas_f32 v132, v91, v132, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v91, 0xbfb8aa3b, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v75, v132, v131, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v91
	v_cndmask_b32_e64 v91, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v133, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, 0xbfb8aa3b, v70
	v_exp_f32_e32 v91, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v91, v91, v133
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v133, 1.0, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v91, null, v133, v133, v70
	v_rcp_f32_e32 v134, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v91, v134, 1.0
	v_fmac_f32_e32 v134, v139, v134
	v_div_scale_f32 v139, vcc_lo, v70, v133, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v140, v139, v134
	v_fma_f32 v144, -v91, v140, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v144, v134
	v_fma_f32 v91, -v91, v140, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v134, v91, v134, v140
	v_div_fixup_f32 v91, v26, v0, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v73, v134, v133, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v0, v0, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v26
	v_fma_f32 v70, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v70, v27
	v_div_scale_f32 v70, vcc_lo, v68, v0, v68
	v_mul_f32_e32 v72, v70, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v26, v72, v70
	v_fmac_f32_e32 v72, v94, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v72, v70
	v_div_fmas_f32 v26, v26, v27, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v27, v27, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v72, v70
	v_fma_f32 v94, -v70, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v94, v72
	v_div_scale_f32 v94, vcc_lo, v69, v27, v69
	v_mul_f32_e32 v95, v94, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v131, -v70, v95, v94
	v_fmac_f32_e32 v95, v131, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v70, v95, v94
	v_div_fmas_f32 v70, v70, v72, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v72, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v72
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v94, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v72, v72
	v_ldexp_f32 v72, v72, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v94, null, v72, v72, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v95, v94
	v_fma_f32 v131, -v94, v95, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v131, v95
	v_div_scale_f32 v131, vcc_lo, v24, v72, v24
	v_mul_f32_e32 v132, v131, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v133, -v94, v132, v131
	v_fmac_f32_e32 v132, v133, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v94, v132, v131
	v_div_fmas_f32 v131, v94, v95, v132
	v_div_fixup_f32 v94, v26, v0, v68
	v_div_fixup_f32 v95, v70, v27, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v131, v131, v72, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v84
	v_mul_f32_e32 v24, 0xbfb8aa3b, v39
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v84
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v26
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v0, v0, v84
	v_rcp_f32_e32 v27, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v26, v27, 1.0
	v_fmac_f32_e32 v27, v68, v27
	v_div_scale_f32 v68, vcc_lo, v84, v0, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v68, v27
	v_fma_f32 v70, -v26, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v27
	v_fma_f32 v26, -v26, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v26, v26, v27, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v85
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v26, v0, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v27, v27, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v69, v68
	v_fma_f32 v70, -v68, v69, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc_lo, v85, v27, v85
	v_mul_f32_e32 v132, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v133, -v68, v132, v70
	v_fmac_f32_e32 v132, v133, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v68, v132, v70
	v_div_fmas_f32 v68, v68, v69, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v69, 0xbfb8aa3b, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v84, v68, v27, v85
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v86
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v69, v69, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v69, v69, v86
	v_rcp_f32_e32 v132, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v133, -v70, v132, 1.0
	v_fmac_f32_e32 v132, v133, v132
	v_div_scale_f32 v133, vcc_lo, v86, v69, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v134, v133, v132
	v_fma_f32 v139, -v70, v134, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v134, v139, v132
	v_fma_f32 v70, -v70, v134, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v70, v70, v132, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v132, 0xbfb8aa3b, v87
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v85, v70, v69, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v132
	v_cndmask_b32_e64 v132, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v133, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v132, 0xbfb8aa3b, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v132, v132
	v_ldexp_f32 v132, v132, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v132, 1.0, v132
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v133, null, v132, v132, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v134, v133
	v_fma_f32 v139, -v133, v134, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v134, v139, v134
	v_div_scale_f32 v139, vcc_lo, v87, v132, v87
	v_mul_f32_e32 v140, v139, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v144, -v133, v140, v139
	v_fmac_f32_e32 v140, v144, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v133, -v133, v140, v139
	v_div_fmas_f32 v133, v133, v134, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v86, v133, v132, v87
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v49, v49, v86 :: v_dual_fmac_f32 v24, 0xbfb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v24, v24, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v26
	v_fma_f32 v68, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v68, v27
	v_div_scale_f32 v68, vcc_lo, v39, v24, v39
	v_mul_f32_e32 v69, v68, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v26, v69, v68
	v_fmac_f32_e32 v69, v70, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v69, v68
	v_div_fmas_f32 v26, v26, v27, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v39, v26, v24, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_mul_f32_e32 v24, 0xbfb8aa3b, v28
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v40
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v27, v27, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v27, v27, v40
	v_rcp_f32_e32 v69, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc_lo, v40, v27, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v70, v69
	v_fma_f32 v87, -v68, v72, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v87, v69
	v_fma_f32 v68, -v68, v72, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v68, v68, v69, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v69, 0xbfb8aa3b, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v40, v68, v27, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v69, v69
	v_ldexp_f32 v69, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v69, v69, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v72, v70
	v_fma_f32 v87, -v70, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v87, v72
	v_div_scale_f32 v87, vcc_lo, v41, v69, v41
	v_mul_f32_e32 v132, v87, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v133, -v70, v132, v87
	v_fmac_f32_e32 v132, v133, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v70, v132, v87
	v_div_fmas_f32 v70, v70, v72, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v72, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v70, v69, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v72
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v87, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v45
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v72, v72, v87
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v87, null, v72, v72, v45
	v_rcp_f32_e32 v132, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v133, -v87, v132, 1.0
	v_fmac_f32_e32 v132, v133, v132
	v_div_scale_f32 v133, vcc_lo, v45, v72, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v134, v133, v132
	v_fma_f32 v139, -v87, v134, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v134, v139, v132
	v_fma_f32 v87, -v87, v134, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v87, v87, v132, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v132, 0xbfb8aa3b, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v45, v87, v72, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v132
	v_cndmask_b32_e64 v132, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v133, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v132, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v132, v132
	v_ldexp_f32 v132, v132, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v132, 1.0, v132
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v133, null, v132, v132, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v134, v133
	v_fma_f32 v139, -v133, v134, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v134, v139, v134
	v_div_scale_f32 v139, vcc_lo, v35, v132, v35
	v_mul_f32_e32 v140, v139, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v144, -v133, v140, v139
	v_fmac_f32_e32 v140, v144, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v133, -v133, v140, v139
	v_div_fmas_f32 v133, v133, v134, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v87, v133, v132, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v24, v24, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v26
	v_fma_f32 v35, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v35, v27
	v_div_scale_f32 v35, vcc_lo, v28, v24, v28
	v_mul_f32_e32 v68, v35, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v26, v68, v35
	v_fmac_f32_e32 v68, v69, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v68, v35
	v_div_fmas_f32 v26, v26, v27, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v27, v27, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v35
	v_fma_f32 v69, -v35, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v32, v27, v32
	v_mul_f32_e32 v70, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v35, v70, v69
	v_fmac_f32_e32 v70, v72, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v35, v70, v69
	v_div_fmas_f32 v35, v35, v68, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v68, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v68, v68
	v_ldexp_f32 v68, v68, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v68, v68, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v70, v69
	v_fma_f32 v72, -v69, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v72, v70
	v_div_scale_f32 v72, vcc_lo, v21, v68, v21
	v_mul_f32_e32 v132, v72, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v133, -v69, v132, v72
	v_fmac_f32_e32 v132, v133, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v69, v132, v72
	v_div_fmas_f32 v69, v69, v70, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v70, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v70, v70
	v_ldexp_f32 v70, v70, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, null, v70, v70, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v132, v72
	v_fma_f32 v133, -v72, v132, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v132, v133, v132
	v_div_scale_f32 v133, vcc_lo, v36, v70, v36
	v_mul_f32_e32 v134, v133, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v72, v134, v133
	v_fmac_f32_e32 v134, v139, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v72, v134, v133
	v_div_fmas_f32 v72, v72, v132, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v132, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v132
	v_cndmask_b32_e64 v132, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v133, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v132, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v132, v132
	v_ldexp_f32 v132, v132, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v132, 1.0, v132
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v133, null, v132, v132, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v134, v133
	v_fma_f32 v139, -v133, v134, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v134, v139, v134
	v_div_scale_f32 v139, vcc_lo, v37, v132, v37
	v_mul_f32_e32 v140, v139, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v144, -v133, v140, v139
	v_fmac_f32_e32 v140, v144, v134
	v_div_fixup_f32 v144, v72, v70, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v133, -v133, v140, v139
	v_div_fixup_f32 v139, v35, v27, v32
	v_div_fmas_f32 v133, v133, v134, v140
	v_div_fixup_f32 v140, v69, v68, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v21, 0xbfb8aa3b, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v134, v26, v24, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v132, v133, v132, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v33
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v24
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v24, null, v21, v21, v33
	v_rcp_f32_e32 v26, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v24, v26, 1.0
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v33, v21, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v28, v27, v26
	v_fma_f32 v32, -v24, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v32, v26
	v_fma_f32 v24, -v24, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v24, v24, v26, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v145, v24, v21, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_mul_f32_e32 v21, 0xbfb8aa3b, v1
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v26, v26, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v28, v27
	v_fma_f32 v32, -v27, v28, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v32, v28
	v_div_scale_f32 v32, vcc_lo, v34, v26, v34
	v_mul_f32_e32 v35, v32, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v27, v35, v32
	v_fmac_f32_e32 v35, v36, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v27, v35, v32
	v_div_fmas_f32 v27, v27, v28, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v28, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v28, v28
	v_ldexp_f32 v28, v28, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v28, v28, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v35, v32
	v_fma_f32 v36, -v32, v35, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v36, v35
	v_div_scale_f32 v36, vcc_lo, v29, v28, v29
	v_mul_f32_e32 v37, v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v32, v37, v36
	v_fmac_f32_e32 v37, v68, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v37, v36
	v_div_fmas_f32 v32, v32, v35, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v35, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v146, v32, v28, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v30
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v35, v35, v36
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, null, v35, v35, v30
	v_rcp_f32_e32 v37, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v36, v37, 1.0
	v_fmac_f32_e32 v37, v68, v37
	v_div_scale_f32 v68, vcc_lo, v30, v35, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v68, v37
	v_fma_f32 v70, -v36, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v37
	v_fma_f32 v36, -v36, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v37, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v37, 0xbfb8aa3b, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v147, v36, v35, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v37, v37
	v_ldexp_f32 v37, v37, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v37, v37, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v69, v68
	v_fma_f32 v70, -v68, v69, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc_lo, v31, v37, v31
	v_mul_f32_e32 v72, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v133, -v68, v72, v70
	v_fmac_f32_e32 v72, v133, v69
	v_div_fixup_f32 v133, v27, v26, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v68, -v68, v72, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v57, v22
	v_dual_mul_f32 v22, v128, v13 :: v_dual_mul_f32 v57, v54, v90
	v_mul_f32_e32 v54, v126, v95
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v68, v68, v69, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v69, v58, v23 :: v_dual_mul_f32 v72, v60, v65
	v_mul_f32_e32 v65, v143, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v148, v68, v37, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v59, v25
	v_dual_mul_f32 v58, v52, v89 :: v_dual_mul_f32 v59, v51, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v1
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v60, v50, v81 :: v_dual_mul_f32 v23, v129, v15
	v_mul_f32_e32 v25, v104, v131
	v_mul_f32_e32 v50, v48, v85
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v21, v21
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v51, v47, v84
	v_mul_f32_e32 v52, v46, v0
	v_mul_f32_e32 v15, v102, v19
	v_dual_mul_f32 v46, v108, v139 :: v_dual_mul_f32 v47, v107, v134
	v_mul_f32_e32 v48, v106, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v52|, |v51|
.Ltmp8:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v112, v41
	v_mul_f32_e32 v13, v109, v146
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_ldexp_f32 v21, v21, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v24, null, v21, v21, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v24
	v_fma_f32 v27, -v24, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v1, v21, v1
	v_mul_f32_e32 v28, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v24, v28, v27
	v_fmac_f32_e32 v28, v29, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v24, v28, v27
	v_div_fmas_f32 v24, v24, v26, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v149, v24, v21, v1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v1, |v70|, |v69|
.Ltmp10:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v24, v130, v17
	v_mul_f32_e32 v21, v110, v39
	v_mul_f32_e32 v17, v100, v140
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v10
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v26, v26, v10
	v_rcp_f32_e32 v28, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v27, v28, 1.0
	v_fmac_f32_e32 v28, v29, v28
	v_div_scale_f32 v29, vcc_lo, v10, v26, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v30, v29, v28
	v_fma_f32 v31, -v27, v30, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v31, v28
	v_fma_f32 v27, -v27, v30, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v27, v27, v28, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v28, 0xbfb8aa3b, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v150, v27, v26, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v26, v135, v7 :: v_dual_mul_f32 v27, v136, v9
.Ltmp11:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v7, |v25|, |v22|, |v23|
.Ltmp12:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v96, v150
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v9, v116, v149 :: v_dual_mul_f32 v10, v115, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v11
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v28, v28, v29
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, null, v28, v28, v11
	v_rcp_f32_e32 v30, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v29, v30, 1.0
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v11, v28, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v31, v30
	v_fma_f32 v33, -v29, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v33, v30
	v_fma_f32 v29, -v29, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v29, v29, v30, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v30, 0xbfb8aa3b, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v151, v29, v28, v11
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v28, v137, v14 :: v_dual_mul_f32 v29, v118, v75
	v_mul_f32_e32 v14, v101, v18
	v_mul_f32_e32 v18, v114, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v53, v144
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v12
	v_exp_f32_e32 v30, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v30, v30, v31
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, null, v30, v30, v12
	v_rcp_f32_e32 v32, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v31, v32, 1.0
	v_fmac_f32_e32 v32, v33, v32
	v_div_scale_f32 v33, vcc_lo, v12, v30, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v34, v33, v32
	v_fma_f32 v35, -v31, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v35, v32
	v_fma_f32 v31, -v31, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v31, v31, v32, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v32, 0xbfb8aa3b, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v152, v31, v30, v12
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v56, v93
	v_mul_f32_e32 v56, v124, v73
	v_mul_f32_e32 v30, v117, v74
	v_mul_f32_e32 v12, v113, v147
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v39, v98, v152 :: v_dual_fmac_f32 v32, 0xbfb8aa3b, v2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v32, v32, v33
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, null, v32, v32, v2
	v_rcp_f32_e32 v34, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v33, v34, 1.0
	v_fmac_f32_e32 v34, v35, v34
	v_div_scale_f32 v35, vcc_lo, v2, v32, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v36, v35, v34
	v_fma_f32 v37, -v33, v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v36, v37, v34
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v37, v119, v66 :: v_dual_mul_f32 v66, v142, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v33, v36, v35
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v121, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v33, v34, v36
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v36, v120, v67 :: v_dual_mul_f32 v67, v141, v78
	v_mul_f32_e32 v34, v122, v77
.Ltmp13:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v78, 0x60, v167
.Ltmp14:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v11, v33, v32, v2
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v32, v138, v92
.Ltmp15:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, |v68|, |v37|, |v36|
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v55, v91
	v_mul_f32_e32 v55, v125, v94
	v_mul_f32_e32 v11, v99, v11
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, |v32|, |v26|, |v27|
	v_max3_f32 v1, v1, |v72|, v2
	v_max3_f32 v2, |v67|, |v66|, |v65|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v2, v2, v6, |v28|
	v_max3_f32 v6, |v35|, |v34|, |v64|
	v_max3_f32 v76, v1, v6, v2
	v_max_f32_e64 v2, |v60|, |v59|
	v_max3_f32 v6, |v58|, |v33|, |v31|
.Ltmp18:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v1, v127, v8
	v_mul_f32_e32 v8, v83, v44
	v_mul_f32_e32 v44, v61, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v2, |v57|, v6
	v_max3_f32 v6, |v56|, |v55|, |v54|
	v_max_f32_e64 v53, |v45|, |v44|
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v6, v6, v7, |v24|
	v_max3_f32 v7, |v30|, |v29|, |v1|
	v_max3_f32 v73, v2, v7, v6
.Ltmp20:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v2, v123, v16
	v_mul_f32_e32 v16, v103, v20
	v_mul_f32_e32 v20, v111, v40
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v7, |v17|, |v14|, |v15|
.Ltmp22:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v97, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, |v50|, |v21|, |v20|
	v_max3_f32 v0, v0, |v49|, v6
	v_max3_f32 v6, |v48|, |v47|, |v46|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v6, v6, v7, |v16|
	v_max3_f32 v7, |v19|, |v18|, |v2|
	v_max3_f32 v0, v0, v7, v6
.Ltmp24:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v82, v43
	v_dual_mul_f32 v43, v62, v145 :: v_dual_mul_f32 v6, v71, v42
	v_dual_mul_f32 v42, v63, v133 :: v_dual_and_b32 v63, 0x80, v167
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v61, |v43|, |v13|, |v12|
	v_max3_f32 v62, |v11|, |v6|, |v7|
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v53, v53, |v42|, v61
	v_max3_f32 v61, |v41|, |v40|, |v39|
	v_max3_f32 v61, v61, v62, |v8|
	v_max3_f32 v62, |v10|, |v9|, |v38|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v53, v53, v62, v61
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v61, v76, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v62, v73, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v61, v61, v61 :: v_dual_max_f32 v62, v62, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v79, v76, v61
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v61, v0, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v73, v62
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v62, 8, v167
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v61, v61, v61 :: v_dual_lshlrev_b32 v76, 1, v63
	v_max_f32_e32 v81, v0, v61
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v0, v53, s0, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s0, 0xc1000000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v0
	v_max_f32_e32 v82, v53, v0
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v0, 3, v167
	v_and_b32_e32 v53, 4, v167
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_add_u32 v61, v0, 9, 0
	v_lshlrev_b32_e32 v74, 5, v0
	v_lshl_add_u32 v0, v0, 4, 0
	v_lshl_add_u32 v61, v53, 2, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v71, v74, v78
	v_and_or_b32 v5, 0x680, v5, v74
	v_lshl_add_u32 v61, v62, 4, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v5, v5, v78
	v_add3_u32 v61, v61, v76, v71
	v_lshl_add_u32 v71, v53, 6, 0
	v_lshlrev_b32_e32 v53, 5, v53
	ds_store_b128 v61, v[79:82]
	v_lshrrev_b32_e32 v61, 3, v63
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v5, v71, v61, v5
	ds_load_b128 v[79:82], v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v61, v79
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v79, v79
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v71, v80
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v77, v80, v80
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v73, v81
	v_mov_b32_dpp v61, v61 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v81, v81
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v71, v71 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v82, v82
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v73, v73 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v61, v61, v61
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v71, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v61, v75, v61 :: v_dual_max_f32 v82, v82, v82
	v_max_f32_e32 v71, v77, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v75, v61
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v61, v61, v75
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v75, v71
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v75, v75
	v_max_f32_e32 v71, v71, v75
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v75, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v77, v71
	v_mov_b32_dpp v75, v75 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v77, v77, v77
	v_max_f32_e32 v79, v61, v75
	v_max_f32_e32 v61, v73, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v80, v71, v77
	v_max_f32_e32 v61, v81, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v71, v61
	v_mov_b32_dpp v71, v71 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v71, v71, v71
	v_max_f32_e32 v61, v61, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v71, v61
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v71, v71, v71
	v_max_f32_e32 v81, v61, v71
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v61, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v61, v61 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v5, v5, v61
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v61, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v61, v61 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v82, v5, v61 :: v_dual_lshlrev_b32 v5, 3, v62
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add_nc_u32_e32 v61, 0, v63
	v_lshrrev_b32_e32 v62, 1, v78
	v_add3_u32 v0, v0, v53, v5
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v61, v61, v62, v5
	ds_store_b128 v61, v[79:82]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[79:82], v0
.Ltmp63:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v0, v79, v79 :: v_dual_max_f32 v5, v81, v81
	v_max_f32_e32 v53, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v61, v82, v82 :: v_dual_max_f32 v0, 0x2b8cbccc, v0
	v_max_f32_e32 v61, 0x2b8cbccc, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v62, null, 0x40e00000, 0x40e00000, v0
	v_rcp_f32_e32 v63, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v62, v63, 1.0
	v_fmac_f32_e32 v63, v71, v63
	v_div_scale_f32 v71, vcc_lo, v0, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v73, v71, v63
	v_fma_f32 v75, -v62, v73, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v75, v63
	v_fma_f32 v62, -v62, v73, v71
	v_max_f32_e32 v71, 0x2b8cbccc, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v63, v62, v63, v73
	v_div_scale_f32 v5, null, 0x40e00000, 0x40e00000, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v63, 0x40e00000, v0
	v_rcp_f32_e32 v62, v5
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v63.h, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v73, -v5, v62, 1.0
	v_fmac_f32_e32 v62, v73, v62
	v_div_scale_f32 v73, vcc_lo, v71, 0x40e00000, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v73, v62
	v_fma_f32 v77, -v5, v75, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v77, v62
	v_fma_f32 v5, -v5, v75, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v73, v5, v62, v75
	v_max_f32_e32 v75, 0x2b8cbccc, v53
	v_div_scale_f32 v5, null, 0x40e00000, 0x40e00000, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v53, v5
	v_fma_f32 v62, -v5, v53, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, v62, v53
	v_div_scale_f32 v62, vcc_lo, v75, 0x40e00000, v75
	v_mul_f32_e32 v77, v62, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v5, v77, v62
	v_fmac_f32_e32 v77, v79, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v5, -v5, v77, v62
	v_div_fmas_f32 v77, v5, v53, v77
	v_div_scale_f32 v5, null, 0x40e00000, 0x40e00000, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v53, v5
	v_fma_f32 v62, -v5, v53, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, v62, v53
	v_div_scale_f32 v62, vcc_lo, v61, 0x40e00000, v61
	v_mul_f32_e32 v79, v62, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v5, v79, v62
	v_fmac_f32_e32 v79, v80, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v5, -v5, v79, v62
	v_div_fmas_f32 v62, v5, v53, v79
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v5.l, v0.h
	v_mov_b16_e32 v5.h, v63.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v5, 1, v5
	v_add3_u32 v5, v0, v5, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v53, 0xffff0000, v5
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v53, v53, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v79, v0
	v_fma_f32 v80, -v0, v79, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v80, v79
	v_div_scale_f32 v80, vcc_lo, v70, v53, v70
	v_mul_f32_e32 v81, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v0, v81, v80
	v_fmac_f32_e32 v81, v82, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v81, v80
	v_div_fmas_f32 v79, v0, v79, v81
	v_div_scale_f32 v0, null, v53, v53, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v80, v0
	v_fma_f32 v81, -v0, v80, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v80
	v_div_scale_f32 v81, vcc_lo, v69, v53, v69
	v_mul_f32_e32 v82, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v0, v82, v81
	v_fmac_f32_e32 v82, v83, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v82, v81
	v_div_fmas_f32 v80, v0, v80, v82
	v_div_scale_f32 v0, null, v53, v53, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v69, v80, v53, v69
	v_rcp_f32_e32 v81, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v69, v69, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v0, v81, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v82, v81
	v_div_scale_f32 v82, vcc_lo, v72, v53, v72
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v80, 15, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v83, v82, v81
	v_fma_f32 v84, -v0, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v84, v81
	v_fma_f32 v0, -v0, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v81, v0, v81, v83
	v_div_scale_f32 v0, null, v53, v53, v68
	v_div_fixup_f32 v72, v81, v53, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v82, v0
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v69, v69, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v0, v82, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v83, v82
	v_div_scale_f32 v83, vcc_lo, v68, v53, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v84, v83, v82 :: v_dual_and_b32 v81, 15, v69
	v_fma_f32 v85, -v0, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v85, v82
	v_fma_f32 v0, -v0, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v82, v0, v82, v84
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v0, v179, v78
	v_lshlrev_b32_e32 v78, 10, v167
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v68, v82, v53, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v83, 0x1800, v78
	v_and_b32_e32 v78, 16, v167
	v_lshlrev_b32_e32 v84, 6, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v83, 0, v83, v84
	v_add3_u32 v76, v83, v0, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v53, v53, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v83, v0
	v_fma_f32 v84, -v0, v83, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v84, vcc_lo, v37, v53, v37
	v_mul_f32_e32 v85, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v0, v85, v84
	v_fmac_f32_e32 v85, v86, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v85, v84
	v_div_fmas_f32 v83, v0, v83, v85
	v_div_scale_f32 v0, null, v53, v53, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v37, v83, v53, v37
	v_rcp_f32_e32 v84, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v0, v84, 1.0
	v_fmac_f32_e32 v84, v85, v84
	v_div_scale_f32 v85, vcc_lo, v36, v53, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v86, v85, v84
	v_fma_f32 v87, -v0, v86, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v87, v84
	v_fma_f32 v0, -v0, v86, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v84, v0, v84, v86
	v_div_scale_f32 v0, null, v53, v53, v35
	v_rcp_f32_e32 v85, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v0, v85, 1.0
	v_fmac_f32_e32 v85, v86, v85
	v_div_scale_f32 v86, vcc_lo, v35, v53, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v87, v86, v85
	v_fma_f32 v88, -v0, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v88, v85
	v_fma_f32 v0, -v0, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v85, v0, v85, v87
	v_div_scale_f32 v0, null, v53, v53, v34
	v_rcp_f32_e32 v86, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v0, v86, 1.0
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v34, v53, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v87, v86
	v_fma_f32 v89, -v0, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v86
	v_fma_f32 v0, -v0, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v86, v0, v86, v88
	v_div_scale_f32 v0, null, v53, v53, v64
	v_rcp_f32_e32 v87, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v0, v87, 1.0
	v_fmac_f32_e32 v87, v88, v87
	v_div_scale_f32 v88, vcc_lo, v64, v53, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v89, v88, v87
	v_fma_f32 v90, -v0, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v87
	v_fma_f32 v0, -v0, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v0, v0, v87, v89
	v_div_scale_f32 v87, null, v53, v53, v67
	v_div_fixup_f32 v0, v0, v53, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v88, v87
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v87, v88, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, vcc_lo, v67, v53, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v90, v89, v88
	v_fma_f32 v91, -v87, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v88
	v_fma_f32 v87, -v87, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v87, v87, v88, v90
	v_div_scale_f32 v88, null, v53, v53, v66
	v_div_fixup_f32 v64, v87, v53, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v89, v88
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v68
	v_rndne_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v88, v89, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v66, v53, v66
	v_dual_mul_f32 v91, v90, v89 :: v_dual_and_b32 v82, 15, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v88, v91, v90
	v_fmac_f32_e32 v91, v92, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v88, v91, v90
	v_div_fmas_f32 v88, v88, v89, v91
	v_div_scale_f32 v89, null, v53, v53, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v66, v88, v53, v66
	v_rcp_f32_e32 v90, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v89, v90, 1.0
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v65, v53, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v92, v91, v90
	v_fma_f32 v93, -v89, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v90
	v_fma_f32 v89, -v89, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v89, v89, v90, v92
	v_div_fixup_f32 v67, v89, v53, v65
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v65, v64
	v_and_b32_e32 v64, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v65, 15, v65
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v0, v0
	v_and_b32_e32 v66, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v67, 15, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v70, v79, v53, v70
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 6, v167
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v0, 0x1b00, v0, v74
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v70, v70, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v70, v70
	v_and_b32_e32 v79, 15, v70
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[79:82]
	ds_store_b128 v76, v[64:67] offset:512
	v_xad_u32 v65, v0, v178, 0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v53, v53, v32
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[66:69], v65
	ds_load_b128 v[79:82], v65 offset:1024
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v64, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v70, -v0, v64, 1.0
	v_fmac_f32_e32 v64, v70, v64
	v_div_scale_f32 v70, vcc_lo, v32, v53, v32
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v66, v79, 4, v66
	v_lshl_or_b32 v67, v80, 4, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v72, v70, v64
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v68, v81, 4, v68
	v_lshl_or_b32 v69, v82, 4, v69
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v5.l, 8, v67.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v74, -v0, v72, v70
	v_fmac_f32_e32 v72, v74, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v72, v70
	v_div_fmas_f32 v72, v0, v64, v72
	v_div_scale_f32 v0, null, v53, v53, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v64, v0
	v_fma_f32 v70, -v0, v64, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, v70, v64
	v_div_scale_f32 v70, vcc_lo, v26, v53, v26
	v_mul_f32_e32 v74, v70, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v0, v74, v70
	v_fmac_f32_e32 v74, v79, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v74, v70
	v_div_fmas_f32 v74, v0, v64, v74
	v_div_scale_f32 v0, null, v53, v53, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v26, v74, v53, v26
	v_rcp_f32_e32 v64, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v26, v26, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v70, -v0, v64, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v64, v70, v64
	v_div_scale_f32 v70, vcc_lo, v27, v53, v27
	v_mul_f32_e32 v79, v70, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v0, v79, v70
	v_fmac_f32_e32 v79, v80, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v79, v70
	v_div_fmas_f32 v79, v0, v64, v79
	v_div_scale_f32 v0, null, v53, v53, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v27, v79, v53, v27
	v_rcp_f32_e32 v64, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v0, v64, 1.0
	v_fmac_f32_e32 v64, v70, v64
	v_div_scale_f32 v70, vcc_lo, v28, v53, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v70, v64
	v_fma_f32 v81, -v0, v80, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v64
	v_fma_f32 v0, -v0, v80, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v80, v0, v64, v80
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v77, 0x40e00000, v75
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v64.h, v63.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_fixup_f32 v28, v80, v53, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v64.l, v0.h
	v_and_b32_e32 v64, 1, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v64, v0, v64, 0x7fff
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v70, 0xffff0000, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v70, v70, v60
	v_rcp_f32_e32 v75, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v0, v75, 1.0
	v_fmac_f32_e32 v75, v77, v75
	v_div_scale_f32 v77, vcc_lo, v60, v70, v60
	v_div_fixup_f32 v32, v72, v53, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v81, v77, v75
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v0, v81, v77
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v32, v32, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v82, v75
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v0, v81, v77
	v_div_fmas_f32 v0, v0, v75, v81
	v_div_scale_f32 v75, null, v70, v70, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v77, v75
	v_fma_f32 v81, -v75, v77, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v77, v81, v77
	v_div_scale_f32 v81, vcc_lo, v59, v70, v59
	v_div_fixup_f32 v36, v84, v53, v36
	v_mul_f32_e32 v82, v81, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v75, v82, v81
	v_fmac_f32_e32 v82, v87, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v75, v82, v81
	v_div_fmas_f32 v87, v75, v77, v82
	v_div_scale_f32 v75, null, v70, v70, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v59, v87, v70, v59
	v_rcp_f32_e32 v77, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v75, v77, 1.0
	v_fmac_f32_e32 v77, v81, v77
	v_div_scale_f32 v81, vcc_lo, v57, v70, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v82, v81, v77
	v_fma_f32 v88, -v75, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v88, v77
	v_fma_f32 v75, -v75, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v88, v75, v77, v82
	v_div_scale_f32 v75, null, v70, v70, v58
	v_rcp_f32_e32 v77, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v75, v77, 1.0
	v_fmac_f32_e32 v77, v81, v77
	v_div_scale_f32 v81, vcc_lo, v58, v70, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v82, v81, v77
	v_fma_f32 v89, -v75, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v89, v77
	v_fma_f32 v75, -v75, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v89, v75, v77, v82
	v_div_scale_f32 v75, null, v70, v70, v33
	v_div_fixup_f32 v87, v89, v70, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v77, v75
	v_fma_f32 v81, -v75, v77, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v81, v77
	v_div_scale_f32 v81, vcc_lo, v33, v70, v33
	v_mul_f32_e32 v82, v81, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v75, v82, v81
	v_fmac_f32_e32 v82, v90, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v75, v82, v81
	v_div_fmas_f32 v75, v75, v77, v82
	v_div_scale_f32 v77, null, v70, v70, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v81, v77
	v_fma_f32 v82, -v77, v81, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v82, v81
	v_div_scale_f32 v82, vcc_lo, v31, v70, v31
	v_mul_f32_e32 v90, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v77, v90, v82
	v_fmac_f32_e32 v90, v91, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v77, v90, v82
	v_div_fmas_f32 v77, v77, v81, v90
	v_div_scale_f32 v81, null, v70, v70, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v82, v81
	v_fma_f32 v90, -v81, v82, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v90, v82
	v_div_scale_f32 v90, vcc_lo, v30, v70, v30
	v_mul_f32_e32 v91, v90, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v81, v91, v90
	v_fmac_f32_e32 v91, v92, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v81, v91, v90
	v_div_fmas_f32 v81, v81, v82, v91
	v_div_scale_f32 v82, null, v70, v70, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v90, v82
	v_fma_f32 v91, -v82, v90, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v29, v70, v29
	v_mul_f32_e32 v92, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v82, v92, v91
	v_fmac_f32_e32 v92, v93, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v82, v92, v91
	v_div_fmas_f32 v82, v82, v90, v92
	v_div_scale_f32 v90, null, v70, v70, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v91, v90
	v_fma_f32 v92, -v90, v91, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v1, v70, v1
	v_div_fixup_f32 v0, v0, v70, v60
	v_div_fixup_f32 v60, v88, v70, v57
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v93, v92, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v57, v57, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v90, v93, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_i32_f32_e32 v58, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v94, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	v_and_b32_e32 v58, 15, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v90, v93, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v57, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fmas_f32 v90, v90, v91, v93
	v_div_scale_f32 v91, null, v70, v70, v56
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v92, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v59, 15, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v0, v90, v70, v1
	v_fma_f32 v93, -v91, v92, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v56, v70, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v93, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v95, -v91, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v95, v92
	v_fma_f32 v91, -v91, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v91, v91, v92, v94
	v_div_scale_f32 v92, null, v70, v70, v55
	v_div_fixup_f32 v1, v91, v70, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v93, v92
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v87
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_and_b32_e32 v87, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v1, v1, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v92, v93, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v56, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_i32_f32_e32 v1, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, vcc_lo, v55, v70, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v60, 15, v56
	v_and_b32_e32 v88, 15, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v95, v94, v93
	v_fma_f32 v96, -v92, v95, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v96, v93
	v_fma_f32 v92, -v92, v95, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v92, v92, v93, v95
	v_div_scale_f32 v93, null, v70, v70, v54
	v_div_fixup_f32 v55, v92, v70, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v94, v93
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v95, -v93, v94, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v95, v94
	v_div_scale_f32 v95, vcc_lo, v54, v70, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v96, v95, v94 :: v_dual_and_b32 v89, 15, v0
	v_fma_f32 v97, -v93, v96, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v96, v97, v94
	v_fma_f32 v93, -v93, v96, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v93, v93, v94, v96
	v_div_fixup_f32 v54, v93, v70, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v54
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v0, v0
	v_and_b32_e32 v90, 15, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v70, v70, v25
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[57:60]
	ds_store_b128 v76, v[87:90] offset:512
	s_waitcnt lgkmcnt(0)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v1, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v54, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v54, v1
	v_div_scale_f32 v54, vcc_lo, v25, v70, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v55, v54, v1
	v_fma_f32 v56, -v0, v55, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v55, v56, v1
	v_fma_f32 v0, -v0, v55, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v55, v0, v1, v55
	v_div_scale_f32 v0, null, v70, v70, v22
	v_rcp_f32_e32 v1, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v54, v1
	v_div_scale_f32 v54, vcc_lo, v22, v70, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v56, v54, v1
	v_fma_f32 v57, -v0, v56, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v57, v1
	v_fma_f32 v0, -v0, v56, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v56, v0, v1, v56
	v_div_scale_f32 v0, null, v70, v70, v23
	v_rcp_f32_e32 v1, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v54, v1
	v_div_scale_f32 v54, vcc_lo, v23, v70, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v57, v54, v1
	v_fma_f32 v58, -v0, v57, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v57, v58, v1
	v_fma_f32 v0, -v0, v57, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v57, v0, v1, v57
	v_div_scale_f32 v0, null, v70, v70, v24
	v_rcp_f32_e32 v1, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v54, v1
	v_div_scale_f32 v54, vcc_lo, v24, v70, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v58, v54, v1
	v_fma_f32 v59, -v0, v58, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v58, v59, v1
	v_fma_f32 v0, -v0, v58, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v58, v0, v1, v58
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v73, 0x40e00000, v71
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v63.l, v0.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v1, 1, v63
	v_add3_u32 v1, v0, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v54, 0xffff0000, v1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v69.l
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v54, v54, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v59, v0
	v_fma_f32 v60, -v0, v59, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v59, v60, v59
	v_div_scale_f32 v60, vcc_lo, v52, v54, v52
	v_mul_f32_e32 v71, v60, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v0, v71, v60
	v_fmac_f32_e32 v71, v73, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v71, v60
	v_div_fmas_f32 v0, v0, v59, v71
	v_div_scale_f32 v59, null, v54, v54, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v0, v54, v52
	v_rcp_f32_e32 v60, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v71, -v59, v60, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v60, v71, v60
	v_div_scale_f32 v71, vcc_lo, v51, v54, v51
	v_mul_f32_e32 v73, v71, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v59, v73, v71
	v_fmac_f32_e32 v73, v87, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v59, v73, v71
	v_div_fmas_f32 v73, v59, v60, v73
	v_div_scale_f32 v59, null, v54, v54, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v51, v73, v54, v51
	v_rcp_f32_e32 v60, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v59, v60, 1.0
	v_fmac_f32_e32 v60, v71, v60
	v_div_scale_f32 v71, vcc_lo, v49, v54, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v87, v71, v60
	v_fma_f32 v88, -v59, v87, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v88, v60
	v_fma_f32 v59, -v59, v87, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v87, v59, v60, v87
	v_div_scale_f32 v59, null, v54, v54, v50
	v_div_fixup_f32 v52, v87, v54, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v60, v59
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v51
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v49, v49, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v71, -v59, v60, 1.0
	v_fmac_f32_e32 v60, v71, v60
	v_div_scale_f32 v71, vcc_lo, v50, v54, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v71, v60
	v_fma_f32 v89, -v59, v88, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v60
	v_fma_f32 v59, -v59, v88, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v88, v59, v60, v88
	v_div_scale_f32 v59, null, v54, v54, v21
	v_div_fixup_f32 v73, v88, v54, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v60, v59
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v50, v49
	v_and_b32_e32 v49, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v52
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v50, 15, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v71, -v59, v60, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v60, v71, v60
	v_div_scale_f32 v71, vcc_lo, v21, v54, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v51, 15, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v89, v71, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v59, v89, v71
	v_fmac_f32_e32 v89, v90, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v59, v89, v71
	v_div_fmas_f32 v59, v59, v60, v89
	v_div_scale_f32 v60, null, v54, v54, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v21, v59, v54, v21
	v_rcp_f32_e32 v71, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v60, v71, 1.0
	v_fmac_f32_e32 v71, v89, v71
	v_div_scale_f32 v89, vcc_lo, v20, v54, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v90, v89, v71
	v_fma_f32 v91, -v60, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v71
	v_fma_f32 v60, -v60, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v60, v60, v71, v90
	v_div_scale_f32 v71, null, v54, v54, v19
	v_div_fixup_f32 v20, v60, v54, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v89, v71
	v_fma_f32 v90, -v71, v89, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v19, v54, v19
	v_mul_f32_e32 v91, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v71, v91, v90
	v_fmac_f32_e32 v91, v92, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v71, v91, v90
	v_div_fmas_f32 v71, v71, v89, v91
	v_div_scale_f32 v89, null, v54, v54, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v19, v71, v54, v19
	v_rcp_f32_e32 v90, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v89, v90, 1.0
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v18, v54, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v92, v91, v90
	v_fma_f32 v93, -v89, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v90
	v_fma_f32 v89, -v89, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v99, v89, v90, v92
	v_div_scale_f32 v89, null, v54, v54, v2
	v_div_fixup_f32 v18, v99, v54, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v90, v89
	v_fma_f32 v91, -v89, v90, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v2, v54, v2
	v_mul_f32_e32 v92, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v89, v92, v91
	v_fmac_f32_e32 v92, v93, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v89, v92, v91
	v_div_fmas_f32 v89, v89, v90, v92
	v_div_scale_f32 v90, null, v54, v54, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v89, v54, v2
	v_rcp_f32_e32 v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v90, v91, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v48, v54, v48
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v87, 15, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v93, v92, v91
	v_fma_f32 v94, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v91
	v_fma_f32 v90, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v90, v90, v91, v93
	v_div_scale_f32 v91, null, v54, v54, v47
	v_div_fixup_f32 v2, v90, v54, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v92, v91
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v73
	v_rndne_f32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v2, v2, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v91, v92, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v48, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_i32_f32_e32 v2, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v47, v54, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v52, 15, v48
	v_and_b32_e32 v88, 15, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v93, v92
	v_fma_f32 v95, -v91, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v95, v92
	v_fma_f32 v91, -v91, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v91, v91, v92, v94
	v_div_scale_f32 v92, null, v54, v54, v46
	v_div_fixup_f32 v47, v91, v54, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v93, v92
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v92, v93, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, vcc_lo, v46, v54, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v89, 15, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v95, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v96, -v92, v95, v94
	v_fmac_f32_e32 v95, v96, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v92, v95, v94
	v_div_fmas_f32 v92, v92, v93, v95
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fixup_f32 v46, v92, v54, v46
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[91:94], v65
	ds_load_b128 v[95:98], v65 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v90, 15, v0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v62, 0x40e00000, v61
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[49:52]
	ds_store_b128 v76, v[87:90] offset:512
	s_waitcnt lgkmcnt(0)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v63.l, v0.h
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v63
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v54, v54, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v46, v0
	v_fma_f32 v47, -v0, v46, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, vcc_lo, v17, v54, v17
	v_mul_f32_e32 v48, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v0, v48, v47
	v_fmac_f32_e32 v48, v49, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v48, v47
	v_div_fmas_f32 v0, v0, v46, v48
	v_div_scale_f32 v46, null, v54, v54, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v0, v54, v17
	v_rcp_f32_e32 v47, v46
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v17, v17, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v48, -v46, v47, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, vcc_lo, v14, v54, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v17, 15, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v49, v48, v47
	v_fma_f32 v50, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v50, v47
	v_fma_f32 v46, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v51, v46, v47, v49
	v_div_scale_f32 v46, null, v54, v54, v15
	v_rcp_f32_e32 v47, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v46, v47, 1.0
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, vcc_lo, v15, v54, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v49, v48, v47
	v_fma_f32 v50, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v50, v47
	v_fma_f32 v46, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v52, v46, v47, v49
	v_div_scale_f32 v46, null, v54, v54, v16
	v_rcp_f32_e32 v47, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v46, v47, 1.0
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, vcc_lo, v16, v54, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v49, v48, v47
	v_fma_f32 v50, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v50, v47
	v_fma_f32 v46, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v61, v46, v47, v49
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v46, 0xffff0000, v2
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	v_and_b16 v2.l, 0xff, v68.l
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v47, null, v46, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v48, v47
	v_fma_f32 v49, -v47, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, vcc_lo, v45, v46, v45
	v_mul_f32_e32 v50, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v47, v50, v49
	v_fmac_f32_e32 v50, v62, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v47, v50, v49
	v_div_fmas_f32 v47, v47, v48, v50
	v_div_scale_f32 v48, null, v46, v46, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v45, v47, v46, v45
	v_rcp_f32_e32 v49, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v48, v49, 1.0
	v_fmac_f32_e32 v49, v50, v49
	v_div_scale_f32 v50, vcc_lo, v44, v46, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v62, v50, v49
	v_fma_f32 v63, -v48, v62, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v62, v63, v49
	v_fma_f32 v48, -v48, v62, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v48, v48, v49, v62
	v_div_scale_f32 v49, null, v46, v46, v42
	v_div_fixup_f32 v44, v48, v46, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v50, v49
	v_fma_f32 v62, -v49, v50, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v62, v50
	v_div_scale_f32 v62, vcc_lo, v42, v46, v42
	v_mul_f32_e32 v63, v62, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v49, v63, v62
	v_fmac_f32_e32 v63, v73, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v49, v63, v62
	v_div_fmas_f32 v49, v49, v50, v63
	v_div_scale_f32 v50, null, v46, v46, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v47, v49, v46, v42
	v_rcp_f32_e32 v62, v50
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v42, v42, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v63, -v50, v62, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v62, v63, v62
	v_div_scale_f32 v63, vcc_lo, v43, v46, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v42, 15, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v73, v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v50, v73, v63
	v_fmac_f32_e32 v73, v87, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v50, v73, v63
	v_div_fmas_f32 v50, v50, v62, v73
	v_div_scale_f32 v62, null, v46, v46, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v48, v50, v46, v43
	v_rcp_f32_e32 v63, v62
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v44
	v_rndne_f32_e32 v44, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rndne_f32_e32 v45, v48
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v43, v43, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v73, -v62, v63, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v63, v73, v63
	v_div_scale_f32 v73, vcc_lo, v13, v46, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v43, 15, v43
	v_and_b32_e32 v44, 15, v44
	v_and_b32_e32 v45, 15, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v87, v73, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v62, v87, v73
	v_fmac_f32_e32 v87, v88, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v62, v87, v73
	v_div_fmas_f32 v62, v62, v63, v87
	v_div_scale_f32 v63, null, v46, v46, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v13, v62, v46, v13
	v_rcp_f32_e32 v73, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v63, v73, 1.0
	v_fmac_f32_e32 v73, v87, v73
	v_div_scale_f32 v87, vcc_lo, v12, v46, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v87, v73
	v_fma_f32 v89, -v63, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v73
	v_fma_f32 v63, -v63, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v63, v63, v73, v88
	v_div_scale_f32 v73, null, v46, v46, v10
	v_div_fixup_f32 v12, v63, v46, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v87, v73
	v_fma_f32 v88, -v73, v87, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v88, v87
	v_div_scale_f32 v88, vcc_lo, v10, v46, v10
	v_mul_f32_e32 v89, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v73, v89, v88
	v_fmac_f32_e32 v89, v90, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v73, v89, v88
	v_div_fmas_f32 v73, v73, v87, v89
	v_div_scale_f32 v87, null, v46, v46, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v10, v73, v46, v10
	v_rcp_f32_e32 v88, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v87, v88, 1.0
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, vcc_lo, v9, v46, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v90, v89, v88
	v_fma_f32 v100, -v87, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v100, v88
	v_fma_f32 v87, -v87, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v100, v87, v88, v90
	v_div_scale_f32 v87, null, v46, v46, v38
	v_div_fixup_f32 v9, v100, v46, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v88, v87
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v9, v9, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v87, v88, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v9, v9
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, vcc_lo, v38, v46, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v90, v89, v88 :: v_dual_and_b32 v9, 15, v9
	v_fma_f32 v101, -v87, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v101, v88
	v_fma_f32 v87, -v87, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v87, v87, v88, v90
	v_div_scale_f32 v88, null, v46, v46, v41
	v_div_fixup_f32 v38, v87, v46, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v89, v88
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v38, v38, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v88, v89, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v41, v46, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v101, v90, v89 :: v_dual_and_b32 v38, 15, v38
	v_fma_f32 v102, -v88, v101, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v101, v102, v89
	v_div_fixup_f32 v29, v82, v70, v29
	v_fma_f32 v88, -v88, v101, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v88, v88, v89, v101
	v_div_scale_f32 v89, null, v46, v46, v40
	v_div_fixup_f32 v41, v88, v46, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v90, v89
	v_fma_f32 v101, -v89, v90, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v101, v90
	v_div_scale_f32 v101, vcc_lo, v40, v46, v40
	v_mul_f32_e32 v102, v101, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v103, -v89, v102, v101
	v_fmac_f32_e32 v102, v103, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v89, v102, v101
	v_div_fmas_f32 v89, v89, v90, v102
	v_div_scale_f32 v90, null, v46, v46, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v40, v89, v46, v40
	v_rcp_f32_e32 v101, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v40, v40, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v102, -v90, v101, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v101, v102, v101
	v_div_scale_f32 v102, vcc_lo, v39, v46, v39
	v_dual_mul_f32 v103, v102, v101 :: v_dual_and_b32 v40, 15, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v104, -v90, v103, v102
	v_fmac_f32_e32 v103, v104, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v90, v103, v102
	v_div_fmas_f32 v90, v90, v101, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v47, v90, v46, v39
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v41
	v_rndne_f32_e32 v41, v47
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v39, v39, s0, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[47:50], v65
	ds_load_b128 v[87:90], v65 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_cvt_i32_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v41, v41
	v_and_b32_e32 v39, 15, v39
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v41, 15, v41
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[42:45]
	ds_store_b128 v76, v[38:41] offset:512
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v39, v86, v53, v34
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v38, v85, v53, v35
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v36
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v39
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v39, 15, v26
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v27
	v_rndne_f32_e32 v36, v38
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v36, v36
	v_and_b32_e32 v34, 15, v34
	v_and_b32_e32 v35, 15, v35
	v_and_b32_e32 v37, 15, v37
	v_and_b32_e32 v40, 15, v26
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v28
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v36, 15, v36
	v_and_b32_e32 v38, 15, v32
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_load_b128 v[42:45], v65
	ds_load_b128 v[83:86], v65 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v26, v26, s0, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v28, v81, v70, v30
	v_div_fixup_f32 v30, v55, v70, v25
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v26, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v27, v77, v70, v31
	v_div_fixup_f32 v31, v56, v70, v22
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v29
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_and_b32_e32 v41, 15, v26
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[34:37]
	ds_store_b128 v76, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v65
	ds_load_b128 v[38:41], v65 offset:1024
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v26, v75, v70, v33
	v_div_fixup_f32 v33, v57, v70, v23
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v27
	v_rndne_f32_e32 v27, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v31, v52, v54, v15
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v26
	v_rndne_f32_e32 v26, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v30, v51, v54, v14
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v21
	v_rndne_f32_e32 v15, v20
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v30
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v32, v38, 4, v34
	v_lshl_or_b32 v34, v39, 4, v35
	v_lshl_or_b32 v35, v40, 4, v36
	v_lshl_or_b32 v36, v41, 4, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v41, v58, v70, v24
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v28
	v_rndne_f32_e32 v28, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v33, v61, v54, v16
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v19
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v19, v18
	v_and_b32_e32 v18, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v31
	v_rndne_f32_e32 v29, v41
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v16, v16
	v_and_b32_e32 v20, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v29, v29
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_and_b32_e32 v22, 15, v22
	v_and_b32_e32 v23, 15, v23
	v_and_b32_e32 v24, 15, v24
	v_and_b32_e32 v25, 15, v25
	v_cvt_i32_f32_e32 v0, v0
	v_and_b32_e32 v14, 15, v14
	v_and_b32_e32 v15, 15, v15
	v_and_b32_e32 v16, 15, v16
	v_and_b32_e32 v26, 15, v26
	v_and_b32_e32 v27, 15, v27
	v_and_b32_e32 v28, 15, v28
	v_and_b32_e32 v29, 15, v29
	v_and_b32_e32 v19, 15, v19
	v_and_b32_e32 v21, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v76, v[22:25]
	ds_store_b128 v76, v[26:29] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[22:25], v65
	ds_load_b128 v[26:29], v65 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v76, v[14:17]
	ds_store_b128 v76, v[18:21] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[14:17], v65
	ds_load_b128 v[18:21], v65 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v37, v95, 4, v91
	v_lshl_or_b32 v38, v96, 4, v92
	v_lshl_or_b32 v39, v97, 4, v93
	v_lshl_or_b32 v40, v98, 4, v94
	v_lshl_or_b32 v22, v26, 4, v22
	v_lshl_or_b32 v23, v27, 4, v23
	v_lshl_or_b32 v24, v28, 4, v24
	v_lshl_or_b32 v25, v29, 4, v25
	v_lshl_or_b32 v26, v87, 4, v47
	v_lshl_or_b32 v27, v88, 4, v48
	v_lshl_or_b32 v0, v18, 4, v14
	v_lshl_or_b32 v14, v19, 4, v15
	v_lshl_or_b32 v15, v20, 4, v16
	v_lshl_or_b32 v16, v21, 4, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v21, null, v46, v46, v11
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v17, v83, 4, v42
	v_lshl_or_b32 v18, v84, 4, v43
	v_lshl_or_b32 v19, v85, 4, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v30, v21
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v28, v89, 4, v49
	v_lshl_or_b32 v29, v90, 4, v50
	v_lshl_or_b32 v20, v86, 4, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v31, -v21, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v11, v46, v11
	v_mul_f32_e32 v33, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v21, v33, v31
	v_fmac_f32_e32 v33, v41, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v21, v33, v31
	v_div_fmas_f32 v21, v21, v30, v33
	v_div_scale_f32 v30, null, v46, v46, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v11, v21, v46, v11
	v_rcp_f32_e32 v31, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v30, v31, 1.0
	v_fmac_f32_e32 v31, v33, v31
	v_div_scale_f32 v33, vcc_lo, v6, v46, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v33, v31
	v_fma_f32 v42, -v30, v41, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v31
	v_fma_f32 v30, -v30, v41, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v30, v30, v31, v41
	v_div_scale_f32 v31, null, v46, v46, v7
	v_div_fixup_f32 v21, v30, v46, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v33, v31
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v6, v13
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v6, v6, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v41, -v31, v33, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v33, v41, v33
	v_div_scale_f32 v41, vcc_lo, v7, v46, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v6, 15, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v42, v41, v33
	v_fma_f32 v43, -v31, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v33
	v_fma_f32 v31, -v31, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v31, v31, v33, v42
	v_div_scale_f32 v33, null, v46, v46, v8
	v_div_fixup_f32 v30, v31, v46, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v33
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v12
	v_rndne_f32_e32 v12, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v42, -v33, v41, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_i32_f32_e32 v12, v12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, vcc_lo, v8, v46, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v7, 15, v7
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v43, v42, v41 :: v_dual_and_b32 v12, 15, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v33, v43, v42
	v_fmac_f32_e32 v43, v44, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v33, v43, v42
	v_div_fmas_f32 v33, v33, v41, v43
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v41, 4, v178
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v31, v33, v46, v8
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v10
	v_rndne_f32_e32 v10, v11
	v_rndne_f32_e32 v11, v21
	v_rndne_f32_e32 v13, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_i32_f32_e32 v8, v8
	v_cvt_i32_f32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v8, 15, v8
	v_and_b32_e32 v10, 15, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v11, 15, v11
	v_and_b32_e32 v13, 15, v13
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[6:9]
	ds_store_b128 v76, v[10:13] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v65
	ds_load_b128 v[10:13], v65 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v21, v10, 4, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v6, s0, s22, v41
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v30, v11, 4, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v7, null, s23, 0, s0
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v31, v12, 4, v8
	v_lshl_or_b32 v33, v13, 4, v9
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v8.h, v2.l, v1.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[24:25], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[26:27], v[6:7]
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	v_and_b16 v6.l, 0xff, v66.l
	v_lshlrev_b16 v6.h, 8, v36.l
	v_and_b16 v7.l, 0xff, v35.l
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v35, 3, v177
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v36, v41, v4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v8.l, v6.l, v5.l
	v_lshlrev_b16 v1.l, 8, v34.l
	v_or_b16 v9.h, v7.l, v6.h
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v6, s30, 7, v35
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_and_b16 v2.l, 0xff, v32.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v12, 32, v41
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v5.l, 8, v16.l
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v36, s6, v[6:7]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v9.l, v2.l, v1.l
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v7, 48, v41
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v40.l
	v_and_b16 v2.l, 0xff, v39.l
	v_cndmask_b32_e32 v4, 0x80000000, v10, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v10, s0, s22, v7
	v_add_co_ci_u32_e64 v11, null, s23, 0, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[8:9], v4, s[12:15], 0 offen
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 16, v41
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s0, s22, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v13, null, s23, 0, s0
	v_add_co_u32 v7, s4, s22, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v8, null, s23, 0, s4
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	v_lshlrev_b16 v4.l, 8, v38.l
	v_and_b16 v4.h, 0xff, v37.l
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[24:25], v[10:11]
	v_cmp_le_i64_e64 s4, s[24:25], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[26:27], v[7:8]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v7, 16, v36
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[26:27], v[10:11]
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 32, v36
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[24:25], v[12:13]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[26:27], v[12:13]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v7, s6, v[6:7]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v4.h, v4.l
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 48, v36
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v25.l
	v_and_b16 v2.l, 0xff, v24.l
	v_lshlrev_b16 v4.l, 8, v23.l
	v_and_b16 v4.h, 0xff, v22.l
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[11:12], null, v9, s6, v[6:7]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s4, s4, s5
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[12:13], null, v13, s6, v[6:7]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v9.h, v2.l, v1.l
	v_or_b16 v9.l, v4.h, v4.l
	v_cndmask_b32_e64 v10, 0x80000000, v10, s4
	v_lshlrev_b16 v1.l, 8, v29.l
	v_and_b16 v2.l, 0xff, v28.l
	v_lshlrev_b16 v4.l, 8, v27.l
	v_and_b16 v4.h, 0xff, v26.l
	v_and_b16 v6.l, 0xff, v15.l
	v_lshlrev_b16 v6.h, 8, v14.l
	v_and_b16 v7.l, 0xff, v0.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[8:9], v10, s[12:15], 0 offen
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v4.h, v4.l
	v_or_b16 v9.h, v6.l, v5.l
	v_or_b16 v9.l, v7.l, v6.h
	v_lshlrev_b16 v5.l, 8, v33.l
	v_and_b16 v6.l, 0xff, v31.l
	v_lshlrev_b16 v6.h, 8, v30.l
	v_and_b16 v7.l, 0xff, v21.l
	v_cndmask_b32_e64 v0, 0x80000000, v11, s1
	v_lshlrev_b16 v1.l, 8, v20.l
	v_and_b16 v2.l, 0xff, v19.l
	v_lshlrev_b16 v4.l, 8, v18.l
	v_and_b16 v4.h, 0xff, v17.l
	v_or_b16 v11.h, v6.l, v5.l
	v_or_b16 v11.l, v7.l, v6.h
	buffer_store_b64 v[8:9], v0, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v0, 4, v167
	v_lshrrev_b32_e32 v6, 2, v78
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v2.l, v1.l
	v_or_b16 v10.l, v4.h, v4.l
	v_cndmask_b32_e32 v4, 0x80000000, v12, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 2, v0
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s20, 31
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v64.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[10:11], v4, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v35
	v_mov_b16_e32 v1.l, v5.h
	v_add3_u32 v0, v6, v0, v35
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s20, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s0, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v4, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v0
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v168
	s_and_b32 s13, s11, 0xffff
	s_mov_b32 s12, s10
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v1, v1, s30, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[12:15], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp64:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 92
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
		.amdhsa_next_free_sgpr 34
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 34
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 92
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 31332
; TotalNumSgprs: 36
; NumVgprs: 256
; ScratchSize: 92
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 36
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
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
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 92
    .sgpr_count:     36
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 22
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
