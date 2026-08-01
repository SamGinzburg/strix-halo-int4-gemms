	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s19, s[0:1], 0x84
	s_load_b32 s78, s[0:1], 0x60
.Ltmp0:
	.loc	1 773 86 prologue_end           ; attention.py:773:86
	v_and_b32_e32 v41, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v0
	s_clause 0x1
	s_load_b64 s[8:9], s[0:1], 0x0
	s_load_b64 s[16:17], s[0:1], 0x7c
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s18, s2, 6
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v1, 4, v41
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s79, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s18, v2
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s4, s18, s79
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v43, 15, v0
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v167, v0, 4, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v47, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v42, 0x60, v0
	v_lshlrev_b32_e32 v49, 2, v0
	v_lshlrev_b32_e32 v56, 3, v43
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[231:232], null, s78, v2, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s67, s78, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s9, s9, 0xffff
	v_and_or_b32 v6, v47, 30, v167
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s18, s17
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s6, s18, s16
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s67
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s78, s4, v[231:232]
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v6, 2, v6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s19
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s6, s6, s19
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 64
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s6, s6, 0
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v8, 4, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s5, s2, 0x200
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s97, s6, 0x7fffffc0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s5, s5, 63
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s7, s5, 31
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	buffer_load_b128 v[2:5], v1, s[8:11], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 1, v42
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s7, s7, 26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_add_i32 s98, s5, s7
	s_mov_b32 s5, 0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, v1, v43
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s98, s98, 63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s97, s98
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v7, s18, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v7
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v33, v6, v2
	ds_bpermute_b32 v34, v6, v3
	ds_bpermute_b32 v35, v6, v4
	ds_bpermute_b32 v37, v6, v5
	ds_bpermute_b32 v36, v8, v2
	ds_bpermute_b32 v38, v8, v3
	ds_bpermute_b32 v39, v8, v4
	ds_bpermute_b32 v40, v8, v5
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	v_lshlrev_b32_e32 v44, 3, v43
	v_lshlrev_b32_e32 v45, 2, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr44
                                        ; implicit-def: $vgpr45
