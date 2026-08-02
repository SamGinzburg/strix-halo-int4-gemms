	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
	v_and_b32_e32 v47, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 1, v0
	s_clause 0x1
	s_load_b64 s[8:9], s[0:1], 0x0
	s_load_b64 s[16:17], s[0:1], 0x7c
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s18, s2, 6
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v4, 4, v47
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s18, v1
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s4, s18, s2
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v139, v0, 4, 1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v3
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v53, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v42, 0x60, v0
	v_and_b32_e32 v43, 15, v0
	v_lshlrev_b32_e32 v52, 2, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v6, v53, 30, v139
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[232:233], null, s78, v1, v[4:5]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s60, s78, v4
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s9, s9, 0xffff
	v_lshlrev_b32_e32 v8, 2, v6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s18, s17
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s6, s18, s16
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s60
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[1:2], null, s78, s4, v[232:233]
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v7, 4, v8
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s19
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s6, s6, s19
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 64
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s6, s6, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s5, s2, 0x800
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s5, s5, 63
	v_lshlrev_b32_e32 v64, 3, v43
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s7, s5, 31
	.loc	1 807 33 is_stmt 1              ; attention.py:807:33
	s_and_b32 s79, s6, 0x7fffffc0
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[2:5], v1, s[8:11], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 1, v42
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s7, s7, 26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_add_i32 s97, s5, s7
	s_mov_b32 s5, 0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, v1, v43
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s97, s97, 63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s79, s97
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s18, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v6
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v34, v8, v2
	ds_bpermute_b32 v35, v8, v3
	ds_bpermute_b32 v36, v8, v4
	ds_bpermute_b32 v38, v8, v5
	ds_bpermute_b32 v37, v7, v2
	ds_bpermute_b32 v39, v7, v3
	ds_bpermute_b32 v40, v7, v4
	ds_bpermute_b32 v41, v7, v5
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	v_lshlrev_b32_e32 v33, 3, v43
	v_lshlrev_b32_e32 v44, 2, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr44