.LBB0_3:                                ; %Flow399
	s_clause 0x1
	s_load_b64 s[76:77], s[0:1], 0x38
	s_load_b32 s96, s[0:1], 0x64
	v_mov_b32_e32 v8, 0
	v_and_b32_e32 v46, 0x78, v0
	v_or_b32_e32 v230, 2, v167
	v_or_b32_e32 v229, 4, v167
	v_or_b32_e32 v227, 6, v167
	v_or_b32_e32 v226, 8, v167
	v_or_b32_e32 v225, 10, v167
	v_or_b32_e32 v224, 12, v167
	v_or_b32_e32 v223, 14, v167
	v_or_b32_e32 v221, 16, v167
	v_or_b32_e32 v220, 18, v167
	v_or_b32_e32 v94, 20, v167
	v_or_b32_e32 v209, 22, v167
	v_or_b32_e32 v151, 24, v167
	v_or_b32_e32 v137, 26, v167
	v_or_b32_e32 v166, 28, v167
	v_or_b32_e32 v184, 30, v167
	v_or_b32_e32 v177, 32, v167
	v_or_b32_e32 v183, 34, v167
	v_or_b32_e32 v182, 36, v167
	v_or_b32_e32 v181, 38, v167
	v_or_b32_e32 v180, 40, v167
	v_or_b32_e32 v179, 42, v167
	v_or_b32_e32 v178, 44, v167
	v_or_b32_e32 v176, 46, v167
	v_or_b32_e32 v169, 48, v167
	v_or_b32_e32 v175, 50, v167
	v_or_b32_e32 v174, 52, v167
	v_or_b32_e32 v172, 54, v167
	v_or_b32_e32 v170, 56, v167
	v_or_b32_e32 v168, 58, v167
	v_or_b32_e32 v173, 60, v167
	v_or_b32_e32 v171, 62, v167
	v_or_b32_e32 v63, s4, v1
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v141, v8
	v_mov_b32_e32 v139, v8
	v_mov_b32_e32 v140, v8
	v_mov_b32_e32 v138, v8
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x8
	v_dual_mov_b32 v54, 0x7632 :: v_dual_lshlrev_b32 v1, 1, v63
	s_mov_b32 s83, 0x31027000
	s_mov_b32 s82, 0x7ffffffe
	v_dual_mov_b32 v194, 0xff800000 :: v_dual_and_b32 v45, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v17, 0 :: v_dual_lshlrev_b32 v14, 4, v0
	v_dual_mov_b32 v53, 0x5410 :: v_dual_and_b32 v2, 24, v0
	s_clause 0x1
	s_load_b64 s[84:85], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x68
	v_dual_mov_b32 v222, 0xff800000 :: v_dual_lshlrev_b32 v5, 9, v0
	v_lshlrev_b32_e32 v6, 6, v41
	v_dual_mov_b32 v18, v17 :: v_dual_and_b32 v7, 0x7c, v49
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s1, 0, v45
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v46, off offset:68
	scratch_store_b32 off, v49, off offset:76
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s81, s9, 0xffff
	s_mov_b32 s80, s8
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v46, 3, v46
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v44, v1, s[80:83], 0 offen
	v_dual_mov_b32 v192, 0xff800000 :: v_dual_lshlrev_b32 v1, 3, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v41
	v_xor_b32_e32 v195, v14, v2
	v_dual_mov_b32 v21, v17 :: v_dual_and_b32 v48, 0x1b8, v49
	v_lshrrev_b32_e32 v49, 3, v42
	v_dual_mov_b32 v237, 0xff800000 :: v_dual_lshlrev_b32 v12, 2, v42
	v_dual_mov_b32 v41, 0xff800000 :: v_dual_and_b32 v142, 56, v1
	v_mov_b32_e32 v25, v17
	v_dual_mov_b32 v24, v17 :: v_dual_lshlrev_b32 v57, 5, v45
	v_and_or_b32 v58, 0x1c00, v5, v6
	v_lshl_or_b32 v42, v42, 4, v7
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v143, v35, v39, s1
	v_dual_mov_b32 v234, 0xff800000 :: v_dual_and_b32 v3, 24, v47
	v_cndmask_b32_e64 v10, 0x1020, 0, vcc_lo
	v_bfe_i32 v11, v0, 2, 1
	v_dual_mov_b32 v23, v17 :: v_dual_and_b32 v52, 8, v0
	v_dual_mov_b32 v20, v17 :: v_dual_and_b32 v13, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v55, s18, v46
	v_dual_mov_b32 v29, v17 :: v_dual_lshlrev_b32 v62, 6, v45
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v146, v34, v38, s1
	v_cndmask_b32_e64 v150, v38, v34, s1
	v_xor_b32_e32 v38, 8, v195
	v_or3_b32 v204, v58, v57, v48
	v_xor_b32_e32 v205, v42, v49
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[48:49], null, s96, v46, v[142:143]
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v144, v37, v40, s1
	v_lshl_or_b32 v196, v43, 5, v3
	v_and_or_b32 v61, 0x2040, v11, v10
	v_dual_mov_b32 v31, v17 :: v_dual_and_b32 v64, 0x310, v1
	v_lshl_add_u32 v65, v13, 9, 0
	v_dual_mov_b32 v13, v17 :: v_dual_add_nc_u32 v38, 0, v38
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v66, 16, v55
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v145, v33, v36, s1
	v_cndmask_b32_e64 v148, v40, v37, s1
	v_cndmask_b32_e64 v147, v39, v35, s1
	v_cndmask_b32_e64 v149, v36, v33, s1
	v_lshl_or_b32 v35, v52, 4, v62
	v_cndmask_b32_e64 v36, 0x1054, v53, s1
	v_cndmask_b32_e64 v37, 0x3276, v54, s1
	v_dual_mov_b32 v191, 0xff800000 :: v_dual_lshlrev_b32 v8, 5, v0
	s_clause 0x3                            ; 20-byte Folded Spill
	scratch_store_b32 off, v14, off
	scratch_store_b64 off, v[48:49], off offset:4
	scratch_store_b32 off, v63, off offset:60
	scratch_store_b32 off, v38, off offset:12
	v_mov_b32_e32 v30, v17
	v_xor_b32_e32 v39, 8, v196
	v_or3_b32 v152, v61, v35, v64
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v35, s19, v66
	v_lshl_or_b32 v36, v36, 8, v36
	v_lshl_or_b32 v37, v37, 8, v37
	v_xor_b32_e32 v38, 8, v204
	v_dual_mov_b32 v26, v17 :: v_dual_and_b32 v59, 0x60, v8
	v_dual_mov_b32 v14, v17 :: v_dual_add_nc_u32 v215, s17, v35
	v_dual_mov_b32 v15, v17 :: v_dual_add_nc_u32 v210, 0, v39
	v_mov_b32_e32 v3, v17
	v_mov_b32_e32 v6, v17
	v_mov_b32_e32 v8, v17
	v_xor_b32_e32 v40, 16, v196
	v_xor_b32_e32 v39, 16, v204
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v214, s16, v35
	v_and_b32_e32 v35, 0x540054, v36
	v_and_b32_e32 v36, 0x760076, v37
	v_add_nc_u32_e32 v37, 0, v38
	v_dual_mov_b32 v19, v17 :: v_dual_and_b32 v4, 0x70, v0
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	v_dual_mov_b32 v10, v17 :: v_dual_add_nc_u32 v211, 0, v40
	v_mov_b32_e32 v138, v17
	v_xor_b32_e32 v42, 24, v196
	v_xor_b32_e32 v40, 24, v204
	scratch_store_b32 off, v37, off offset:16 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, 0, v39
	v_dual_mov_b32 v193, 0xff800000 :: v_dual_and_b32 v50, 28, v0
	v_lshl_add_u32 v190, v43, 1, 0
	v_lshrrev_b32_e32 v43, 1, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v56, off offset:72
	scratch_store_b32 off, v37, off offset:20
	v_lshl_or_b32 v56, v4, 6, v56
	v_dual_mov_b32 v1, v17 :: v_dual_add_nc_u32 v212, 0, v42
	v_dual_mov_b32 v4, v17 :: v_dual_add_nc_u32 v37, 0, v40
	v_xor_b32_e32 v42, 32, v204
	v_bfe_i32 v9, v0, 5, 1
	v_lshl_or_b32 v63, v50, 7, v12
	v_mov_b32_e32 v140, v17
	v_xor_b32_e32 v49, 40, v204
	scratch_store_b32 off, v37, off offset:24 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, 0, v42
	v_bfe_i32 v51, v0, 3, 1
	v_dual_mov_b32 v27, v17 :: v_dual_and_b32 v60, 0x2040, v9
	v_or3_b32 v206, v63, v59, v50
	v_xor_b32_e32 v50, 48, v204
	scratch_store_b32 off, v37, off offset:28 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, 0, v49
	v_and_or_b32 v34, 0x1020, v51, v60
	v_xor_b32_e32 v51, 56, v204
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s1, s12, 0x3fb8aa3b
	v_xor_b32_e32 v53, 4, v206
	scratch_store_b32 off, v37, off offset:32 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, 0, v50
	v_xor_b32_e32 v54, 8, v206
	v_dual_mov_b32 v28, v17 :: v_dual_add_nc_u32 v69, s19, v55
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v67, 32, v55
	scratch_store_b32 off, v37, off offset:36 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, 0, v51
	v_or_b32_e32 v68, 48, v55
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v55
	v_xor_b32_e32 v55, 12, v206
	v_xor_b32_e32 v33, v56, v43
	scratch_store_b32 off, v37, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, 0, v53
	v_xor_b32_e32 v56, 16, v206
	v_dual_mov_b32 v22, v17 :: v_dual_and_b32 v47, 0x80, v47
	v_xor_b32_e32 v34, v34, v59
	scratch_store_b32 off, v37, off offset:44 ; 4-byte Folded Spill
	v_dual_mov_b32 v12, v17 :: v_dual_add_nc_u32 v37, 0, v54
	v_add_nc_u32_e32 v213, 0, v33
	v_mul_lo_u32 v33, s15, v46
	v_add3_u32 v34, v65, v47, v34
	scratch_store_b32 off, v37, off offset:48 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, 0, v55
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v139, v17 :: v_dual_add_nc_u32 v238, v34, v45
	s_lshr_b32 s0, s0, 29
	scratch_store_b32 off, v37, off offset:52 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, 0, v56
	v_lshl_or_b32 v40, v35, 4, v35
	v_mad_u64_u32 v[34:35], null, s15, 48, v[33:34]
	s_add_i32 s0, s3, s0
	scratch_store_b32 off, v37, off offset:56 ; 4-byte Folded Spill
	v_xor_b32_e32 v37, 32, v152
	v_dual_mov_b32 v32, v17 :: v_dual_add_nc_u32 v43, s19, v67
	v_dual_mov_b32 v9, v17 :: v_dual_add_nc_u32 v48, s19, v68
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s8, s0, -8
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 1, v142
	v_or_b32_e32 v70, 2, v142
	v_or_b32_e32 v71, 3, v142
	v_or_b32_e32 v72, 4, v142
	v_or_b32_e32 v73, 5, v142
	v_or_b32_e32 v74, 6, v142
	v_or_b32_e32 v75, 7, v142
	v_xor_b32_e32 v52, 0x810, v205
	v_xor_b32_e32 v57, 20, v206
	v_xor_b32_e32 v58, 24, v206
	v_xor_b32_e32 v59, 28, v206
	v_xor_b32_e32 v38, 64, v152
	v_xor_b32_e32 v39, 0x60, v152
	v_lshl_or_b32 v36, v36, 4, v36
	v_add_nc_u32_e32 v239, 0, v37
	v_lshl_add_u32 v35, s15, 4, v33
	v_lshl_add_u32 v37, s15, 5, v33
	v_dual_mov_b32 v155, 0xff800000 :: v_dual_add_nc_u32 v242, v33, v142
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s9, s0, 3
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s8
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s9, s13, s9
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s14, s3
	v_dual_mov_b32 v11, v17 :: v_dual_add_nc_u32 v208, s17, v69
	v_dual_mov_b32 v16, v17 :: v_dual_add_nc_u32 v217, s17, v43
	v_dual_mov_b32 v2, v17 :: v_dual_add_nc_u32 v219, s17, v48
	v_dual_mov_b32 v5, v17 :: v_dual_add_nc_u32 v228, 0, v52
	v_dual_mov_b32 v7, v17 :: v_dual_add_nc_u32 v236, 0, v59
	v_dual_mov_b32 v141, v17 :: v_dual_add_nc_u32 v240, 0, v38
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s96, v142
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v207, s16, v69
	v_subrev_nc_u32_e32 v216, s16, v43
	v_subrev_nc_u32_e32 v218, s16, v48
	v_add_nc_u32_e32 v233, 0, v57
	v_add_nc_u32_e32 v235, 0, v58
	v_add_nc_u32_e32 v241, 0, v39
	v_and_b32_e32 v243, 0x5040504, v40
	v_and_b32_e32 v244, 0x7060706, v36
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v245, v35, v142
	v_add_nc_u32_e32 v246, v35, v0
	v_add_nc_u32_e32 v247, v35, v70
	v_add_nc_u32_e32 v248, v35, v71
	v_add_nc_u32_e32 v249, v35, v72
	v_add_nc_u32_e32 v250, v35, v73
	v_add_nc_u32_e32 v251, v35, v74
	v_add_nc_u32_e32 v252, v35, v75
	v_add_nc_u32_e32 v253, v37, v142
	v_add_nc_u32_e32 v254, v37, v0
	v_add_nc_u32_e32 v255, v37, v70
	v_add_nc_u32_e32 v188, v37, v71
	v_add_nc_u32_e32 v187, v37, v72
	v_add_nc_u32_e32 v185, v37, v73
	v_add_nc_u32_e32 v186, v37, v74
	v_add_nc_u32_e32 v189, v37, v75
	v_add_nc_u32_e32 v197, v34, v142
	v_add_nc_u32_e32 v198, v34, v0
	v_add_nc_u32_e32 v199, v34, v70
	v_add_nc_u32_e32 v200, v34, v71
	v_add_nc_u32_e32 v201, v34, v72
	v_add_nc_u32_e32 v202, v34, v73
	v_add_nc_u32_e32 v203, v34, v74
	v_add_nc_u32_e32 v153, v34, v75
	v_mov_b16_e64 v156.l, 0
	s_mov_b32 s68, 0
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s8, s15, s18
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_add_i32 s103, s3, s9
	s_lshl_b32 s99, s96, 4
	s_lshl_b32 s100, s96, 5
	s_mul_i32 s101, s96, 48
	s_mov_b32 s102, 0x76543210
	s_mov_b32 s69, s68
	s_mov_b32 s70, s68
	s_mov_b32 s71, s68
	s_mov_b32 s72, s68
	s_mov_b32 s73, s68
	s_mov_b32 s74, s68
	s_mov_b32 s75, s68
	s_mov_b32 s90, s82
	s_mov_b32 s91, s83
	s_mov_b32 s86, s82
	s_mov_b32 s87, s83
	s_mov_b32 s94, s82
	s_mov_b32 s95, s83
	s_and_b32 s85, s85, 0xffff
	s_and_b32 s93, s7, 0xffff
	s_mov_b32 s88, s10
	s_mov_b32 s92, s6
	s_mov_b32 s80, s4
	s_mov_b32 s81, s5
	s_mov_b32 s89, s11
	s_add_i32 s103, s103, s8
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v44
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v154, s1, v33
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s104, s97, s79
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v37, 0, v195
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[33:34], null, s104, s78, v[231:232]
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 vcc_hi, s103, s97
	v_or_b32_e32 v102, s79, v169
	v_or_b32_e32 v98, s79, v180
	v_or_b32_e32 v99, s79, v179
	v_or_b32_e32 v100, s79, v178
	v_or_b32_e32 v101, s79, v176
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v33, 0x80000000, v33, s67
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v102, v102, s97, 1
	v_add_lshl_u32 v98, v98, s97, 1
	v_add_lshl_u32 v99, v99, s97, 1
	v_add_lshl_u32 v100, v100, s97, 1
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[33:36], v33, s[80:83], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v101, v101, s97, 1
	v_or_b32_e32 v125, s79, v171
	.loc	1 881 25                        ; attention.py:881:25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v125, v125, s97, 1
	.loc	1 881 25                        ; attention.py:881:25
                                        ; kill: def $vgpr231 killed $vgpr231 def $vgpr232
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(1)
	ds_store_b64 v37, v[33:34]
	v_add_nc_u32_e32 v33, 0, v196
	s_waitcnt vmcnt(0)
	ds_store_b64 v0, v[35:36]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[50:53], v33 offset1:1
	ds_load_2addr_stride64_b64 v[78:81], v33 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[54:57], v210 offset1:1
	ds_load_2addr_stride64_b64 v[82:85], v210 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[68:71], v211 offset1:1
	ds_load_2addr_stride64_b64 v[86:89], v211 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v33, s68 :: v_dual_mov_b32 v38, s73
	v_dual_mov_b32 v34, s69 :: v_dual_mov_b32 v35, s70
	v_mov_b32_e32 v40, s75
	v_dual_mov_b32 v36, s71 :: v_dual_mov_b32 v37, s72
	v_mov_b32_e32 v39, s74
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[72:75], v212 offset1:1
	ds_load_2addr_stride64_b64 v[90:93], v212 offset0:2 offset1:3
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 1, v142
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x4
	buffer_load_u16 v98, v98, s[88:91], 0 offen
	buffer_load_u16 v99, v99, s[88:91], 0 offen
	buffer_load_u16 v100, v100, s[88:91], 0 offen
	buffer_load_u16 v101, v101, s[88:91], 0 offen
	buffer_load_u16 v125, v125, s[88:91], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[50:51], v[149:150], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[54:55], v[147:148], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[68:69], v[145:146], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[72:73], v[143:144], v[42:49] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v69, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v68, v43
	v_cvt_f32_i32_e32 v67, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v66, v45
	v_cvt_f32_i32_e32 v65, v46
	v_cvt_f32_i32_e32 v64, v47
	v_cvt_f32_i32_e32 v63, v48
	v_cvt_f32_i32_e32 v61, v49
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[42:49], v[52:53], v[149:150], v[33:40] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v66, v154, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[42:49], v[56:57], v[147:148], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[70:71], v[145:146], v[42:49] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[74:75], v[143:144], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[70:77], v[78:79], v[149:150], v[33:40] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v78, vcc_hi, v251, 1
	v_add_lshl_u32 v79, vcc_hi, v254, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v58, v45
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[70:77], v[82:83], v[147:148], v[70:77] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v56, v47
	v_cvt_f32_i32_e32 v55, v48
	v_cvt_f32_i32_e32 v53, v49
	v_cvt_f32_i32_e32 v57, v46
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[70:77], v[86:87], v[145:146], v[70:77] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v59, v44
	v_cvt_f32_i32_e32 v62, v42
	v_cvt_f32_i32_e32 v60, v43
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v82, vcc_hi, v189, 1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[70:77], v[90:91], v[143:144], v[70:77] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v83, vcc_hi, v198, 1
	v_add_lshl_u32 v86, vcc_hi, v153, 1
	v_or_b32_e32 v90, s79, v151
	v_or_b32_e32 v91, s79, v137
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v54, v70
	v_cvt_f32_i32_e32 v52, v71
	v_cvt_f32_i32_e32 v51, v72
	v_cvt_f32_i32_e32 v50, v73
	v_cvt_f32_i32_e32 v49, v74
	v_cvt_f32_i32_e32 v48, v75
	v_cvt_f32_i32_e32 v47, v76
	v_cvt_f32_i32_e32 v45, v77
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[70:77], v[80:81], v[149:150], v[33:40] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s97, v142
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v34, 2, v242
	v_add_nc_u32_e32 v36, 3, v242
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[70:77], v[84:85], v[147:148], v[70:77] neg_lo:[1,1,0]
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v35, 1, v242
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v33, v207
	v_cmp_ge_i32_e64 s7, v33, v214
	v_cmp_ge_i32_e64 s11, v33, v216
	v_cmp_ge_i32_e64 s3, v33, v218
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v33, v208
	v_cmp_le_i32_e64 s8, v33, v215
	v_cmp_le_i32_e64 s12, v33, v217
	v_cmp_le_i32_e64 s4, v33, v219
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s97, v0
	v_or_b32_e32 v0, 2, v142
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[70:77], v[88:89], v[145:146], v[70:77] neg_lo:[1,1,0]
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s1, s5
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v34, vcc_hi, v34, 1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s6, v33, v207
	v_cmp_ge_i32_e64 s9, v33, v214
	v_cmp_ge_i32_e64 s16, v33, v216
	v_cmp_ge_i32_e64 s13, v33, v218
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s19, v33, v208
	v_cmp_le_i32_e64 s14, v33, v215
	v_cmp_le_i32_e64 s17, v33, v217
	v_cmp_le_i32_e64 s15, v33, v219
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s97, v0
	v_or_b32_e32 v0, 3, v142
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[70:77], v[92:93], v[143:144], v[70:77] neg_lo:[1,1,0]
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s19, s6, s19
	s_and_b32 s5, vcc_lo, s1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s20, v33, v207
	v_cmp_ge_i32_e64 s23, v33, v214
	v_cmp_ge_i32_e64 s25, v33, v216
	v_cmp_ge_i32_e64 s18, v33, v218
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s22, v33, v208
	v_cmp_le_i32_e64 s27, v33, v215
	v_cmp_le_i32_e64 s26, v33, v217
	v_cmp_le_i32_e64 s24, v33, v219
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s97, v0
	v_or_b32_e32 v0, 4, v142
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v46, v70
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v70, 5, v242
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s20, s20, s22
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s21, v33, v207
	v_cmp_ge_i32_e64 s28, v33, v214
	v_cmp_ge_i32_e64 s33, v33, v216
	v_cmp_ge_i32_e64 s30, v33, v218
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s62, v33, v208
	v_cmp_le_i32_e64 s29, v33, v215
	v_cmp_le_i32_e64 s34, v33, v217
	v_cmp_le_i32_e64 s31, v33, v219
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s97, v0
	v_or_b32_e32 v0, 5, v142
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v70, vcc_hi, v70, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s21, s62
	s_and_b32 s6, vcc_lo, s20
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s54, v33, v207
	v_cmp_ge_i32_e64 s40, v33, v214
	v_cmp_ge_i32_e64 s37, v33, v216
	v_cmp_ge_i32_e64 s35, v33, v218
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s55, v33, v208
	v_cmp_le_i32_e64 s42, v33, v215
	v_cmp_le_i32_e64 s38, v33, v217
	v_cmp_le_i32_e64 s36, v33, v219
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s97, v0
	v_or_b32_e32 v0, 6, v142
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s20, vcc_lo, s21
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v44, v71
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v36, vcc_hi, v36, 1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s63, v33, v207
	v_cmp_ge_i32_e64 s51, v33, v214
	v_cmp_ge_i32_e64 s43, v33, v216
	v_cmp_ge_i32_e64 s39, v33, v218
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s64, v33, v208
	v_cmp_le_i32_e64 s52, v33, v215
	v_cmp_le_i32_e64 s44, v33, v217
	v_cmp_le_i32_e64 s41, v33, v219
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s97, v0
	v_or_b32_e32 v0, 7, v142
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s63, s64
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0x80000000, v34, s6
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, vcc_lo, s22
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v33, v207
	v_cmp_ge_i32_e64 s49, v33, v214
	v_cmp_ge_i32_e64 s47, v33, v216
	v_cmp_ge_i32_e64 s45, v33, v218
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s53, v33, v208
	v_cmp_le_i32_e64 s50, v33, v215
	v_cmp_le_i32_e64 s48, v33, v217
	v_cmp_le_i32_e64 s46, v33, v219
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s97, v0
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v71, 0x80000000, v70, s21
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v70, 7, v242
	v_mov_b32_e32 v0, v94
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v35, vcc_hi, v35, 1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s65, v33, v207
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s66, v33, v208
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s60, v33, v214
	v_cmp_ge_i32_e64 s58, v33, v216
	v_cmp_ge_i32_e64 s56, v33, v218
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s61, v33, v215
	v_cmp_le_i32_e64 s59, v33, v217
	v_cmp_le_i32_e64 s57, v33, v219
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v33, vcc_hi, v242, 1
	v_add_lshl_u32 v70, vcc_hi, v70, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s62, s65, s66
	s_and_b32 s19, vcc_lo, s19
	s_and_b32 s22, vcc_lo, s62
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0x80000000, v33, s5
	v_cndmask_b32_e64 v70, 0x80000000, v70, s22
	v_cndmask_b32_e64 v36, 0x80000000, v36, s20
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v43, v72
	v_cvt_f32_i32_e32 v42, v73
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v35, 0x80000000, v35, s19
	s_clause 0x5
	buffer_load_u16 v33, v33, s[84:87], 0 offen
	buffer_load_u16 v34, v34, s[84:87], 0 offen
	buffer_load_u16 v70, v70, s[84:87], 0 offen
	buffer_load_u16 v71, v71, s[84:87], 0 offen
	buffer_load_u16 v72, v36, s[84:87], 0 offen
	buffer_load_u16 v73, v35, s[84:87], 0 offen
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v35, 6, v242
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s54, s55
	s_and_b32 s10, s10, s53
	s_and_b32 s1, vcc_lo, s1
	s_and_b32 s10, vcc_lo, s10
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v35, vcc_hi, v35, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v40, v74
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v74, vcc_hi, v246, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s14, s9, s14
	s_and_b32 s7, s7, s8
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v35, 0x80000000, v35, s10
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s23, s27
	s_and_b32 s27, vcc_lo, s14
	s_and_b32 s14, s49, s50
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v37, v77
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_u16 v35, v35, s[84:87], 0 offen
	v_cndmask_b32_e64 v77, 0x80000000, v74, s27
	v_add_lshl_u32 v74, vcc_hi, v248, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s28, s29
	s_and_b32 s14, vcc_lo, s14
	s_and_b32 s28, vcc_lo, s23
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v78, 0x80000000, v78, s14
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v38, v76
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v76, 0x80000000, v74, s28
	v_add_lshl_u32 v74, vcc_hi, v250, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s29, s51, s52
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_u16 v78, v78, s[84:87], 0 offen
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, vcc_lo, s29
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v36, vcc_hi, v247, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v39, v75
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v75, 0x80000000, v74, s23
	v_add_lshl_u32 v74, vcc_hi, v252, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s51, s60, s61
	s_and_b32 s7, vcc_lo, s7
	s_and_b32 s9, vcc_lo, s8
	s_and_b32 s29, vcc_lo, s51
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v36, 0x80000000, v36, s9
	v_cndmask_b32_e64 v74, 0x80000000, v74, s29
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s40, s42
	s_and_b32 s16, s16, s17
	s_and_b32 s8, vcc_lo, s8
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v80, vcc_hi, v188, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s17, s25, s26
	s_and_b32 s25, s33, s34
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v81, vcc_hi, v185, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s33, s43, s44
	s_and_b32 s43, s30, s31
	s_and_b32 s31, vcc_lo, s16
	s_and_b32 s26, s37, s38
	s_and_b32 s37, s58, s59
	s_and_b32 s38, vcc_lo, s25
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v84, vcc_hi, v200, 1
	v_add_lshl_u32 v85, vcc_hi, v202, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s11, s11, s12
	s_and_b32 s3, s3, s4
	s_and_b32 s4, s13, s15
	s_and_b32 s39, s39, s41
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v111, 0x80000000, v79, s31
	v_add_lshl_u32 v79, vcc_hi, v255, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s40, vcc_lo, s33
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v112, 0x80000000, v80, s38
	v_add_lshl_u32 v80, vcc_hi, v187, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s42, vcc_lo, s37
	s_and_b32 s35, s35, s36
	s_and_b32 s12, vcc_lo, s11
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v113, 0x80000000, v81, s40
	v_add_lshl_u32 v81, vcc_hi, v186, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s36, vcc_lo, s4
	s_and_b32 s37, vcc_lo, s43
	s_and_b32 s39, vcc_lo, s39
	s_and_b32 s34, s47, s48
	s_and_b32 s13, vcc_lo, s17
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v114, 0x80000000, v82, s42
	v_add_lshl_u32 v82, vcc_hi, v197, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s15, vcc_lo, s26
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v115, 0x80000000, v83, s36
	v_add_lshl_u32 v83, vcc_hi, v199, 1
	v_cndmask_b32_e64 v116, 0x80000000, v84, s37
	v_add_lshl_u32 v84, vcc_hi, v201, 1
	v_cndmask_b32_e64 v120, 0x80000000, v85, s39
	v_add_lshl_u32 v85, vcc_hi, v203, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s18, s18, s24
	s_and_b32 s41, s45, s46
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v79, 0x80000000, v79, s13
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s30, vcc_lo, s34
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v80, 0x80000000, v80, s15
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s11, vcc_lo, s3
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v81, 0x80000000, v81, s30
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s24, vcc_lo, s18
	s_and_b32 s25, vcc_lo, s35
	s_and_b32 s26, vcc_lo, s41
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v82, 0x80000000, v82, s11
	v_cndmask_b32_e64 v83, 0x80000000, v83, s24
	v_cndmask_b32_e64 v84, 0x80000000, v84, s25
	v_cndmask_b32_e64 v85, 0x80000000, v85, s26
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s44, s56, s57
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v90, v90, s97, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s41, vcc_lo, s44
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v91, v91, s97, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v118, 0x80000000, v86, s41
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v102, v102, s[88:91], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x7
	buffer_load_u16 v117, v114, s[84:87], 0 offen
	buffer_load_u16 v119, v113, s[84:87], 0 offen
	buffer_load_u16 v121, v112, s[84:87], 0 offen
	buffer_load_u16 v123, v111, s[84:87], 0 offen
	buffer_load_u16 v118, v118, s[84:87], 0 offen
	buffer_load_u16 v120, v120, s[84:87], 0 offen
	buffer_load_u16 v122, v116, s[84:87], 0 offen
	buffer_load_u16 v124, v115, s[84:87], 0 offen
	v_or_b32_e32 v113, s79, v172
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1
	buffer_load_u16 v90, v90, s[88:91], 0 offen
	buffer_load_u16 v91, v91, s[88:91], 0 offen
	v_or_b32_e32 v92, s79, v166
	v_or_b32_e32 v93, s79, v184
	v_add_lshl_u32 v113, v113, s97, 1
	v_or_b32_e32 v111, s79, v175
	v_or_b32_e32 v112, s79, v174
	v_add_lshl_u32 v92, v92, s97, 1
	v_add_lshl_u32 v93, v93, s97, 1
	buffer_load_u16 v115, v113, s[88:91], 0 offen
	v_or_b32_e32 v113, s79, v170
	v_add_lshl_u32 v111, v111, s97, 1
	s_clause 0x1
	buffer_load_u16 v92, v92, s[88:91], 0 offen
	buffer_load_u16 v93, v93, s[88:91], 0 offen
	v_add_lshl_u32 v112, v112, s97, 1
	v_add_lshl_u32 v113, v113, s97, 1
	buffer_load_u16 v111, v111, s[88:91], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v42, v154, v42
	v_mul_f32_e32 v40, v154, v40
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1
	buffer_load_u16 v112, v112, s[88:91], 0 offen
	buffer_load_u16 v116, v113, s[88:91], 0 offen
	v_or_b32_e32 v113, s79, v168
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v45, v154, v45
	v_mul_f32_e32 v43, v154, v43
	v_mul_f32_e32 v44, v154, v44
	v_mul_f32_e32 v39, v154, v39
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v113, v113, s97, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v37, v154, v37
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v114, v113, s[88:91], 0 offen
	v_or_b32_e32 v113, s79, v173
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v47, v154, v47
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v113, v113, s97, 1
	buffer_load_u16 v113, v113, s[88:91], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(26)
	v_cndmask_b16 v33.l, 0xff80, v33.l, s5
	s_waitcnt vmcnt(25)
	v_cndmask_b16 v33.h, 0xff80, v34.l, s6
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v34, 4, v242
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v156.h, v33.l
	v_add_lshl_u32 v34, vcc_hi, v34, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	buffer_load_u16 v34, v34, s[84:87], 0 offen
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v34.h, 0xff80, v35.l, s10
	v_add_lshl_u32 v35, vcc_hi, v245, 1
	v_cndmask_b32_e64 v35, 0x80000000, v35, s7
	s_clause 0x5
	buffer_load_u16 v35, v35, s[84:87], 0 offen
	buffer_load_u16 v36, v36, s[84:87], 0 offen
	buffer_load_u16 v74, v74, s[84:87], 0 offen
	buffer_load_u16 v75, v75, s[84:87], 0 offen
	buffer_load_u16 v76, v76, s[84:87], 0 offen
	buffer_load_u16 v77, v77, s[84:87], 0 offen
	v_cndmask_b16 v71.h, 0xff80, v117.l, s42
	v_cndmask_b16 v70.h, 0xff80, v121.l, s38
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v121, 0, v205
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v73.h, 0xff80, v118.l, s41
	v_cndmask_b16 v72.h, 0xff80, v122.l, s37
	v_mov_b16_e64 v122.l, v156.l
	v_cndmask_b16 v34.l, 0xff80, v34.l, s1
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v35.l, 0xff80, v35.l, s7
	s_waitcnt vmcnt(4)
	v_cndmask_b16 v35.h, 0xff80, v36.l, s9
	v_add_lshl_u32 v36, vcc_hi, v249, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v36, 0x80000000, v36, s8
	buffer_load_u16 v36, v36, s[84:87], 0 offen
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v36.h, 0xff80, v78.l, s14
	v_add_lshl_u32 v78, vcc_hi, v253, 1
	v_cndmask_b32_e64 v78, 0x80000000, v78, s12
	s_clause 0x7
	buffer_load_u16 v103, v78, s[84:87], 0 offen
	buffer_load_u16 v104, v79, s[84:87], 0 offen
	buffer_load_u16 v105, v80, s[84:87], 0 offen
	buffer_load_u16 v106, v81, s[84:87], 0 offen
	buffer_load_u16 v107, v82, s[84:87], 0 offen
	buffer_load_u16 v108, v83, s[84:87], 0 offen
	buffer_load_u16 v109, v84, s[84:87], 0 offen
	buffer_load_u16 v110, v85, s[84:87], 0 offen
	v_or_b32_e32 v78, s79, v167
	v_or_b32_e32 v79, s79, v226
	v_or_b32_e32 v80, s79, v221
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v103.h, v34.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v104.h, v35.l
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v78, v78, s97, 1
	v_add_lshl_u32 v79, v79, s97, 1
	v_add_lshl_u32 v80, v80, s97, 1
	s_clause 0x2
	buffer_load_u16 v81, v78, s[88:91], 0 offen
	buffer_load_u16 v84, v79, s[88:91], 0 offen
	buffer_load_u16 v87, v80, s[88:91], 0 offen
	v_or_b32_e32 v78, s79, v230
	v_or_b32_e32 v79, s79, v225
	v_or_b32_e32 v80, s79, v220
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v78, v78, s97, 1
	v_add_lshl_u32 v79, v79, s97, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_add_lshl_u32 v80, v80, s97, 1
	s_clause 0x2
	buffer_load_u16 v82, v78, s[88:91], 0 offen
	buffer_load_u16 v85, v79, s[88:91], 0 offen
	buffer_load_u16 v88, v80, s[88:91], 0 offen
	v_or_b32_e32 v78, s79, v229
	v_or_b32_e32 v79, s79, v224
	v_or_b32_e32 v80, s79, v94
	v_or_b32_e32 v94, s79, v177
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_lshl_u32 v78, v78, s97, 1
	v_add_lshl_u32 v79, v79, s97, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_lshl_u32 v80, v80, s97, 1
	v_add_lshl_u32 v94, v94, s97, 1
	s_clause 0x3
	buffer_load_u16 v83, v78, s[88:91], 0 offen
	buffer_load_u16 v86, v79, s[88:91], 0 offen
	buffer_load_u16 v89, v80, s[88:91], 0 offen
	buffer_load_u16 v95, v94, s[88:91], 0 offen
	v_or_b32_e32 v78, s79, v227
	v_or_b32_e32 v79, s79, v223
	v_or_b32_e32 v80, s79, v209
	v_or_b32_e32 v94, s79, v183
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_lshl_u32 v78, v78, s97, 1
	v_add_lshl_u32 v79, v79, s97, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_lshl_u32 v80, v80, s97, 1
	v_add_lshl_u32 v94, v94, s97, 1
	s_clause 0x3
	buffer_load_u16 v78, v78, s[88:91], 0 offen
	buffer_load_u16 v79, v79, s[88:91], 0 offen
	buffer_load_u16 v80, v80, s[88:91], 0 offen
	buffer_load_u16 v96, v94, s[88:91], 0 offen
	v_or_b32_e32 v94, s79, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v94, v94, s97, 1
	buffer_load_u16 v97, v94, s[88:91], 0 offen
	v_or_b32_e32 v94, s79, v181
	v_add_lshl_u32 v94, v94, s97, 1
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s97, s97, 64
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v94, v94, s[88:91], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v36.l, 0xff80, v36.l, s8
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v213, v[33:34], v[35:36] offset1:16
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v33.l, v156.l
	v_mov_b16_e64 v34.l, v156.l
	v_mov_b16_e64 v35.l, v156.l
	s_waitcnt vmcnt(21)
	v_mov_b16_e32 v105.h, v36.l
	v_mov_b16_e64 v36.l, v156.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	v_cmp_neq_f32_e64 s16, 0xff800000, v34
	v_cmp_neq_f32_e64 s33, 0xff800000, v35
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v33.l, 0xff80, v103.l, s12
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v36
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v33.h, 0xff80, v104.l, s13
	v_cndmask_b16 v34.l, 0xff80, v105.l, s15
	s_waitcnt vmcnt(20)
	v_cndmask_b16 v34.h, 0xff80, v106.l, s30
	s_waitcnt vmcnt(19)
	v_cndmask_b16 v35.l, 0xff80, v107.l, s11
	s_waitcnt vmcnt(18)
	v_cndmask_b16 v35.h, 0xff80, v108.l, s24
	s_waitcnt vmcnt(17)
	v_cndmask_b16 v36.l, 0xff80, v109.l, s25
	s_waitcnt vmcnt(16)
	v_cndmask_b16 v36.h, 0xff80, v110.l, s26
	v_mov_b16_e64 v103.l, v156.l
	v_mov_b16_e32 v106.h, v33.l
	v_mov_b16_e32 v107.h, v34.l
	v_mov_b16_e64 v105.l, v156.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v213, v[33:34], v[35:36] offset0:32 offset1:48
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v33.l, v156.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v103
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v34.l, v156.l
	v_mov_b16_e64 v104.l, v156.l
	v_mov_b16_e64 v107.l, v156.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s34, 0xff800000, v33
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v33.h, v35.l
	v_mov_b16_e64 v35.l, v156.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s4, s1, s4
	s_and_b32 s1, s10, s16
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v156
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s16, s6, s3
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s43, 0xff800000, v35
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v35, 0, 1, s1
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s35, 0xff800000, v34
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s18, s5, s10
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v105
	v_cmp_neq_f32_e64 s5, 0xff800000, v104
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v33.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s4
	s_and_b32 s6, s30, s35
	s_and_b32 s10, s8, s3
	s_and_b32 s8, s14, s17
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s16
	s_and_b32 s14, s9, s33
	s_and_b32 s17, s7, s5
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v107
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v126.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s18
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v106.l, v156.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s9, s15, s3
	s_and_b32 s13, s13, s34
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s8
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v106
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v34.h, v36.l
	v_mov_b16_e64 v36.l, v156.l
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v126.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s10
	s_and_b32 s15, s12, s5
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s44, 0xff800000, v36
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b16 v36.l, 0xff80, v75.l, s23
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s14
	s_and_b32 s5, s26, s44
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v36.h, 0xff80, v74.l, s29
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v74, 0, v204
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v127.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v127.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v128.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s15
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v35.h, 0xff80, v76.l, s28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v35.l
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v35.l, 0xff80, v77.l, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v128.l, v34.l, v33.l
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v34.l, v156.l
	v_mov_b16_e64 v33.l, v156.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cmp_neq_f32_e64 s12, 0xff800000, v33
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v33, 0, 1, s5
	s_and_b32 s7, s25, s3
	s_and_b32 s12, s11, s12
	v_cndmask_b32_e64 v34, 0, 1, s7
	v_lshlrev_b16 v33.l, 8, v33.l
	s_and_b32 s11, s24, s43
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v129.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s11
	v_cndmask_b32_e64 v34, 0, 1, s12
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b16 v33.h, 0xff80, v72.l, s20
	v_cndmask_b16 v34.h, 0xff80, v70.l, s22
	v_cndmask_b16 v70.l, 0xff80, v123.l, s31
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v72.l, 0xff80, v124.l, s36
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v129.l, v34.l, v33.l
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v33.l, 0xff80, v73.l, s19
	v_cndmask_b16 v34.l, 0xff80, v71.l, s21
	v_cndmask_b16 v71.l, 0xff80, v119.l, s40
	v_cndmask_b16 v73.l, 0xff80, v120.l, s39
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v213, v[33:34], v[35:36] offset0:64 offset1:80
	ds_store_2addr_b64 v213, v[70:71], v[72:73] offset0:96 offset1:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v76, off, off offset:20
	scratch_load_b32 v103, off, off offset:24
	scratch_load_b32 v107, off, off offset:28
	scratch_load_b32 v109, off, off offset:32
	scratch_load_b32 v117, off, off offset:36
	scratch_load_b32 v119, off, off offset:40
	scratch_load_b32 v105, off, off offset:16
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_b64 v[74:75], v74
	v_mov_b16_e32 v122.h, v34.l
	v_mov_b16_e64 v34.l, v156.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s25, 0xff800000, v122
	v_cmp_neq_f32_e64 s24, 0xff800000, v34
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v34.h, v36.l
	v_mov_b16_e64 v36.l, v156.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s26, s21, s25
	s_and_b32 s25, s22, s24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s33, 0xff800000, v36
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v36.h, v71.l
	v_mov_b16_e64 v71.l, v156.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s44, 0xff800000, v71
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v71.h, v73.l
	v_mov_b16_e64 v73.l, v156.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s46, 0xff800000, v73
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(6)
	ds_load_b64 v[76:77], v76
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(5)
	ds_load_b64 v[103:104], v103
	s_waitcnt vmcnt(4)
	ds_load_b64 v[107:108], v107
	s_waitcnt vmcnt(3)
	ds_load_b64 v[109:110], v109
	s_waitcnt vmcnt(2)
	ds_load_b64 v[117:118], v117
	s_waitcnt vmcnt(1)
	ds_load_b64 v[119:120], v119
	s_waitcnt vmcnt(0)
	ds_load_b64 v[105:106], v105
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v121, v126, v127 offset1:32
	ds_store_2addr_b32 v121, v128, v129 offset0:64 offset1:96
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v121.h, v33.l
	v_mov_b16_e64 v33.l, v156.l
	v_mov_b16_e64 v121.l, v156.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v33.h, v35.l
	v_mov_b16_e64 v35.l, v156.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s34, 0xff800000, v121
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_neq_f32_e64 s30, 0xff800000, v35
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v35.h, v70.l
	v_mov_b16_e64 v70.l, v156.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s35, s19, s34
	s_and_b32 s34, s20, s3
	s_and_b32 s30, s28, s30
	s_and_b32 s20, s42, s44
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s43, 0xff800000, v70
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v70.h, v72.l
	v_mov_b16_e64 v72.l, v156.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s45, 0xff800000, v72
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v72, 0, 1, s25
	v_mov_b16_e32 v33.l, v72.l
	v_cndmask_b32_e64 v72, 0, 1, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v72.l
	v_cndmask_b32_e64 v72, 0, 1, s34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v121.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v72.l
	v_cndmask_b32_e64 v72, 0, 1, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v72.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v121.l, v34.l, v33.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v34.l, v156.l
	v_mov_b16_e64 v33.l, v156.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v34
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_neq_f32_e64 s19, 0xff800000, v33
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s24, s23, s3
	s_and_b32 s23, s29, s33
	v_cndmask_b32_e64 v34, 0, 1, s24
	v_cndmask_b32_e64 v33, 0, 1, s23
	s_and_b32 s33, s27, s19
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v36
	v_cmp_neq_f32_e64 s19, 0xff800000, v35
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s29, s38, s43
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s27, 0xff800000, v70
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s22, s40, s3
	s_and_b32 s31, s31, s19
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v71
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v122.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s30
	v_cndmask_b32_e64 v34, 0, 1, s33
	s_and_b32 s19, s41, s46
	s_and_b32 s21, s39, s3
	s_and_b32 s28, s36, s27
	v_lshlrev_b16 v33.l, 8, v33.l
	s_and_b32 s27, s37, s45
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v36, 16, v82
	v_lshlrev_b32_e32 v35, 16, v81
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s97, s98
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v122.l, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s20
	v_cndmask_b32_e64 v34, 0, 1, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v123.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s29
	v_cndmask_b32_e64 v34, 0, 1, s31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v123.l, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s19
	v_cndmask_b32_e64 v34, 0, 1, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v124.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s27
	v_cndmask_b32_e64 v34, 0, 1, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v124.l, v34.l, v33.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v34, v154, v69 :: v_dual_lshlrev_b32 v33, 16, v74
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_2addr_b32 v228, v121, v122 offset1:32
	ds_store_2addr_b32 v228, v123, v124 offset0:64 offset1:96
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v33, 0x3fb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v33, v34, v35 :: v_dual_and_b32 v34, 0xffff0000, v74
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v35, v154, v68 :: v_dual_mul_f32 v34, 0x3fb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v34, v35, v36 :: v_dual_lshlrev_b32 v35, 16, v75
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v36, v154, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v67, 16, v83
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v35, 0x3fb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v35, v36, v67
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v36, 0xffff0000, v75
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v36, 0x3fb8aa3b, v36 :: v_dual_lshlrev_b32 v67, 16, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v36, v66, v67 :: v_dual_lshlrev_b32 v67, 16, v84
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v66, v154, v65
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v65, 16, v105
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v65, 0x3fb8aa3b, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v65, v66, v67
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v66, v154, v64
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v64, 0xffff0000, v105
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v64, 0x3fb8aa3b, v64 :: v_dual_lshlrev_b32 v67, 16, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v64, v66, v67 :: v_dual_lshlrev_b32 v67, 16, v86
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v66, v154, v63 :: v_dual_lshlrev_b32 v63, 16, v106
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v63, 0x3fb8aa3b, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v63, v66, v67 :: v_dual_and_b32 v66, 0xffff0000, v106
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v67, v154, v61 :: v_dual_lshlrev_b32 v68, 16, v79
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v61, 0x3fb8aa3b, v66
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v66, v154, v62
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v62, 16, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v61, v67, v68
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v62, 0x3fb8aa3b, v62 :: v_dual_lshlrev_b32 v67, 16, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v62, v66, v67 :: v_dual_lshlrev_b32 v67, 16, v88
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v66, v154, v60
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v60, 0xffff0000, v76
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v60, 0x3fb8aa3b, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v60, v66, v67
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v66, v154, v59 :: v_dual_lshlrev_b32 v59, 16, v77
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v67, 16, v89
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v59, 0x3fb8aa3b, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v59, v66, v67 :: v_dual_and_b32 v66, 0xffff0000, v77
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v67, v154, v58
	v_mul_f32_e32 v58, 0x3fb8aa3b, v66
	v_dual_mul_f32 v66, v154, v57 :: v_dual_lshlrev_b32 v57, 16, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v57, 0x3fb8aa3b, v57 :: v_dual_lshlrev_b32 v68, 16, v80
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v58, v67, v68 :: v_dual_lshlrev_b32 v67, 16, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v57, v66, v67
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v66, v154, v56
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v56, 0xffff0000, v103
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v56, 0x3fb8aa3b, v56 :: v_dual_lshlrev_b32 v67, 16, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v56, v66, v67 :: v_dual_lshlrev_b32 v67, 16, v92
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v66, v154, v55 :: v_dual_lshlrev_b32 v55, 16, v104
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v55, 0x3fb8aa3b, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v55, v66, v67 :: v_dual_and_b32 v66, 0xffff0000, v104
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v67, v154, v53
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v53, 0x3fb8aa3b, v66 :: v_dual_lshlrev_b32 v68, 16, v93
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v66, v154, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v53, v67, v68 :: v_dual_lshlrev_b32 v54, 16, v107
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v54, 0x3fb8aa3b, v54 :: v_dual_lshlrev_b32 v67, 16, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v54, v66, v67 :: v_dual_lshlrev_b32 v67, 16, v96
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v66, v154, v52
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v52, 0xffff0000, v107
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v52, 0x3fb8aa3b, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v52, v66, v67
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v66, v154, v51 :: v_dual_lshlrev_b32 v51, 16, v108
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v67, 16, v97
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v51, 0x3fb8aa3b, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v51, v66, v67 :: v_dual_and_b32 v66, 0xffff0000, v108
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v67, v154, v50
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v50, 0x3fb8aa3b, v66
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v66, v154, v49
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v49, 16, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v49, 0x3fb8aa3b, v49 :: v_dual_lshlrev_b32 v68, 16, v94
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v50, v67, v68 :: v_dual_lshlrev_b32 v67, 16, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v66, v67
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v66, v154, v48
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v48, 0xffff0000, v109
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v48, 0x3fb8aa3b, v48 :: v_dual_lshlrev_b32 v67, 16, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v48, v66, v67 :: v_dual_lshlrev_b32 v67, 16, v110
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v67, 0x3fb8aa3b, v67 :: v_dual_lshlrev_b32 v66, 16, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v67, v47, v66
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v47, 0xffff0000, v110
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v70, 0x3fb8aa3b, v47 :: v_dual_lshlrev_b32 v47, 16, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v71, 0x3fb8aa3b, v47 :: v_dual_lshlrev_b32 v66, 16, v101
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v70, v45, v66
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v45, v154, v46
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v46, 16, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v71, v45, v46 :: v_dual_and_b32 v46, 0xffff0000, v117
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v46, 0x3fb8aa3b, v46 :: v_dual_lshlrev_b32 v45, 16, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v46, v44, v45 :: v_dual_lshlrev_b32 v45, 16, v118
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v44, 16, v112
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v72, 0x3fb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v72, v43, v44 :: v_dual_and_b32 v43, 0xffff0000, v118
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v44, 16, v115
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v73, 0x3fb8aa3b, v43
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v43, 16, v119
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v73, v42, v44
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v42, 16, v116
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v74, 0x3fb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v74, v40, v42
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v42, 0xffff0000, v119
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v40, 16, v114
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v47, 0x3fb8aa3b, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v47, v39, v40
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v39, v154, v38 :: v_dual_lshlrev_b32 v38, 16, v120
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v40, 16, v113
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v38, 0x3fb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v38, v39, v40
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v39, 0xffff0000, v120
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v40, 16, v125
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v76, 0x3fb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v76, v37, v40 :: v_dual_add_nc_u32 v37, 0, v206
	scratch_load_b64 v[39:40], off, off offset:4 ; 8-byte Folded Reload
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v79, v37
	scratch_load_b32 v37, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mad_u64_u32 v[39:40], null, s104, s96, v[39:40]
	s_waitcnt vmcnt(0)
	ds_load_b32 v80, v37
	scratch_load_b32 v37, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v43, v39, s99, 1
	v_add_lshl_u32 v44, v39, s100, 1
	v_add_lshl_u32 v45, v39, s101, 1
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v40, 0x1000000, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_ne_u32_e64 s61, 0, v40
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, 0xff800000, v61, s61
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_load_b32 v81, v37
	scratch_load_b32 v37, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v61, 1, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u32_e64 s57, 1, v61
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v66, 0xff800000, v62, s57
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_load_b32 v82, v37
	scratch_load_b32 v37, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v83, v37
	ds_load_b32 v84, v233
	ds_load_b32 v85, v235
	ds_load_b32 v86, v236
	v_and_b32_e32 v37, 0x10000, v79
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s62, 0, v37
	v_and_b32_e32 v37, 0x10000, v80
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v35, 0xff800000, v35, s62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s60, 0, v37
	v_and_b32_e32 v37, 0x10000, v81
	v_cmp_ne_u32_e64 s53, 0, v37
	v_and_b32_e32 v37, 0x10000, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v68, 0xff800000, v59, s53
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s52, 0, v37
	v_and_b32_e32 v37, 0x10000, v83
	v_and_b32_e32 v59, 0x1000000, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v77, 0xff800000, v55, s52
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s45, 0, v37
	v_and_b32_e32 v37, 0x10000, v84
	v_and_b32_e32 v55, 0x1000000, v82
	v_cmp_ne_u32_e64 s56, 0, v59
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v131, 0xff800000, v51, s45
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v51, 0x1000000, v83
	v_cmp_ne_u32_e64 s44, 0, v37
	v_and_b32_e32 v37, 0x10000, v85
	v_cmp_ne_u32_e64 s54, 0, v55
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v69, 0xff800000, v58, s56
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v58, 1, v82
	v_cmp_ne_u32_e64 s48, 0, v51
	v_cmp_ne_u32_e64 s37, 0, v37
	v_and_b32_e32 v37, 0x10000, v86
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v78, 0xff800000, v53, s54
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v53, 1, v83
	v_cmp_eq_u32_e64 s55, 1, v58
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v135, 0xff800000, v67, s44
	v_cndmask_b32_e64 v132, 0xff800000, v50, s48
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v50, 1, v84
	v_cmp_ne_u32_e64 s36, 0, v37
	v_and_b32_e32 v37, 1, v79
	v_cmp_eq_u32_e64 s49, 1, v53
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v91, 0xff800000, v72, s37
	v_cndmask_b32_e64 v75, 0xff800000, v57, s55
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s47, 1, v50
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v95, 0xff800000, v38, s36
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v38, 0x1000000, v86
	v_cmp_eq_u32_e64 s65, 1, v37
	v_and_b32_e32 v37, 0x1000000, v79
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v129, 0xff800000, v54, s49
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v50, 0x80000000, v44, s0
	v_cndmask_b32_e64 v54, 0x80000000, v45, s0
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v133, 0xff800000, v49, s47
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v49, 0x1000000, v84
	v_cmp_ne_u32_e64 s38, 0, v38
	v_lshrrev_b16 v38.l, 8, v79.l
	v_cmp_ne_u32_e64 s64, 0, v37
	v_and_b32_e32 v37, 1, v80
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v33, 0xff800000, v33, s65
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s46, 0, v49
	v_and_b32_e32 v49, 1, v85
	v_and_b16 v38.l, 1, v38.l
	v_cmp_eq_u32_e64 s63, 1, v37
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, 0xff800000, v36, s64
	v_cndmask_b32_e64 v96, 0xff800000, v76, s38
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s41, 1, v49
	v_and_b32_e32 v49, 0x1000000, v85
	v_cmp_eq_u16_e64 s3, 1, v38.l
	v_lshrrev_b16 v38.l, 8, v80.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, 0xff800000, v65, s63
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v42, 1, v39
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v39, 0xff800000, v63, s60
	v_cndmask_b32_e64 v136, 0xff800000, v70, s46
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s40, 0, v49
	v_and_b32_e32 v49, 1, v86
	v_and_b16 v38.l, 1, v38.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v34, 0xff800000, v34, s3
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v42, s0
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v89, 0xff800000, v71, s41
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s39, 1, v49
	v_lshrrev_b16 v49.l, 8, v81.l
	v_cmp_eq_u16_e64 s66, 1, v38.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v92, 0xff800000, v73, s40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v93, 0xff800000, v74, s39
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v49.l, 1, v49.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, 0xff800000, v64, s66
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s59, 1, v49.l
	v_lshrrev_b16 v49.l, 8, v82.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v67, 0xff800000, v60, s59
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v49.l, 1, v49.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s58, 1, v49.l
	v_lshrrev_b16 v49.l, 8, v83.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v76, 0xff800000, v56, s58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v49.l, 1, v49.l
	v_cmp_eq_u16_e64 s51, 1, v49.l
	v_lshrrev_b16 v49.l, 8, v84.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v130, 0xff800000, v52, s51
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v49.l, 1, v49.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s50, 1, v49.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v134, 0xff800000, v48, s50
	.loc	1 881 25                        ; attention.py:881:25
	v_lshrrev_b16 v48.l, 8, v85.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b16 v48.l, 1, v48.l
	v_cmp_eq_u16_e64 s43, 1, v48.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v90, 0xff800000, v46, s43
	.loc	1 881 25                        ; attention.py:881:25
	v_lshrrev_b16 v46.l, 8, v86.l
	v_and_b16 v46.l, 1, v46.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s42, 1, v46.l
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v46, 0, v152
	ds_store_b128 v46, v[33:36]
	ds_store_b128 v46, v[129:132] offset:2048
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v46, 0x80000000, v43, s0
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v94, 0xff800000, v47, s42
	ds_store_b128 v239, v[37:40]
	ds_store_b128 v239, v[133:136] offset:2048
	ds_store_b128 v240, v[66:69]
	ds_store_b128 v240, v[89:92] offset:2048
	ds_store_b128 v241, v[75:78]
	ds_store_b128 v241, v[93:96] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[125:128], v238
	ds_load_b128 v[117:120], v238 offset:256
	ds_load_b128 v[121:124], v238 offset:1024
	ds_load_b128 v[113:116], v238 offset:1280
	ds_load_b128 v[109:112], v238 offset:512
	ds_load_b128 v[101:104], v238 offset:768
	ds_load_b128 v[105:108], v238 offset:1536
	ds_load_b128 v[97:100], v238 offset:1792
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[42:45], v42, s[92:95], 0 offen
	buffer_load_b128 v[46:49], v46, s[92:95], 0 offen
	buffer_load_b128 v[50:53], v50, s[92:95], 0 offen
	buffer_load_b128 v[54:57], v54, s[92:95], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v58, off, off          ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v58, 0, v58
	ds_store_b128 v58, v[42:45]
	ds_store_b128 v58, v[46:49] offset:2048
	ds_store_b128 v58, v[50:53] offset:4096
	ds_store_b128 v58, v[54:57] offset:6144
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v42, v67, v68, v69
	v_max3_f32 v43, v75, v76, v77
	v_max3_f32 v44, v78, v129, v130
	v_max3_f32 v45, v89, v90, v91
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v42, v42, v43, v44
	v_max3_f32 v43, v131, v132, v133
	v_max3_f32 v44, v134, v135, v136
	v_max3_f32 v43, v43, v44, v45
	v_max_f32_e32 v44, v33, v34
	v_max3_f32 v45, v36, v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v44, v44, v35, v45
	v_max3_f32 v45, v39, v40, v66
	v_max3_f32 v42, v44, v45, v42
	v_dual_max_f32 v44, v92, v93 :: v_dual_max_f32 v45, v95, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v44, v44, v94, v45
	v_max3_f32 v42, v42, v43, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v43, v42, s102, 0xfedcba98 op_sel:[1,0]