.LBB0_3:                                ; %Flow180
	s_clause 0x1
	s_load_b64 s[76:77], s[0:1], 0x38
	s_load_b32 s96, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v73, 0x78, v0
	v_or_b32_e32 v107, 2, v139
	v_or_b32_e32 v106, 4, v139
	v_or_b32_e32 v231, 6, v139
	v_or_b32_e32 v230, 8, v139
	v_or_b32_e32 v229, 10, v139
	v_or_b32_e32 v228, 12, v139
	v_or_b32_e32 v227, 14, v139
	v_or_b32_e32 v226, 16, v139
	v_or_b32_e32 v225, 18, v139
	v_or_b32_e32 v224, 20, v139
	v_or_b32_e32 v203, 22, v139
	v_or_b32_e32 v202, 24, v139
	v_or_b32_e32 v223, 26, v139
	v_or_b32_e32 v222, 28, v139
	v_or_b32_e32 v221, 30, v139
	v_or_b32_e32 v220, 32, v139
	v_or_b32_e32 v156, 34, v139
	v_or_b32_e32 v219, 36, v139
	v_or_b32_e32 v218, 38, v139
	v_or_b32_e32 v143, 40, v139
	v_or_b32_e32 v123, 42, v139
	v_or_b32_e32 v109, 44, v139
	v_or_b32_e32 v142, 46, v139
	v_or_b32_e32 v140, 48, v139
	v_or_b32_e32 v198, 50, v139
	v_or_b32_e32 v197, 52, v139
	v_or_b32_e32 v195, 54, v139
	v_or_b32_e32 v149, 56, v139
	v_or_b32_e32 v148, 58, v139
	v_or_b32_e32 v196, 60, v139
	v_or_b32_e32 v194, 62, v139
	v_or_b32_e32 v63, s4, v1
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v113, v8
	v_mov_b32_e32 v111, v8
	v_mov_b32_e32 v112, v8
	v_mov_b32_e32 v110, v8
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_lshlrev_b32_e32 v6, 1, v63
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v2, 24, v0
	v_dual_mov_b32 v164, 0xff800000 :: v_dual_and_b32 v3, 24, v53
	v_dual_mov_b32 v168, 0xff800000 :: v_dual_lshlrev_b32 v5, 6, v47
	v_cmp_eq_u32_e32 vcc_lo, 0, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v26, v9 :: v_dual_and_b32 v47, 0x80, v53
	v_mov_b32_e32 v53, 0x5410
	v_cndmask_b32_e64 v7, 0x80000000, v6, s2
	s_mov_b32 s87, 0x31027000
	s_mov_b32 s86, 0x7ffffffe
	v_dual_mov_b32 v138, 0xff800000 :: v_dual_and_b32 v33, 16, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v44, 3, v73
	v_dual_mov_b32 v161, 0xff800000 :: v_dual_lshlrev_b32 v4, 9, v0
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s85, s9, 0xffff
	s_mov_b32 s84, s8
	v_bfe_i32 v13, v0, 5, 1
	buffer_load_u16 v46, v7, s[84:87], 0 offen
	v_and_b32_e32 v14, 0x7c, v52
	v_dual_mov_b32 v16, v9 :: v_dual_and_b32 v15, 4, v0
	v_dual_mov_b32 v54, 0x7632 :: v_dual_and_b32 v45, 7, v0
	s_clause 0x1
	s_load_b64 s[80:81], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x68
	v_dual_mov_b32 v162, 0xff800000 :: v_dual_lshlrev_b32 v1, 4, v0
	v_and_b32_e32 v48, 0x1b8, v52
	v_and_b32_e32 v49, 28, v0
	v_lshlrev_b32_e32 v7, 3, v0
	v_cndmask_b32_e64 v8, 0x1020, 0, vcc_lo
	v_bfe_i32 v10, v0, 2, 1
	v_dual_mov_b32 v163, 0xff800000 :: v_dual_and_b32 v50, 8, v0
	v_lshlrev_b32_e32 v11, 5, v0
	v_dual_mov_b32 v167, 0xff800000 :: v_dual_lshlrev_b32 v12, 2, v42
	v_bfe_i32 v51, v0, 3, 1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v52, off offset:188
	scratch_store_b32 off, v0, off offset:176
	v_lshrrev_b32_e32 v52, 3, v42
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v55, s18, v44
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s1, 0, v33
	v_lshl_or_b32 v166, v43, 5, v3
	v_dual_mov_b32 v28, v9 :: v_dual_lshlrev_b32 v43, 5, v33
	v_and_or_b32 v56, 0x1c00, v4, v5
	v_dual_mov_b32 v30, v9 :: v_dual_lshlrev_b32 v57, 6, v33
	v_dual_mov_b32 v31, v9 :: v_dual_and_b32 v62, 0x2040, v13
	v_lshl_add_u32 v65, v15, 9, 0
	v_mov_b32_e32 v15, v9
	v_lshl_or_b32 v42, v42, 4, v14
	v_dual_mov_b32 v13, v9 :: v_dual_and_b32 v6, 0x70, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v0, 1, v73
	v_dual_mov_b32 v25, v9 :: v_dual_lshlrev_b32 v114, 3, v45
	v_xor_b32_e32 v74, v1, v2
	v_and_or_b32 v59, 0x2040, v10, v8
	v_dual_mov_b32 v17, v9 :: v_dual_lshlrev_b32 v66, 4, v45
	v_mov_b32_e32 v10, v9
	v_lshl_or_b32 v61, v49, 7, v12
	v_mov_b32_e32 v12, v9
	v_dual_mov_b32 v27, v9 :: v_dual_and_b32 v58, 0x310, v7
	v_mov_b32_e32 v14, v9
	v_dual_mov_b32 v29, v9 :: v_dual_and_b32 v60, 0x60, v11
	v_mov_b32_e32 v11, v9
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v69, 16, v55
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_cndmask_b32_e64 v115, v36, v40, s1
	v_cndmask_b32_e64 v117, v34, v37, s1
	v_cndmask_b32_e64 v119, v40, v36, s1
	v_cndmask_b32_e64 v121, v37, v34, s1
	v_or3_b32 v176, v56, v43, v48
	v_lshl_or_b32 v36, v50, 4, v57
	v_and_or_b32 v37, 0x1020, v51, v62
	v_xor_b32_e32 v178, v42, v52
	v_cndmask_b32_e64 v42, 0x1054, v53, s1
	v_mov_b32_e32 v21, v9
	v_xor_b32_e32 v34, 8, v74
	v_or3_b32 v177, v61, v60, v49
	v_xor_b32_e32 v40, v66, v73
	v_cndmask_b32_e64 v43, 0x3276, v54, s1
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[48:49], null, s96, v0, v[114:115]
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v0, s19, v69
	v_or3_b32 v181, v59, v36, v58
	v_xor_b32_e32 v36, v37, v60
	v_lshl_or_b32 v37, v42, 8, v42
	v_xor_b32_e32 v42, 8, v176
	v_dual_mov_b32 v24, v9 :: v_dual_add_nc_u32 v191, s17, v0
	v_dual_mov_b32 v3, v9 :: v_dual_add_nc_u32 v34, 0, v34
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v118, v35, v39, s1
	v_cndmask_b32_e64 v122, v39, v35, s1
	v_xor_b32_e32 v35, 8, v166
	v_lshl_or_b32 v182, v45, 10, v40
	v_lshl_or_b32 v40, v43, 8, v43
	v_xor_b32_e32 v43, 16, v176
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v188, s16, v0
	v_dual_mov_b32 v135, 0xff800000 :: v_dual_add_nc_u32 v0, 0, v42
	v_dual_mov_b32 v5, v9 :: v_dual_add_nc_u32 v184, 0, v35
	.loc	1 758 19                        ; attention.py:758:19
	s_clause 0x4                            ; 24-byte Folded Spill
	scratch_store_b32 off, v74, off
	scratch_store_b64 off, v[48:49], off offset:4
	scratch_store_b32 off, v34, off offset:12
	scratch_store_b32 off, v63, off offset:172
	scratch_store_b32 off, v0, off offset:16
	v_xor_b32_e32 v35, 24, v176
	v_add_nc_u32_e32 v0, 0, v43
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v116, v38, v41, s1
	v_lshrrev_b32_e32 v63, 1, v6
	v_cndmask_b32_e64 v120, v41, v38, s1
	v_xor_b32_e32 v38, 16, v166
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v73, off offset:180
	scratch_store_b32 off, v0, off offset:20
	v_add_nc_u32_e32 v0, 0, v35
	scratch_store_b32 off, v64, off offset:184 ; 4-byte Folded Spill
	v_lshl_or_b32 v64, v6, 6, v64
	v_dual_mov_b32 v20, v9 :: v_dual_add_nc_u32 v185, 0, v38
	v_xor_b32_e32 v38, 32, v176
	v_xor_b32_e32 v41, 24, v166
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v39, v64, v63
	v_mov_b32_e32 v22, v9
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_dual_mov_b32 v7, v9 :: v_dual_add_nc_u32 v0, 0, v38
	v_add_nc_u32_e32 v186, 0, v41
	v_add_nc_u32_e32 v187, 0, v39
	v_xor_b32_e32 v39, 40, v176
	v_xor_b32_e32 v41, 48, v176
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_mul_u32_u24_e32 v68, 0x90, v45
	v_xor_b32_e32 v45, 56, v176
	v_add_nc_u32_e32 v0, 0, v39
	v_dual_mov_b32 v32, v9 :: v_dual_and_b32 v67, 0x410, v51
	v_xor_b32_e32 v51, 4, v177
	v_xor_b32_e32 v52, 8, v177
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v41
	v_xor_b32_e32 v53, 12, v177
	v_xor_b32_e32 v54, 16, v177
	v_dual_mov_b32 v19, v9 :: v_dual_add_nc_u32 v72, s19, v55
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v45
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v70, 32, v55
	v_or_b32_e32 v71, 48, v55
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v55
	v_xor_b32_e32 v55, 20, v177
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v51
	v_xor_b32_e32 v56, 24, v177
	v_xor_b32_e32 v179, v68, v67
	v_xor_b32_e32 v57, 28, v177
	v_dual_mov_b32 v23, v9 :: v_dual_add_nc_u32 v48, s19, v70
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v52
	v_xor_b32_e32 v58, 16, v179
	v_xor_b32_e32 v59, 32, v179
	v_xor_b32_e32 v60, 48, v179
	v_xor_b32_e32 v61, 64, v179
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v53
	v_xor_b32_e32 v62, 0x50, v179
	v_xor_b32_e32 v63, 0x60, v179
	v_xor_b32_e32 v64, 0x70, v179
	v_xor_b32_e32 v66, 0x820, v179
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v54
	v_xor_b32_e32 v67, 0x830, v179
	v_xor_b32_e32 v68, 0x810, v179
	v_xor_b32_e32 v69, 0x860, v179
	v_xor_b32_e32 v70, 0x870, v179
	scratch_store_b32 off, v0, off offset:56 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v55
	v_dual_mov_b32 v18, v9 :: v_dual_add_nc_u32 v49, s19, v71
	v_xor_b32_e32 v71, 0x840, v179
	v_dual_mov_b32 v1, v9 :: v_dual_add_nc_u32 v180, s17, v72
	scratch_store_b32 off, v0, off offset:60 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v56
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v124, s16, v72
	v_xor_b32_e32 v72, 0x850, v179
	v_xor_b32_e32 v73, 0x1040, v179
	v_xor_b32_e32 v74, 0x1050, v179
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v57
	v_xor_b32_e32 v75, 0x1060, v179
	v_xor_b32_e32 v76, 0x1070, v179
	v_xor_b32_e32 v77, 0x1010, v179
	v_xor_b32_e32 v78, 0x1020, v179
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v58
	v_xor_b32_e32 v79, 0x1030, v179
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s20, s3, 31
	v_xor_b32_e32 v80, 0x1860, v179
	s_lshr_b32 s0, s20, 28
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v59
	s_add_i32 s0, s3, s0
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v34, s15, v44
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s8, s0, -16
	v_dual_mov_b32 v4, v9 :: v_dual_and_b32 v37, 0x540054, v37
	scratch_store_b32 off, v0, off offset:76 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v60
	s_sub_i32 s3, s3, s8
	v_xor_b32_e32 v81, 0x1870, v179
	v_add3_u32 v36, v65, v47, v36
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s20, s3, 0x10007
	scratch_store_b32 off, v0, off offset:80 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v61
	v_xor_b32_e32 v35, 32, v181
	s_add_i32 s1, s3, s20
	v_dual_mov_b32 v110, v9 :: v_dual_add_nc_u32 v237, v36, v33
	scratch_store_b32 off, v0, off offset:84 ; 4-byte Folded Spill
	v_dual_mov_b32 v113, v9 :: v_dual_add_nc_u32 v0, 0, v62
	v_and_b32_e32 v40, 0x760076, v40
	s_bfe_i32 s1, s1, 0x80000
	v_xor_b32_e32 v82, 0x1840, v179
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v63
	v_xor_b32_e32 v38, 64, v181
	v_lshl_or_b32 v33, v37, 4, v37
	s_sext_i32_i16 s1, s1
	v_add_nc_u32_e32 v238, 0, v35
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v64
	v_mad_u64_u32 v[35:36], null, s15, 48, v[34:35]
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s1, s1, 10
	v_dual_mov_b32 v111, v9 :: v_dual_add_nc_u32 v192, s17, v48
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v66
	v_dual_mov_b32 v112, v9 :: v_dual_add_nc_u32 v239, 0, v38
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v87, 1, v114
	v_or_b32_e32 v88, 2, v114
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v67
	v_or_b32_e32 v89, 3, v114
	v_or_b32_e32 v90, 4, v114
	v_or_b32_e32 v91, 5, v114
	v_or_b32_e32 v92, 6, v114
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v68
	v_or_b32_e32 v93, 7, v114
	v_xor_b32_e32 v50, 0x810, v178
	v_xor_b32_e32 v83, 0x1850, v179
	v_xor_b32_e32 v84, 0x1820, v179
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v69
	v_xor_b32_e32 v85, 0x1830, v179
	v_xor_b32_e32 v86, 0x1810, v179
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v189, s16, v48
	v_xor_b32_e32 v39, 0x60, v181
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v70
	v_xor_b32_e32 v41, 0x90, v182
	v_xor_b32_e32 v42, 0x120, v182
	v_xor_b32_e32 v43, 0x1b0, v182
	v_xor_b32_e32 v44, 0x240, v182
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v71
	v_xor_b32_e32 v45, 0x2d0, v182
	v_xor_b32_e32 v47, 0x360, v182
	v_xor_b32_e32 v48, 0x3f0, v182
	v_lshl_or_b32 v37, v40, 4, v40
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v72
	v_lshl_add_u32 v36, s15, 4, v34
	v_lshl_add_u32 v38, s15, 5, v34
	v_and_b32_e32 v249, 0x5040504, v33
	.loc	1 821 32                        ; attention.py:821:32
	s_and_b32 s101, s1, 0xfffff800
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v73
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s1, s12, 0x3fb8aa3b
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s9, s0, 4
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s14, s3
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s8, s9, 14
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v74
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s9, s13, s9
	v_dual_mov_b32 v2, v9 :: v_dual_add_nc_u32 v193, s17, v49
	v_dual_mov_b32 v6, v9 :: v_dual_add_nc_u32 v201, 0, v50
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v75
	v_dual_mov_b32 v8, v9 :: v_dual_add_nc_u32 v235, 0, v85
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s96, v114
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v190, s16, v49
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v76
	v_add_nc_u32_e32 v234, 0, v84
	v_add_nc_u32_e32 v236, 0, v86
	v_add_nc_u32_e32 v240, 0, v39
	v_dual_mov_b32 v136, 0xff800000 :: v_dual_add_nc_u32 v241, 0, v41
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v77
	v_add_nc_u32_e32 v242, 0, v42
	v_add_nc_u32_e32 v244, 0, v44
	v_add_nc_u32_e32 v245, 0, v45
	v_add_nc_u32_e32 v246, 0, v47
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v78
	v_add_nc_u32_e32 v247, 0, v48
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v248, v34, v114
	v_and_b32_e32 v250, 0x7060706, v37
	v_add_nc_u32_e32 v251, v36, v114
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v79
	v_add_nc_u32_e32 v252, v36, v87
	v_add_nc_u32_e32 v253, v36, v88
	v_add_nc_u32_e32 v254, v36, v89
	v_add_nc_u32_e32 v255, v36, v90
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v80
	v_add_nc_u32_e32 v160, v36, v91
	v_add_nc_u32_e32 v159, v36, v92
	v_add_nc_u32_e32 v157, v36, v93
	v_add_nc_u32_e32 v158, v38, v114
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v81
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v46
	v_add_nc_u32_e32 v243, 0, v43
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v169, v38, v87
	v_add_nc_u32_e32 v170, v38, v88
	scratch_store_b32 off, v0, off offset:160 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v82
	v_add_nc_u32_e32 v171, v38, v89
	v_add_nc_u32_e32 v172, v38, v90
	v_add_nc_u32_e32 v173, v38, v91
	v_add_nc_u32_e32 v174, v38, v92
	scratch_store_b32 off, v0, off offset:164 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v83
	v_add_nc_u32_e32 v175, v38, v93
	v_add_nc_u32_e32 v125, v35, v114
	v_add_nc_u32_e32 v126, v35, v87
	v_add_nc_u32_e32 v127, v35, v88
	v_add_nc_u32_e32 v128, v35, v89
	v_add_nc_u32_e32 v129, v35, v90
	v_add_nc_u32_e32 v130, v35, v91
	v_add_nc_u32_e32 v131, v35, v92
	v_add_nc_u32_e32 v133, v35, v93
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v134, s1, v33
	s_mov_b32 s68, 0
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s12, s15, s18
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_add_i32 s102, s3, s9
	s_lshl_b32 s98, s96, 1
	s_mul_i32 s99, s96, 3
	s_mov_b32 s100, 0x76543210
	s_mov_b32 s69, s68
	s_mov_b32 s70, s68
	s_mov_b32 s71, s68
	s_mov_b32 s72, s68
	s_mov_b32 s73, s68
	s_mov_b32 s74, s68
	s_mov_b32 s75, s68
	s_mov_b32 s90, s86
	s_mov_b32 s91, s87
	s_mov_b32 s82, s86
	s_mov_b32 s83, s87
	s_and_b32 s81, s81, 0xffff
	s_and_b32 s93, s7, 0xffff
	s_mov_b32 s88, s10
	s_mov_b32 s92, s6
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s101, s101, s8
	s_mov_b32 s84, s4
	s_mov_b32 s85, s5
	s_mov_b32 s89, s11
	s_add_i32 s102, s102, s12
	s_mov_b32 s94, s86
	s_mov_b32 s95, s87
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s103, s79, s101
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s104, s102, s79
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[33:34], null, s103, s78, v[232:233]
	v_mov_b32_e32 v165, v143
	.loc	1 881 25                        ; attention.py:881:25
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v33, 0x80000000, v33, s60
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[33:36], v33, s[84:87], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	.loc	1 881 25                        ; attention.py:881:25
                                        ; kill: def $vgpr232 killed $vgpr232 def $vgpr233
	v_mov_b32_e32 v200, v140
	v_dual_mov_b32 v206, v106 :: v_dual_mov_b32 v207, v107
	v_dual_mov_b32 v210, v202 :: v_dual_mov_b32 v183, v123
	v_mov_b32_e32 v199, v198
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, 0, v0
	scratch_load_b32 v0, off, off offset:12 ; 4-byte Folded Reload
	ds_store_b64 v37, v[33:34]
	v_add_nc_u32_e32 v33, 0, v166
	s_waitcnt vmcnt(0)
	ds_store_b64 v0, v[35:36]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[49:52], v33 offset1:1
	ds_load_2addr_stride64_b64 v[78:81], v33 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[53:56], v184 offset1:1
	ds_load_2addr_stride64_b64 v[82:85], v184 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[57:60], v185 offset1:1
	ds_load_2addr_stride64_b64 v[86:89], v185 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v33, s68 :: v_dual_mov_b32 v38, s73
	v_dual_mov_b32 v34, s69 :: v_dual_mov_b32 v35, s70
	v_mov_b32_e32 v40, s75
	v_dual_mov_b32 v36, s71 :: v_dual_mov_b32 v37, s72
	v_mov_b32_e32 v39, s74
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[68:71], v186 offset1:1
	ds_load_2addr_stride64_b64 v[90:93], v186 offset0:2 offset1:3
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 1, v114
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[49:50], v[121:122], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[53:54], v[119:120], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[57:58], v[117:118], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[68:69], v[115:116], v[41:48] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v69, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v68, v42
	v_cvt_f32_i32_e32 v67, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v66, v44
	v_cvt_f32_i32_e32 v65, v45
	v_cvt_f32_i32_e32 v64, v46
	v_cvt_f32_i32_e32 v63, v47
	v_cvt_f32_i32_e32 v61, v48
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[51:52], v[121:122], v[33:40] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v69, v134, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[55:56], v[119:120], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[59:60], v[117:118], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[70:71], v[115:116], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[70:77], v[78:79], v[121:122], v[33:40] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v57, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[70:77], v[82:83], v[119:120], v[70:77] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v55, v47
	v_cvt_f32_i32_e32 v53, v48
	v_cvt_f32_i32_e32 v56, v46
	v_cvt_f32_i32_e32 v62, v41
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[70:77], v[86:87], v[117:118], v[70:77] neg_lo:[1,1,0]
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v41, 5, v248
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v60, v42
	v_cvt_f32_i32_e32 v59, v43
	v_cvt_f32_i32_e32 v58, v44
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[70:77], v[90:91], v[115:116], v[70:77] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v41, s104, v41, 1
	v_add_lshl_u32 v82, s104, v175, 1
	v_add_lshl_u32 v83, s104, v126, 1
	v_add_lshl_u32 v86, s104, v133, 1
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
	v_wmma_i32_16x16x16_iu4 v[70:77], v[80:81], v[121:122], v[33:40] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s79, v114
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v34, 2, v248
	v_add_nc_u32_e32 v36, 3, v248
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[70:77], v[84:85], v[119:120], v[70:77] neg_lo:[1,1,0]
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v35, 1, v248
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v33, v124
	v_cmp_ge_i32_e64 s7, v33, v188
	v_cmp_ge_i32_e64 s8, v33, v189
	v_cmp_ge_i32_e64 s1, v33, v190
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v33, v180
	v_cmp_le_i32_e64 s9, v33, v191
	v_cmp_le_i32_e64 s11, v33, v192
	v_cmp_le_i32_e64 s4, v33, v193
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s79, v0
	v_or_b32_e32 v0, 2, v114
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[70:77], v[88:89], v[117:118], v[70:77] neg_lo:[1,1,0]
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s3, s5
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v34, s104, v34, 1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s6, v33, v124
	v_cmp_ge_i32_e64 s13, v33, v188
	v_cmp_ge_i32_e64 s17, v33, v189
	v_cmp_ge_i32_e64 s15, v33, v190
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s19, v33, v180
	v_cmp_le_i32_e64 s14, v33, v191
	v_cmp_le_i32_e64 s18, v33, v192
	v_cmp_le_i32_e64 s16, v33, v193
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s79, v0
	v_or_b32_e32 v0, 3, v114
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[70:77], v[92:93], v[115:116], v[70:77] neg_lo:[1,1,0]
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, vcc_lo, s5
	s_and_b32 s19, s6, s19
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s20, v33, v124
	v_cmp_ge_i32_e64 s22, v33, v188
	v_cmp_ge_i32_e64 s26, v33, v189
	v_cmp_ge_i32_e64 s24, v33, v190
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s21, v33, v180
	v_cmp_le_i32_e64 s23, v33, v191
	v_cmp_le_i32_e64 s29, v33, v192
	v_cmp_le_i32_e64 s25, v33, v193
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s79, v0
	v_or_b32_e32 v0, 4, v114
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v46, v70
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v70, 7, v248
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 vcc_hi, s20, s21
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s62, v33, v124
	v_cmp_ge_i32_e64 s27, v33, v188
	v_cmp_ge_i32_e64 s33, v33, v189
	v_cmp_ge_i32_e64 s30, v33, v190
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s63, v33, v180
	v_cmp_le_i32_e64 s28, v33, v191
	v_cmp_le_i32_e64 s34, v33, v192
	v_cmp_le_i32_e64 s31, v33, v193
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s79, v0
	v_or_b32_e32 v0, 5, v114
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v70, s104, v70, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, vcc_lo, vcc_hi
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v36, s104, v36, 1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v33, v124
	v_cmp_ge_i32_e64 s43, v33, v188
	v_cmp_ge_i32_e64 s37, v33, v189
	v_cmp_ge_i32_e64 s35, v33, v190
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s61, v33, v180
	v_cmp_le_i32_e64 s44, v33, v191
	v_cmp_le_i32_e64 s38, v33, v192
	v_cmp_le_i32_e64 s36, v33, v193
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s79, v0
	v_or_b32_e32 v0, 6, v114
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s62, s63
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v35, s104, v35, 1
	v_cndmask_b32_e64 v34, 0x80000000, v34, s6
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s64, v33, v124
	v_cmp_ge_i32_e64 s55, v33, v188
	v_cmp_ge_i32_e64 s41, v33, v189
	v_cmp_ge_i32_e64 s39, v33, v190
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s65, v33, v180
	v_cmp_le_i32_e64 s56, v33, v191
	v_cmp_le_i32_e64 s42, v33, v192
	v_cmp_le_i32_e64 s40, v33, v193
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s79, v0
	v_or_b32_e32 v0, 7, v114
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s20, s64, s65
	s_and_b32 s3, vcc_lo, s3
	s_and_b32 s20, vcc_lo, s20
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s12, v33, v124
	v_cmp_ge_i32_e64 s53, v33, v188
	v_cmp_ge_i32_e64 s47, v33, v189
	v_cmp_ge_i32_e64 s45, v33, v190
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s59, v33, v180
	v_cmp_le_i32_e64 s54, v33, v191
	v_cmp_le_i32_e64 s48, v33, v192
	v_cmp_le_i32_e64 s46, v33, v193
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s79, v0
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s19, vcc_lo, s19
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v41, 0x80000000, v41, s20
	v_cndmask_b32_e64 v36, 0x80000000, v36, s3
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v43, v72
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s66, v33, v124
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s67, v33, v180
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s57, v33, v188
	v_cmp_ge_i32_e64 s51, v33, v189
	v_cmp_ge_i32_e64 s49, v33, v190
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s58, v33, v191
	v_cmp_le_i32_e64 s52, v33, v192
	v_cmp_le_i32_e64 s50, v33, v193
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v33, s104, v248, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s66, s67
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v42, v73
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, vcc_lo, s21
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v40, v74
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0x80000000, v33, s5
	v_cndmask_b32_e64 v70, 0x80000000, v70, s21
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v39, v75
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v35, 0x80000000, v35, s19
	s_clause 0x5
	buffer_load_u16 v33, v33, s[80:83], 0 offen
	buffer_load_u16 v34, v34, s[80:83], 0 offen
	buffer_load_u16 v72, v70, s[80:83], 0 offen
	buffer_load_u16 v73, v41, s[80:83], 0 offen
	buffer_load_u16 v74, v36, s[80:83], 0 offen
	buffer_load_u16 v75, v35, s[80:83], 0 offen
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v35, 6, v248
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s10, s10, s61
	s_and_b32 s12, s12, s59
	s_and_b32 s10, vcc_lo, s10
	s_and_b32 s12, vcc_lo, s12
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v35, s104, v35, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, s7, s9
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v36, s104, v253, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v38, v76
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, s22, s23
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v35, 0x80000000, v35, s12
	v_add_lshl_u32 v76, s104, v157, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v44, v71
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s13, s13, s14
	s_and_b32 s14, s27, s28
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_u16 v35, v35, s[80:83], 0 offen
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s28, s57, s58
	s_and_b32 s7, vcc_lo, s7
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v71, s104, v160, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s55, s56
	s_and_b32 s9, vcc_lo, s9
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v70, s104, v254, 1
	v_add_lshl_u32 v41, s104, v252, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s28, vcc_lo, s28
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v36, 0x80000000, v36, s9
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, vcc_lo, s23
	s_and_b32 s27, vcc_lo, s14
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v76, 0x80000000, v76, s28
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, vcc_lo, s13
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v71, 0x80000000, v71, s23
	v_cndmask_b32_e64 v70, 0x80000000, v70, s27
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v37, v77
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v41, 0x80000000, v41, s22
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s13, s43, s44
	s_and_b32 s14, s53, s54
	s_and_b32 s13, vcc_lo, s13
	s_and_b32 s14, vcc_lo, s14
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v80, s104, v171, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s8, s11
	s_and_b32 s11, s17, s18
	s_and_b32 s18, s33, s34
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v81, s104, v173, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s33, s41, s42
	s_and_b32 s17, s26, s29
	s_and_b32 s26, s37, s38
	s_and_b32 s37, s51, s52
	s_and_b32 s38, vcc_lo, s18
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v84, s104, v128, 1
	v_add_lshl_u32 v85, s104, v130, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s1, s4
	s_and_b32 s4, s15, s16
	s_and_b32 s42, s30, s31
	s_and_b32 s39, s39, s40
	s_and_b32 s31, vcc_lo, s33
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v99, 0x80000000, v80, s38
	v_add_lshl_u32 v80, s104, v172, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s41, vcc_lo, s37
	s_and_b32 s35, s35, s36
	s_and_b32 s15, vcc_lo, s8
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v100, 0x80000000, v81, s31
	v_add_lshl_u32 v81, s104, v174, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s36, vcc_lo, s4
	s_and_b32 s37, vcc_lo, s42
	s_and_b32 s39, vcc_lo, s39
	s_and_b32 s34, s47, s48
	s_and_b32 s16, s24, s25
	s_and_b32 s25, vcc_lo, s17
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v104, 0x80000000, v82, s41
	v_add_lshl_u32 v82, s104, v125, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s30, vcc_lo, s26
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v105, 0x80000000, v83, s36
	v_add_lshl_u32 v83, s104, v127, 1
	v_cndmask_b32_e64 v132, 0x80000000, v84, s37
	v_add_lshl_u32 v84, s104, v129, 1
	v_cndmask_b32_e64 v137, 0x80000000, v85, s39
	v_add_lshl_u32 v85, s104, v131, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s40, s45, s46
	s_and_b32 s34, vcc_lo, s34
	s_and_b32 s29, vcc_lo, s11
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v80, 0x80000000, v80, s30
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s11, vcc_lo, s1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v81, 0x80000000, v81, s34
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s24, vcc_lo, s16
	s_and_b32 s26, vcc_lo, s35
	s_and_b32 s33, vcc_lo, s40
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v82, 0x80000000, v82, s11
	v_cndmask_b32_e64 v83, 0x80000000, v83, s24
	v_cndmask_b32_e64 v84, 0x80000000, v84, s26
	v_cndmask_b32_e64 v85, 0x80000000, v85, s33
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s43, s49, s50
	v_mov_b32_e32 v0, v196
	s_and_b32 s40, vcc_lo, s43
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v134, v39
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v141, 0x80000000, v86, s40
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v48, v134, v48
	v_mul_f32_e32 v40, v134, v40
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(6)
	v_cndmask_b16 v33.l, 0xff80, v33.l, s5
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v33.h, 0xff80, v34.l, s6
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v34, 4, v248
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v34, s104, v34, 1
	v_cndmask_b32_e64 v34, 0x80000000, v34, s10
	buffer_load_u16 v34, v34, s[80:83], 0 offen
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v34.h, 0xff80, v35.l, s12
	v_add_lshl_u32 v35, s104, v251, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v35, 0x80000000, v35, s7
	s_clause 0x5
	buffer_load_u16 v35, v35, s[80:83], 0 offen
	buffer_load_u16 v36, v36, s[80:83], 0 offen
	buffer_load_u16 v76, v76, s[80:83], 0 offen
	buffer_load_u16 v77, v71, s[80:83], 0 offen
	buffer_load_u16 v78, v70, s[80:83], 0 offen
	buffer_load_u16 v79, v41, s[80:83], 0 offen
	v_add_lshl_u32 v41, s104, v159, 1
	v_add_lshl_u32 v71, s104, v170, 1
	v_add_lshl_u32 v70, s104, v169, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v41, 0x80000000, v41, s14
	v_cndmask_b32_e64 v71, 0x80000000, v71, s25
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v70, 0x80000000, v70, s29
	buffer_load_u16 v41, v41, s[80:83], 0 offen
	v_cndmask_b16 v34.l, 0xff80, v34.l, s10
	s_waitcnt vmcnt(6)
	v_cndmask_b16 v35.l, 0xff80, v35.l, s7
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v35.h, 0xff80, v36.l, s9
	v_add_lshl_u32 v36, s104, v255, 1
	s_waitcnt vmcnt(4)
	v_cndmask_b16 v73.h, 0xff80, v76.l, s28
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v72.h, 0xff80, v78.l, s27
	v_cndmask_b32_e64 v36, 0x80000000, v36, s13
	buffer_load_u16 v36, v36, s[80:83], 0 offen
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v36.h, 0xff80, v41.l, s14
	v_add_lshl_u32 v41, s104, v158, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v41, 0x80000000, v41, s15
	s_clause 0x7
	buffer_load_u16 v146, v41, s[80:83], 0 offen
	buffer_load_u16 v147, v71, s[80:83], 0 offen
	buffer_load_u16 v150, v80, s[80:83], 0 offen
	buffer_load_u16 v151, v81, s[80:83], 0 offen
	buffer_load_u16 v152, v82, s[80:83], 0 offen
	buffer_load_u16 v153, v83, s[80:83], 0 offen
	buffer_load_u16 v154, v84, s[80:83], 0 offen
	buffer_load_u16 v155, v85, s[80:83], 0 offen
	v_or_b32_e32 v41, s101, v139
	v_or_b32_e32 v71, s101, v194
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v146.h, v34.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v147.h, v35.l
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v41, v41, s79, 1
	v_add_lshl_u32 v71, v71, s79, 1
	s_clause 0x1
	buffer_load_u16 v108, v41, s[88:91], 0 offen
	buffer_load_u16 v71, v71, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v41, v41, s79, 1
	buffer_load_u16 v107, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v106
	v_add_lshl_u32 v41, v41, s79, 1
	buffer_load_u16 v106, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v41, v41, s79, 1
	buffer_load_u16 v102, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v230
	v_add_lshl_u32 v41, v41, s79, 1
	buffer_load_u16 v103, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v41, v41, s79, 1
	buffer_load_u16 v101, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v228
	v_add_lshl_u32 v41, v41, s79, 1
	buffer_load_u16 v98, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v227
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v41, v41, s79, 1
	buffer_load_u16 v96, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v226
	v_add_lshl_u32 v41, v41, s79, 1
	buffer_load_u16 v97, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v225
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v41, v41, s79, 1
	buffer_load_u16 v95, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v224
	v_add_lshl_u32 v41, v41, s79, 1
	buffer_load_u16 v94, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v41, v41, s79, 1
	buffer_load_u16 v92, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v202
	v_mov_b32_e32 v202, v156
	v_add_lshl_u32 v41, v41, s79, 1
	buffer_load_u16 v93, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v41, v41, s79, 1
	buffer_load_u16 v91, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v222
	v_add_lshl_u32 v41, v41, s79, 1
	buffer_load_u16 v90, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v41, v41, s79, 1
	buffer_load_u16 v88, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v220
	v_add_lshl_u32 v41, v41, s79, 1
	buffer_load_u16 v89, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v156
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x1
	buffer_load_u16 v156, v70, s[80:83], 0 offen
	buffer_load_u16 v141, v141, s[80:83], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v41, v41, s79, 1
	buffer_load_u16 v87, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v41, v41, s79, 1
	buffer_load_u16 v86, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v218
	v_add_lshl_u32 v41, v41, s79, 1
	buffer_load_u16 v84, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v143
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x2
	buffer_load_u16 v143, v137, s[80:83], 0 offen
	buffer_load_u16 v145, v132, s[80:83], 0 offen
	buffer_load_u16 v132, v105, s[80:83], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v137.l, 0
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v137.h, v33.l
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v41, v41, s79, 1
	buffer_load_u16 v85, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v123
	v_mov_b32_e32 v123, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v41, v41, s79, 1
	buffer_load_u16 v83, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v109
	v_mov_b32_e32 v109, v142
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v49, v134, v49
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v41, v41, s79, 1
	buffer_load_u16 v82, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v142
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x1
	buffer_load_u16 v142, v100, s[80:83], 0 offen
	buffer_load_u16 v144, v99, s[80:83], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v41, v41, s79, 1
	buffer_load_u16 v80, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v140
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_u16 v140, v104, s[80:83], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v41, v41, s79, 1
	buffer_load_u16 v81, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v198
	v_mov_b32_e32 v198, v197
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v41, v41, s79, 1
	buffer_load_u16 v105, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v197
	v_mov_b32_e32 v197, v195
	v_add_lshl_u32 v41, v41, s79, 1
	buffer_load_u16 v104, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v195
	v_mov_b32_e32 v195, v149
	s_delay_alu instid0(VALU_DEP_2)
	v_add_lshl_u32 v41, v41, s79, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v36.l, 0xff80, v36.l, s13
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v99, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v149
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v149.l, v137.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v45, v134, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v41, v41, s79, 1
	buffer_load_u16 v100, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v148
	v_add_lshl_u32 v41, v41, s79, 1
	buffer_load_u16 v70, v41, s[88:91], 0 offen
	v_or_b32_e32 v41, s101, v196
	v_mov_b32_e32 v196, v194
	v_mov_b32_e32 v194, v148
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v148.h, v36.l
	v_mov_b16_e64 v148.l, v137.l
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v41, v41, s79, 1
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s79, s79, 64
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v41, v41, s[88:91], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b64 v187, v[33:34], v[35:36] offset1:16
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v33.l, v137.l
	v_mov_b16_e64 v34.l, v137.l
	v_mov_b16_e64 v35.l, v137.l
	v_mov_b16_e64 v36.l, v137.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v33
	v_cmp_neq_f32_e64 s1, 0xff800000, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_neq_f32_e64 s35, 0xff800000, v35
	v_cmp_neq_f32_e64 s17, 0xff800000, v36
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v33.l, 0xff80, v146.l, s15
	v_cndmask_b16 v33.h, 0xff80, v147.l, s25
	s_waitcnt vmcnt(45)
	v_cndmask_b16 v34.l, 0xff80, v150.l, s30
	s_waitcnt vmcnt(44)
	v_cndmask_b16 v34.h, 0xff80, v151.l, s34
	s_waitcnt vmcnt(43)
	v_cndmask_b16 v35.l, 0xff80, v152.l, s11
	s_waitcnt vmcnt(42)
	v_cndmask_b16 v35.h, 0xff80, v153.l, s24
	s_waitcnt vmcnt(41)
	v_cndmask_b16 v36.l, 0xff80, v154.l, s26
	s_waitcnt vmcnt(40)
	v_cndmask_b16 v36.h, 0xff80, v155.l, s33
	v_mov_b16_e64 v149.h, v33.l
	v_mov_b16_e64 v146.l, v137.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s1, s12, s1
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v150.h, v34.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v187, v[33:34], v[35:36] offset0:32 offset1:48
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v33.l, v137.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v146
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v34.l, v137.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s16, s6, s8
	s_and_b32 s8, s14, s17
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s42, 0xff800000, v33
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v33.h, v35.l
	v_mov_b16_e64 v35.l, v137.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s4, s10, s4
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v137
	v_cmp_neq_f32_e64 s43, 0xff800000, v34
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v147.l, v137.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s44, 0xff800000, v35
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v35, 0, 1, s1
	s_and_b32 s18, s5, s10
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v148
	v_cmp_neq_f32_e64 s6, 0xff800000, v147
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s14, s9, s35
	v_mov_b16_e32 v33.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s4
	s_and_b32 s10, s13, s5
	s_and_b32 s17, s7, s6
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v150.l, v137.l
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s16
	s_and_b32 s6, s34, s43
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v150
	v_cmp_neq_f32_e64 s7, 0xff800000, v149
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v152.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s18
	s_and_b32 s9, s30, s5
	s_and_b32 s13, s25, s42
	s_and_b32 s15, s15, s7
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s8
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v34.h, v36.l
	v_mov_b16_e64 v36.l, v137.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v152.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s10
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s45, 0xff800000, v36
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b16 v36.l, 0xff80, v73.l, s20
	v_cndmask_b16 v36.h, 0xff80, v72.l, s21
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s14
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v72.l, 0xff80, v79.l, s22
	v_cndmask_b16 v73.l, 0xff80, v77.l, s23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v153.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v153.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v154.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s15
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v35.h, 0xff80, v74.l, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v35.l
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v35.l, 0xff80, v75.l, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v154.l, v34.l, v33.l
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v34.l, v137.l
	v_mov_b16_e64 v33.l, v137.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v34
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_neq_f32_e64 s12, 0xff800000, v33
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s7, s26, s5
	s_and_b32 s5, s33, s45
	v_cndmask_b32_e64 v34, 0, 1, s7
	v_cndmask_b32_e64 v33, 0, 1, s5
	s_and_b32 s12, s11, s12
	s_and_b32 s11, s24, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v155.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s11
	v_cndmask_b32_e64 v34, 0, 1, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v155.l, v34.l, v33.l
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	v_add_nc_u32_e32 v33, 0, v176
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(21)
	v_cndmask_b16 v74.l, 0xff80, v156.l, s29
	s_waitcnt vmcnt(20)
	v_cndmask_b16 v77.h, 0xff80, v141.l, s40
	v_mov_b32_e32 v156, v202
	s_waitcnt vmcnt(16)
	v_cndmask_b16 v77.l, 0xff80, v143.l, s39
	s_waitcnt vmcnt(15)
	v_cndmask_b16 v76.h, 0xff80, v145.l, s37
	s_waitcnt vmcnt(14)
	v_cndmask_b16 v76.l, 0xff80, v132.l, s36
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v132, 0, v178
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(10)
	v_cndmask_b16 v75.l, 0xff80, v142.l, s31
	s_waitcnt vmcnt(9)
	v_cndmask_b16 v74.h, 0xff80, v144.l, s38
	s_waitcnt vmcnt(7)
	v_cndmask_b16 v75.h, 0xff80, v140.l, s41
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v187, v[35:36], v[72:73] offset0:64 offset1:80
	ds_store_2addr_b64 v187, v[74:75], v[76:77] offset0:96 offset1:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_b64 v[78:79], v33
	.loc	1 880 35                        ; attention.py:880:35
	scratch_load_b32 v33, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[140:141], v33
	.loc	1 879 36                        ; attention.py:879:36
	scratch_load_b32 v33, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[142:143], v33
	scratch_load_b32 v33, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[144:145], v33
	scratch_load_b32 v33, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[146:147], v33
	scratch_load_b32 v33, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[148:149], v33
	scratch_load_b32 v33, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[150:151], v33
	scratch_load_b32 v33, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v47, v134, v47
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(0)
	ds_load_b64 v[33:34], v33
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v132, v152, v153 offset1:32
	ds_store_2addr_b32 v132, v154, v155 offset0:64 offset1:96
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v152.h, v36.l
	v_mov_b16_e64 v36.l, v137.l
	v_mov_b16_e64 v132.h, v35.l
	v_mov_b16_e64 v35.l, v137.l
	v_mov_b16_e64 v152.l, v137.l
	v_mov_b16_e64 v132.l, v137.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s25, 0xff800000, v36
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v153.h, v73.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s24, 0xff800000, v35
	v_cmp_neq_f32_e64 s26, 0xff800000, v152
	v_cmp_neq_f32_e64 s34, 0xff800000, v132
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s25, s21, s25
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v35.h, v72.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v36, 0, 1, s25
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v72.l, v137.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s26, s20, s26
	s_and_b32 s35, s19, s34
	s_and_b32 s34, s3, s24
	v_mov_b16_e32 v35.l, v36.l
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s30, 0xff800000, v72
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v36, 0, 1, s26
	v_cndmask_b32_e64 v72, 0, 1, s34
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v73.l, v137.l
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v35.l, 8, v35.l
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v153.l, v137.l
	v_mov_b16_e64 v154.h, v75.l
	v_mov_b16_e64 v75.l, v137.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s33, 0xff800000, v73
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_or_b16 v36.h, v36.l, v35.l
	v_mov_b16_e32 v35.l, v72.l
	v_cndmask_b32_e64 v72, 0, 1, s35
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v153
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v73.h, v74.l
	v_mov_b16_e64 v74.l, v137.l
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v35.l, 8, v35.l
	v_mov_b16_e32 v36.l, v72.l
	s_and_b32 s24, s23, s3
	s_and_b32 s23, s28, s33
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s42, 0xff800000, v74
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v74.h, v76.l
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v36.l, v36.l, v35.l
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v35.l, v137.l
	v_mov_b16_e64 v76.l, v137.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v72, 0, 1, s24
	s_and_b32 s30, s27, s30
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s43, 0xff800000, v75
	v_cmp_neq_f32_e64 s19, 0xff800000, v35
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v35, 0, 1, s23
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s44, 0xff800000, v76
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v154.l, v137.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s20, s41, s43
	s_and_b32 s33, s22, s19
	v_lshlrev_b16 v35.l, 8, v35.l
	v_cndmask_b32_e64 v76, 0, 1, s33
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v154
	v_cmp_neq_f32_e64 s19, 0xff800000, v73
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v75.h, v77.l
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v72.h, v72.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s30
	v_mov_b16_e32 v72.l, v76.l
	s_and_b32 s22, s31, s3
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v77.l, v137.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v73, 0, 1, s22
	v_lshlrev_b16 v35.l, 8, v35.l
	s_and_b32 s31, s29, s19
	s_and_b32 s29, s38, s42
	v_cndmask_b32_e64 v76, 0, 1, s31
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s45, 0xff800000, v77
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v72.l, v72.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s20
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v75
	v_cmp_neq_f32_e64 s27, 0xff800000, v74
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s19, s40, s45
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v75, 16, v102
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v35.l, 8, v35.l
	s_and_b32 s21, s39, s3
	s_and_b32 s28, s36, s27
	v_cndmask_b32_e64 v74, 0, 1, s21
	s_and_b32 s27, s37, s44
	v_or_b16 v73.h, v73.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s29
	v_mov_b16_e32 v73.l, v76.l
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s79, s97
	v_mov_b32_e32 v132, v203
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v35.l, 8, v35.l
	v_or_b16 v73.l, v73.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v35.l, 8, v35.l
	v_or_b16 v77.h, v74.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s27
	v_cndmask_b32_e64 v74, 0, 1, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v35.l, 8, v35.l
	v_or_b16 v77.l, v74.l, v35.l
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v35, 16, v78
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v74, 16, v108
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_2addr_b32 v201, v36, v72 offset1:32
	ds_store_2addr_b32 v201, v73, v77 offset0:64 offset1:96
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v35, 0x3fb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v35, v69, v74 :: v_dual_lshlrev_b32 v74, 16, v107
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v69, v134, v68 :: v_dual_and_b32 v68, 0xffff0000, v78
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v68, 0x3fb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v68, v69, v74 :: v_dual_mul_f32 v69, v134, v67
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v74, 16, v106
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v67, 16, v79
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v67, 0x3fb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v67, v69, v74
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v74, v134, v66 :: v_dual_and_b32 v69, 0xffff0000, v79
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v66, 0x3fb8aa3b, v69
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v69, v134, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v66, v74, v75 :: v_dual_lshlrev_b32 v65, 16, v144
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v65, 0x3fb8aa3b, v65 :: v_dual_lshlrev_b32 v74, 16, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v65, v69, v74 :: v_dual_lshlrev_b32 v74, 16, v101
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v69, v134, v64
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v64, 0xffff0000, v144
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v64, 0x3fb8aa3b, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v64, v69, v74 :: v_dual_mul_f32 v69, v134, v63
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v63, 16, v145
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v63, 0x3fb8aa3b, v63 :: v_dual_lshlrev_b32 v74, 16, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v63, v69, v74
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v69, 0xffff0000, v145
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v74, v134, v61
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v61, 0x3fb8aa3b, v69
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v69, v134, v62 :: v_dual_lshlrev_b32 v62, 16, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v62, 0x3fb8aa3b, v62 :: v_dual_lshlrev_b32 v75, 16, v96
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v61, v74, v75 :: v_dual_lshlrev_b32 v74, 16, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v62, v69, v74 :: v_dual_lshlrev_b32 v75, 16, v92
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v69, v134, v60
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v60, 0xffff0000, v140
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v74, 16, v95
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v60, 0x3fb8aa3b, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v60, v69, v74 :: v_dual_mul_f32 v69, v134, v59
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v59, 16, v141
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v59, 0x3fb8aa3b, v59 :: v_dual_lshlrev_b32 v74, 16, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v59, v69, v74
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v74, v134, v58 :: v_dual_and_b32 v69, 0xffff0000, v141
	v_mul_f32_e32 v58, 0x3fb8aa3b, v69
	v_mul_f32_e32 v69, v134, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v58, v74, v75 :: v_dual_lshlrev_b32 v57, 16, v142
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v74, 16, v93
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v57, 0x3fb8aa3b, v57
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v75, 16, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v57, v69, v74
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v69, v134, v56 :: v_dual_and_b32 v56, 0xffff0000, v142
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v74, 16, v91
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v56, 0x3fb8aa3b, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v56, v69, v74 :: v_dual_mul_f32 v69, v134, v55
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v55, 16, v143
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v55, 0x3fb8aa3b, v55 :: v_dual_lshlrev_b32 v74, 16, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v55, v69, v74
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v74, v134, v53 :: v_dual_and_b32 v69, 0xffff0000, v143
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v53, 0x3fb8aa3b, v69
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v69, v134, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v53, v74, v75 :: v_dual_lshlrev_b32 v54, 16, v146
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v74, 16, v89
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v54, 0x3fb8aa3b, v54 :: v_dual_lshlrev_b32 v75, 16, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v54, v69, v74 :: v_dual_mul_f32 v69, v134, v52
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v52, 0xffff0000, v146
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v74, 16, v87
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v52, 0x3fb8aa3b, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v52, v69, v74 :: v_dual_mul_f32 v69, v134, v51
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v51, 16, v147
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v51, 0x3fb8aa3b, v51 :: v_dual_lshlrev_b32 v74, 16, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v51, v69, v74
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v74, v134, v50 :: v_dual_and_b32 v69, 0xffff0000, v147
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v50, 0x3fb8aa3b, v69 :: v_dual_lshlrev_b32 v69, 16, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v50, v74, v75
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v74, 16, v85
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v69, 0x3fb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v69, v49, v74
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v49, 0xffff0000, v148
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v49, 0x3fb8aa3b, v49 :: v_dual_lshlrev_b32 v74, 16, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v49, v48, v74 :: v_dual_lshlrev_b32 v74, 16, v149
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v48, 16, v82
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v74, 0x3fb8aa3b, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v74, v47, v48 :: v_dual_and_b32 v47, 0xffff0000, v149
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v75, 0x3fb8aa3b, v47 :: v_dual_lshlrev_b32 v48, 16, v80
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v47, 16, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v75, v45, v48 :: v_dual_lshlrev_b32 v48, 16, v99
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v45, v134, v46
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v46, 16, v150
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v46, 0x3fb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v46, v45, v47 :: v_dual_mul_f32 v45, v134, v44
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v44, 0xffff0000, v150
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v44, 0x3fb8aa3b, v44 :: v_dual_lshlrev_b32 v47, 16, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v44, v45, v47
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v45, v134, v43
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v43, 16, v151
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v47, 16, v104
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v43, 0x3fb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v43, v45, v47
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v45, 0xffff0000, v151
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v47, v134, v42 :: v_dual_mul_f32 v42, 0x3fb8aa3b, v45
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v45, 16, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v42, v47, v48 :: v_dual_lshlrev_b32 v47, 16, v33
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v33, 0xffff0000, v33
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v76, 0x3fb8aa3b, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v76, v40, v45
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v40, 16, v70
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v70, 0x3fb8aa3b, v33 :: v_dual_mul_f32 v33, v134, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v38, 16, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v70, v39, v40 :: v_dual_lshlrev_b32 v39, 16, v34
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v41, 0x3fb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v41, v33, v38
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v33, 0xffff0000, v34
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v34, v134, v37 :: v_dual_lshlrev_b32 v37, 16, v71
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v38, 0x3fb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v38, v34, v37
	scratch_load_b64 v[33:34], off, off offset:4 ; 8-byte Folded Reload
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[33:34], null, s103, s96, v[33:34]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v71, 1, v33
	v_add_lshl_u32 v72, v33, s96, 1
	v_add_lshl_u32 v73, v33, s98, 1
	v_add_lshl_u32 v77, v33, s99, 1
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v33, 0, v177
	ds_load_b32 v34, v33
	scratch_load_b32 v33, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v36, 0x1000000, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_ne_u32_e64 s65, 0, v36
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, 0xff800000, v66, s65
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_load_b32 v78, v33
	scratch_load_b32 v33, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v40, 0x1000000, v78
	v_and_b32_e32 v37, 1, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_ne_u32_e64 s63, 0, v40
	v_cmp_eq_u32_e64 s64, 1, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, 0xff800000, v61, s63
	v_cndmask_b32_e64 v37, 0xff800000, v65, s64
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_load_b32 v79, v33
	scratch_load_b32 v33, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v48, 0x1000000, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_ne_u32_e64 s55, 0, v48
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v48, 0xff800000, v58, s55
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v45, 1, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u32_e64 s56, 1, v45
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v45, 0xff800000, v62, s56
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_load_b32 v80, v33
	scratch_load_b32 v33, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v58, 1, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u32_e64 s53, 1, v58
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v105, 0xff800000, v57, s53
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_load_b32 v81, v33
	scratch_load_b32 v33, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v82, v33
	scratch_load_b32 v33, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v83, v33
	scratch_load_b32 v33, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v84, v33
	v_and_b32_e32 v33, 0x10000, v34
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s61, 0, v33
	v_and_b32_e32 v33, 0x10000, v78
	v_cmp_ne_u32_e64 s3, 0, v33
	v_and_b32_e32 v33, 0x10000, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v39, 0xff800000, v63, s3
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s48, 0, v33
	v_and_b32_e32 v33, 0x10000, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v47, 0xff800000, v59, s48
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s44, 0, v33
	v_and_b32_e32 v33, 0x10000, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v107, 0xff800000, v55, s44
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s41, 0, v33
	v_and_b32_e32 v33, 0x10000, v82
	v_and_b32_e32 v55, 0x1000000, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v99, 0xff800000, v51, s41
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v51, 0x1000000, v81
	v_cmp_ne_u32_e64 s38, 0, v33
	v_and_b32_e32 v33, 0x10000, v83
	v_cmp_ne_u32_e64 s52, 0, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_ne_u32_e64 s49, 0, v51
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v103, 0xff800000, v74, s38
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s37, 0, v33
	v_and_b32_e32 v33, 0x10000, v84
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v108, 0xff800000, v53, s52
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v53, 1, v81
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v51, 0x80000000, v77, s0
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v100, 0xff800000, v50, s49
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v50, 1, v82
	v_cmp_ne_u32_e64 s36, 0, v33
	v_and_b32_e32 v33, 1, v34
	v_lshrrev_b16 v34.l, 8, v34.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v91, 0xff800000, v43, s37
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s50, 1, v53
	v_cmp_eq_u32_e64 s47, 1, v50
	v_and_b32_e32 v50, 0x1000000, v82
	v_and_b16 v34.l, 1, v34.l
	v_cmp_eq_u32_e64 s62, 1, v33
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v97, 0xff800000, v54, s50
	v_cndmask_b32_e64 v101, 0xff800000, v69, s47
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s45, 0, v50
	v_and_b32_e32 v50, 1, v83
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v95, 0xff800000, v41, s36
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v41, 0x1000000, v84
	v_cmp_eq_u16_e64 s66, 1, v34.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v33, 0xff800000, v35, s62
	v_cndmask_b32_e64 v35, 0xff800000, v67, s61
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s43, 1, v50
	v_cmp_ne_u32_e64 s39, 0, v41
	v_lshrrev_b16 v41.l, 8, v79.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v34, 0xff800000, v68, s66
	v_cndmask_b32_e64 v104, 0xff800000, v75, s45
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v50, 0x80000000, v73, s0
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v96, 0xff800000, v38, s39
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v41.l, 1, v41.l
	v_lshrrev_b16 v38.l, 8, v78.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v89, 0xff800000, v46, s43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s59, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v80.l
	v_and_b16 v38.l, 1, v38.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v46, 0xff800000, v60, s59
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v41.l, 1, v41.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s67, 1, v38.l
	v_cmp_eq_u16_e64 s58, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v81.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, 0xff800000, v64, s67
	v_cndmask_b32_e64 v106, 0xff800000, v56, s58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v41.l, 1, v41.l
	v_and_b32_e32 v43, 0x1000000, v83
	v_cmp_eq_u16_e64 s57, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v82.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_ne_u32_e64 s42, 0, v43
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v98, 0xff800000, v52, s57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v41.l, 1, v41.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v92, 0xff800000, v42, s42
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v42, 1, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s54, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v83.l
	v_cmp_eq_u32_e64 s40, 1, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v102, 0xff800000, v49, s54
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v41.l, 1, v41.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v49, 0x80000000, v72, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v93, 0xff800000, v76, s40
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s51, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v84.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v90, 0xff800000, v44, s51
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v41.l, 1, v41.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s46, 1, v41.l
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v41, 0, v181
	ds_store_b128 v41, v[33:36]
	ds_store_b128 v41, v[97:100] offset:2048
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v41, 0x80000000, v71, s0
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v94, 0xff800000, v70, s46
	ds_store_b128 v238, v[37:40]
	ds_store_b128 v238, v[101:104] offset:2048
	ds_store_b128 v239, v[45:48]
	ds_store_b128 v239, v[89:92] offset:2048
	ds_store_b128 v240, v[105:108]
	ds_store_b128 v240, v[93:96] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[85:88], v237
	ds_load_b128 v[77:80], v237 offset:256
	ds_load_b128 v[81:84], v237 offset:1024
	ds_load_b128 v[73:76], v237 offset:1280
	ds_load_b128 v[69:72], v237 offset:512
	ds_load_b128 v[61:64], v237 offset:768
	ds_load_b128 v[65:68], v237 offset:1536
	ds_load_b128 v[57:60], v237 offset:1792
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[41:44], v41, s[92:95], 0 offen
	buffer_load_b128 v[144:147], v50, s[92:95], 0 offen
	buffer_load_b128 v[50:53], v51, s[92:95], 0 offen
	buffer_load_b128 v[140:143], v49, s[92:95], 0 offen
	v_add_nc_u32_e32 v49, 0, v182
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v54.l, v41.l
	v_mov_b16_e32 v41.l, v43.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v55.l, v144.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v55.h, v50.l
	v_mov_b16_e64 v50.l, v144.h
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v54.h, v140.l
	v_mov_b16_e64 v140.l, v41.h
	v_mov_b16_e64 v41.h, v142.l
	v_mov_b16_e64 v142.l, v43.h
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v43, v108, v97, v98
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v49, v[54:55]
	v_mov_b16_e64 v54.h, v141.l
	v_mov_b32_e32 v49, v140
	v_mov_b16_e64 v141.l, v42.h
	v_mov_b16_e64 v55.l, v145.l
	v_mov_b16_e32 v55.h, v51.l
	v_mov_b16_e32 v54.l, v42.l
	v_mov_b16_e64 v51.l, v145.h
	v_mov_b16_e64 v42.l, v146.l
	v_mov_b16_e32 v42.h, v52.l
	v_mov_b16_e64 v52.l, v146.h
	ds_store_b64 v241, v[49:50]
	ds_store_b64 v242, v[54:55]
	v_mov_b32_e32 v50, v141
	ds_store_b64 v243, v[50:51]
	ds_store_b64 v244, v[41:42]
	v_mov_b16_e32 v42.h, v53.l
	v_mov_b16_e64 v53.l, v147.h
	v_mov_b32_e32 v51, v142
	v_mov_b16_e64 v42.l, v147.l
	v_mov_b16_e32 v41.l, v44.l
	v_mov_b16_e64 v41.h, v143.l
	v_mov_b16_e64 v143.l, v44.h
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v44, v89, v90, v91
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v144, v53
	ds_store_b64 v245, v[51:52]
	ds_store_b64 v246, v[41:42]
	ds_store_b64 v247, v[143:144]
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v41, v46, v47, v48
	v_max3_f32 v42, v105, v106, v107
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v41, v41, v42, v43
	v_max3_f32 v42, v99, v100, v101
	v_max3_f32 v43, v102, v103, v104
	v_max3_f32 v42, v42, v43, v44
	v_max_f32_e32 v43, v33, v34
	v_max3_f32 v44, v36, v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v43, v43, v35, v44
	v_max3_f32 v44, v39, v40, v45
	v_max3_f32 v41, v43, v44, v41
	v_dual_max_f32 v43, v92, v93 :: v_dual_max_f32 v44, v95, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v43, v43, v94, v44
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v44, off, off offset:72 ; 4-byte Folded Reload
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v41, v41, v42, v43
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v42, v41, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp11:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v41, v138, v41, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v42.h, v137.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v34, v41
	v_sub_f32_e32 v36, v36, v41
	v_sub_f32_e32 v38, v38, v41
	v_sub_f32_e32 v40, v40, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v40, v40
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s66
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v36, 0, v36, s65
	v_cndmask_b32_e64 v38, 0, v38, s67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v40, 0, v40, s63
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v42.l, v34.h
	v_cmp_o_f32_e64 s66, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v34, v34, v42, 0x7fff
	v_mov_b16_e64 v42.h, v137.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v33, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s66
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s62
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v42.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s62, v33, v33
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v33, v33, v42, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s62
	v_cmp_o_f32_e64 s62, v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v42, v34, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v42, v34, v249
	v_perm_b32 v34, v42, v34, v250
	v_mov_b16_e64 v42.h, v137.l
	v_mov_b16_e32 v42.l, v36.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v35, v35, v41 :: v_dual_and_b32 v42, 1, v42
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v36, v36, v42, 0x7fff
	v_mov_b16_e64 v42.h, v137.l
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s61
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.l, v35.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v37, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s61, v35, v35
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v35, v35, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s61
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s64
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s61, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v42, v36, s100, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s62, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v42, v36, v249
	v_perm_b32 v36, v42, v36, v250
	v_mov_b16_e64 v42.h, v137.l
	v_mov_b16_e32 v42.l, v38.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v39, v39, v41 :: v_dual_and_b32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v38, v38, v42, 0x7fff
	v_mov_b16_e64 v42.h, v137.l
	v_mov_b16_e32 v42.l, v37.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s61
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v42, 1, v42
	v_cmp_o_f32_e64 s61, v40, v40
	v_cmp_o_f32_e64 s3, v39, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v37, v42, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v42, v38, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v42, v38, v249
	v_perm_b32 v38, v42, v38, v250
	v_mov_b16_e64 v42.h, v137.l
	v_mov_b16_e32 v42.l, v40.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v40, v40, v42, 0x7fff
	v_mov_b16_e64 v42.h, v137.l
	v_mov_b16_e32 v42.l, v39.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s61
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v39, v42, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v138
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v42, v40, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v42, v40, v249
	v_perm_b32 v40, v42, v40, v250
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v42, v138, v41
	v_mov_b32_e32 v138, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v42, v42
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v43, 0, v42, s3
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_nc_u32_e32 v42, 0, v179
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v43
	v_mul_f32_e32 v10, v10, v43
	v_mul_f32_e32 v11, v11, v43
	v_mul_f32_e32 v12, v12, v43
	v_mul_f32_e32 v13, v13, v43
	v_mul_f32_e32 v14, v14, v43
	v_mul_f32_e32 v15, v15, v43
	v_mul_f32_e32 v16, v16, v43
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[144:147], v42
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v43
	v_mul_f32_e32 v26, v26, v43
	v_mul_f32_e32 v27, v27, v43
	v_mul_f32_e32 v28, v28, v43
	v_mul_f32_e32 v29, v29, v43
	v_mul_f32_e32 v30, v30, v43
	v_mul_f32_e32 v31, v31, v43
	v_mul_f32_e32 v32, v32, v43
	v_mul_f32_e32 v17, v17, v43
	v_mul_f32_e32 v18, v18, v43
	v_mul_f32_e32 v19, v19, v43
	v_mul_f32_e32 v20, v20, v43
	v_mul_f32_e32 v21, v21, v43
	v_mul_f32_e32 v22, v22, v43
	v_mul_f32_e32 v23, v23, v43
	v_mul_f32_e32 v24, v24, v43
	v_mul_f32_e32 v1, v1, v43
	v_mul_f32_e32 v2, v2, v43
	v_mul_f32_e32 v3, v3, v43
	v_mul_f32_e32 v4, v4, v43
	v_mul_f32_e32 v5, v5, v43
	v_mul_f32_e32 v6, v6, v43
	v_mul_f32_e32 v7, v7, v43
	v_mul_f32_e32 v8, v8, v43
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v43, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[148:151], v44
	scratch_load_b32 v44, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[140:143], v44
	ds_load_b128 v[49:52], v42 offset:2048
	scratch_load_b32 v44, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[144:151], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[144:147], v44
	scratch_load_b32 v44, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[148:151], v44
	scratch_load_b32 v44, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[144:151], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[53:56], v44
	scratch_load_b32 v44, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[152:155], v44
	scratch_load_b32 v44, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[144:147], v44
	scratch_load_b32 v44, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[148:151], v44
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[144:151], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[144:147], v43
	scratch_load_b32 v43, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[148:151], v43
	scratch_load_b32 v43, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[144:151], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v46, v41
	v_sub_f32_e32 v33, v45, v41
	v_sub_f32_e32 v36, v48, v41
	v_sub_f32_e32 v35, v47, v41
	v_sub_f32_e32 v38, v106, v41
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v38, v38
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v105, v41
	v_sub_f32_e32 v40, v108, v41
	v_sub_f32_e32 v39, v107, v41
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	scratch_load_b32 v47, off, off offset:136 ; 4-byte Folded Reload
	v_mov_b32_e32 v106, v206
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s59
	v_cndmask_b32_e64 v33, 0, v33, s56
	v_cndmask_b32_e64 v36, 0, v36, s55
	v_cndmask_b32_e64 v35, 0, v35, s48
	v_cndmask_b32_e64 v38, 0, v38, s58
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v34, v34
	v_cmp_o_f32_e64 s56, v33, v33
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s48, v35, v35
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v39, v39
	v_mov_b32_e32 v107, v207
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s53
	v_cndmask_b32_e64 v40, 0, v40, s52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v39, 0, v39, s44
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s44, v39, v39
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	ds_load_b128 v[202:205], v43
	scratch_load_b32 v43, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[214:217], v43
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v43.h, v137.l
	v_mov_b16_e32 v43.l, v34.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v34, v34, v43, 0x7fff
	v_mov_b16_e64 v43.h, v137.l
	v_mov_b16_e32 v43.l, v33.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	v_cmp_o_f32_e64 s3, v36, v36
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v33, v33, v43, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v43, v34, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v43, v34, v249
	v_perm_b32 v34, v43, v34, v250
	v_mov_b16_e64 v43.h, v137.l
	v_mov_b16_e32 v43.l, v36.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v36, v36, v43, 0x7fff
	v_mov_b16_e64 v43.h, v137.l
	v_mov_b16_e32 v43.l, v35.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	v_cmp_o_f32_e64 s3, v38, v38
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v35, v43, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s48
	v_cmp_o_f32_e64 s48, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v43, v36, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v43, v36, v249
	v_perm_b32 v36, v43, v36, v250
	v_mov_b16_e64 v43.h, v137.l
	v_mov_b16_e32 v43.l, v38.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v38, v38, v43, 0x7fff
	v_mov_b16_e64 v43.h, v137.l
	v_mov_b16_e32 v43.l, v37.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	v_cmp_o_f32_e64 s3, v40, v40
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v37, v43, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v43, v38, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v43, v38, v249
	v_perm_b32 v38, v43, v38, v250
	v_mov_b16_e64 v43.h, v137.l
	v_mov_b16_e32 v43.l, v40.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v40, v40, v43, 0x7fff
	v_mov_b16_e64 v43.h, v137.l
	v_mov_b16_e32 v43.l, v39.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v39, v43, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v43, v40, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v43, v40, v249
	v_perm_b32 v40, v43, v40, v250
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v43, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[49:56], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v51, off, off offset:140 ; 4-byte Folded Reload
	ds_load_b128 v[47:50], v47
	s_waitcnt vmcnt(0)
	ds_load_b128 v[51:54], v51
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[47:54], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v47, off, off offset:168
	scratch_load_b32 v51, off, off offset:92
	ds_load_b128 v[144:147], v43
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v53, v72, v72
	v_max_f32_e32 v52, v68, v68
	v_max3_f32 v54, v66, v71, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v52, v53, v52
	v_max3_f32 v53, v69, v65, v70
	v_max3_f32 v52, v53, v54, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v53, v52
	v_mov_b32_dpp v53, v53 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v53, v53, v53
	v_max_f32_e32 v52, v52, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v53, v52
	v_mov_b32_dpp v53, v53 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v53, v53, v53
	v_max_f32_e32 v52, v52, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v53, v52
	v_mov_b32_dpp v53, v53 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v53, v53, v53
	v_dual_max_f32 v52, v52, v53 :: v_dual_max_f32 v53, v163, v163
.Ltmp19:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[148:151], v51
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[140:147], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[206:209], v47
	ds_load_b128 v[140:143], v234
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v47.h, v137.l
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:84
	scratch_load_b32 v51, off, off offset:148
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[202:209], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v98, v41
	v_sub_f32_e32 v33, v97, v41
	v_sub_f32_e32 v36, v100, v41
	v_sub_f32_e32 v35, v99, v41
	v_sub_f32_e32 v38, v102, v41
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v38, v38
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v101, v41
	v_sub_f32_e32 v40, v104, v41
	v_sub_f32_e32 v39, v103, v41
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[144:147], v235
	ds_load_b128 v[101:104], v236
	v_mov_b32_e32 v202, v210
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s57
	v_cndmask_b32_e64 v33, 0, v33, s50
	v_cndmask_b32_e64 v36, 0, v36, s49
	v_cndmask_b32_e64 v35, 0, v35, s41
	v_cndmask_b32_e64 v38, 0, v38, s54
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v47.l, v34.h
	v_cmp_o_f32_e64 s3, v34, v34
	v_cmp_o_f32_e64 s44, v33, v33
	v_cmp_o_f32_e64 s41, v35, v35
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v47, 1, v47
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v39, v39
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[210:213], v51
	ds_load_b128 v[97:100], v42 offset:6144
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v34, v34, v47, 0x7fff
	v_mov_b16_e64 v47.h, v137.l
	v_mov_b16_e32 v47.l, v33.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s47
	v_cndmask_b32_e64 v40, 0, v40, s45
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	v_cmp_o_f32_e64 s3, v36, v36
	v_and_b32_e32 v47, 1, v47
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v33, v33, v47, 0x7fff
	v_cmp_o_f32_e64 s38, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s44
	v_permlanex16_b32 v47, v34, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v47, v34, v249
	v_perm_b32 v34, v47, v34, v250
	v_mov_b16_e64 v47.h, v137.l
	v_mov_b16_e32 v47.l, v36.h
	v_and_b32_e32 v47, 1, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v36, v36, v47, 0x7fff
	v_mov_b16_e64 v47.h, v137.l
	v_mov_b16_e32 v47.l, v35.h
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	v_cmp_o_f32_e64 s3, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v35, v35, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s41
	v_cmp_o_f32_e64 s41, v37, v37
	v_permlanex16_b32 v47, v36, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v47, v36, v249
	v_perm_b32 v36, v47, v36, v250
	v_mov_b16_e64 v47.h, v137.l
	v_mov_b16_e32 v47.l, v38.h
	v_and_b32_e32 v47, 1, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v38, v47, 0x7fff
	v_mov_b16_e64 v47.h, v137.l
	v_mov_b16_e32 v47.l, v37.h
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	v_cmp_o_f32_e64 s3, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v37, v37, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s41
	v_permlanex16_b32 v47, v38, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v47, v38, v249
	v_perm_b32 v38, v47, v38, v250
	v_mov_b16_e64 v47.h, v137.l
	v_mov_b16_e32 v47.l, v40.h
	v_and_b32_e32 v47, 1, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v47, 0x7fff
	v_mov_b16_e64 v47.h, v137.l
	v_mov_b16_e32 v47.l, v39.h
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v39, v39, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s38
	v_permlanex16_b32 v47, v40, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v39, v47, v40, v249
	v_perm_b32 v40, v47, v40, v250
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v47, off, off offset:88 ; 4-byte Folded Reload
	ds_load_b128 v[43:46], v43
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[140:147], v[33:40], v[1:8]
	v_dual_mov_b32 v142, v109 :: v_dual_mov_b32 v109, v123
	v_mov_b32_e32 v140, v200
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[47:50], v47
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[43:50], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:112
	scratch_load_b32 v47, off, off offset:116
	s_waitcnt vmcnt(1)
	ds_load_b128 v[43:46], v43
	s_waitcnt vmcnt(0)
	ds_load_b128 v[47:50], v47
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[43:50], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v47, off, off offset:144 ; 4-byte Folded Reload
	ds_load_b128 v[43:46], v42 offset:4096
	s_waitcnt vmcnt(0)
	ds_load_b128 v[47:50], v47
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v42.h, v137.l
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[43:50], v[33:40], v[17:24]
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v34, v90, v41
	v_sub_f32_e32 v33, v89, v41
	v_sub_f32_e32 v36, v92, v41
	v_sub_f32_e32 v35, v91, v41
	v_sub_f32_e32 v38, v94, v41
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v38, v38
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v93, v41
	v_sub_f32_e32 v40, v96, v41
	v_sub_f32_e32 v39, v95, v41
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s51
	v_cndmask_b32_e64 v33, 0, v33, s43
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v36, 0, v36, s42
	v_cndmask_b32_e64 v35, 0, v35, s37
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v38, 0, v38, s46
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v42.l, v34.h
	v_cmp_o_f32_e64 s3, v34, v34
	v_cmp_o_f32_e64 s38, v33, v33
	v_cmp_o_f32_e64 s37, v35, v35
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v42, 1, v42
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v34, v34, v42, 0x7fff
	v_mov_b16_e64 v42.h, v137.l
	v_mov_b16_e32 v42.l, v33.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	v_cmp_o_f32_e64 s3, v36, v36
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s39
	v_cndmask_b32_e64 v39, 0, v39, s36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v33, v33, v42, 0x7fff
	v_cmp_o_f32_e64 s36, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s38
	v_permlanex16_b32 v42, v34, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v42, v34, v249
	v_perm_b32 v34, v42, v34, v250
	v_mov_b16_e64 v42.h, v137.l
	v_mov_b16_e32 v42.l, v36.h
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v36, v36, v42, 0x7fff
	v_mov_b16_e64 v42.h, v137.l
	v_mov_b16_e32 v42.l, v35.h
	v_mov_b32_e32 v203, v132
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	v_cmp_o_f32_e64 s3, v38, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v35, v35, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s37
	v_cmp_o_f32_e64 s37, v37, v37
	v_permlanex16_b32 v42, v36, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v42, v36, v249
	v_perm_b32 v36, v42, v36, v250
	v_mov_b16_e64 v42.h, v137.l
	v_mov_b16_e32 v42.l, v38.h
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v38, v42, 0x7fff
	v_mov_b16_e64 v42.h, v137.l
	v_mov_b16_e32 v42.l, v37.h
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	v_cmp_o_f32_e64 s3, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v37, v37, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s37
	v_permlanex16_b32 v42, v38, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v42, v38, v249
	v_perm_b32 v38, v42, v38, v250
	v_mov_b16_e64 v42.h, v137.l
	v_mov_b16_e32 v42.l, v40.h
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v42, 0x7fff
	v_mov_b16_e64 v42.h, v137.l
	v_mov_b16_e32 v42.l, v39.h
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v39, v39, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s36
	v_permlanex16_b32 v42, v40, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_perm_b32 v39, v42, v40, v249
	v_perm_b32 v40, v42, v40, v250
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[148:155], v[33:40], v[9:16]
	v_mov_b32_e32 v148, v194
	v_mov_b32_e32 v194, v196
	v_mov_b32_e32 v196, v0
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	scratch_load_b32 v0, off, off offset:120 ; 4-byte Folded Reload
	v_mov_b32_e32 v149, v195
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[210:217], v[33:40], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[97:104], v[33:40], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[42:45], v0
	scratch_load_b32 v0, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[46:49], v0
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[42:49], v[33:40], v[25:32]
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v76, v76
	v_max_f32_e32 v44, v80, v80
	v_max3_f32 v45, v74, v79, v75
	v_max_f32_e32 v34, v88, v88
	v_max3_f32 v35, v82, v87, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v43, v44, v43
	v_max3_f32 v44, v77, v73, v78
	v_max3_f32 v43, v44, v45, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v44, v43
	v_mov_b32_dpp v44, v44 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v123, v183 :: v_dual_max_f32 v44, v44, v44
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v44, v43
	v_mov_b32_dpp v44, v44 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v44, v44, v44
	v_max_f32_e32 v43, v43, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v195, v197 :: v_dual_mov_b32 v44, v43
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v44, v44 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v44, v44, v44
	v_dual_max_f32 v43, v43, v44 :: v_dual_max_f32 v44, v162, v162
	v_dual_mov_b32 v197, v198 :: v_dual_mov_b32 v198, v199
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v162, v44, v43
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v33, v84, v84 :: v_dual_sub_f32 v44, v77, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_max_f32 v33, v34, v33 :: v_dual_sub_f32 v46, v79, v162
	v_max3_f32 v34, v85, v81, v86