.Ltmp5:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v157, v41, v42, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v42.h, v156.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v34, v157
	v_sub_f32_e32 v33, v33, v157
	v_sub_f32_e32 v36, v36, v157
	v_sub_f32_e32 v35, v35, v157
	v_sub_f32_e32 v38, v38, v157
	v_sub_f32_e32 v37, v37, v157
	v_sub_f32_e32 v40, v40, v157
	v_sub_f32_e32 v39, v39, v157
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v39, v39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s3
	v_cndmask_b32_e64 v33, 0, v33, s65
	v_cndmask_b32_e64 v36, 0, v36, s64
	v_cndmask_b32_e64 v35, 0, v35, s62
	v_cndmask_b32_e64 v38, 0, v38, s66
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v37, 0, v37, s63
	v_cndmask_b32_e64 v40, 0, v40, s61
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v39, 0, v39, s60
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v42.l, v34.h
	v_cmp_o_f32_e64 s3, v34, v34
	v_cmp_o_f32_e64 s65, v33, v33
	v_cmp_o_f32_e64 s62, v35, v35
	v_cmp_o_f32_e64 s60, v39, v39
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v34, v34, v42, 0x7fff
	v_mov_b16_e64 v42.h, v156.l
	v_mov_b16_e32 v42.l, v33.h
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	v_cmp_o_f32_e64 s3, v36, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v33, v33, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s65
	v_permlanex16_b32 v42, v34, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v42, v34, v243
	v_perm_b32 v34, v42, v34, v244
	v_mov_b16_e64 v42.h, v156.l
	v_mov_b16_e32 v42.l, v36.h
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v36, v36, v42, 0x7fff
	v_mov_b16_e64 v42.h, v156.l
	v_mov_b16_e32 v42.l, v35.h
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	v_cmp_o_f32_e64 s3, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v35, v35, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s62
	v_cmp_o_f32_e64 s62, v37, v37
	v_permlanex16_b32 v42, v36, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v42, v36, v243
	v_perm_b32 v36, v42, v36, v244
	v_mov_b16_e64 v42.h, v156.l
	v_mov_b16_e32 v42.l, v38.h
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v38, v42, 0x7fff
	v_mov_b16_e64 v42.h, v156.l
	v_mov_b16_e32 v42.l, v37.h
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	v_cmp_o_f32_e64 s3, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v37, v37, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s62
	v_permlanex16_b32 v42, v38, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v42, v38, v243
	v_perm_b32 v38, v42, v38, v244
	v_mov_b16_e64 v42.h, v156.l
	v_mov_b16_e32 v42.l, v40.h
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v42, 0x7fff
	v_mov_b16_e64 v42.h, v156.l
	v_mov_b16_e32 v42.l, v39.h
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v39, v39, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s60
	v_permlanex16_b32 v42, v40, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v39, v42, v40, v243
	v_perm_b32 v40, v42, v40, v244
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v42, v41, v157
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v70, 0, v42, s3
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v43, v190 offset:608
	ds_load_u16_d16 v42, v190 offset:352
	ds_load_u16_d16 v60, v190 offset:768
	ds_load_u16_d16 v57, v190
	ds_load_u16_d16 v51, v190 offset:576
	ds_load_u16_d16 v52, v190 offset:832
	ds_load_u16_d16 v61, v190 offset:1024
	ds_load_u16_d16 v53, v190 offset:1088
	ds_load_u16_d16 v62, v190 offset:1280
	ds_load_u16_d16 v54, v190 offset:1344
	ds_load_u16_d16 v63, v190 offset:1536
	ds_load_u16_d16 v55, v190 offset:1600
	ds_load_u16_d16 v64, v190 offset:1792
	ds_load_u16_d16 v59, v190 offset:512
	ds_load_u16_d16 v58, v190 offset:256
	ds_load_u16_d16 v56, v190 offset:1856
	ds_load_u16_d16 v159, v190 offset:288
	ds_load_u16_d16 v158, v190 offset:32
	ds_load_u16_d16 v49, v190 offset:64
	ds_load_u16_d16 v50, v190 offset:320
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v20, v20, v70
	v_mul_f32_e32 v22, v22, v70
	v_mul_f32_e32 v17, v17, v70
	v_mul_f32_e32 v18, v18, v70
	v_mul_f32_e32 v19, v19, v70
	v_mul_f32_e32 v21, v21, v70
	v_mul_f32_e32 v23, v23, v70
	v_mul_f32_e32 v24, v24, v70
	v_mul_f32_e32 v1, v1, v70
	v_mul_f32_e32 v2, v2, v70
	v_mul_f32_e32 v3, v3, v70
	v_mul_f32_e32 v4, v4, v70
	v_mul_f32_e32 v5, v5, v70
	v_mul_f32_e32 v6, v6, v70
	v_mul_f32_e32 v7, v7, v70
	v_mul_f32_e32 v8, v8, v70
	v_mul_f32_e32 v25, v25, v70
	v_mul_f32_e32 v26, v26, v70
	v_mul_f32_e32 v27, v27, v70
	v_mul_f32_e32 v28, v28, v70
	v_mul_f32_e32 v29, v29, v70
	v_mul_f32_e32 v30, v30, v70
	v_mul_f32_e32 v31, v31, v70
	v_mul_f32_e32 v32, v32, v70
	v_mul_f32_e32 v9, v9, v70
	v_mul_f32_e32 v11, v11, v70
	v_mul_f32_e32 v12, v12, v70
	v_mul_f32_e32 v13, v13, v70
	v_mul_f32_e32 v14, v14, v70
	v_mul_f32_e32 v15, v15, v70
	v_mul_f32_e32 v16, v16, v70
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v42, v190 offset:480
	ds_load_u16_d16 v41, v190 offset:96
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v57, v190 offset:128
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v51, v190 offset:704
	ds_load_u16_d16_hi v60, v190 offset:896
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v52, v190 offset:960
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v61, v190 offset:1152
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v53, v190 offset:1216
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v62, v190 offset:1408
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v54, v190 offset:1472
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v63, v190 offset:1664
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v55, v190 offset:1728
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v64, v190 offset:1920
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v59, v190 offset:640
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v58, v190 offset:384
	ds_load_u16_d16 v160, v190 offset:544
	ds_load_u16_d16 v44, v190 offset:864
	ds_load_u16_d16 v45, v190 offset:1120
	ds_load_u16_d16 v46, v190 offset:1376
	ds_load_u16_d16 v47, v190 offset:1632
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v56, v190 offset:1984
	ds_load_u16_d16 v65, v190 offset:2048
	ds_load_u16_d16 v73, v190 offset:2112
	ds_load_u16_d16 v48, v190 offset:1888
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v158, v190 offset:160
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v49, v190 offset:192
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v41, v190 offset:224
	ds_load_u16_d16_hi v159, v190 offset:416
	ds_load_u16_d16_hi v50, v190 offset:448
	ds_load_u16_d16 v161, v190 offset:800
	ds_load_u16_d16 v162, v190 offset:1056
	ds_load_u16_d16 v163, v190 offset:1312
	ds_load_u16_d16 v164, v190 offset:1568
	ds_load_u16_d16 v165, v190 offset:1824
	ds_load_u16_d16 v74, v190 offset:2368
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v160, v190 offset:672
	ds_load_u16_d16_hi v43, v190 offset:736
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[57:64], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v161, v190 offset:928
	ds_load_u16_d16_hi v44, v190 offset:992
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v162, v190 offset:1184
	ds_load_u16_d16_hi v45, v190 offset:1248
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v163, v190 offset:1440
	ds_load_u16_d16_hi v46, v190 offset:1504
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v164, v190 offset:1696
	ds_load_u16_d16_hi v47, v190 offset:1760
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v165, v190 offset:1952
	ds_load_u16_d16_hi v48, v190 offset:2016
	ds_load_u16_d16_hi v73, v190 offset:2240
	ds_load_u16_d16 v57, v190 offset:2080
	ds_load_u16_d16 v81, v190 offset:2144
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[158:165], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[33:40], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_mov_b16_e64 v41.h, v156.l
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v70
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[49:56], v[33:40], v[9:16]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v67, v157
	v_sub_f32_e32 v33, v66, v157
	v_sub_f32_e32 v36, v69, v157
	v_sub_f32_e32 v35, v68, v157
	v_sub_f32_e32 v38, v76, v157
	v_sub_f32_e32 v37, v75, v157
	v_sub_f32_e32 v40, v78, v157
	v_sub_f32_e32 v39, v77, v157
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v66, v190 offset:2304
	ds_load_u16_d16 v67, v190 offset:2560
	ds_load_u16_d16 v75, v190 offset:2624
	ds_load_u16_d16 v68, v190 offset:2816
	ds_load_u16_d16 v76, v190 offset:2880
	ds_load_u16_d16 v69, v190 offset:3072
	ds_load_u16_d16 v77, v190 offset:3136
	ds_load_u16_d16 v70, v190 offset:3328
	ds_load_u16_d16 v78, v190 offset:3392
	ds_load_u16_d16 v71, v190 offset:3584
	ds_load_u16_d16 v79, v190 offset:3648
	ds_load_u16_d16 v72, v190 offset:3840
	ds_load_u16_d16 v80, v190 offset:3904
	ds_load_u16_d16_hi v65, v190 offset:2176
	ds_load_u16_d16 v58, v190 offset:2336
	ds_load_u16_d16 v59, v190 offset:2592
	ds_load_u16_d16 v60, v190 offset:2848
	ds_load_u16_d16 v61, v190 offset:3104
	ds_load_u16_d16 v62, v190 offset:3360
	ds_load_u16_d16 v63, v190 offset:3616
	ds_load_u16_d16 v64, v190 offset:3872
	ds_load_u16_d16 v51, v190 offset:4416
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v57, v190 offset:2208
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v81, v190 offset:2272
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v39, v39
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v66, v190 offset:2432
	ds_load_u16_d16_hi v74, v190 offset:2496
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v67, v190 offset:2688
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v75, v190 offset:2752
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v68, v190 offset:2944
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v76, v190 offset:3008
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v69, v190 offset:3200
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v77, v190 offset:3264
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v70, v190 offset:3456
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v78, v190 offset:3520
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v71, v190 offset:3712
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v79, v190 offset:3776
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v72, v190 offset:3968
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v80, v190 offset:4032
	ds_load_u16_d16 v82, v190 offset:2400
	ds_load_u16_d16 v83, v190 offset:2656
	ds_load_u16_d16 v84, v190 offset:2912
	ds_load_u16_d16 v85, v190 offset:3168
	ds_load_u16_d16 v86, v190 offset:3424
	ds_load_u16_d16 v87, v190 offset:3680
	ds_load_u16_d16 v42, v190 offset:4096
	ds_load_u16_d16 v50, v190 offset:4160
	ds_load_u16_d16 v88, v190 offset:3936
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s59
	v_cndmask_b32_e64 v33, 0, v33, s57
	v_cndmask_b32_e64 v36, 0, v36, s56
	v_cndmask_b32_e64 v35, 0, v35, s53
	v_cndmask_b32_e64 v38, 0, v38, s58
	v_cndmask_b32_e64 v37, 0, v37, s55
	v_cndmask_b32_e64 v40, 0, v40, s54
	v_cndmask_b32_e64 v39, 0, v39, s52
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v41.l, v34.h
	v_cmp_o_f32_e64 s3, v34, v34
	v_cmp_o_f32_e64 s57, v33, v33
	v_cmp_o_f32_e64 s53, v35, v35
	v_cmp_o_f32_e64 s52, v39, v39
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v34, v34, v41, 0x7fff
	v_mov_b16_e64 v41.h, v156.l
	v_mov_b16_e32 v41.l, v33.h
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	v_cmp_o_f32_e64 s3, v36, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v33, v33, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s57
	v_permlanex16_b32 v41, v34, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v41, v34, v243
	v_perm_b32 v34, v41, v34, v244
	v_mov_b16_e64 v41.h, v156.l
	v_mov_b16_e32 v41.l, v36.h
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v36, v36, v41, 0x7fff
	v_mov_b16_e64 v41.h, v156.l
	v_mov_b16_e32 v41.l, v35.h
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	v_cmp_o_f32_e64 s3, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v35, v35, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s53
	v_cmp_o_f32_e64 s53, v37, v37
	v_permlanex16_b32 v41, v36, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v41, v36, v243
	v_perm_b32 v36, v41, v36, v244
	v_mov_b16_e64 v41.h, v156.l
	v_mov_b16_e32 v41.l, v38.h
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v38, v41, 0x7fff
	v_mov_b16_e64 v41.h, v156.l
	v_mov_b16_e32 v41.l, v37.h
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	v_cmp_o_f32_e64 s3, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v37, v37, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s53
	v_permlanex16_b32 v41, v38, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v41, v38, v243
	v_perm_b32 v38, v41, v38, v244
	v_mov_b16_e64 v41.h, v156.l
	v_mov_b16_e32 v41.l, v40.h
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v41, 0x7fff
	v_mov_b16_e64 v41.h, v156.l
	v_mov_b16_e32 v41.l, v39.h
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v39, v39, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s52
	v_permlanex16_b32 v41, v40, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v39, v41, v40, v243
	v_perm_b32 v40, v41, v40, v244
	v_mov_b16_e64 v41.h, v156.l
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[65:72], v[33:40], v[17:24]
	s_waitcnt lgkmcnt(9)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[73:80], v[33:40], v[9:16]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16_hi v58, v190 offset:2464
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v82, v190 offset:2528
	ds_load_u16_d16_hi v59, v190 offset:2720
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v83, v190 offset:2784
	ds_load_u16_d16_hi v60, v190 offset:2976
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v84, v190 offset:3040
	ds_load_u16_d16_hi v61, v190 offset:3232
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v85, v190 offset:3296
	ds_load_u16_d16_hi v62, v190 offset:3488
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v86, v190 offset:3552
	ds_load_u16_d16_hi v63, v190 offset:3744
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v87, v190 offset:3808
	ds_load_u16_d16_hi v64, v190 offset:4000
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v88, v190 offset:4064
	ds_load_u16_d16_hi v50, v190 offset:4288
	ds_load_u16_d16 v65, v190 offset:4128
	ds_load_u16_d16 v73, v190 offset:4192
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[57:64], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[81:88], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v130, v157
	v_sub_f32_e32 v33, v129, v157
	v_sub_f32_e32 v36, v132, v157
	v_sub_f32_e32 v35, v131, v157
	v_sub_f32_e32 v38, v134, v157
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v133, v157
	v_sub_f32_e32 v40, v136, v157
	v_sub_f32_e32 v39, v135, v157
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v43, v190 offset:4352
	ds_load_u16_d16 v44, v190 offset:4608
	ds_load_u16_d16 v52, v190 offset:4672
	ds_load_u16_d16 v45, v190 offset:4864
	ds_load_u16_d16 v53, v190 offset:4928
	ds_load_u16_d16 v46, v190 offset:5120
	ds_load_u16_d16 v54, v190 offset:5184
	ds_load_u16_d16 v47, v190 offset:5376
	ds_load_u16_d16 v55, v190 offset:5440
	ds_load_u16_d16 v48, v190 offset:5632
	ds_load_u16_d16 v56, v190 offset:5696
	ds_load_u16_d16 v49, v190 offset:5888
	ds_load_u16_d16 v57, v190 offset:5952
	ds_load_u16_d16_hi v42, v190 offset:4224
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s51
	v_cndmask_b32_e64 v33, 0, v33, s49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v41.l, v34.h
	v_cmp_o_f32_e64 s3, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s49, v33, v33
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v34, v34, v41, 0x7fff
	v_mov_b16_e64 v41.h, v156.l
	v_mov_b16_e32 v41.l, v33.h
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v33, v33, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s49
	v_permlanex16_b32 v33, v34, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_perm_b32 v81, v33, v34, v243
	v_perm_b32 v82, v33, v34, v244
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v34.h, v156.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v91, v157
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	v_cmp_o_f32_e64 s3, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v33, v33, v34, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v35
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v35.h, v156.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s3
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v34.h
	v_cmp_o_f32_e64 s45, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v34, v34, v35, 0x7fff
	v_mov_b16_e64 v35.h, v156.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s45
	v_permlanex16_b32 v34, v33, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_perm_b32 v83, v34, v33, v243
	v_perm_b32 v84, v34, v33, v244
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v38
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v34.h, v156.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v93, v157
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	v_cmp_o_f32_e64 s3, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v33, v33, v34, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v37
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v37, v92, v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s3
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v34.h
	v_cmp_o_f32_e64 s45, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v34, v34, v35, 0x7fff
	v_mov_b16_e64 v35.h, v156.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s45
	v_permlanex16_b32 v34, v33, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_perm_b32 v85, v34, v33, v243
	v_perm_b32 v86, v34, v33, v244
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v40
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v34.h, v156.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v95, v157
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	v_cmp_o_f32_e64 s3, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v33, v33, v34, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v39
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v39, v94, v157 :: v_dual_mov_b32 v94, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s3
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v34.h
	v_cmp_o_f32_e64 s44, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v34, v34, v35, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v90, v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s44
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v34, v33, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v87, v34, v33, v243
	v_perm_b32 v88, v34, v33, v244
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v43, v190 offset:4480
	ds_load_u16_d16_hi v51, v190 offset:4544
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v44, v190 offset:4736
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v52, v190 offset:4800
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v45, v190 offset:4992
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v53, v190 offset:5056
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v46, v190 offset:5248
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v54, v190 offset:5312
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v47, v190 offset:5504
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v55, v190 offset:5568
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v48, v190 offset:5760
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v56, v190 offset:5824
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v49, v190 offset:6016
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v57, v190 offset:6080
	ds_load_u16_d16 v74, v190 offset:4448
	ds_load_u16_d16 v75, v190 offset:4704
	ds_load_u16_d16 v76, v190 offset:4960
	ds_load_u16_d16 v77, v190 offset:5216
	ds_load_u16_d16 v78, v190 offset:5472
	ds_load_u16_d16 v79, v190 offset:5728
	ds_load_u16_d16 v33, v190 offset:6144
	ds_load_u16_d16 v41, v190 offset:6208
	ds_load_u16_d16 v80, v190 offset:5984
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v89, v157
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v35, v35
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[42:49], v[81:88], v[17:24]
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v44.h, v156.l
	v_mov_b16_e32 v44.l, v35.h
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v66, v190 offset:4384
	ds_load_u16_d16 v67, v190 offset:4640
	ds_load_u16_d16 v68, v190 offset:4896
	ds_load_u16_d16 v69, v190 offset:5152
	ds_load_u16_d16 v70, v190 offset:5408
	ds_load_u16_d16 v71, v190 offset:5664
	ds_load_u16_d16 v72, v190 offset:5920
	ds_load_u16_d16 v42, v190 offset:6464
	ds_load_u16_d16_hi v65, v190 offset:4256
	ds_load_u16_d16_hi v73, v190 offset:4320
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(19)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[50:57], v[81:88], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v66, v190 offset:4512
	ds_load_u16_d16_hi v74, v190 offset:4576
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v67, v190 offset:4768
	ds_load_u16_d16_hi v75, v190 offset:4832
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v68, v190 offset:5024
	ds_load_u16_d16_hi v76, v190 offset:5088
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v69, v190 offset:5280
	ds_load_u16_d16_hi v77, v190 offset:5344
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v70, v190 offset:5536
	ds_load_u16_d16_hi v78, v190 offset:5600
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v71, v190 offset:5792
	ds_load_u16_d16_hi v79, v190 offset:5856
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v72, v190 offset:6048
	ds_load_u16_d16_hi v80, v190 offset:6112
	ds_load_u16_d16_hi v41, v190 offset:6336
	ds_load_u16_d16 v49, v190 offset:6176
	ds_load_u16_d16 v57, v190 offset:6240
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v44, 1, v44
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s41
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v43, v96, v157
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v50, v190 offset:6432
	ds_load_u16_d16 v51, v190 offset:6688
	ds_load_u16_d16 v52, v190 offset:6944
	ds_load_u16_d16 v53, v190 offset:7200
	ds_load_u16_d16 v54, v190 offset:7456
	ds_load_u16_d16 v55, v190 offset:7712
	ds_load_u16_d16 v56, v190 offset:7968
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v49, v190 offset:6304
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v57, v190 offset:6368
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v35, v35, v44, 0x7fff
	v_mov_b16_e64 v44.h, v156.l
	v_mov_b16_e32 v44.l, v34.h
	v_cmp_o_f32_e64 s41, v34, v34
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[65:72], v[81:88], v[25:32]
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s3
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[81:88], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v44, 1, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v34, v34, v44, 0x7fff
	v_cndmask_b16 v35.l, 0x7fff, v34.h, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v34, v35, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v34, v35, v243
	v_perm_b32 v66, v34, v35, v244
	.loc	1 886 49 is_stmt 1              ; attention.py:886:49
	v_exp_f32_e32 v34, v37
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v35.h, v156.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s40
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v34.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v34, v34
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v34, v34, v35, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v36.h, v156.l
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v36.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s37, v35, v35
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v35, v35, v36, 0x7fff
	v_mov_b16_e64 v36.h, v156.l
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v35, v34, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v35, v34, v243
	v_perm_b32 v68, v35, v34, v244
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v35.h, v156.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v34.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v34, v34
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v34, v34, v35, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v38
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v36.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s37, v35, v35
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v35, v36, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v40
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_permlanex16_b32 v35, v34, s102, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v69, v35, v34, v243
	v_perm_b32 v70, v35, v34, v244
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v35.h, v156.l
	v_cmp_o_f32_e64 s36, v36, v36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v34.h
	v_cmp_o_f32_e64 s3, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v34, v34, v35, 0x7fff
	v_mov_b16_e64 v35.h, v156.l
	v_mov_b16_e32 v35.l, v36.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v36, v35, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v35, v34, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v35, v34, v243
	v_perm_b32 v72, v35, v34, v244
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v34, v190 offset:6400
	ds_load_u16_d16 v35, v190 offset:6656
	ds_load_u16_d16 v43, v190 offset:6720
	ds_load_u16_d16 v36, v190 offset:6912
	ds_load_u16_d16 v44, v190 offset:6976
	ds_load_u16_d16 v37, v190 offset:7168
	ds_load_u16_d16 v45, v190 offset:7232
	ds_load_u16_d16 v38, v190 offset:7424
	ds_load_u16_d16 v46, v190 offset:7488
	ds_load_u16_d16 v39, v190 offset:7680
	ds_load_u16_d16 v47, v190 offset:7744
	ds_load_u16_d16 v40, v190 offset:7936
	ds_load_u16_d16 v48, v190 offset:8000
	ds_load_u16_d16_hi v33, v190 offset:6272
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v34, v190 offset:6528
	ds_load_u16_d16_hi v42, v190 offset:6592
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v35, v190 offset:6784
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v43, v190 offset:6848
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v36, v190 offset:7040
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v44, v190 offset:7104
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v37, v190 offset:7296
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v45, v190 offset:7360
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v38, v190 offset:7552
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v46, v190 offset:7616
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v39, v190 offset:7808
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v47, v190 offset:7872
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v40, v190 offset:8064
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v48, v190 offset:8128
	ds_load_u16_d16 v58, v190 offset:6496
	ds_load_u16_d16 v59, v190 offset:6752
	ds_load_u16_d16 v60, v190 offset:7008
	ds_load_u16_d16 v61, v190 offset:7264
	ds_load_u16_d16 v62, v190 offset:7520
	ds_load_u16_d16 v63, v190 offset:7776
	ds_load_u16_d16 v64, v190 offset:8032
	ds_load_u16_d16_hi v50, v190 offset:6560
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v58, v190 offset:6624
	ds_load_u16_d16_hi v51, v190 offset:6816
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v59, v190 offset:6880
	ds_load_u16_d16_hi v52, v190 offset:7072
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v60, v190 offset:7136
	ds_load_u16_d16_hi v53, v190 offset:7328
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v61, v190 offset:7392
	ds_load_u16_d16_hi v54, v190 offset:7584
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v62, v190 offset:7648
	ds_load_u16_d16_hi v55, v190 offset:7840
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v63, v190 offset:7904
	ds_load_u16_d16_hi v56, v190 offset:8096
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v64, v190 offset:8160
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[33:40], v[65:72], v[17:24]
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v124, v124
	v_max_f32_e32 v34, v128, v128
	v_max3_f32 v35, v122, v127, v123
.Ltmp7:
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[41:48], v[65:72], v[9:16]
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v116, v116
	v_max3_f32 v44, v114, v119, v115
	v_max_f32_e32 v33, v34, v33
	v_max3_f32 v34, v125, v121, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v33, v34, v35, v33
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v34, v33
.Ltmp10:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[49:56], v[65:72], v[25:32]
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v108, v108
	v_max_f32_e32 v52, v112, v112
	v_max3_f32 v53, v106, v111, v107
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v34 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp13:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[57:64], v[65:72], v[1:8]
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v100, v100
	v_max_f32_e32 v51, v52, v51
	v_max3_f32 v52, v109, v105, v110
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v61, v104, v104
	v_max3_f32 v62, v98, v103, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v51, v52, v53, v51
	v_max_f32_e32 v33, v33, v34
	v_max_f32_e32 v43, v120, v120
	v_max_f32_e32 v60, v61, v60
	v_max3_f32 v61, v101, v97, v102
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v52, v51
	v_mov_b32_e32 v34, v33
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v43, v42
	v_max3_f32 v43, v117, v113, v118
	v_max3_f32 v60, v61, v62, v60
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v52, v52 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v42, v43, v44, v42
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v61, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v52, v52
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v43, v42
	v_mov_b32_dpp v61, v61 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v51, v52
	v_max_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v61, v61, v61 :: v_dual_mov_b32 v52, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v34, v33 :: v_dual_max_f32 v43, v43, v43
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v60, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v52, v52 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v42, v43
	v_max_f32_e32 v52, v52, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v34, v34, v34
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v51, v52
	v_dual_max_f32 v33, v33, v34 :: v_dual_max_f32 v34, v191, v191
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v52, v51 :: v_dual_max_f32 v191, v34, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v125, v191
	v_sub_f32_e32 v36, v127, v191
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v42, v43
.Ltmp36:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v121, v191
	v_sub_f32_e32 v40, v123, v191
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v126, v191
.Ltmp37:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v43, v42
.Ltmp38:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v35, v35
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
.Ltmp42:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s35
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v61, v60
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp44:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s4
	v_cndmask_b32_e64 v35, 0, v35, s16
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v42, v42, v43 :: v_dual_max_f32 v43, v192, v192
.Ltmp46:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v37, v128, v191 :: v_dual_add_f32 v34, v34, v38
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v61 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v52, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp49:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v192, v43, v42 :: v_dual_sub_f32 v39, v122, v191
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v124, v191
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v51, v51, v52
.Ltmp51:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v46, v120, v192
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v38, v39
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v118, v192
.Ltmp52:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v60, v61
.Ltmp53:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v50, v116, v192
	v_dual_sub_f32 v49, v115, v192 :: v_dual_max_f32 v52, v193, v193
	v_sub_f32_e32 v48, v114, v192
	v_sub_f32_e32 v43, v117, v192
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v50
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s34
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v113, v192
	v_sub_f32_e32 v45, v119, v192
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s1
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v237
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v38
.Ltmp55:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v40
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v61, v60
.Ltmp57:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v61 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s26
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v61, v61, v61 :: v_dual_add_f32 v36, v36, v38
.Ltmp62:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v60, v60, v61 :: v_dual_max_f32 v61, v194, v194
.Ltmp64:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v193, v52, v51 :: v_dual_max_f32 v194, v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v57, v106, v193
	v_sub_f32_e32 v59, v108, v193
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s25
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v52, v109, v193
	v_sub_f32_e32 v56, v105, v193
	v_sub_f32_e32 v53, v110, v193
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v59
.Ltmp65:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp66:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v49
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v54, v111, v193
	v_dual_sub_f32 v58, v107, v193 :: v_dual_sub_f32 v61, v101, v194
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
.Ltmp67:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v36, v37
.Ltmp68:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v97, v194
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v48
	v_mov_b32_e32 v36, v138
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s20
.Ltmp69:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp70:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v100, v194
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s24
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v55, v112, v193
	v_sub_f32_e32 v63, v103, v194