.Ltmp29:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v48, v73, v162
	v_sub_f32_e32 v50, v75, v162
	v_sub_f32_e32 v45, v78, v162
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v34, v35, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v34, v33
	v_mov_b32_dpp v34, v34 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v34, v33
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v34, v33
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v33, v33, v34
.Ltmp37:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v34, v161, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v161, v34, v33
	v_dual_mov_b32 v143, v165 :: v_dual_sub_f32 v42, v84, v161
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v85, v161
	v_sub_f32_e32 v38, v81, v161
	v_sub_f32_e32 v35, v86, v161
	v_sub_f32_e32 v36, v87, v161
	v_sub_f32_e32 v40, v83, v161
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s18
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v38, 0, v38, s35
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max_f32_e32 v163, v53, v52
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v36, 0, v36, s4
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp39:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v39, v82, v161 :: v_dual_sub_f32 v56, v72, v163
	v_dual_sub_f32 v37, v88, v161 :: v_dual_sub_f32 v54, v70, v163
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v64, v64
.Ltmp41:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v39
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v55, v71, v163
.Ltmp42:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v71, v58, v63, v59
.Ltmp43:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v66, v66, v163
	v_sub_f32_e32 v65, v65, v163
	v_sub_f32_e32 v68, v68, v163
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s34
	v_cndmask_b32_e64 v37, 0, v37, s1
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v168
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v38
.Ltmp45:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v40
	v_exp_f32_e32 v40, v68
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
.Ltmp47:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s26
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v53, v69, v163
.Ltmp48:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v60, v60
.Ltmp49:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v36, v38
.Ltmp51:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v42
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v70, v69
	v_max3_f32 v70, v61, v57, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_max3_f32 v69, v70, v71, v69