.Ltmp71:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
.Ltmp72:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v68
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s30
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v62, v102, v194
	v_sub_f32_e32 v66, v98, v194
.Ltmp73:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v99, v194
	v_sub_f32_e32 v64, v104, v194
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp76:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v138, v34, v35
.Ltmp81:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v43
	v_exp_f32_e32 v35, v47
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s17
	v_cndmask_b32_e64 v35, 0, v35, s33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp82:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp83:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v44
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp84:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v37
.Ltmp85:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v45
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp86:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp87:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v46
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp88:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v38, v39
	v_add_f32_e32 v34, v34, v35
.Ltmp89:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v58
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v37, v38
	v_mov_b32_e32 v37, v140
.Ltmp91:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp93:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
.Ltmp95:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v140, v34, v35
.Ltmp102:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v52
	v_exp_f32_e32 v35, v56
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s15
	v_cndmask_b32_e64 v35, 0, v35, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp103:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp104:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v53
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp105:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v38
.Ltmp106:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v54
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp108:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s9
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v38, v39
.Ltmp110:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s6
.Ltmp111:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v39, v40
.Ltmp112:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v35, v38, v39 :: v_dual_mov_b32 v38, v139
.Ltmp114:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v66
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp116:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s21
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp118:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s27
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v139, v34, v35
.Ltmp125:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v61
	v_exp_f32_e32 v35, v65
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v35, 0, v35, s28
.Ltmp126:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp127:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s11
.Ltmp128:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v39
.Ltmp129:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp131:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v39, v40
.Ltmp133:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v64
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp134:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v40, v40, v41 :: v_dual_mov_b32 v41, v157
	v_add_f32_e32 v35, v39, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v39, v141 :: v_dual_add_f32 v34, v34, v35
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp138:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v141, v34, v35 :: v_dual_max_f32 v34, v237, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp141:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v33, v34, v33
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v34, v237, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v34, v34
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v34, 0, v34, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v234
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v138, v36, v34
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v34, v234, v234
	v_max_f32_e32 v34, v34, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v35, v234, v34
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v35, 0, v35, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v222
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v140, v37, v35 :: v_dual_max_f32 v35, v222, v222
	v_mov_b32_e32 v237, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v35, v35, v51 :: v_dual_mov_b32 v234, v34
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v36, v222, v35
	v_mov_b32_e32 v222, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v36, v36
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v36, 0, v36, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v155
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v139, v38, v36 :: v_dual_max_f32 v36, v155, v155
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v36, v36, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v37, v155, v36
	v_mov_b32_e32 v155, v36
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v37, 0, v37, s1
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v141, v39, v37
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v44, off, off offset:72
	scratch_load_b32 v45, off, off offset:76
	scratch_load_b32 v63, off, off offset:60
	scratch_load_b32 v0, off, off offset:64
	scratch_load_b32 v46, off, off offset:68