.Ltmp53:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v70, v69
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp56:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v70 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v35, v36, v37 :: v_dual_mov_b32 v36, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp61:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s24
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v70
.Ltmp63:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v80, v162
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v35, v34 :: v_dual_mov_b32 v70, v69
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v70
.Ltmp70:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v74, v162
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v70, v69
.Ltmp73:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v70 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp78:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s30
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v69, v69, v70 :: v_dual_max_f32 v70, v164, v164
.Ltmp81:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v51, v76, v162 :: v_dual_add_f32 v110, v34, v35
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v44
	v_exp_f32_e32 v35, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max_f32_e32 v164, v70, v69
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v61, v61, v164
	v_sub_f32_e32 v60, v60, v164
	v_sub_f32_e32 v62, v62, v164
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s17
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v35, 0, v35, s33
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v63, v63, v164
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s23
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v60
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v58, v58, v164
.Ltmp82:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp83:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v45
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v64, v64, v164
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s19
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v67, v163
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp84:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v37
.Ltmp85:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v46
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v59, v59, v164 :: v_dual_add_f32 v34, v34, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s10
.Ltmp86:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp87:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s8
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v57, v57, v164 :: v_dual_add_f32 v38, v38, v39
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp88:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v37, v38
.Ltmp89:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v66
	v_dual_mov_b32 v37, v112 :: v_dual_add_f32 v34, v34, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s22
.Ltmp90:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp91:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s29
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v112, v34, v35
.Ltmp98:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v53
	v_exp_f32_e32 v35, v65
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v35, 0, v35, s31
.Ltmp99:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp100:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s13
.Ltmp101:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v38
.Ltmp102:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s9
.Ltmp103:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v38, v39
.Ltmp104:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s6
.Ltmp105:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v39, v40
.Ltmp106:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s21
.Ltmp107:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	v_dual_add_f32 v35, v38, v39 :: v_dual_mov_b32 v38, v111
.Ltmp108:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp111:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s27
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v111, v34, v35
.Ltmp118:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v61
	v_exp_f32_e32 v35, v57
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v35, 0, v35, s28
.Ltmp119:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp120:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s11
.Ltmp121:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v39
.Ltmp122:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp124:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v39, v40
.Ltmp126:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v64
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp127:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v40, v42
	v_add_f32_e32 v35, v39, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v39, v113 :: v_dual_add_f32 v34, v34, v35
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v113, v34, v35 :: v_dual_max_f32 v34, v168, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp134:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v33, v34, v33
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v34, v168, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v34, v34
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v34, 0, v34, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v167
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v110, v36, v34
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v34, v167, v167
	v_max_f32_e32 v34, v34, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v35, v167, v34
	v_mov_b32_e32 v167, v34
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v35, 0, v35, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v136
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v112, v37, v35 :: v_dual_max_f32 v35, v136, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v168, v33 :: v_dual_max_f32 v35, v35, v52
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v36, v136, v35
	v_mov_b32_e32 v136, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v36, v36
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v36, 0, v36, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v111, v38, v36 :: v_dual_max_f32 v36, v135, v135
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v36, v36, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v37, v135, v36
	v_mov_b32_e32 v135, v36
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v37, 0, v37, s1
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v113, v39, v37
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v33, off, off offset:184
	scratch_load_b32 v44, off, off offset:188
	scratch_load_b32 v63, off, off offset:172
	scratch_load_b32 v0, off, off offset:176
	scratch_load_b32 v73, off, off offset:180