.LBB0_7:                                ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v0, 4, v0
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v33, 0x80, v45
	v_add_nc_u32_e32 v34, 0, v44
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v35, 0, v46
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v0, 4, v0
	s_barrier
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s77, s77, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	ds_store_2addr_b64 v35, v[138:139], v[140:141] offset1:16
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v34, v33, v0
	s_barrier
	s_mov_b32 s79, 0x31027000
	s_mov_b32 s78, 0x7ffffffe
	ds_load_b32 v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v17
	v_div_scale_f32 v35, null, v0, v0, v18
	v_div_scale_f32 v37, null, v0, v0, v19
	v_div_scale_f32 v39, null, v0, v0, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v33
	v_rcp_f32_e32 v46, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v37
	v_div_scale_f32 v41, null, v0, v0, v21
	v_rcp_f32_e32 v48, v39
	v_div_scale_f32 v43, null, v0, v0, v22
	v_rcp_f32_e32 v49, v41
	v_div_scale_f32 v34, vcc_lo, v17, v0, v17
	v_fma_f32 v54, -v33, v45, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v50, v43
	v_fma_f32 v55, -v35, v46, 1.0
	v_fma_f32 v56, -v37, v47, 1.0
	v_fma_f32 v57, -v39, v48, 1.0
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v36, s0, v18, v0, v18
	v_fmac_f32_e32 v46, v55, v46
	v_div_scale_f32 v38, s1, v19, v0, v19
	v_fmac_f32_e32 v47, v56, v47
	v_div_scale_f32 v40, s3, v20, v0, v20
	v_fma_f32 v58, -v41, v49, 1.0
	v_fmac_f32_e32 v48, v57, v48
	v_dual_mul_f32 v54, v34, v45 :: v_dual_mul_f32 v55, v36, v46
	v_fma_f32 v59, -v43, v50, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v56, v38, v47 :: v_dual_mul_f32 v57, v40, v48
	v_fmac_f32_e32 v49, v58, v49
	v_fma_f32 v58, -v33, v54, v34
	v_div_scale_f32 v42, s4, v21, v0, v21
	v_fmac_f32_e32 v50, v59, v50
	v_fma_f32 v59, -v35, v55, v36
	v_fma_f32 v60, -v37, v56, v38
	v_fma_f32 v61, -v39, v57, v40
	v_fmac_f32_e32 v54, v58, v45
	v_div_scale_f32 v44, null, v0, v0, v23
	v_dual_mul_f32 v62, v42, v49 :: v_dual_fmac_f32 v55, v59, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v56, v60, v47 :: v_dual_fmac_f32 v57, v61, v48
	v_fma_f32 v33, -v33, v54, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v53, v44
	v_fma_f32 v34, -v35, v55, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v35, -v37, v56, v38
	v_fma_f32 v36, -v39, v57, v40
	v_div_fmas_f32 v33, v33, v45, v54
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v51, s5, v22, v0, v22
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v17, v33, v0, v17
	v_div_fmas_f32 v35, v35, v47, v56
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v52, null, v0, v0, v24
	v_div_fmas_f32 v33, v36, v48, v57
	v_fma_f32 v36, -v44, v53, 1.0
	v_div_fixup_f32 v18, v34, v0, v18
	v_mul_f32_e32 v34, v51, v50
	v_rcp_f32_e32 v37, v52
	v_fma_f32 v58, -v41, v62, v42
	v_fmac_f32_e32 v53, v36, v53
	v_div_scale_f32 v36, null, v0, v0, v25
	v_div_fixup_f32 v20, v33, v0, v20
	v_fma_f32 v33, -v43, v34, v51
	v_div_fixup_f32 v19, v35, v0, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v40, v36
	v_div_scale_f32 v35, s1, v23, v0, v23
	v_fma_f32 v38, -v52, v37, 1.0
	v_fmac_f32_e32 v34, v33, v50
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v33, v35, v53
	v_div_scale_f32 v46, null, v0, v0, v26
	v_fmac_f32_e32 v37, v38, v37
	v_fma_f32 v45, -v36, v40, 1.0
	v_div_scale_f32 v38, s3, v24, v0, v24
	v_div_scale_f32 v47, null, v0, v0, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s4, v25, v0, v25
	v_fmac_f32_e32 v62, v58, v49
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v41, v62, v42
	v_fma_f32 v41, -v43, v34, v51
	v_fma_f32 v42, -v44, v33, v35
	v_mul_f32_e32 v43, v38, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v49, v62
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v33, v42, v53
	v_div_fmas_f32 v34, v41, v50, v34
	v_rcp_f32_e32 v41, v46
	v_fma_f32 v42, -v52, v43, v38
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v21, v39, v0, v21
	v_div_fixup_f32 v22, v34, v0, v22
	v_fma_f32 v34, -v44, v33, v35
	v_fmac_f32_e32 v43, v42, v37
	v_mul_f32_e32 v35, v45, v40
	v_div_scale_f32 v42, null, v0, v0, v27
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v46, v41, 1.0
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v52, v43, v38
	v_fma_f32 v38, -v36, v35, v45
	v_div_scale_f32 v44, s1, v26, v0, v26
	v_fmac_f32_e32 v41, v39, v41
	v_rcp_f32_e32 v39, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v35, v38, v40
	v_div_fixup_f32 v23, v33, v0, v23
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v38, v44, v41
	v_div_fmas_f32 v34, v34, v37, v43
	v_fma_f32 v33, -v36, v35, v45
	v_div_scale_f32 v45, null, v0, v0, v29
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v37, v47
	v_div_fmas_f32 v33, v33, v40, v35
	v_rcp_f32_e32 v35, v45
	v_fma_f32 v43, -v42, v39, 1.0
	v_div_fixup_f32 v24, v34, v0, v24
	v_fma_f32 v34, -v46, v38, v44
	v_div_scale_f32 v36, s3, v27, v0, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v39, v43, v39
	v_div_fixup_f32 v25, v33, v0, v25
	v_fma_f32 v43, -v47, v37, 1.0
	v_fmac_f32_e32 v38, v34, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v45, v35, 1.0
	v_mul_f32_e32 v34, v36, v39
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, s4, v28, v0, v28
	v_fmac_f32_e32 v35, v49, v35
	v_fmac_f32_e32 v37, v43, v37
	v_div_scale_f32 v43, null, v0, v0, v30
	v_fma_f32 v33, -v46, v38, v44
	v_fma_f32 v44, -v42, v34, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v48, v43
	v_fmac_f32_e32 v34, v44, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v43, v48, 1.0
	v_fmac_f32_e32 v48, v44, v48
	v_div_fmas_f32 v33, v33, v41, v38
	v_div_scale_f32 v41, s1, v29, v0, v29
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v33, v0, v26
	v_fma_f32 v33, -v42, v34, v36
	v_mul_f32_e32 v36, v41, v35
	v_mul_f32_e32 v46, v40, v37
	v_div_scale_f32 v42, null, v0, v0, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v39, v34
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v38, -v47, v46, v40
	v_fma_f32 v39, -v45, v36, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v27, v33, v0, v27
	v_fmac_f32_e32 v46, v38, v37
	v_div_scale_f32 v38, s5, v30, v0, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v39, v35
	v_fma_f32 v34, -v47, v46, v40
	v_div_scale_f32 v47, null, v0, v0, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v45, v36, v41
	v_rcp_f32_e32 v40, v42
	v_div_fmas_f32 v34, v34, v37, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v37, v47
	v_mul_f32_e32 v44, v38, v48
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v0, v0, v10
	v_div_fmas_f32 v33, v33, v35, v36
	v_fma_f32 v39, -v43, v44, v38
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v42, v40, 1.0
	v_div_fixup_f32 v28, v34, v0, v28
	v_div_scale_f32 v34, s3, v31, v0, v31
	v_fmac_f32_e32 v44, v39, v48
	v_fma_f32 v39, -v47, v37, 1.0
	v_div_fixup_f32 v29, v33, v0, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v43, v44, v38
	v_div_scale_f32 v38, null, v0, v0, v9
	v_fmac_f32_e32 v37, v39, v37
	v_div_scale_f32 v39, s1, v32, v0, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v35, v48, v44
	v_rcp_f32_e32 v41, v38
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v48, null, v0, v0, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v30, v35, v0, v30
	v_rcp_f32_e32 v35, v45
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v45, v35, 1.0
	v_fmac_f32_e32 v35, v46, v35
	v_mul_f32_e32 v36, v34, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v42, v36, v34
	v_fmac_f32_e32 v36, v43, v40
	v_fma_f32 v43, -v38, v41, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v42, v36, v34
	v_div_scale_f32 v42, null, v0, v0, v11
	v_fmac_f32_e32 v41, v43, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v34, v34, v40, v36
	v_rcp_f32_e32 v43, v42
	v_div_scale_f32 v40, s3, v10, v0, v10
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v31, v34, v0, v31
	v_mul_f32_e32 v49, v40, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v43, 1.0
	v_dual_mul_f32 v44, v39, v37 :: v_dual_fmac_f32 v43, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v47, v44, v39
	v_div_scale_f32 v46, s5, v11, v0, v11
	v_fmac_f32_e32 v44, v33, v37
	v_div_scale_f32 v33, s4, v9, v0, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v47, v44, v39
	v_mul_f32_e32 v39, v33, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v37, v44
	v_fma_f32 v47, -v38, v39, v33
	v_fma_f32 v37, -v45, v49, v40
	v_mul_f32_e32 v44, v46, v43
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v32, v36, v0, v32
	v_fmac_f32_e32 v39, v47, v41
	v_fma_f32 v36, -v48, v50, 1.0
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v42, v44, v46
	v_div_scale_f32 v37, null, v0, v0, v13
	v_fma_f32 v33, -v38, v39, v33
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s1, v12, v0, v12
	v_fma_f32 v38, -v45, v49, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v41, v39
	s_mov_b32 vcc_lo, s3
	v_dual_mul_f32 v39, v36, v50 :: v_dual_fmac_f32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	v_div_fmas_f32 v35, v38, v35, v49
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v33, v0, v9
	v_fma_f32 v38, -v42, v44, v46
	v_div_scale_f32 v40, null, v0, v0, v14
	v_div_fixup_f32 v10, v35, v0, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v43, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v37, v34, 1.0
	v_fma_f32 v43, -v48, v39, v36
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v11, v38, v0, v11
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v13, v0, v13
	v_fmac_f32_e32 v39, v43, v50
	v_div_scale_f32 v38, null, v0, v0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v41, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v48, v39, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v38
	v_fma_f32 v35, -v40, v42, 1.0
	v_fma_f32 v43, -v37, v33, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v50, v39
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v42, v35, v42
	v_fmac_f32_e32 v33, v43, v34
	v_div_scale_f32 v43, null, v0, v0, v16
	v_div_fixup_f32 v12, v36, v0, v12
	v_div_scale_f32 v35, s4, v14, v0, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v37, v33, v41
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v0, v0, v2
	v_div_fmas_f32 v33, v36, v34, v33
	v_div_scale_f32 v36, s1, v15, v0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v47, v41
	v_mul_f32_e32 v39, v35, v42
	v_div_scale_f32 v34, null, v0, v0, v1
	v_div_fixup_f32 v13, v33, v0, v13
	v_fma_f32 v33, -v43, v45, 1.0
	v_fma_f32 v37, -v40, v39, v35
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v48, s4, v1, v0, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v41, v47, 1.0
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s3, v16, v0, v16
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v47, v49, v47
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v49, s5, v2, v0, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v39, v35
	v_mul_f32_e32 v40, v36, v44
	v_fma_f32 v46, -v34, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v0, v0, v3
	v_mul_f32_e32 v51, v48, v37
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v33, v45
	v_rcp_f32_e32 v50, v46
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v35, v0, v14
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v38, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	v_fma_f32 v33, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v51, v36, v37
	v_div_fmas_f32 v35, v35, v44, v40
	v_div_scale_f32 v40, null, v0, v0, v4
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v0, v3
	v_div_fmas_f32 v33, v33, v45, v42
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v35, v0, v15
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fixup_f32 v16, v33, v0, v16
	v_div_fmas_f32 v37, v37, v47, v38
	v_fmac_f32_e32 v36, v41, v50
	v_div_fixup_f32 v1, v34, v0, v1
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v0, v0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v46, v36, v39
	v_div_scale_f32 v34, null, v0, v0, v5
	v_rcp_f32_e32 v39, v35
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v2, v37, v0, v2
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v37, null, v0, v0, v7
	v_div_scale_f32 v44, null, v0, v0, v8
	v_div_scale_f32 v38, vcc_lo, v4, v0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v41, v37
	v_fma_f32 v45, -v35, v39, 1.0
	v_div_fixup_f32 v3, v33, v0, v3
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v33, -v34, v36, 1.0
	v_rcp_f32_e32 v46, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v0, v6
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s1, v5, v0, v5
	v_fma_f32 v48, -v37, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v51, v45, v39
	v_mul_f32_e32 v43, v38, v42
	v_mul_f32_e32 v49, v33, v36
	v_fma_f32 v50, -v44, v46, 1.0
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v0, v7
	v_fma_f32 v47, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s5, v8, v0, v8
	v_dual_mul_f32 v52, v48, v41 :: v_dual_fmac_f32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v40, v43, v38
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v52, v48
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v40, -v35, v51, v45
	v_div_fmas_f32 v38, v38, v42, v43
	v_fma_f32 v33, -v34, v49, v33
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v34, -v44, v53, v50
	v_fmac_f32_e32 v51, v40, v39
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fmas_f32 v33, v33, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v5, v33, v0, v5
	v_fma_f32 v36, -v44, v53, v50
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s96, v167
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v17, s0
	v_cndmask_b32_e64 v17, 0, v18, s0
	v_cndmask_b32_e64 v18, 0, v19, s0
	v_cndmask_b32_e64 v19, 0, v20, s0
	v_cndmask_b32_e64 v20, 0, v21, s0
	v_cndmask_b32_e64 v21, 0, v22, s0
	v_cndmask_b32_e64 v22, 0, v23, s0
	v_cndmask_b32_e64 v23, 0, v24, s0
	v_cndmask_b32_e64 v24, 0, v25, s0
	v_cndmask_b32_e64 v25, 0, v26, s0
	v_cndmask_b32_e64 v26, 0, v27, s0
	v_cndmask_b32_e64 v27, 0, v28, s0
	v_cndmask_b32_e64 v28, 0, v29, s0
	v_cndmask_b32_e64 v29, 0, v30, s0
	v_cndmask_b32_e64 v30, 0, v31, s0
	v_cndmask_b32_e64 v31, 0, v32, s0
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v32, s96, v63
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s96, v221
	v_cmp_gt_i32_e64 s1, s96, v177
	v_cmp_gt_i32_e64 s3, s96, v169
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v33, v32, v167, 2
	v_add_lshl_u32 v34, v32, v230, 2
	v_add_lshl_u32 v35, v32, v229, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	s_clause 0x2
	buffer_store_b32 v8, v33, s[76:79], 0 offen
	buffer_store_b32 v17, v34, s[76:79], 0 offen
	buffer_store_b32 v18, v35, s[76:79], 0 offen
	v_add_lshl_u32 v8, v32, v227, 2
	v_add_lshl_u32 v17, v32, v226, 2
	v_add_lshl_u32 v18, v32, v225, 2
	v_add_lshl_u32 v33, v32, v224, 2
	v_add_lshl_u32 v34, v32, v223, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v17, 0x80000000, v17
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v33, 0x80000000, v33
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	s_clause 0x4
	buffer_store_b32 v19, v8, s[76:79], 0 offen
	buffer_store_b32 v20, v17, s[76:79], 0 offen
	buffer_store_b32 v21, v18, s[76:79], 0 offen
	buffer_store_b32 v22, v33, s[76:79], 0 offen
	buffer_store_b32 v23, v34, s[76:79], 0 offen
	v_add_lshl_u32 v8, v32, v221, 2
	v_add_lshl_u32 v17, v32, v220, 2
	v_add_lshl_u32 v18, v32, v94, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v32, v209, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v17, 0x80000000, v17
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	v_add_lshl_u32 v20, v32, v151, 2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x2
	buffer_store_b32 v24, v8, s[76:79], 0 offen
	buffer_store_b32 v25, v17, s[76:79], 0 offen
	buffer_store_b32 v26, v18, s[76:79], 0 offen
	v_add_lshl_u32 v17, v32, v137, 2
	v_add_lshl_u32 v18, v32, v166, 2
	v_cndmask_b32_e32 v8, 0x80000000, v20, vcc_lo
	buffer_store_b32 v27, v19, s[76:79], 0 offen
	v_add_lshl_u32 v19, v32, v184, 2
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_cndmask_b32 v18, 0x80000000, v18
	buffer_store_b32 v28, v8, s[76:79], 0 offen
	v_add_lshl_u32 v8, v32, v177, 2
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v29, v17, s[76:79], 0 offen
	v_add_lshl_u32 v17, v32, v183, 2
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x2
	buffer_store_b32 v30, v18, s[76:79], 0 offen
	buffer_store_b32 v31, v19, s[76:79], 0 offen
	buffer_store_b32 v9, v8, s[76:79], 0 offen
	v_add_lshl_u32 v8, v32, v182, 2
	v_cndmask_b32_e32 v9, 0x80000000, v17, vcc_lo
	v_add_lshl_u32 v17, v32, v181, 2
	v_add_lshl_u32 v18, v32, v180, 2
	v_add_lshl_u32 v19, v32, v179, 2
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v10, v9, s[76:79], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v10, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	buffer_store_b32 v11, v8, s[76:79], 0 offen
	v_add_lshl_u32 v8, v32, v178, 2
	s_clause 0x2
	buffer_store_b32 v12, v9, s[76:79], 0 offen
	buffer_store_b32 v13, v10, s[76:79], 0 offen
	buffer_store_b32 v14, v17, s[76:79], 0 offen
	v_add_lshl_u32 v9, v32, v176, 2
	v_add_lshl_u32 v10, v32, v169, 2
	v_add_lshl_u32 v11, v32, v175, 2
	v_add_lshl_u32 v12, v32, v174, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v8, s[76:79], 0 offen
	buffer_store_b32 v16, v9, s[76:79], 0 offen
	buffer_store_b32 v1, v10, s[76:79], 0 offen
	buffer_store_b32 v2, v11, s[76:79], 0 offen
	buffer_store_b32 v3, v12, s[76:79], 0 offen
	v_add_lshl_u32 v1, v32, v172, 2
	v_add_lshl_u32 v2, v32, v170, 2
	v_add_lshl_u32 v3, v32, v168, 2
	v_add_lshl_u32 v8, v32, v173, 2
	v_add_lshl_u32 v9, v32, v171, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[76:79], 0 offen
	buffer_store_b32 v5, v2, s[76:79], 0 offen
	buffer_store_b32 v6, v3, s[76:79], 0 offen
	buffer_store_b32 v7, v8, s[76:79], 0 offen
	buffer_store_b32 v0, v9, s[76:79], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp142:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 84
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_sgpr 105
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.private_seg_size, 84
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21228
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 84
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 107
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
	.byte	5                               ; Abbreviation Code
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
	.byte	5                               ; DW_FORM_data2
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
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
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
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
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
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
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 84
    .sgpr_count:     107
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 20
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