.LBB0_7:                                ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v0, 4, v0
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v34, 0x80, v44
	v_add_nc_u32_e32 v33, 0, v33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v35, 0, v73
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v0, 4, v0
	s_barrier
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s77, s77, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	ds_store_2addr_b64 v35, v[110:111], v[112:113] offset1:16
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v33, v34, v0
	s_barrier
	s_mov_b32 s79, 0x31027000
	s_mov_b32 s78, 0x7ffffffe
	ds_load_b32 v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v9
	v_div_scale_f32 v35, null, v0, v0, v10
	v_div_scale_f32 v37, null, v0, v0, v11
	v_div_scale_f32 v39, null, v0, v0, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v33
	v_rcp_f32_e32 v46, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v37
	v_div_scale_f32 v41, null, v0, v0, v13
	v_rcp_f32_e32 v48, v39
	v_div_scale_f32 v43, null, v0, v0, v14
	v_rcp_f32_e32 v49, v41
	v_div_scale_f32 v34, vcc_lo, v9, v0, v9
	v_fma_f32 v54, -v33, v45, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v50, v43
	v_fma_f32 v55, -v35, v46, 1.0
	v_fma_f32 v56, -v37, v47, 1.0
	v_fma_f32 v57, -v39, v48, 1.0
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v36, s0, v10, v0, v10
	v_fmac_f32_e32 v46, v55, v46
	v_div_scale_f32 v38, s1, v11, v0, v11
	v_fmac_f32_e32 v47, v56, v47
	v_div_scale_f32 v40, s3, v12, v0, v12
	v_fma_f32 v58, -v41, v49, 1.0
	v_fmac_f32_e32 v48, v57, v48
	v_dual_mul_f32 v54, v34, v45 :: v_dual_mul_f32 v55, v36, v46
	v_fma_f32 v59, -v43, v50, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v56, v38, v47 :: v_dual_mul_f32 v57, v40, v48
	v_fmac_f32_e32 v49, v58, v49
	v_fma_f32 v58, -v33, v54, v34
	v_div_scale_f32 v42, s4, v13, v0, v13
	v_fmac_f32_e32 v50, v59, v50
	v_fma_f32 v59, -v35, v55, v36
	v_fma_f32 v60, -v37, v56, v38
	v_fma_f32 v61, -v39, v57, v40
	v_fmac_f32_e32 v54, v58, v45
	v_div_scale_f32 v44, null, v0, v0, v15
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
	v_div_scale_f32 v51, s5, v14, v0, v14
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v9, v33, v0, v9
	v_div_fmas_f32 v35, v35, v47, v56
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v52, null, v0, v0, v16
	v_div_fmas_f32 v33, v36, v48, v57
	v_fma_f32 v36, -v44, v53, 1.0
	v_div_fixup_f32 v10, v34, v0, v10
	v_mul_f32_e32 v34, v51, v50
	v_rcp_f32_e32 v37, v52
	v_fma_f32 v58, -v41, v62, v42
	v_fmac_f32_e32 v53, v36, v53
	v_div_scale_f32 v36, null, v0, v0, v25
	v_div_fixup_f32 v12, v33, v0, v12
	v_fma_f32 v33, -v43, v34, v51
	v_div_fixup_f32 v11, v35, v0, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v40, v36
	v_div_scale_f32 v35, s1, v15, v0, v15
	v_fma_f32 v38, -v52, v37, 1.0
	v_fmac_f32_e32 v34, v33, v50
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v33, v35, v53
	v_div_scale_f32 v46, null, v0, v0, v26
	v_fmac_f32_e32 v37, v38, v37
	v_fma_f32 v45, -v36, v40, 1.0
	v_div_scale_f32 v38, s3, v16, v0, v16
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
	v_div_fixup_f32 v13, v39, v0, v13
	v_div_fixup_f32 v14, v34, v0, v14
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
	v_div_fixup_f32 v15, v33, v0, v15
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
	v_div_fixup_f32 v16, v34, v0, v16
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
	v_div_scale_f32 v45, null, v0, v0, v18
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
	v_div_scale_f32 v38, null, v0, v0, v17
	v_fmac_f32_e32 v37, v39, v37
	v_div_scale_f32 v39, s1, v32, v0, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v35, v48, v44
	v_rcp_f32_e32 v41, v38
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v48, null, v0, v0, v20
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
	v_div_scale_f32 v42, null, v0, v0, v19
	v_fmac_f32_e32 v41, v43, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v34, v34, v40, v36
	v_rcp_f32_e32 v43, v42
	v_div_scale_f32 v40, s3, v18, v0, v18
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v31, v34, v0, v31
	v_mul_f32_e32 v49, v40, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v43, 1.0
	v_dual_mul_f32 v44, v39, v37 :: v_dual_fmac_f32 v43, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v47, v44, v39
	v_div_scale_f32 v46, s5, v19, v0, v19
	v_fmac_f32_e32 v44, v33, v37
	v_div_scale_f32 v33, s4, v17, v0, v17
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
	v_div_scale_f32 v37, null, v0, v0, v21
	v_fma_f32 v33, -v38, v39, v33
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s1, v20, v0, v20
	v_fma_f32 v38, -v45, v49, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v41, v39
	s_mov_b32 vcc_lo, s3
	v_dual_mul_f32 v39, v36, v50 :: v_dual_fmac_f32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	v_div_fmas_f32 v35, v38, v35, v49
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v17, v33, v0, v17
	v_fma_f32 v38, -v42, v44, v46
	v_div_scale_f32 v40, null, v0, v0, v22
	v_div_fixup_f32 v18, v35, v0, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v43, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v37, v34, 1.0
	v_fma_f32 v43, -v48, v39, v36
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v19, v38, v0, v19
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v21, v0, v21
	v_fmac_f32_e32 v39, v43, v50
	v_div_scale_f32 v38, null, v0, v0, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v41, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v48, v39, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v38
	v_fma_f32 v35, -v40, v42, 1.0
	v_fma_f32 v43, -v37, v33, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v50, v39
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v42, v35, v42
	v_fmac_f32_e32 v33, v43, v34
	v_div_scale_f32 v43, null, v0, v0, v24
	v_div_fixup_f32 v20, v36, v0, v20
	v_div_scale_f32 v35, s4, v22, v0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v37, v33, v41
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v0, v0, v2
	v_div_fmas_f32 v33, v36, v34, v33
	v_div_scale_f32 v36, s1, v23, v0, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v47, v41
	v_mul_f32_e32 v39, v35, v42
	v_div_scale_f32 v34, null, v0, v0, v1
	v_div_fixup_f32 v21, v33, v0, v21
	v_fma_f32 v33, -v43, v45, 1.0
	v_fma_f32 v37, -v40, v39, v35
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v48, s4, v1, v0, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v41, v47, 1.0
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s3, v24, v0, v24
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
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
	v_div_fixup_f32 v22, v35, v0, v22
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
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
	v_div_fixup_f32 v23, v35, v0, v23
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fixup_f32 v24, v33, v0, v24
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
	v_cndmask_b32_e64 v23, 0, v23, s0
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
	v_cndmask_b32_e64 v24, 0, v24, s0
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
	v_cmp_gt_i32_e32 vcc_lo, s96, v139
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v9, s0
	v_cndmask_b32_e64 v9, 0, v10, s0
	v_cndmask_b32_e64 v10, 0, v11, s0
	v_cndmask_b32_e64 v11, 0, v12, s0
	v_cndmask_b32_e64 v12, 0, v13, s0
	v_cndmask_b32_e64 v13, 0, v14, s0
	v_cndmask_b32_e64 v14, 0, v15, s0
	v_cndmask_b32_e64 v15, 0, v16, s0
	v_cndmask_b32_e64 v16, 0, v25, s0
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
	v_cmp_gt_i32_e64 s0, s96, v226
	v_cmp_gt_i32_e64 s1, s96, v220
	v_cmp_gt_i32_e64 s3, s96, v140
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v33, v32, v139, 2
	v_add_lshl_u32 v34, v32, v107, 2
	v_add_lshl_u32 v35, v32, v106, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	s_clause 0x2
	buffer_store_b32 v8, v33, s[76:79], 0 offen
	buffer_store_b32 v9, v34, s[76:79], 0 offen
	buffer_store_b32 v10, v35, s[76:79], 0 offen
	v_add_lshl_u32 v8, v32, v231, 2
	v_add_lshl_u32 v9, v32, v230, 2
	v_add_lshl_u32 v10, v32, v229, 2
	v_add_lshl_u32 v33, v32, v228, 2
	v_add_lshl_u32 v34, v32, v227, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v33, 0x80000000, v33
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	s_clause 0x4
	buffer_store_b32 v11, v8, s[76:79], 0 offen
	buffer_store_b32 v12, v9, s[76:79], 0 offen
	buffer_store_b32 v13, v10, s[76:79], 0 offen
	buffer_store_b32 v14, v33, s[76:79], 0 offen
	buffer_store_b32 v15, v34, s[76:79], 0 offen
	v_add_lshl_u32 v8, v32, v226, 2
	v_add_lshl_u32 v9, v32, v225, 2
	v_add_lshl_u32 v10, v32, v224, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v11, v32, v203, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	v_add_lshl_u32 v12, v32, v202, 2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	s_clause 0x2
	buffer_store_b32 v16, v8, s[76:79], 0 offen
	buffer_store_b32 v25, v9, s[76:79], 0 offen
	buffer_store_b32 v26, v10, s[76:79], 0 offen
	v_add_lshl_u32 v9, v32, v223, 2
	v_add_lshl_u32 v10, v32, v222, 2
	v_cndmask_b32_e32 v8, 0x80000000, v12, vcc_lo
	buffer_store_b32 v27, v11, s[76:79], 0 offen
	v_add_lshl_u32 v11, v32, v221, 2
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	buffer_store_b32 v28, v8, s[76:79], 0 offen
	v_add_lshl_u32 v8, v32, v220, 2
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v29, v9, s[76:79], 0 offen
	v_add_lshl_u32 v9, v32, v156, 2
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_add_lshl_u32 v12, v32, v123, 2
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x2
	buffer_store_b32 v30, v10, s[76:79], 0 offen
	buffer_store_b32 v31, v11, s[76:79], 0 offen
	buffer_store_b32 v17, v8, s[76:79], 0 offen
	v_add_lshl_u32 v8, v32, v219, 2
	v_add_lshl_u32 v10, v32, v218, 2
	v_add_lshl_u32 v11, v32, v143, 2
	buffer_store_b32 v18, v9, s[76:79], 0 offen
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v10
	v_dual_cndmask_b32 v10, 0x80000000, v11 :: v_dual_cndmask_b32 v11, 0x80000000, v12
	v_add_lshl_u32 v12, v32, v197, 2
	buffer_store_b32 v19, v8, s[76:79], 0 offen
	v_add_lshl_u32 v8, v32, v109, 2
	s_clause 0x2
	buffer_store_b32 v20, v9, s[76:79], 0 offen
	buffer_store_b32 v21, v10, s[76:79], 0 offen
	buffer_store_b32 v22, v11, s[76:79], 0 offen
	v_add_lshl_u32 v9, v32, v142, 2
	v_add_lshl_u32 v10, v32, v140, 2
	v_add_lshl_u32 v11, v32, v198, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v23, v8, s[76:79], 0 offen
	buffer_store_b32 v24, v9, s[76:79], 0 offen
	buffer_store_b32 v1, v10, s[76:79], 0 offen
	buffer_store_b32 v2, v11, s[76:79], 0 offen
	buffer_store_b32 v3, v12, s[76:79], 0 offen
	v_add_lshl_u32 v1, v32, v195, 2
	v_add_lshl_u32 v2, v32, v149, 2
	v_add_lshl_u32 v3, v32, v148, 2
	v_add_lshl_u32 v8, v32, v196, 2
	v_add_lshl_u32 v9, v32, v194, 2
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
.Ltmp135:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 196
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 196
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20632
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 196
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
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
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
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
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
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
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
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 196
    .sgpr_count:     107
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 48
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
