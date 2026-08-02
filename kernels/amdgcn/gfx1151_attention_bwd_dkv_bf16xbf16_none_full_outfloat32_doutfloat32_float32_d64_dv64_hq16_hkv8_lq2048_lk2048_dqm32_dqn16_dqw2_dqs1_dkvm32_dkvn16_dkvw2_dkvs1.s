	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[54:55], s[0:1], 0x74
.Ltmp0:
	.loc	1 514 33 prologue_end           ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v9, 3, v0
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_and_b32_e32 v33, 7, v0
	s_clause 0x1
	s_load_b128 s[56:59], s[0:1], 0x0
	s_load_b64 s[8:9], s[0:1], 0x10
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s70, s2, 4
	.loc	1 533 24                        ; attention_backward.py:533:24
	s_lshl_b32 s2, s3, 11
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_lshlrev_b32_e32 v97, 3, v33
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_add_i32 s5, s2, s70
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v2, s70, v9
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	.loc	1 514 33 is_stmt 0              ; attention_backward.py:514:33
	v_and_b32_e32 v34, 56, v0
	.loc	1 534 24 is_stmt 1              ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v35, 4, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v2
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_mov_b32 s10, s62
	s_mov_b32 s11, s63
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v10, 1, v34
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v42, v0, 4, 1
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_bfe_i32 v39, v0, 5, 1
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s54, v9
	s_mul_i32 s68, s54, s5
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e64 s2, s54, v97
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_lshl_b32 s4, s54, 3
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_and_b32 s61, s59, 0xffff
	s_mov_b32 s60, s58
	v_xad_u32 v107, v35, v10, 0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_mul_lo_u32 v9, s55, v9
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add3_u32 v1, s68, v97, v1
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_mul_i32 s35, s55, s5
	s_lshl_b32 s5, s55, 3
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s9, s9, 0xffff
	v_bfe_i32 v41, v0, 3, 1
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v2, 1, v1
	v_add_lshl_u32 v1, v1, s4, 1
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s4, vcc_lo, s2
	s_clause 0x2
	s_load_b32 s69, s[0:1], 0x7c
	s_load_b64 s[52:53], s[0:1], 0x58
	s_load_b256 s[44:51], s[0:1], 0x38
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_cndmask_b32_e64 v5, 0x80000000, v1, s4
	s_mov_b32 s36, 0
	s_lshl_b32 s71, s3, 12
	s_mov_b32 s37, s36
	s_clause 0x1
	buffer_load_b128 v[1:4], v2, s[60:63], 0 offen
	buffer_load_b128 v[5:8], v5, s[60:63], 0 offen
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s58, s62
	s_mov_b32 s59, s63
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s72, s69, 0x3fb8aa3b
	s_mov_b32 s1, s36
	s_and_b32 s47, s47, 0xffff
	s_and_b32 s49, s49, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s64, s48
	s_mov_b32 s65, s49
	s_mov_b32 s60, s46
	s_mov_b32 s61, s47
	s_mov_b32 s46, s62
	s_mov_b32 s47, s63
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(1)
	ds_store_b128 v107, v[1:4]
	s_waitcnt vmcnt(0)
	ds_store_b128 v107, v[5:8] offset:1024
	v_mov_b32_e32 v1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v55, 15, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v5, v1 :: v_dual_and_b32 v36, 16, v0
	v_mov_b32_e32 v2, v1
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add3_u32 v9, s35, v97, v9
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s4, s55, v97
	v_mov_b32_e32 v6, v1
	v_dual_mov_b32 v7, v1 :: v_dual_and_b32 v38, 32, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v11, 1, v9
	v_add_lshl_u32 v9, v9, s5, 1
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, vcc_lo, s4
	v_lshlrev_b32_e32 v40, 6, v0
	v_lshlrev_b32_e32 v0, 3, v0
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v10, 0x80000000, v11 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	s_clause 0x1
	buffer_load_b128 v[21:24], v10, s[8:11], 0 offen
	buffer_load_b128 v[65:68], v9, s[8:11], 0 offen
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v8, v1
	v_dual_mov_b32 v10, v1 :: v_dual_lshlrev_b32 v43, 4, v33
	v_mov_b32_e32 v11, v1
	v_dual_mov_b32 v12, v1 :: v_dual_and_b32 v47, 0x820, v39
	v_dual_mov_b32 v16, v1 :: v_dual_and_b32 v35, 48, v35
	v_dual_mov_b32 v25, v1 :: v_dual_and_b32 v50, 48, v0
	v_mov_b32_e32 v26, v1
	v_dual_mov_b32 v27, v1 :: v_dual_and_b32 v0, 0x420, v39
	scratch_store_b32 off, v42, off offset:516 ; 4-byte Folded Spill
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v42, s70, v42
	v_lshlrev_b32_e32 v39, 5, v33
	v_mul_u32_u24_e32 v52, 0x110, v55
	v_mov_b32_e32 v9, v1
	v_dual_mov_b32 v14, v1 :: v_dual_lshlrev_b32 v49, 1, v55
	v_dual_mov_b32 v15, v1 :: v_dual_lshlrev_b32 v36, 2, v36
	v_dual_mov_b32 v28, v1 :: v_dual_lshlrev_b32 v51, 2, v34
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s0, 0x800, v42
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshl_or_b32 v42, v55, 7, v43
	v_and_or_b32 v40, 0xc00, v40, v43
	v_xor_b32_e32 v43, v43, v34
	v_xor_b32_e32 v35, v35, v34
	v_lshl_or_b32 v189, v34, 6, v39
	v_lshl_or_b32 v61, v38, 7, v52
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_lshrrev_b32_e32 v44, 1, v34
	v_lshrrev_b32_e32 v45, 2, v34
	v_mul_u32_u24_e32 v48, 0x90, v33
	v_or3_b32 v64, v49, v36, v38
	v_lshl_or_b32 v36, v33, 6, v50
	v_lshl_or_b32 v131, v33, 10, v43
	v_lshl_or_b32 v93, v33, 9, v35
	v_xor_b32_e32 v33, v189, v51
	v_xor_b32_e32 v34, 16, v61
	v_dual_mov_b32 v13, v1 :: v_dual_and_b32 v46, 0x240, v41
	v_mov_b32_e32 v30, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v31, v1 :: v_dual_add_nc_u32 v252, 0, v33
	v_and_or_b32 v47, 0x410, v41, v47
	v_and_or_b32 v41, 0x210, v41, v0
	v_lshl_or_b32 v71, v55, 6, v50
	v_xor_b32_e32 v35, 32, v61
	v_dual_mov_b32 v32, v1 :: v_dual_add_nc_u32 v33, 0, v34
	v_lshl_add_u32 v53, v38, 1, 0
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshrrev_b32_e32 v54, 1, v38
	v_xor_b32_e32 v96, v41, v36
	v_lshl_or_b32 v99, v38, 6, v42
	v_xor_b32_e32 v38, 48, v61
	s_clause 0x6                            ; 28-byte Folded Spill
	scratch_store_b32 off, v61, off offset:16
	scratch_store_b32 off, v71, off offset:20
	scratch_store_b32 off, v55, off offset:508
	scratch_store_b32 off, v33, off offset:32
	scratch_store_b32 off, v64, off offset:12
	scratch_store_b32 off, v93, off offset:28
	scratch_store_b32 off, v96, off offset:24
	v_dual_mov_b32 v18, v1 :: v_dual_add_nc_u32 v33, 0, v35
	.loc	1 517 21                        ; attention_backward.py:517:21
	scratch_store_b32 off, v54, off offset:512 ; 4-byte Folded Spill
	v_xor_b32_e32 v98, v40, v46
	v_xor_b32_e32 v40, 64, v61
	scratch_store_b32 off, v33, off offset:36 ; 4-byte Folded Spill
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v33, 0, v38
	v_xor_b32_e32 v72, 0x50, v61
	v_xor_b32_e32 v73, 0x60, v61
	v_xor_b32_e32 v43, 0x70, v61
	scratch_store_b32 off, v33, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v40
	v_xor_b32_e32 v46, 0x80, v61
	v_mul_lo_u32 v36, s55, v45
	v_xor_b32_e32 v45, 32, v99
	v_xor_b32_e32 v91, 0x90, v93
	scratch_store_b32 off, v33, off offset:44 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v72
	v_xor_b32_e32 v130, v47, v48
	v_xor_b32_e32 v47, 0x90, v61
	v_xor_b32_e32 v92, 0x120, v93
	v_xor_b32_e32 v48, 0xa0, v61
	scratch_store_b32 off, v33, off offset:48 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v73
	v_xor_b32_e32 v51, 0xb0, v61
	v_xor_b32_e32 v58, 0xc0, v61
	v_xor_b32_e32 v59, 0xd0, v61
	v_xor_b32_e32 v60, 0xe0, v61
	scratch_store_b32 off, v33, off offset:52 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v43
	v_xor_b32_e32 v43, 0x1b0, v98
	v_xor_b32_e32 v61, 0xf0, v61
	v_xor_b32_e32 v69, 16, v71
	v_xor_b32_e32 v70, 32, v71
	v_xor_b32_e32 v71, 48, v71
	v_add_nc_u32_e32 v101, 0, v43
	v_add_nc_u32_e32 v43, 0, v45
	v_add_nc_u32_e32 v45, 0, v91
	scratch_store_b32 off, v33, off offset:56 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v46
	v_xor_b32_e32 v62, 0x90, v64
	v_xor_b32_e32 v63, 0x120, v64
	scratch_store_b32 off, v45, off offset:220 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v45, 0, v92
	scratch_store_b32 off, v33, off offset:60 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v47
	v_xor_b32_e32 v64, 0x1b0, v64
	v_add_nc_u32_e32 v37, 0, v71
	v_dual_mov_b32 v29, v1 :: v_dual_add_nc_u32 v106, 0, v42
	scratch_store_b32 off, v33, off offset:64 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v48
	v_dual_mov_b32 v17, v1 :: v_dual_add_nc_u32 v254, 0, v63
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xad_u32 v50, v42, 32, 0
	v_mad_u64_u32 v[104:105], null, s54, v44, v[97:98]
	scratch_store_b32 off, v33, off offset:68 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v51
	v_add_nc_u32_e32 v253, 0, v62
	v_add_nc_u32_e32 v255, 0, v64
	v_add_nc_u32_e32 v123, 0, v70
	v_xor_b32_e32 v38, 0x90, v98
	scratch_store_b32 off, v33, off offset:72 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v58
	v_xor_b32_e32 v44, 16, v99
	v_xor_b32_e32 v46, 48, v99
	v_xor_b32_e32 v47, 64, v99
	v_xor_b32_e32 v48, 0x50, v99
	scratch_store_b32 off, v33, off offset:76 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v59
	v_xor_b32_e32 v51, 0x60, v99
	v_xor_b32_e32 v59, 0x90, v131
	v_xor_b32_e32 v62, 0x240, v131
	v_xor_b32_e32 v63, 0x2d0, v131
	scratch_store_b32 off, v33, off offset:80 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v60
	v_xor_b32_e32 v60, 0x120, v131
	v_xor_b32_e32 v64, 0x360, v131
	v_xor_b32_e32 v70, 64, v131
	v_xor_b32_e32 v71, 0xd0, v131
	scratch_store_b32 off, v33, off offset:84 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v61
	v_xor_b32_e32 v61, 0x1b0, v131
	v_xor_b32_e32 v72, 0x160, v131
	v_xor_b32_e32 v73, 0x1f0, v131
	v_xor_b32_e32 v74, 0x290, v131
	scratch_store_b32 off, v33, off offset:88 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v69
	v_xor_b32_e32 v69, 0x3f0, v131
	v_xor_b32_e32 v75, 0x320, v131
	v_xor_b32_e32 v76, 0x3b0, v131
	v_xor_b32_e32 v77, 16, v130
	v_xor_b32_e32 v78, 32, v130
	v_xor_b32_e32 v79, 48, v130
	v_xor_b32_e32 v80, 64, v130
	v_xor_b32_e32 v81, 0x50, v130
	v_xor_b32_e32 v82, 0x60, v130
	v_xor_b32_e32 v83, 0x70, v130
	v_xor_b32_e32 v84, 0x1040, v130
	v_xor_b32_e32 v85, 0x1050, v130
	v_xor_b32_e32 v86, 0x1060, v130
	v_xor_b32_e32 v87, 0x1070, v130
	v_xor_b32_e32 v88, 0x1010, v130
	v_xor_b32_e32 v89, 0x1020, v130
	v_xor_b32_e32 v90, 0x1030, v130
	v_xad_u32 v49, v42, 16, 0
	v_xad_u32 v52, v42, 48, 0
	v_lshl_add_u32 v0, v55, 2, v53
	v_xad_u32 v53, v42, 64, 0
	v_mad_u64_u32 v[102:103], null, s55, 17, v[36:37]
	v_dual_mov_b32 v19, v1 :: v_dual_add_nc_u32 v100, 0, v38
	v_xad_u32 v55, 0x50, v42, 0
	v_xad_u32 v56, 0x60, v42, 0
	v_xad_u32 v57, 0x70, v42, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:500
	scratch_store_b32 off, v45, off offset:224
	v_lshl_add_u32 v103, s55, 4, v36
	v_add_nc_u32_e32 v132, v97, v36
	v_add_nc_u32_e32 v38, 0, v44
	v_add_nc_u32_e32 v44, 0, v46
	v_add_nc_u32_e32 v109, 0, v47
	v_add_nc_u32_e32 v133, 0, v48
	v_add_nc_u32_e32 v36, 0, v51
	v_add_nc_u32_e32 v134, 0, v59
	v_add_nc_u32_e32 v135, 0, v60
	v_add_nc_u32_e32 v136, 0, v61
	v_add_nc_u32_e32 v137, 0, v62
	v_add_nc_u32_e32 v138, 0, v63
	v_add_nc_u32_e32 v139, 0, v64
	v_add_nc_u32_e32 v140, 0, v69
	v_add_nc_u32_e32 v141, 0, v70
	v_add_nc_u32_e32 v142, 0, v71
	v_add_nc_u32_e32 v143, 0, v72
	v_add_nc_u32_e32 v144, 0, v73
	v_add_nc_u32_e32 v145, 0, v74
	v_add_nc_u32_e32 v146, 0, v75
	v_add_nc_u32_e32 v147, 0, v76
	v_add_nc_u32_e32 v148, 0, v77
	v_add_nc_u32_e32 v149, 0, v78
	v_add_nc_u32_e32 v150, 0, v79
	v_add_nc_u32_e32 v151, 0, v80
	v_add_nc_u32_e32 v152, 0, v81
	v_add_nc_u32_e32 v153, 0, v82
	v_add_nc_u32_e32 v154, 0, v83
	v_add_nc_u32_e32 v155, 0, v84
	v_add_nc_u32_e32 v186, 0, v85
	v_add_nc_u32_e32 v41, 0, v86
	v_add_nc_u32_e32 v33, 0, v87
	v_add_nc_u32_e32 v187, 0, v88
	v_add_nc_u32_e32 v42, 0, v89
	v_add_nc_u32_e32 v39, 0, v90
	ds_load_b128 v[69:72], v106
	ds_load_b128 v[73:76], v49
	ds_load_b128 v[77:80], v50
	ds_load_b128 v[81:84], v52
	ds_load_b128 v[85:88], v53
	ds_load_b128 v[89:92], v55
	ds_load_b128 v[156:159], v56
	ds_load_b128 v[160:163], v57
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v54, 4, v97
	v_xor_b32_e32 v40, 0x120, v98
	v_xor_b32_e32 v58, 0x70, v99
	v_xor_b32_e32 v93, 0x1b0, v93
	v_xor_b32_e32 v94, 16, v96
	v_xor_b32_e32 v95, 32, v96
	v_xor_b32_e32 v96, 48, v96
	v_mad_u64_u32 v[34:35], null, s54, 3, v[104:105]
	v_dual_mov_b32 v3, v1 :: v_dual_add_nc_u32 v40, 0, v40
	v_add_nc_u32_e32 v58, 0, v58
	v_add_nc_u32_e32 v93, 0, v93
	v_add_nc_u32_e32 v94, 0, v94
	v_add_nc_u32_e32 v95, 0, v95
	v_add_nc_u32_e32 v96, 0, v96
	s_mov_b32 s5, -1
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt vmcnt(1)
	ds_store_b128 v107, v[21:24]
	s_waitcnt vmcnt(0)
	ds_store_b128 v107, v[65:68] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[59:62], v106
	ds_load_b128 v[63:66], v49
	ds_load_b128 v[45:48], v50
	ds_load_b128 v[49:52], v52
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[45:48], off offset:388 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[49:52], off offset:404 ; 16-byte Folded Spill
	ds_load_b128 v[45:48], v53
	ds_load_b128 v[49:52], v55
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[59:62], off offset:356
	scratch_store_b128 off, v[63:66], off offset:372
	v_add_nc_u32_e32 v60, v97, v102
	v_add_nc_u32_e32 v61, v54, v102
	v_add_nc_u32_e32 v62, 4, v132
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[45:48], off offset:420 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[49:52], off offset:436 ; 16-byte Folded Spill
	ds_load_b128 v[45:48], v56
	ds_load_b128 v[49:52], v57
	v_add_nc_u32_e32 v56, v97, v103
	v_add_nc_u32_e32 v57, v54, v103
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v98, off offset:92
	scratch_store_b32 off, v99, off offset:96
	scratch_store_b32 off, v100, off offset:100
	scratch_store_b32 off, v101, off offset:104
	scratch_store_b32 off, v58, off offset:108
	scratch_store_b32 off, v109, off offset:112
	scratch_store_b32 off, v38, off offset:116
	scratch_store_b32 off, v43, off offset:120
	scratch_store_b32 off, v44, off offset:124
	scratch_store_b32 off, v132, off offset:128
	scratch_store_b32 off, v130, off offset:132
	scratch_store_b32 off, v36, off offset:136
	scratch_store_b32 off, v141, off offset:140
	scratch_store_b32 off, v136, off offset:144
	scratch_store_b32 off, v134, off offset:148
	scratch_store_b32 off, v140, off offset:152
	scratch_store_b32 off, v145, off offset:156
	scratch_store_b32 off, v138, off offset:160
	scratch_store_b32 off, v144, off offset:164
	scratch_store_b32 off, v142, off offset:168
	scratch_store_b32 off, v149, off offset:172
	scratch_store_b32 off, v147, off offset:176
	scratch_store_b32 off, v151, off offset:180
	scratch_store_b32 off, v137, off offset:184
	scratch_store_b32 off, v153, off offset:188
	scratch_store_b32 off, v133, off offset:192
	scratch_store_b32 off, v155, off offset:196
	scratch_store_b32 off, v143, off offset:200
	scratch_store_b32 off, v139, off offset:204
	scratch_store_b32 off, v148, off offset:208
	scratch_store_b32 off, v146, off offset:212
	scratch_store_b32 off, v135, off offset:216
	s_clause 0xc                            ; 148-byte Folded Spill
	scratch_store_b128 off, v[69:72], off offset:228
	scratch_store_b128 off, v[73:76], off offset:244
	scratch_store_b128 off, v[77:80], off offset:260
	scratch_store_b128 off, v[81:84], off offset:276
	scratch_store_b128 off, v[85:88], off offset:292
	scratch_store_b128 off, v[89:92], off offset:308
	scratch_store_b128 off, v[156:159], off offset:324
	scratch_store_b128 off, v[160:163], off offset:340
	scratch_store_b32 off, v56, off offset:484
	scratch_store_b32 off, v57, off offset:488
	scratch_store_b32 off, v60, off offset:492
	scratch_store_b32 off, v61, off offset:496
	scratch_store_b32 off, v62, off offset:504
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[45:48], off offset:452 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[49:52], off offset:468 ; 16-byte Folded Spill
.LBB0_1:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_2 Depth 2
	.loc	1 608 39                        ; attention_backward.py:608:39
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:508
	scratch_load_b32 v46, off, off offset:512
	.loc	1 662 34                        ; attention_backward.py:662:34
	s_or_b32 s49, s71, s1
	s_xor_b32 s48, s5, -1
	s_mov_b32 s73, 0
	.loc	1 608 39                        ; attention_backward.py:608:39
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v45, v46, v45
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v35, s49, v45
	scratch_store_b32 off, v35, off offset:8 ; 4-byte Folded Spill
.LBB0_2:                                ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 39 is_stmt 0                ; attention_backward.py:0:39
	s_waitcnt vmcnt(32)
	v_lshl_add_u32 v48, s54, 1, v104
	.loc	1 664 25 is_stmt 1              ; attention_backward.py:664:25
	s_or_b32 s1, s73, s49
	v_add_nc_u32_e32 v47, s54, v104
	s_mul_i32 s3, s1, s54
	scratch_store_b64 off, v[104:105], off  ; 8-byte Folded Spill
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v48, s3, v48, 1
	v_add_lshl_u32 v46, s3, v104, 1
	v_add_lshl_u32 v47, s3, v47, 1
	v_add_lshl_u32 v49, s3, v34, 1
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s1, s1, s55
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e64 v48, 0x80000000, v48, s2
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(23)
	v_add_lshl_u32 v55, s1, v62, 2
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x3
	buffer_load_b128 v[182:185], v48, s[56:59], 0 offen
	buffer_load_b128 v[178:181], v46, s[56:59], 0 offen
	buffer_load_b128 v[105:108], v47, s[56:59], 0 offen
	buffer_load_b128 v[110:113], v49, s[56:59], 0 offen
	v_add_nc_u32_e32 v46, 0, v98
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v54, s1, v132, 2
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	ds_store_b128 v46, v[178:181]
	s_waitcnt vmcnt(1)
	ds_store_b128 v100, v[105:108]
	ds_store_b128 v40, v[182:185]
	s_waitcnt vmcnt(0)
	ds_store_b128 v101, v[110:113]
	v_add_nc_u32_e32 v46, 0, v99
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v104, s43
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v101, s40
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[46:49], v46
	ds_load_b128 v[50:53], v38
	ds_load_b128 v[114:117], v43
	ds_load_b128 v[118:121], v44
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v103, s42 :: v_dual_mov_b32 v102, s41
	v_dual_mov_b32 v99, s38 :: v_dual_mov_b32 v100, s39
	v_dual_mov_b32 v97, s36 :: v_dual_mov_b32 v98, s37
	v_mov_b32_e32 v35, v123
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v54, 0x80000000, v54, s4
	v_dual_mov_b32 v43, v131 :: v_dual_mov_b32 v38, v150
	v_mov_b32_e32 v44, v152
	v_dual_mov_b32 v45, v40 :: v_dual_mov_b32 v40, v189
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[122:129], v[69:76], v[46:53], v[97:104]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[46:49], v109
	ds_load_b128 v[50:53], v133
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[122:129], v[77:84], v[114:121], v[122:129]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[122:129], v[85:92], v[46:53], v[122:129]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[46:49], v36
	ds_load_b128 v[50:53], v58
	.loc	1 699 33                        ; attention_backward.py:699:33
	scratch_load_b32 v36, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v58, 0x80000000, v55, s4
	v_add_nc_u32_e32 v55, s55, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v55, s1, v55, 2
	v_cndmask_b32_e64 v59, 0x80000000, v55, s4
	v_add_nc_u32_e32 v55, s55, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v55, s1, v55, 2
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[122:129], v[156:163], v[46:53], v[122:129]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v67, 0x80000000, v55, s4
	v_add_lshl_u32 v55, s1, v56, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v72, 0x80000000, v55, s4
	v_add_lshl_u32 v55, s1, v57, 2
	v_cndmask_b32_e64 v76, 0x80000000, v55, s4
	v_add_lshl_u32 v55, s1, v60, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v77, 0x80000000, v55, s4
	v_add_lshl_u32 v55, s1, v61, 2
	v_cndmask_b32_e64 v85, 0x80000000, v55, s4
	.loc	1 699 33                        ; attention_backward.py:699:33
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v46, s73, v36
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v36, v154 :: v_dual_lshlrev_b32 v53, 2, v46
	.loc	1 699 25 is_stmt 0              ; attention_backward.py:699:25
	buffer_load_b32 v46, v53, s[60:63], 0 offen
	.loc	1 700 27 is_stmt 1              ; attention_backward.py:700:27
	buffer_load_b32 v53, v53, s[64:67], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b128 v[54:57], v54, s[44:47], 0 offen
	buffer_load_b128 v[59:62], v59, s[44:47], 0 offen
	buffer_load_b128 v[63:66], v58, s[44:47], 0 offen
	buffer_load_b128 v[68:71], v67, s[44:47], 0 offen
	buffer_load_b128 v[72:75], v72, s[44:47], 0 offen
	buffer_load_b128 v[77:80], v77, s[44:47], 0 offen
	buffer_load_b128 v[81:84], v76, s[44:47], 0 offen
	buffer_load_b128 v[87:90], v85, s[44:47], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v91, 0, v131
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v92, 0x1c00, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(7)
	v_dual_mov_b32 v58, v54 :: v_dual_mov_b32 v85, v55
	s_waitcnt vmcnt(6)
	v_mov_b32_e32 v86, v60
	ds_store_b64 v91, v[58:59]
	ds_store_b64 v134, v[85:86]
	v_dual_mov_b32 v85, v56 :: v_dual_mov_b32 v86, v61
	s_waitcnt vmcnt(5)
	v_dual_mov_b32 v58, v62 :: v_dual_mov_b32 v67, v63
	s_waitcnt vmcnt(3)
	v_mov_b32_e32 v76, v72
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v52, s72, v122, -v46
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_store_b64 v135, v[85:86]
	v_dual_mov_b32 v85, v64 :: v_dual_mov_b32 v86, v69
	ds_store_b64 v136, v[57:58]
	ds_store_b64 v137, v[67:68]
	ds_store_b64 v138, v[85:86]
	v_dual_mov_b32 v85, v65 :: v_dual_mov_b32 v86, v70
	v_dual_mov_b32 v67, v71 :: v_dual_add_nc_u32 v58, 0, v130
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v51, s72, v123, -v46
	v_fma_f32 v50, s72, v124, -v46
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_store_b64 v139, v[85:86]
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v85, v73 :: v_dual_mov_b32 v86, v78
	ds_store_b64 v140, v[66:67]
	ds_store_b64 v141, v[76:77]
	ds_store_b64 v142, v[85:86]
	v_dual_mov_b32 v85, v74 :: v_dual_mov_b32 v86, v79
	v_mov_b32_e32 v76, v80
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v49, s72, v125, -v46
	v_fma_f32 v109, s72, v126, -v46
	v_fma_f32 v48, s72, v127, -v46
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_store_b64 v143, v[85:86]
	s_waitcnt vmcnt(1)
	v_mov_b32_e32 v86, v81
	ds_store_b64 v144, v[75:76]
	s_waitcnt vmcnt(0)
	ds_store_b64 v91, v[86:87] offset:512
	v_dual_mov_b32 v85, v82 :: v_dual_mov_b32 v86, v88
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v47, s72, v128, -v46
	v_fma_f32 v46, s72, v129, -v46
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v67, 0x800, v0
	v_add_nc_u32_e32 v76, 0xc00, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_store_b64 v145, v[85:86]
	v_dual_mov_b32 v85, v83 :: v_dual_mov_b32 v86, v89
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v91, 0x1800, v0
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v51, v51
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_store_b64 v146, v[85:86]
	v_dual_mov_b32 v85, v90 :: v_dual_add_nc_u32 v86, 0x1400, v0
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v47, v47
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_store_b64 v147, v[84:85]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[162:165], v58
	ds_load_b128 v[114:117], v58 offset:4096
	ds_load_b128 v[174:177], v148
	ds_load_b128 v[170:173], v149
	ds_load_b128 v[166:169], v150
	ds_load_b128 v[142:145], v151
	ds_load_b128 v[138:141], v152
	ds_load_b128 v[134:137], v153
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v58, 0, v189
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_load_b128 v[130:133], v154
	ds_load_b128 v[158:161], v155
	ds_load_b128 v[154:157], v186
	ds_load_b128 v[150:153], v41
	ds_load_b128 v[146:149], v33
	ds_load_b128 v[126:129], v187
	ds_load_b128 v[122:125], v42
	ds_load_b128 v[118:121], v39
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v58, v[54:57]
	ds_store_b128 v58, v[63:66] offset:16
	ds_store_b128 v58, v[59:62] offset:256
	ds_store_b128 v58, v[68:71] offset:272
	ds_store_b128 v58, v[72:75] offset:4096
	ds_store_b128 v58, v[81:84] offset:4112
	ds_store_b128 v58, v[77:80] offset:4352
	ds_store_b128 v58, v[87:90] offset:4368
	v_add_nc_u32_e32 v58, 0x400, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v85, 0x1000, v0
	ds_load_2addr_b32 v[242:243], v58 offset1:32
	ds_load_2addr_b32 v[240:241], v58 offset0:64 offset1:96
	ds_load_2addr_b32 v[238:239], v58 offset0:128 offset1:160
	ds_load_2addr_b32 v[236:237], v58 offset0:192 offset1:224
	ds_load_2addr_b32 v[234:235], v67 offset1:32
	ds_load_2addr_b32 v[232:233], v67 offset0:64 offset1:96
	ds_load_2addr_b32 v[230:231], v67 offset0:128 offset1:160
	ds_load_2addr_b32 v[228:229], v67 offset0:192 offset1:224
	ds_load_2addr_b32 v[226:227], v76 offset1:32
	ds_load_2addr_b32 v[224:225], v76 offset0:64 offset1:96
	ds_load_2addr_b32 v[222:223], v76 offset0:128 offset1:160
	ds_load_2addr_b32 v[220:221], v76 offset0:192 offset1:224
	ds_load_2addr_b32 v[218:219], v85 offset1:32
	ds_load_2addr_b32 v[216:217], v85 offset0:64 offset1:96
	ds_load_2addr_b32 v[214:215], v85 offset0:128 offset1:160
	ds_load_2addr_b32 v[212:213], v85 offset0:192 offset1:224
	ds_load_2addr_b32 v[210:211], v86 offset1:32
	ds_load_2addr_b32 v[208:209], v86 offset0:64 offset1:96
	ds_load_2addr_b32 v[206:207], v86 offset0:128 offset1:160
	ds_load_2addr_b32 v[204:205], v86 offset0:192 offset1:224
	ds_load_2addr_b32 v[202:203], v91 offset1:32
	ds_load_2addr_b32 v[200:201], v91 offset0:64 offset1:96
	ds_load_2addr_b32 v[198:199], v91 offset0:128 offset1:160
	ds_load_2addr_b32 v[196:197], v91 offset0:192 offset1:224
	ds_load_2addr_b32 v[194:195], v92 offset1:32
	ds_load_2addr_b32 v[192:193], v92 offset0:64 offset1:96
	ds_load_2addr_b32 v[190:191], v92 offset0:128 offset1:160
	ds_load_2addr_b32 v[188:189], v92 offset0:192 offset1:224
	ds_load_2addr_b32 v[250:251], v0 offset1:32
	ds_load_2addr_b32 v[248:249], v0 offset0:64 offset1:96
	ds_load_2addr_b32 v[246:247], v0 offset0:128 offset1:160
	ds_load_2addr_b32 v[244:245], v0 offset0:192 offset1:224
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v252, v[54:57]
	ds_store_b128 v252, v[63:66] offset:16
	ds_store_b128 v252, v[59:62] offset:272
	ds_store_b128 v252, v[68:71] offset:256
	ds_store_b128 v252, v[72:75] offset:4096
	ds_store_b128 v252, v[81:84] offset:4112
	ds_store_b128 v252, v[77:80] offset:4368
	ds_store_b128 v252, v[87:90] offset:4352
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v54, off, off offset:16
	scratch_load_b32 v58, off, off offset:32
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v49, 0, v49, s0
	v_cndmask_b32_e64 v50, 0, v50, s0
	v_cndmask_b32_e64 v48, 0, v48, s0
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v46, v46
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s19, v217, v217
	v_cmp_o_f32_e64 s21, v213, v213
	v_cmp_o_f32_e64 s27, v201, v201
	v_cmp_o_f32_e64 s23, v209, v209
	v_cmp_o_f32_e64 s29, v197, v197
	v_cmp_o_f32_e64 s25, v205, v205
	v_cmp_o_f32_e64 s18, v219, v219
	v_cmp_o_f32_e64 s20, v215, v215
	v_cmp_o_f32_e64 s22, v211, v211
	v_cmp_o_f32_e64 s24, v207, v207
	v_cmp_o_f32_e64 s26, v203, v203
	v_cmp_o_f32_e64 s28, v199, v199
	v_cmp_o_f32_e64 s30, v195, v195
	v_cmp_o_f32_e64 s31, v193, v193
	v_cmp_o_f32_e64 s33, v191, v191
	v_cmp_o_f32_e64 s34, v189, v189
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v54, 0, v54
	s_waitcnt vmcnt(0)
	ds_load_b128 v[58:61], v58
	ds_load_b128 v[54:57], v54
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s6, v58, v58
	v_cmp_o_f32_e64 s7, v59, v59
	v_cmp_o_f32_e64 s8, v60, v60
	v_cmp_o_f32_e64 s9, v61, v61
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v62, v54, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	v_cmp_o_f32_e64 s1, v55, v55
	v_cmp_o_f32_e64 s3, v56, v56
	v_cmp_o_f32_e64 s5, v57, v57
	v_add3_u32 v62, v54, v62, 0x7fff
	v_bfe_u32 v54, v55, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v63, v55, v54, 0x7fff
	v_bfe_u32 v54, v56, 16, 1
	v_add3_u32 v64, v56, v54, 0x7fff
	v_bfe_u32 v54, v57, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v65, v57, v54, 0x7fff
	v_bfe_u32 v54, v58, 16, 1
	v_add3_u32 v66, v58, v54, 0x7fff
	v_bfe_u32 v54, v59, 16, 1
	scratch_load_b32 v58, off, off offset:40 ; 4-byte Folded Reload
	v_add3_u32 v67, v59, v54, 0x7fff
	v_bfe_u32 v54, v60, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v68, v60, v54, 0x7fff
	v_bfe_u32 v54, v61, 16, 1
	v_add3_u32 v69, v61, v54, 0x7fff
	scratch_load_b32 v54, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[58:61], v58
	s_waitcnt vmcnt(0)
	ds_load_b128 v[54:57], v54
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s14, v58, v58
	v_cmp_o_f32_e64 s15, v59, v59
	v_cmp_o_f32_e64 s16, v60, v60
	v_cmp_o_f32_e64 s17, v61, v61
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v70, v54, 16, 1
	v_cmp_o_f32_e64 s10, v54, v54
	v_cmp_o_f32_e64 s11, v55, v55
	v_cmp_o_f32_e64 s12, v56, v56
	v_cmp_o_f32_e64 s13, v57, v57
	v_add3_u32 v70, v54, v70, 0x7fff
	v_bfe_u32 v54, v55, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v71, v55, v54, 0x7fff
	v_bfe_u32 v54, v56, 16, 1
	v_cndmask_b16 v55.l, 0x7fff, v64.h, s3
	v_cndmask_b16 v55.h, 0x7fff, v65.h, s5
	v_add3_u32 v72, v56, v54, 0x7fff
	v_bfe_u32 v54, v57, 16, 1
	v_cndmask_b16 v56.l, 0x7fff, v66.h, s6
	v_cndmask_b16 v56.h, 0x7fff, v67.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v73, v57, v54, 0x7fff
	v_bfe_u32 v54, v58, 16, 1
	v_cndmask_b16 v57.l, 0x7fff, v68.h, s8
	v_cndmask_b16 v57.h, 0x7fff, v69.h, s9
	v_add3_u32 v74, v58, v54, 0x7fff
	v_bfe_u32 v54, v59, 16, 1
	v_cndmask_b16 v58.l, 0x7fff, v70.h, s10
	v_cndmask_b16 v58.h, 0x7fff, v71.h, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v75, v59, v54, 0x7fff
	v_bfe_u32 v54, v60, 16, 1
	v_cndmask_b16 v59.l, 0x7fff, v72.h, s12
	v_cndmask_b16 v59.h, 0x7fff, v73.h, s13
	v_add3_u32 v76, v60, v54, 0x7fff
	v_bfe_u32 v54, v61, 16, 1
	v_cndmask_b16 v60.l, 0x7fff, v74.h, s14
	v_cndmask_b16 v60.h, 0x7fff, v75.h, s15
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v61, v61, v54, 0x7fff
	v_cndmask_b16 v61.l, 0x7fff, v76.h, s16
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[70:73], off, off offset:356
	scratch_load_b128 v[74:77], off, off offset:372
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v54.l, 0x7fff, v62.h, vcc_lo
	v_cndmask_b16 v54.h, 0x7fff, v63.h, s1
	v_cndmask_b16 v61.h, 0x7fff, v61.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[62:69], v[70:77], v[54:61], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v54, off, off offset:44
	scratch_load_b32 v58, off, off offset:48
	s_waitcnt vmcnt(1)
	ds_load_b128 v[54:57], v54
	s_waitcnt vmcnt(0)
	ds_load_b128 v[58:61], v58
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v70, v54, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v58, v58
	v_cmp_o_f32_e64 s1, v55, v55
	v_cmp_o_f32_e64 s3, v56, v56
	v_add3_u32 v70, v54, v70, 0x7fff
	v_bfe_u32 v54, v55, 16, 1
	v_cmp_o_f32_e64 s5, v57, v57
	v_cmp_o_f32_e64 s7, v59, v59
	v_cmp_o_f32_e64 s8, v60, v60
	v_cmp_o_f32_e64 s9, v61, v61
	v_add3_u32 v71, v55, v54, 0x7fff
	v_bfe_u32 v54, v56, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v72, v56, v54, 0x7fff
	v_bfe_u32 v54, v57, 16, 1
	v_add3_u32 v73, v57, v54, 0x7fff
	v_bfe_u32 v54, v58, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v74, v58, v54, 0x7fff
	v_bfe_u32 v54, v59, 16, 1
	scratch_load_b32 v58, off, off offset:56 ; 4-byte Folded Reload
	v_add3_u32 v75, v59, v54, 0x7fff
	v_bfe_u32 v54, v60, 16, 1
	v_add3_u32 v76, v60, v54, 0x7fff
	v_bfe_u32 v54, v61, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v77, v61, v54, 0x7fff
	scratch_load_b32 v54, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[58:61], v58
	s_waitcnt vmcnt(0)
	ds_load_b128 v[54:57], v54
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s17, v61, v61
	v_cmp_o_f32_e64 s14, v58, v58
	v_cmp_o_f32_e64 s15, v59, v59
	v_cmp_o_f32_e64 s16, v60, v60
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v78, v54, 16, 1
	v_cmp_o_f32_e64 s10, v54, v54
	v_cmp_o_f32_e64 s11, v55, v55
	v_cmp_o_f32_e64 s12, v56, v56
	v_cmp_o_f32_e64 s13, v57, v57
	v_add3_u32 v78, v54, v78, 0x7fff
	v_bfe_u32 v54, v55, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v79, v55, v54, 0x7fff
	v_bfe_u32 v54, v56, 16, 1
	v_cndmask_b16 v55.l, 0x7fff, v72.h, s3
	v_cndmask_b16 v55.h, 0x7fff, v73.h, s5
	v_add3_u32 v80, v56, v54, 0x7fff
	v_bfe_u32 v54, v57, 16, 1
	v_cndmask_b16 v56.l, 0x7fff, v74.h, s6
	v_cndmask_b16 v56.h, 0x7fff, v75.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v81, v57, v54, 0x7fff
	v_bfe_u32 v54, v58, 16, 1
	v_cndmask_b16 v57.l, 0x7fff, v76.h, s8
	v_cndmask_b16 v57.h, 0x7fff, v77.h, s9
	v_add3_u32 v82, v58, v54, 0x7fff
	v_bfe_u32 v54, v59, 16, 1
	v_cndmask_b16 v58.l, 0x7fff, v78.h, s10
	v_cndmask_b16 v58.h, 0x7fff, v79.h, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v83, v59, v54, 0x7fff
	v_bfe_u32 v54, v60, 16, 1
	v_cndmask_b16 v59.l, 0x7fff, v80.h, s12
	v_cndmask_b16 v59.h, 0x7fff, v81.h, s13
	v_add3_u32 v84, v60, v54, 0x7fff
	v_bfe_u32 v54, v61, 16, 1
	v_cndmask_b16 v60.l, 0x7fff, v82.h, s14
	v_cndmask_b16 v60.h, 0x7fff, v83.h, s15
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v61, v61, v54, 0x7fff
	v_cndmask_b16 v54.l, 0x7fff, v70.h, vcc_lo
	v_cndmask_b16 v54.h, 0x7fff, v71.h, s1
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[70:73], off, off offset:388
	scratch_load_b128 v[74:77], off, off offset:404
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v61.l, 0x7fff, v84.h, s16
	v_cndmask_b16 v61.h, 0x7fff, v61.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[62:69], v[70:77], v[54:61], v[62:69]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v54, off, off offset:60
	scratch_load_b32 v58, off, off offset:64
	s_waitcnt vmcnt(1)
	ds_load_b128 v[54:57], v54
	s_waitcnt vmcnt(0)
	ds_load_b128 v[58:61], v58
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v70, v54, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v58, v58
	v_cmp_o_f32_e64 s1, v55, v55
	v_cmp_o_f32_e64 s3, v56, v56
	v_add3_u32 v70, v54, v70, 0x7fff
	v_bfe_u32 v54, v55, 16, 1
	v_cmp_o_f32_e64 s5, v57, v57
	v_cmp_o_f32_e64 s7, v59, v59
	v_cmp_o_f32_e64 s8, v60, v60
	v_cmp_o_f32_e64 s9, v61, v61
	v_add3_u32 v71, v55, v54, 0x7fff
	v_bfe_u32 v54, v56, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v72, v56, v54, 0x7fff
	v_bfe_u32 v54, v57, 16, 1
	v_add3_u32 v73, v57, v54, 0x7fff
	v_bfe_u32 v54, v58, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v74, v58, v54, 0x7fff
	v_bfe_u32 v54, v59, 16, 1
	scratch_load_b32 v58, off, off offset:72 ; 4-byte Folded Reload
	v_add3_u32 v75, v59, v54, 0x7fff
	v_bfe_u32 v54, v60, 16, 1
	v_add3_u32 v76, v60, v54, 0x7fff
	v_bfe_u32 v54, v61, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v77, v61, v54, 0x7fff
	scratch_load_b32 v54, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[58:61], v58
	s_waitcnt vmcnt(0)
	ds_load_b128 v[54:57], v54
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s17, v61, v61
	v_cmp_o_f32_e64 s14, v58, v58
	v_cmp_o_f32_e64 s15, v59, v59
	v_cmp_o_f32_e64 s16, v60, v60
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v78, v54, 16, 1
	v_cmp_o_f32_e64 s10, v54, v54
	v_cmp_o_f32_e64 s11, v55, v55
	v_cmp_o_f32_e64 s12, v56, v56
	v_cmp_o_f32_e64 s13, v57, v57
	v_add3_u32 v78, v54, v78, 0x7fff
	v_bfe_u32 v54, v55, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v79, v55, v54, 0x7fff
	v_bfe_u32 v54, v56, 16, 1
	v_cndmask_b16 v55.l, 0x7fff, v72.h, s3
	v_cndmask_b16 v55.h, 0x7fff, v73.h, s5
	v_add3_u32 v80, v56, v54, 0x7fff
	v_bfe_u32 v54, v57, 16, 1
	v_cndmask_b16 v56.l, 0x7fff, v74.h, s6
	v_cndmask_b16 v56.h, 0x7fff, v75.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v81, v57, v54, 0x7fff
	v_bfe_u32 v54, v58, 16, 1
	v_cndmask_b16 v57.l, 0x7fff, v76.h, s8
	v_cndmask_b16 v57.h, 0x7fff, v77.h, s9
	v_add3_u32 v82, v58, v54, 0x7fff
	v_bfe_u32 v54, v59, 16, 1
	v_cndmask_b16 v58.l, 0x7fff, v78.h, s10
	v_cndmask_b16 v58.h, 0x7fff, v79.h, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v83, v59, v54, 0x7fff
	v_bfe_u32 v54, v60, 16, 1
	v_cndmask_b16 v59.l, 0x7fff, v80.h, s12
	v_cndmask_b16 v59.h, 0x7fff, v81.h, s13
	v_add3_u32 v84, v60, v54, 0x7fff
	v_bfe_u32 v54, v61, 16, 1
	v_cndmask_b16 v60.l, 0x7fff, v82.h, s14
	v_cndmask_b16 v60.h, 0x7fff, v83.h, s15
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v61, v61, v54, 0x7fff
	v_cndmask_b16 v54.l, 0x7fff, v70.h, vcc_lo
	v_cndmask_b16 v54.h, 0x7fff, v71.h, s1
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[70:73], off, off offset:420
	scratch_load_b128 v[74:77], off, off offset:436
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v61.l, 0x7fff, v84.h, s16
	v_cndmask_b16 v61.h, 0x7fff, v61.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[62:69], v[70:77], v[54:61], v[62:69]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v54, off, off offset:76
	scratch_load_b32 v58, off, off offset:80
	s_waitcnt vmcnt(1)
	ds_load_b128 v[54:57], v54
	s_waitcnt vmcnt(0)
	ds_load_b128 v[58:61], v58
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v70, v54, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v58, v58
	v_cmp_o_f32_e64 s1, v55, v55
	v_cmp_o_f32_e64 s3, v56, v56
	v_add3_u32 v70, v54, v70, 0x7fff
	v_bfe_u32 v54, v55, 16, 1
	v_cmp_o_f32_e64 s5, v57, v57
	v_cmp_o_f32_e64 s7, v59, v59
	v_cmp_o_f32_e64 s8, v60, v60
	v_cmp_o_f32_e64 s9, v61, v61
	v_add3_u32 v71, v55, v54, 0x7fff
	v_bfe_u32 v54, v56, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v72, v56, v54, 0x7fff
	v_bfe_u32 v54, v57, 16, 1
	v_add3_u32 v73, v57, v54, 0x7fff
	v_bfe_u32 v54, v58, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v74, v58, v54, 0x7fff
	v_bfe_u32 v54, v59, 16, 1
	scratch_load_b32 v58, off, off offset:88 ; 4-byte Folded Reload
	v_add3_u32 v75, v59, v54, 0x7fff
	v_bfe_u32 v54, v60, 16, 1
	v_add3_u32 v76, v60, v54, 0x7fff
	v_bfe_u32 v54, v61, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v77, v61, v54, 0x7fff
	scratch_load_b32 v54, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[58:61], v58
	s_waitcnt vmcnt(0)
	ds_load_b128 v[54:57], v54
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s17, v61, v61
	v_cmp_o_f32_e64 s14, v58, v58
	v_cmp_o_f32_e64 s15, v59, v59
	v_cmp_o_f32_e64 s16, v60, v60
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v78, v54, 16, 1
	v_cmp_o_f32_e64 s10, v54, v54
	v_cmp_o_f32_e64 s11, v55, v55
	v_cmp_o_f32_e64 s12, v56, v56
	v_cmp_o_f32_e64 s13, v57, v57
	v_add3_u32 v78, v54, v78, 0x7fff
	v_bfe_u32 v54, v55, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v79, v55, v54, 0x7fff
	v_bfe_u32 v54, v56, 16, 1
	v_cndmask_b16 v55.l, 0x7fff, v72.h, s3
	v_cndmask_b16 v55.h, 0x7fff, v73.h, s5
	v_add3_u32 v80, v56, v54, 0x7fff
	v_bfe_u32 v54, v57, 16, 1
	v_cndmask_b16 v56.l, 0x7fff, v74.h, s6
	v_cndmask_b16 v56.h, 0x7fff, v75.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v81, v57, v54, 0x7fff
	v_bfe_u32 v54, v58, 16, 1
	v_cndmask_b16 v57.l, 0x7fff, v76.h, s8
	v_cndmask_b16 v57.h, 0x7fff, v77.h, s9
	v_add3_u32 v82, v58, v54, 0x7fff
	v_bfe_u32 v54, v59, 16, 1
	v_cndmask_b16 v58.l, 0x7fff, v78.h, s10
	v_cndmask_b16 v58.h, 0x7fff, v79.h, s11
	v_bfe_u32 v78, v194, 16, 1
	v_bfe_u32 v79, v190, 16, 1
	v_add3_u32 v83, v59, v54, 0x7fff
	v_bfe_u32 v54, v60, 16, 1
	v_cndmask_b16 v59.l, 0x7fff, v80.h, s12
	v_cndmask_b16 v59.h, 0x7fff, v81.h, s13
	v_cmp_o_f32_e64 s12, v210, v210
	v_cmp_o_f32_e64 s10, v218, v218
	v_add3_u32 v84, v60, v54, 0x7fff
	v_bfe_u32 v54, v61, 16, 1
	v_cndmask_b16 v60.l, 0x7fff, v82.h, s14
	v_cndmask_b16 v60.h, 0x7fff, v83.h, s15
	v_cmp_o_f32_e64 s11, v214, v214
	v_cmp_o_f32_e64 s13, v206, v206
	v_add3_u32 v61, v61, v54, 0x7fff
	v_cndmask_b16 v54.l, 0x7fff, v70.h, vcc_lo
	v_cndmask_b16 v54.h, 0x7fff, v71.h, s1
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[70:73], off, off offset:452
	scratch_load_b128 v[74:77], off, off offset:468
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v61.l, 0x7fff, v84.h, s16
	v_cndmask_b16 v61.h, 0x7fff, v61.h, s17
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s14, v202, v202
	v_cmp_o_f32_e64 s15, v198, v198
	v_cmp_o_f32_e64 s16, v194, v194
	v_cmp_o_f32_e64 s17, v190, v190
	v_add3_u32 v78, v194, v78, 0x7fff
	v_add3_u32 v79, v190, v79, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v78.h, 0x7fff, v78.h, s16
	v_cndmask_b16 v79.h, 0x7fff, v79.h, s17
	v_cmp_o_f32_e64 s16, v223, v223
	v_cmp_o_f32_e64 s17, v221, v221
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[62:69], v[70:77], v[54:61], v[62:69]
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v73, 0, v52, s0
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e64 v72.l, v182.l
	v_mov_b16_e32 v72.h, v110.l
	v_mov_b16_e64 v110.l, v182.h
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v54, v62, v53
	v_sub_f32_e32 v57, v65, v53
	v_sub_f32_e32 v55, v63, v53
	v_sub_f32_e32 v59, v67, v53
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e32 v71.h, v105.l
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v52, v73, v54
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e64 v105.l, v178.h
	v_mov_b16_e64 v71.l, v178.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v75, v206, 16, 1
	v_bfe_u32 v76, v202, 16, 1
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v52, s69, v52
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v77, v198, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v75, v206, v75, 0x7fff
	v_add3_u32 v76, v202, v76, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v54, v52, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v77, v198, v77, 0x7fff
	v_cndmask_b16 v75.h, 0x7fff, v75.h, s13
	v_cndmask_b16 v76.h, 0x7fff, v76.h, s14
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v61, v52, v54, 0x7fff
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v54, 0, v51, s0
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v56, v64, v53
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v77.h, 0x7fff, v77.h, s15
	v_cmp_o_f32_e64 s13, v229, v229
	v_cmp_o_f32_e64 s14, v227, v227
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_dual_mul_f32 v51, v54, v55 :: v_dual_sub_f32 v60, v68, v53
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s15, v225, v225
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v206, v93 :: v_dual_mul_f32 v51, s69, v51
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v52, v51, 16, 1
	v_cmp_o_f32_e64 s1, v51, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v55, v51, v52, 0x7fff
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v51, v50, v56
	.loc	1 720 47 is_stmt 0              ; attention_backward.py:720:47
	v_sub_f32_e32 v58, v66, v53
	v_sub_f32_e32 v53, v69, v53
	.loc	1 721 38 is_stmt 1              ; attention_backward.py:721:38
	v_mul_f32_e32 v51, s69, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v52, v51, 16, 1
	v_cmp_o_f32_e64 s3, v51, v51
	v_add3_u32 v56, v51, v52, 0x7fff
	.loc	1 720 30 is_stmt 1              ; attention_backward.py:720:30
	v_mul_f32_e32 v51, v49, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v51, s69, v51
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v52, v51, 16, 1
	v_cmp_o_f32_e64 s5, v51, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add3_u32 v57, v51, v52, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v51, v109
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b32_e32 v109, v105
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v74, 0, v51, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v51, v74, v58
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v51, s69, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v52, v51, 16, 1
	v_cmp_o_f32_e64 s6, v51, v51
	v_add3_u32 v58, v51, v52, 0x7fff
	.loc	1 720 30 is_stmt 1              ; attention_backward.py:720:30
	v_mul_f32_e32 v51, v48, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v51, s69, v51
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v52, v51, 16, 1
	v_cmp_o_f32_e64 s7, v51, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v59, v51, v52, 0x7fff
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v51, 0, v47, s0
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v47, v51, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v47, s69, v47
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v52, v47, 16, 1
	v_cmp_o_f32_e64 s8, v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v47, v47, v52, 0x7fff
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v52, 0, v46, s0
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v46, v52, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v46, s69, v46
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v53, v46, 16, 1
	v_cmp_o_f32_e64 s9, v46, v46
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v60, v46, v53, 0x7fff
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	scratch_load_b32 v53, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v46.l, 0x7fff, v61.h, vcc_lo
	v_cndmask_b16 v46.h, 0x7fff, v58.h, s6
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_cmp_o_f32_e64 s6, v49, v49
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v53, 0, v53
	ds_store_b16 v53, v46
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v46.l, 0x7fff, v55.h, s1
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v53, v46 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v46.h, 0x7fff, v59.h, s7
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s1, v74, v74
	v_cmp_o_f32_e64 s7, v51, v51
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v253, v46
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v46.l, 0x7fff, v56.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v253, v46 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v46.h, 0x7fff, v47.h, s8
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v54, v54
	v_cmp_o_f32_e64 s8, v52, v52
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v254, v46
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v46.l, 0x7fff, v57.h, s5
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v254, v46 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v46.h, 0x7fff, v60.h, s9
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v255, v46
	ds_store_b16_d16_hi v255, v46 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v46, off, off offset:20
	scratch_load_b32 v182, off, off offset:500
	s_waitcnt vmcnt(0)
	ds_load_b128 v[59:62], v182
	ds_load_b128 v[63:66], v35
	ds_load_b128 v[67:70], v37
	v_add_nc_u32_e32 v47, 0, v46
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s5, v48, v48
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s9, v222, v222
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_load_b128 v[55:58], v47
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v46, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, 0, v46
	ds_store_2addr_b64 v46, v[71:72], v[109:110] offset1:8
	scratch_load_b32 v46, off, off offset:220 ; 4-byte Folded Reload
	v_mov_b16_e32 v71.h, v106.l
	v_mov_b16_e64 v106.l, v179.h
	v_mov_b16_e64 v72.l, v183.l
	v_mov_b16_e32 v72.h, v111.l
	v_mov_b16_e64 v71.l, v179.l
	v_mov_b16_e64 v111.l, v183.h
	v_mov_b32_e32 v110, v106
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v46, v[71:72], v[110:111] offset1:8
	scratch_load_b32 v46, off, off offset:224 ; 4-byte Folded Reload
	v_mov_b16_e32 v71.h, v107.l
	v_mov_b16_e64 v107.l, v180.h
	v_mov_b16_e64 v72.l, v184.l
	v_mov_b16_e32 v72.h, v112.l
	v_mov_b16_e64 v71.l, v180.l
	v_mov_b16_e64 v112.l, v184.h
	v_mov_b32_e32 v111, v107
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v46, v[71:72], v[111:112] offset1:8
	v_mov_b16_e32 v72.h, v113.l
	v_mov_b16_e64 v113.l, v185.h
	v_mov_b16_e64 v72.l, v185.l
	v_mov_b16_e64 v71.l, v181.l
	v_mov_b16_e32 v71.h, v108.l
	v_mov_b16_e64 v108.l, v181.h
	v_mov_b32_e32 v109, v113
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v185, v199, 16, 1
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_store_2addr_b64 v93, v[71:72], v[108:109] offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v46, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v185, v199, v185, 0x7fff
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, 0, v46
	ds_load_b128 v[101:104], v94
	ds_load_b128 v[97:100], v46
	ds_load_b128 v[105:108], v46 offset:2048
	ds_load_b128 v[109:112], v94 offset:2048
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v46, v73, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v46, v73, v46, 0x7fff
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e32 v46.l, 0
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v46.h, 0x7fff, v46.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v71.l, v46.l
	v_mov_b16_e32 v72.l, v46.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v190.l, v46.l
	v_mov_b16_e64 v194.l, v46.l
	v_mov_b16_e64 v198.l, v46.l
	v_mov_b16_e64 v199.l, v46.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[97:104], v[55:62], v[25:32]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v81.l, v46.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[105:112], v[55:62], v[17:24]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[59:62], v96
	ds_load_b128 v[55:58], v95
	ds_load_b128 v[97:100], v95 offset:2048
	ds_load_b128 v[101:104], v96 offset:2048
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v83.l, v46.l
	v_mov_b16_e32 v85.l, v46.l
	v_mov_b16_e32 v75.l, v46.l
	v_mov_b16_e32 v80.l, v46.l
	v_mov_b16_e32 v82.l, v46.l
	v_mov_b16_e32 v84.l, v46.l
	v_mov_b16_e32 v77.l, v46.l
	v_mov_b16_e32 v79.l, v46.l
	v_mov_b16_e32 v76.l, v46.l
	v_mov_b16_e32 v78.l, v46.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[55:62], v[63:70], v[25:32]
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v55, v73, v46
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[17:24], v[97:104], v[63:70], v[17:24]
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v97.l, v46.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v59, v51, 16, 1
	v_bfe_u32 v60, v52, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v56, v55, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v62, v212, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v59, v51, v59, 0x7fff
	v_add3_u32 v60, v52, v60, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v55, v55, v56, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v56, v74, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v63, v212, v62, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v73.h, 0x7fff, v59.h, s7
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v70.l, v46.l
	v_mov_b16_e32 v73.l, v46.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v56, v74, v56, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v59.l, v46.l
	v_mov_b16_e32 v60.l, v46.l
	v_mov_b16_e32 v61.l, v46.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s7, v230, v230
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v97.h, 0x7fff, v56.h, s1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v62.l, v46.l
	v_mov_b16_e32 v63.l, v46.l
	v_mov_b16_e32 v64.l, v46.l
	v_mov_b16_e32 v65.l, v46.l
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v56, v74, v97
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v74.h, 0x7fff, v60.h, s8
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v74.l, v46.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s8, v226, v226
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v66.l, v46.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v57, v56, 16, 1
	v_cmp_o_f32_e64 s1, v56, v56
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v52, v52, v74
	.loc	1 732 54 is_stmt 1              ; attention_backward.py:732:54
	v_mov_b16_e32 v67.l, v46.l
	v_mov_b16_e32 v68.l, v46.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v56, v56, v57, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v57, v54, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v56.l, v46.l
	v_mov_b16_e32 v69.l, v46.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v57, v54, v57, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v57.l, v46.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v57.h, 0x7fff, v57.h, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v54, v54, v57
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v253, v57
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v57, v49, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v58, v54, 16, 1
	v_cmp_o_f32_e64 s3, v54, v54
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v57, v49, v57, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v57.l, v46.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v58, v54, v58, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v54, v48, 16, 1
	v_cndmask_b16 v72.h, 0x7fff, v57.h, s6
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s6, v52, v52
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v58.l, v46.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v54, v48, v54, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v49, v49, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v70.h, 0x7fff, v54.h, s5
	v_bfe_u32 v54, v50, 16, 1
	v_cmp_o_f32_e64 s5, v50, v50
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v48, v48, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v54, v50, v54, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v54.l, 0x7fff, v55.h, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v248, v248
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v71.h, 0x7fff, v54.h, s5
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v54.h, 0x7fff, v56.h, s1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s1, v244, v244
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v50, v50, v71
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v53, v97 offset:512
	ds_store_b16_d16_hi v53, v46
	ds_store_b16_d16_hi v253, v70 offset:512
	ds_store_b16_d16_hi v254, v71
	ds_store_b16_d16_hi v254, v73 offset:512
	ds_store_b16_d16_hi v255, v72
	ds_store_b16_d16_hi v255, v74 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[105:108], v47
	ds_load_b128 v[109:112], v182
	ds_load_b128 v[97:100], v35
	ds_load_b128 v[101:104], v37
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v53, v54
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v46.h, 0x7fff, v58.h, s3
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v53, v54 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v53, v248, 16, 1
	v_bfe_u32 v54, v244, 16, 1
	v_bfe_u32 v74, v210, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v48, v48
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v70, v226, 16, 1
	v_add3_u32 v53, v248, v53, 0x7fff
	v_add3_u32 v55, v244, v54, 0x7fff
	v_add3_u32 v74, v210, v74, 0x7fff
	v_mov_b32_e32 v210, v95
	v_bfe_u32 v71, v222, 16, 1
	v_cndmask_b16 v54.h, 0x7fff, v53.h, vcc_lo
	v_bfe_u32 v53, v240, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v240, v240
	v_cndmask_b16 v55.h, 0x7fff, v55.h, s1
	v_cmp_o_f32_e64 s1, v212, v212
	v_add3_u32 v70, v226, v70, 0x7fff
	v_add3_u32 v53, v240, v53, 0x7fff
	v_add3_u32 v71, v222, v71, 0x7fff
	v_bfe_u32 v72, v218, 16, 1
	v_cndmask_b16 v63.h, 0x7fff, v63.h, s1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s1, v49, v49
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v56.h, 0x7fff, v53.h, vcc_lo
	v_bfe_u32 v53, v236, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v236, v236
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v54.l, v46.l
	v_mov_b16_e32 v55.l, v46.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v72, v218, v72, 0x7fff
	v_add3_u32 v53, v236, v53, 0x7fff
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s8
	v_cndmask_b16 v71.h, 0x7fff, v71.h, s9
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v91, v175, v56
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v175, v201, 16, 1
	v_cndmask_b16 v57.h, 0x7fff, v53.h, vcc_lo
	v_bfe_u32 v53, v232, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v232, v232
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s10
	v_cndmask_b16 v74.h, 0x7fff, v74.h, s12
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v90, v177, v57
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v53, v232, v53, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v92, v165, v55
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v175, v201, v175, 0x7fff
	v_mov_b32_e32 v212, v96
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v96, v145, v63
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v58.h, 0x7fff, v53.h, vcc_lo
	v_bfe_u32 v53, v228, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v228, v228
	v_cmp_o_f32_e64 s8, v239, v239
	v_cmp_o_f32_e64 s9, v237, v237
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v89, v171, v58
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v53, v228, v53, 0x7fff
	v_bfe_u32 v171, v205, 16, 1
	v_cmp_o_f32_e64 s10, v235, v235
	v_cmp_o_f32_e64 s12, v231, v231
	v_bfe_u32 v145, v215, 16, 1
	v_cndmask_b16 v59.h, 0x7fff, v53.h, vcc_lo
	v_bfe_u32 v53, v224, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v224, v224
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v51, v51, v73
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v73, v214, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v88, v173, v59
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v53, v224, v53, 0x7fff
	v_bfe_u32 v165, v211, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s5, v51, v51
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v73, v214, v73, 0x7fff
	v_add3_u32 v171, v205, v171, 0x7fff
	v_cndmask_b16 v60.h, 0x7fff, v53.h, vcc_lo
	v_bfe_u32 v53, v220, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v220, v220
	v_cndmask_b16 v73.h, 0x7fff, v73.h, s11
	v_cmp_o_f32_e64 s11, v233, v233
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v87, v167, v60
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v53, v220, v53, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v60.l, v70.h
	v_mov_b16_e32 v63.l, v73.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v167, v209, 16, 1
	v_bfe_u32 v173, v203, 16, 1
	v_cndmask_b16 v61.h, 0x7fff, v53.h, vcc_lo
	v_bfe_u32 v53, v216, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v216, v216
	v_add3_u32 v167, v209, v167, 0x7fff
	v_add3_u32 v145, v215, v145, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v86, v169, v61
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v53, v216, v53, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v61.l, v71.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v169, v207, 16, 1
	v_add3_u32 v165, v211, v165, 0x7fff
	v_add3_u32 v173, v203, v173, 0x7fff
	v_cndmask_b16 v62.h, 0x7fff, v53.h, vcc_lo
	v_bfe_u32 v53, v208, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v208, v208
	v_add3_u32 v169, v207, v169, 0x7fff
	v_cndmask_b16 v198.h, 0x7fff, v167.h, s23
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v113, v143, v62
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v53, v208, v53, 0x7fff
	v_mov_b32_e32 v208, v94
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v62.l, v72.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v143, v217, 16, 1
	v_cndmask_b16 v199.h, 0x7fff, v171.h, s25
	v_cndmask_b16 v64.h, 0x7fff, v53.h, vcc_lo
	v_bfe_u32 v53, v204, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v204, v204
	v_add3_u32 v143, v217, v143, 0x7fff
	v_cndmask_b16 v145.h, 0x7fff, v145.h, s20
	v_cndmask_b16 v165.h, 0x7fff, v165.h, s22
	v_add3_u32 v53, v204, v53, 0x7fff
	v_cndmask_b16 v169.h, 0x7fff, v169.h, s24
	v_cndmask_b16 v171.h, 0x7fff, v173.h, s26
	v_cndmask_b16 v173.h, 0x7fff, v185.h, s28
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v71.l, v46.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v65.h, 0x7fff, v53.h, vcc_lo
	v_bfe_u32 v53, v200, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v200, v200
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v167.l, v46.l
	v_mov_b16_e32 v70.l, v46.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v94, v141, v65
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v53, v200, v53, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v65.l, v75.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v141, v219, 16, 1
	v_cndmask_b16 v200.h, 0x7fff, v175.h, s27
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v200.l, v46.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v66.h, 0x7fff, v53.h, vcc_lo
	v_bfe_u32 v53, v196, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v196, v196
	v_add3_u32 v141, v219, v141, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v73.l, v46.l
	v_mov_b16_e64 v143.l, v46.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v53, v196, v53, 0x7fff
	v_cndmask_b16 v196.h, 0x7fff, v143.h, s19
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v196.l, v46.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v141.h, 0x7fff, v141.h, s18
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v173.l, v46.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v67.h, 0x7fff, v53.h, vcc_lo
	v_bfe_u32 v53, v192, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v192, v192
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v72.l, v46.l
	v_mov_b16_e32 v74.l, v46.l
	v_mov_b16_e64 v141.l, v46.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v53, v192, v53, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v192.l, v46.l
	v_mov_b16_e64 v171.l, v46.l
	v_mov_b16_e64 v175.l, v46.l
	v_mov_b16_e64 v145.l, v46.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v68.h, 0x7fff, v53.h, vcc_lo
	v_bfe_u32 v53, v188, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v188, v188
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v165.l, v46.l
	v_mov_b16_e64 v169.l, v46.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v53, v188, v53, 0x7fff
	v_bfe_u32 v188, v197, 16, 1
	v_cndmask_b16 v69.h, 0x7fff, v53.h, vcc_lo
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v53, v50, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v93, v163, v54
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v201, v197, v188, 0x7fff
	v_bfe_u32 v188, v195, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v50, v50, v53, 0x7fff
	v_bfe_u32 v53, v49, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v201.l, v46.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v201.h, 0x7fff, v201.h, s29
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v95, v139, v64
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v64.l, v74.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v49, v49, v53, 0x7fff
	v_bfe_u32 v53, v48, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v204, v195, v188, 0x7fff
	v_bfe_u32 v188, v193, 16, 1
	v_bfe_u32 v139, v221, 16, 1
	v_bfe_u32 v163, v213, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v48, v48, v53, 0x7fff
	v_bfe_u32 v53, v51, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v202, v193, v188, 0x7fff
	v_bfe_u32 v188, v191, 16, 1
	v_add3_u32 v139, v221, v139, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v48.l, 0x7fff, v48.h, s3
	v_add3_u32 v51, v51, v53, 0x7fff
	v_bfe_u32 v53, v52, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v253, v46
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v46.h, 0x7fff, v50.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v253, v48 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v48.l, 0x7fff, v51.h, s5
	v_add3_u32 v52, v52, v53, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v50, v242, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v254, v46
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v46.h, 0x7fff, v49.h, s1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v254, v48 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v48.l, 0x7fff, v52.h, s6
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v255, v46
	ds_store_b16 v255, v48 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v48, v250, 16, 1
	v_bfe_u32 v49, v246, 16, 1
	v_bfe_u32 v51, v238, 16, 1
	v_bfe_u32 v52, v234, 16, 1
	v_bfe_u32 v53, v230, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v250, v250
	v_cmp_o_f32_e64 s1, v246, v246
	v_cmp_o_f32_e64 s3, v242, v242
	v_cmp_o_f32_e64 s5, v238, v238
	v_cmp_o_f32_e64 s6, v234, v234
	v_add3_u32 v48, v250, v48, 0x7fff
	v_add3_u32 v49, v246, v49, 0x7fff
	v_add3_u32 v50, v242, v50, 0x7fff
	v_add3_u32 v51, v238, v51, 0x7fff
	v_add3_u32 v52, v234, v52, 0x7fff
	v_add3_u32 v53, v230, v53, 0x7fff
	v_cndmask_b16 v80.h, 0x7fff, v48.h, vcc_lo
	v_cndmask_b16 v81.h, 0x7fff, v49.h, s1
	v_cndmask_b16 v82.h, 0x7fff, v50.h, s3
	v_cndmask_b16 v83.h, 0x7fff, v51.h, s5
	v_cndmask_b16 v84.h, 0x7fff, v52.h, s6
	v_cndmask_b16 v85.h, 0x7fff, v53.h, s7
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[177:180], v47
	ds_load_b128 v[181:184], v182
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v58.l, v84.h
	v_mov_b16_e32 v59.l, v85.h
	v_mov_b16_e32 v57.l, v83.h
	v_mov_b16_e32 v56.l, v82.h
	v_mov_b16_e32 v55.l, v81.h
	v_mov_b16_e32 v54.l, v80.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v48, v133, v69
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v69.l, v79.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v49, v131, v68
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v68.l, v78.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v51, v137, v67
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v67.l, v77.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v53, v135, v66
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v66.l, v76.h
	v_wmma_f32_16x16x16_bf16 v[1:8], v[54:61], v[105:112], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v47, v251, 16, 1
	v_bfe_u32 v50, v249, 16, 1
	v_bfe_u32 v52, v247, 16, 1
	v_bfe_u32 v131, v229, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[62:69], v[97:104], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v133, v227, 16, 1
	v_bfe_u32 v135, v225, 16, 1
	v_bfe_u32 v137, v223, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v251, v251
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[54:61], v[177:184], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v54, v245, 16, 1
	v_bfe_u32 v55, v243, 16, 1
	v_bfe_u32 v56, v241, 16, 1
	v_bfe_u32 v57, v239, 16, 1
	v_bfe_u32 v58, v237, 16, 1
	v_bfe_u32 v59, v235, 16, 1
	v_bfe_u32 v60, v233, 16, 1
	v_bfe_u32 v61, v231, 16, 1
	v_add3_u32 v47, v251, v47, 0x7fff
	v_cmp_o_f32_e64 s1, v249, v249
	v_add3_u32 v50, v249, v50, 0x7fff
	v_cmp_o_f32_e64 s3, v247, v247
	v_add3_u32 v52, v247, v52, 0x7fff
	v_cmp_o_f32_e64 s5, v245, v245
	v_add3_u32 v54, v245, v54, 0x7fff
	v_cmp_o_f32_e64 s6, v243, v243
	v_add3_u32 v55, v243, v55, 0x7fff
	v_cmp_o_f32_e64 s7, v241, v241
	v_add3_u32 v56, v241, v56, 0x7fff
	v_add3_u32 v57, v239, v57, 0x7fff
	v_add3_u32 v58, v237, v58, 0x7fff
	v_add3_u32 v59, v235, v59, 0x7fff
	v_add3_u32 v60, v233, v60, 0x7fff
	v_add3_u32 v61, v231, v61, 0x7fff
	v_add3_u32 v131, v229, v131, 0x7fff
	v_add3_u32 v133, v227, v133, 0x7fff
	v_add3_u32 v135, v225, v135, 0x7fff
	v_add3_u32 v137, v223, v137, 0x7fff
	v_add3_u32 v163, v213, v163, 0x7fff
	v_add3_u32 v205, v191, v188, 0x7fff
	v_bfe_u32 v188, v189, 16, 1
	v_cndmask_b16 v190.h, 0x7fff, v56.h, s7
	v_cndmask_b16 v191.h, 0x7fff, v58.h, s9
	v_cndmask_b16 v192.h, 0x7fff, v60.h, s11
	v_cndmask_b16 v193.h, 0x7fff, v131.h, s13
	v_add3_u32 v203, v189, v188, 0x7fff
	v_cndmask_b16 v188.h, 0x7fff, v50.h, s1
	v_cndmask_b16 v189.h, 0x7fff, v54.h, s5
	v_cndmask_b16 v194.h, 0x7fff, v135.h, s15
	v_cndmask_b16 v195.h, 0x7fff, v139.h, s17
	v_cndmask_b16 v197.h, 0x7fff, v163.h, s21
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v188.l, v46.l
	v_mov_b16_e64 v189.l, v46.l
	v_mov_b16_e64 v191.l, v46.l
	v_mov_b16_e64 v193.l, v46.l
	v_mov_b16_e64 v195.l, v46.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v131.h, 0x7fff, v47.h, vcc_lo
	v_cndmask_b16 v135.h, 0x7fff, v52.h, s3
	v_cndmask_b16 v139.h, 0x7fff, v55.h, s6
	v_cndmask_b16 v143.h, 0x7fff, v57.h, s8
	v_cndmask_b16 v163.h, 0x7fff, v59.h, s10
	v_cndmask_b16 v167.h, 0x7fff, v61.h, s12
	v_cndmask_b16 v133.h, 0x7fff, v133.h, s14
	v_cndmask_b16 v137.h, 0x7fff, v137.h, s16
	v_cndmask_b16 v202.h, 0x7fff, v202.h, s31
	v_cndmask_b16 v203.h, 0x7fff, v203.h, s34
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v197.l, v46.l
	v_mov_b16_e64 v202.l, v46.l
	v_mov_b16_e64 v203.l, v46.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v175.h, 0x7fff, v204.h, s30
	v_cndmask_b16 v46.h, 0x7fff, v205.h, s33
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v149, v149, v195 :: v_dual_sub_f32 v50, v119, v202
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v195.l, v137.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v147, v147, v194 :: v_dual_sub_f32 v56, v164, v81
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v194.l, v133.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v153, v153, v193 :: v_dual_sub_f32 v54, v123, v200
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v193.l, v167.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v151, v151, v192 :: v_dual_sub_f32 v58, v176, v83
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v192.l, v163.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v157, v157, v191 :: v_dual_sub_f32 v60, v172, v85
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v191.l, v143.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v155, v155, v190
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v190.l, v139.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v159, v159, v188
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v188.l, v131.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v135.l, v46.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v161, v161, v189
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v189.l, v135.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v47, v121, v203
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v203.l, v46.h
	v_mov_b16_e64 v202.l, v175.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v52, v125, v201
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v201.l, v173.h
	v_mov_b16_e64 v200.l, v171.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v119, v129, v199
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v199.l, v169.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v121, v127, v198
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v198.l, v165.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v117, v117, v197
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v197.l, v145.h
	v_wmma_f32_16x16x16_bf16 v[9:16], v[188:195], v[105:112], v[9:16]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v137.l, v46.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v115, v115, v196
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v196.l, v141.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v55, v162, v80
	v_sub_f32_e32 v57, v174, v82
	v_sub_f32_e32 v59, v170, v84
	v_sub_f32_e32 v61, v166, v70
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[196:203], v[97:104], v[9:16]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	v_cmp_o_f32_e64 s3, v56, v56
	v_cmp_o_f32_e64 s6, v57, v57
	v_cmp_o_f32_e64 s8, v58, v58
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[188:195], v[177:184], v[9:16]
	ds_load_b128 v[177:180], v35
	ds_load_b128 v[181:184], v37
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s10, v59, v59
	v_cmp_o_f32_e64 s12, v60, v60
	v_cmp_o_f32_e64 s14, v61, v61
	v_cmp_o_f32_e64 s1, v93, v93
	v_cmp_o_f32_e64 s5, v92, v92
	v_cmp_o_f32_e64 s7, v91, v91
	v_cmp_o_f32_e64 s9, v90, v90
	v_cmp_o_f32_e64 s11, v89, v89
	v_cmp_o_f32_e64 s13, v88, v88
	v_cmp_o_f32_e64 s15, v87, v87
	v_cmp_o_f32_e64 s17, v86, v86
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v131.l, v46.l
	v_mov_b16_e64 v139.l, v46.l
	v_mov_b16_e64 v163.l, v46.l
	v_mov_b16_e64 v133.l, v46.l
	v_mov_b32_e32 v123, v35
	v_dual_mov_b32 v189, v40 :: v_dual_mov_b32 v40, v45
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v46, v120, v46
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[62:69], v[177:184], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v62, v168, v71
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v63, v55, 16, 1
	v_bfe_u32 v64, v56, 16, 1
	v_bfe_u32 v65, v57, 16, 1
	v_bfe_u32 v66, v58, 16, 1
	v_bfe_u32 v67, v59, 16, 1
	v_bfe_u32 v68, v60, 16, 1
	v_bfe_u32 v69, v61, 16, 1
	v_bfe_u32 v70, v62, 16, 1
	v_add3_u32 v55, v55, v63, 0x7fff
	v_bfe_u32 v63, v93, 16, 1
	v_add3_u32 v56, v56, v64, 0x7fff
	v_bfe_u32 v64, v92, 16, 1
	v_add3_u32 v57, v57, v65, 0x7fff
	v_bfe_u32 v65, v91, 16, 1
	v_add3_u32 v58, v58, v66, 0x7fff
	v_bfe_u32 v66, v90, 16, 1
	v_add3_u32 v59, v59, v67, 0x7fff
	v_bfe_u32 v67, v89, 16, 1
	v_add3_u32 v60, v60, v68, 0x7fff
	v_bfe_u32 v68, v88, 16, 1
	v_add3_u32 v61, v61, v69, 0x7fff
	v_bfe_u32 v69, v87, 16, 1
	v_cmp_o_f32_e64 s16, v62, v62
	v_add3_u32 v62, v62, v70, 0x7fff
	v_bfe_u32 v70, v86, 16, 1
	v_add3_u32 v63, v93, v63, 0x7fff
	v_add3_u32 v64, v92, v64, 0x7fff
	v_add3_u32 v65, v91, v65, 0x7fff
	v_add3_u32 v66, v90, v66, 0x7fff
	v_add3_u32 v67, v89, v67, 0x7fff
	v_add3_u32 v68, v88, v68, 0x7fff
	v_add3_u32 v69, v87, v69, 0x7fff
	v_add3_u32 v70, v86, v70, 0x7fff
	v_cndmask_b16 v55.l, 0x7fff, v55.h, vcc_lo
	v_cndmask_b16 v55.h, 0x7fff, v63.h, s1
	v_cndmask_b16 v56.l, 0x7fff, v56.h, s3
	v_cndmask_b16 v56.h, 0x7fff, v64.h, s5
	v_cndmask_b16 v57.l, 0x7fff, v57.h, s6
	v_cndmask_b16 v57.h, 0x7fff, v65.h, s7
	v_cndmask_b16 v58.l, 0x7fff, v58.h, s8
	v_cndmask_b16 v58.h, 0x7fff, v66.h, s9
	v_cndmask_b16 v59.l, 0x7fff, v59.h, s10
	v_cndmask_b16 v59.h, 0x7fff, v67.h, s11
	v_cndmask_b16 v60.l, 0x7fff, v60.h, s12
	v_cndmask_b16 v60.h, 0x7fff, v68.h, s13
	v_cndmask_b16 v61.l, 0x7fff, v61.h, s14
	v_cndmask_b16 v61.h, 0x7fff, v69.h, s15
	v_cndmask_b16 v62.l, 0x7fff, v62.h, s16
	v_cndmask_b16 v62.h, 0x7fff, v70.h, s17
	v_cmp_o_f32_e64 s7, v155, v155
	v_cmp_o_f32_e64 s9, v157, v157
	v_cmp_o_f32_e64 s11, v151, v151
	v_cmp_o_f32_e64 s13, v153, v153
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[55:62], v[105:112], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v55, v158, v131
	v_sub_f32_e32 v56, v160, v135
	v_sub_f32_e32 v57, v154, v139
	v_sub_f32_e32 v58, v156, v143
	v_sub_f32_e32 v59, v150, v163
	v_dual_sub_f32 v60, v152, v167 :: v_dual_sub_f32 v61, v146, v133
	v_sub_f32_e32 v62, v148, v137
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v63, v55, 16, 1
	v_bfe_u32 v64, v56, 16, 1
	v_bfe_u32 v65, v57, 16, 1
	v_bfe_u32 v66, v58, 16, 1
	v_bfe_u32 v67, v59, 16, 1
	v_bfe_u32 v68, v60, 16, 1
	v_bfe_u32 v69, v61, 16, 1
	v_bfe_u32 v70, v62, 16, 1
	v_mov_b32_e32 v154, v36
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	v_add3_u32 v55, v55, v63, 0x7fff
	v_bfe_u32 v63, v159, 16, 1
	v_cmp_o_f32_e64 s3, v56, v56
	v_add3_u32 v56, v56, v64, 0x7fff
	v_bfe_u32 v64, v161, 16, 1
	v_cmp_o_f32_e64 s6, v57, v57
	v_add3_u32 v57, v57, v65, 0x7fff
	v_bfe_u32 v65, v155, 16, 1
	v_cmp_o_f32_e64 s8, v58, v58
	v_add3_u32 v58, v58, v66, 0x7fff
	v_bfe_u32 v66, v157, 16, 1
	v_cmp_o_f32_e64 s10, v59, v59
	v_add3_u32 v59, v59, v67, 0x7fff
	v_bfe_u32 v67, v151, 16, 1
	v_cmp_o_f32_e64 s12, v60, v60
	v_add3_u32 v60, v60, v68, 0x7fff
	v_bfe_u32 v68, v153, 16, 1
	v_cmp_o_f32_e64 s14, v61, v61
	v_add3_u32 v61, v61, v69, 0x7fff
	v_bfe_u32 v69, v147, 16, 1
	v_cmp_o_f32_e64 s16, v62, v62
	v_add3_u32 v62, v62, v70, 0x7fff
	v_bfe_u32 v70, v149, 16, 1
	v_cmp_o_f32_e64 s1, v159, v159
	v_add3_u32 v63, v159, v63, 0x7fff
	v_cmp_o_f32_e64 s5, v161, v161
	v_add3_u32 v64, v161, v64, 0x7fff
	v_add3_u32 v65, v155, v65, 0x7fff
	v_add3_u32 v66, v157, v66, 0x7fff
	v_add3_u32 v67, v151, v67, 0x7fff
	v_add3_u32 v68, v153, v68, 0x7fff
	v_cmp_o_f32_e64 s15, v147, v147
	v_add3_u32 v69, v147, v69, 0x7fff
	v_cmp_o_f32_e64 s17, v149, v149
	v_add3_u32 v70, v149, v70, 0x7fff
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[196:203], v[177:184], v[9:16]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v55.l, 0x7fff, v55.h, vcc_lo
	v_cndmask_b16 v55.h, 0x7fff, v63.h, s1
	v_cndmask_b16 v56.l, 0x7fff, v56.h, s3
	v_cndmask_b16 v56.h, 0x7fff, v64.h, s5
	v_cndmask_b16 v57.l, 0x7fff, v57.h, s6
	v_cndmask_b16 v57.h, 0x7fff, v65.h, s7
	v_cndmask_b16 v58.l, 0x7fff, v58.h, s8
	v_cndmask_b16 v58.h, 0x7fff, v66.h, s9
	v_cndmask_b16 v59.l, 0x7fff, v59.h, s10
	v_cndmask_b16 v59.h, 0x7fff, v67.h, s11
	v_cndmask_b16 v60.l, 0x7fff, v60.h, s12
	v_cndmask_b16 v60.h, 0x7fff, v68.h, s13
	v_cndmask_b16 v61.l, 0x7fff, v61.h, s14
	v_cndmask_b16 v61.h, 0x7fff, v69.h, s15
	v_cndmask_b16 v62.l, 0x7fff, v62.h, s16
	v_cndmask_b16 v62.h, 0x7fff, v70.h, s17
	v_cmp_o_f32_e64 s11, v53, v53
	v_cmp_o_f32_e64 s13, v51, v51
	v_cmp_o_f32_e64 s15, v49, v49
	v_cmp_o_f32_e64 s1, v113, v113
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[55:62], v[105:112], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v59, v134, v76 :: v_dual_sub_f32 v60, v136, v77
	v_sub_f32_e32 v61, v130, v78
	v_dual_sub_f32 v55, v142, v72 :: v_dual_sub_f32 v56, v144, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v67, v59, 16, 1
	v_cmp_o_f32_e64 s10, v59, v59
	v_cmp_o_f32_e64 s12, v60, v60
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v57, v138, v74 :: v_dual_sub_f32 v58, v140, v75
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v59, v59, v67, 0x7fff
	v_bfe_u32 v67, v53, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v62, v132, v79
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v61, v61
	v_bfe_u32 v63, v55, 16, 1
	v_bfe_u32 v64, v56, 16, 1
	v_add3_u32 v53, v53, v67, 0x7fff
	v_bfe_u32 v67, v60, 16, 1
	v_bfe_u32 v65, v57, 16, 1
	v_bfe_u32 v66, v58, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	v_add3_u32 v55, v55, v63, 0x7fff
	v_add3_u32 v60, v60, v67, 0x7fff
	v_bfe_u32 v67, v51, 16, 1
	v_bfe_u32 v63, v113, 16, 1
	v_cmp_o_f32_e64 s3, v56, v56
	v_add3_u32 v56, v56, v64, 0x7fff
	v_bfe_u32 v64, v96, 16, 1
	v_add3_u32 v51, v51, v67, 0x7fff
	v_bfe_u32 v67, v61, 16, 1
	v_cmp_o_f32_e64 s6, v57, v57
	v_add3_u32 v57, v57, v65, 0x7fff
	v_bfe_u32 v65, v95, 16, 1
	v_cmp_o_f32_e64 s8, v58, v58
	v_add3_u32 v61, v61, v67, 0x7fff
	v_bfe_u32 v67, v49, 16, 1
	v_add3_u32 v58, v58, v66, 0x7fff
	v_bfe_u32 v66, v94, 16, 1
	v_cmp_o_f32_e64 s16, v62, v62
	v_add3_u32 v63, v113, v63, 0x7fff
	v_add3_u32 v49, v49, v67, 0x7fff
	v_bfe_u32 v67, v62, 16, 1
	v_cmp_o_f32_e64 s5, v96, v96
	v_add3_u32 v64, v96, v64, 0x7fff
	v_cmp_o_f32_e64 s7, v95, v95
	v_add3_u32 v65, v95, v65, 0x7fff
	v_add3_u32 v62, v62, v67, 0x7fff
	v_bfe_u32 v67, v48, 16, 1
	v_cmp_o_f32_e64 s9, v94, v94
	v_add3_u32 v66, v94, v66, 0x7fff
	v_cmp_o_f32_e64 s17, v48, v48
	v_cndmask_b16 v55.l, 0x7fff, v55.h, vcc_lo
	v_add3_u32 v48, v48, v67, 0x7fff
	v_cndmask_b16 v55.h, 0x7fff, v63.h, s1
	v_cndmask_b16 v56.l, 0x7fff, v56.h, s3
	v_cndmask_b16 v56.h, 0x7fff, v64.h, s5
	v_cndmask_b16 v57.l, 0x7fff, v57.h, s6
	v_cndmask_b16 v57.h, 0x7fff, v65.h, s7
	v_cndmask_b16 v58.l, 0x7fff, v58.h, s8
	v_cndmask_b16 v58.h, 0x7fff, v66.h, s9
	v_cndmask_b16 v59.l, 0x7fff, v59.h, s10
	v_cndmask_b16 v59.h, 0x7fff, v53.h, s11
	v_cndmask_b16 v60.l, 0x7fff, v60.h, s12
	v_cndmask_b16 v60.h, 0x7fff, v51.h, s13
	v_cndmask_b16 v61.l, 0x7fff, v61.h, s14
	v_cndmask_b16 v61.h, 0x7fff, v49.h, s15
	v_cndmask_b16 v62.l, 0x7fff, v62.h, s16
	v_cndmask_b16 v62.h, 0x7fff, v48.h, s17
	v_cmp_o_f32_e64 s11, v54, v54
	v_cmp_o_f32_e64 s13, v52, v52
	v_dual_mov_b32 v131, v43 :: v_dual_sub_f32 v48, v114, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[55:62], v[97:104], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v55, v122, v171 :: v_dual_sub_f32 v56, v124, v173
	v_sub_f32_e32 v57, v118, v175
	v_sub_f32_e32 v49, v116, v145
	v_sub_f32_e32 v51, v126, v165
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v62, v55, 16, 1
	v_cmp_o_f32_e64 s10, v55, v55
	v_cmp_o_f32_e64 s12, v56, v56
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v53, v128, v169
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v57, v57
	v_add3_u32 v55, v55, v62, 0x7fff
	v_bfe_u32 v62, v54, 16, 1
	v_bfe_u32 v58, v48, 16, 1
	v_bfe_u32 v59, v49, 16, 1
	v_bfe_u32 v60, v51, 16, 1
	v_bfe_u32 v61, v53, 16, 1
	v_add3_u32 v54, v54, v62, 0x7fff
	v_bfe_u32 v62, v56, 16, 1
	v_cmp_o_f32_e64 s15, v50, v50
	v_mov_b32_e32 v150, v38
	v_mov_b32_e32 v152, v44
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	v_add3_u32 v56, v56, v62, 0x7fff
	v_bfe_u32 v62, v52, 16, 1
	v_add3_u32 v48, v48, v58, 0x7fff
	v_bfe_u32 v58, v115, 16, 1
	v_cmp_o_f32_e64 s3, v49, v49
	v_add3_u32 v49, v49, v59, 0x7fff
	v_add3_u32 v52, v52, v62, 0x7fff
	v_bfe_u32 v62, v57, 16, 1
	v_bfe_u32 v59, v117, 16, 1
	v_cmp_o_f32_e64 s6, v51, v51
	v_add3_u32 v51, v51, v60, 0x7fff
	v_bfe_u32 v60, v121, 16, 1
	v_add3_u32 v57, v57, v62, 0x7fff
	v_bfe_u32 v62, v50, 16, 1
	v_cmp_o_f32_e64 s8, v53, v53
	v_add3_u32 v53, v53, v61, 0x7fff
	v_bfe_u32 v61, v119, 16, 1
	v_cmp_o_f32_e64 s16, v46, v46
	v_add3_u32 v62, v50, v62, 0x7fff
	v_bfe_u32 v50, v46, 16, 1
	v_cmp_o_f32_e64 s1, v115, v115
	v_add3_u32 v58, v115, v58, 0x7fff
	v_cmp_o_f32_e64 s5, v117, v117
	v_add3_u32 v59, v117, v59, 0x7fff
	v_add3_u32 v63, v46, v50, 0x7fff
	v_bfe_u32 v46, v47, 16, 1
	v_cmp_o_f32_e64 s7, v121, v121
	v_add3_u32 v60, v121, v60, 0x7fff
	v_cmp_o_f32_e64 s9, v119, v119
	v_add3_u32 v61, v119, v61, 0x7fff
	v_cmp_o_f32_e64 s17, v47, v47
	v_add3_u32 v64, v47, v46, 0x7fff
	v_cndmask_b16 v46.l, 0x7fff, v48.h, vcc_lo
	v_cndmask_b16 v46.h, 0x7fff, v58.h, s1
	v_cndmask_b16 v47.l, 0x7fff, v49.h, s3
	v_cndmask_b16 v47.h, 0x7fff, v59.h, s5
	v_cndmask_b16 v48.l, 0x7fff, v51.h, s6
	v_cndmask_b16 v48.h, 0x7fff, v60.h, s7
	v_cndmask_b16 v49.l, 0x7fff, v53.h, s8
	v_cndmask_b16 v49.h, 0x7fff, v61.h, s9
	v_cndmask_b16 v50.l, 0x7fff, v55.h, s10
	v_cndmask_b16 v50.h, 0x7fff, v54.h, s11
	v_cndmask_b16 v51.l, 0x7fff, v56.h, s12
	v_cndmask_b16 v51.h, 0x7fff, v52.h, s13
	v_cndmask_b16 v52.l, 0x7fff, v57.h, s14
	v_cndmask_b16 v52.h, 0x7fff, v62.h, s15
	v_cndmask_b16 v53.l, 0x7fff, v63.h, s16
	v_cndmask_b16 v53.h, 0x7fff, v64.h, s17
	s_clause 0xc                            ; 124-byte Folded Reload
	scratch_load_b128 v[69:72], off, off offset:228
	scratch_load_b128 v[73:76], off, off offset:244
	scratch_load_b32 v134, off, off offset:148
	scratch_load_b32 v36, off, off offset:136
	scratch_load_b128 v[77:80], off, off offset:260
	scratch_load_b128 v[81:84], off, off offset:276
	scratch_load_b32 v132, off, off offset:128
	scratch_load_b32 v38, off, off offset:116
	scratch_load_b32 v130, off, off offset:132
	scratch_load_b32 v44, off, off offset:124
	scratch_load_b32 v43, off, off offset:120
	scratch_load_b128 v[85:88], off, off offset:292
	scratch_load_b128 v[89:92], off, off offset:308
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[46:53], v[97:104], v[9:16]
	s_clause 0x1f                           ; 156-byte Folded Reload
	scratch_load_b64 v[104:105], off, off
	scratch_load_b32 v101, off, off offset:104
	scratch_load_b32 v100, off, off offset:100
	scratch_load_b32 v99, off, off offset:96
	scratch_load_b32 v98, off, off offset:92
	scratch_load_b32 v135, off, off offset:216
	scratch_load_b32 v60, off, off offset:492
	scratch_load_b32 v61, off, off offset:496
	scratch_load_b32 v56, off, off offset:484
	scratch_load_b32 v62, off, off offset:504
	scratch_load_b32 v57, off, off offset:488
	scratch_load_b32 v139, off, off offset:204
	scratch_load_b32 v143, off, off offset:200
	scratch_load_b32 v155, off, off offset:196
	scratch_load_b32 v151, off, off offset:180
	scratch_load_b32 v153, off, off offset:188
	scratch_load_b32 v147, off, off offset:176
	scratch_load_b32 v149, off, off offset:172
	scratch_load_b32 v142, off, off offset:168
	scratch_load_b32 v146, off, off offset:212
	scratch_load_b32 v133, off, off offset:192
	scratch_load_b32 v148, off, off offset:208
	scratch_load_b32 v137, off, off offset:184
	scratch_load_b128 v[156:159], off, off offset:324
	scratch_load_b128 v[160:163], off, off offset:340
	scratch_load_b32 v109, off, off offset:112
	scratch_load_b32 v144, off, off offset:164
	scratch_load_b32 v138, off, off offset:160
	scratch_load_b32 v140, off, off offset:152
	scratch_load_b32 v141, off, off offset:140
	scratch_load_b32 v145, off, off offset:156
	scratch_load_b32 v136, off, off offset:144
	scratch_load_b32 v58, off, off offset:108 ; 4-byte Folded Reload
	v_dual_mov_b32 v93, v206 :: v_dual_mov_b32 v94, v208
	v_dual_mov_b32 v96, v212 :: v_dual_mov_b32 v95, v210
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s1, s73, 32
	s_cmpk_lt_u32 s73, 0x7e0
	s_mov_b32 s73, s1
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ;   in Loop: Header=BB0_1 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_movk_i32 s1, 0x800
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_and_not1_b32 vcc_lo, exec_lo, s48
	s_mov_b32 s5, 0
	s_cbranch_vccnz .LBB0_1
; %bb.4:
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v64, off, off offset:508
	scratch_load_b32 v33, off, off offset:516
	scratch_load_b32 v34, off, off offset:512
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s5, s51, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s50
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s53, s53, 0xffff
	.loc	1 753 13                        ; attention_backward.py:753:13
	s_waitcnt vmcnt(2)
	v_mul_lo_u32 v43, s54, v64
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, v33, v34
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s70, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v47, 2, v33
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v49, v43, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s2, s54, v33
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v46, 6, v33
	v_or_b32_e32 v48, 4, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v50, v43, v47
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v49, v49, s68, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v45, 8, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v51, v43, v48
	v_add_nc_u32_e32 v52, v43, v46
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	v_add_lshl_u32 v50, v50, s68, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v44, 10, v33
	v_or_b32_e32 v41, 14, v33
	v_or_b32_e32 v42, 12, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v53, v43, v45
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v51, v51, s68, 2
	buffer_store_b32 v25, v49, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v50, s2
	v_add_lshl_u32 v49, v52, s68, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v54, v43, v44
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v0, 32, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v55, v43, v42
	v_add_nc_u32_e32 v56, v43, v41
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v50, 0x80000000, v51, s2
	v_add_lshl_u32 v51, v53, s68, 2
	buffer_store_b32 v26, v25, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v49, s2
	v_add_lshl_u32 v52, v54, s68, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v40, 34, v33
	v_cmp_gt_i32_e64 s0, s55, v33
	v_cmp_gt_i32_e64 s1, s55, v0
	v_or_b32_e32 v39, 36, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s3, s54, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v27, v50, s[4:7], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v51, s2
	v_add_lshl_u32 v49, v55, s68, 2
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	v_add_lshl_u32 v25, v56, s68, 2
	v_cndmask_b32_e64 v27, 0x80000000, v52, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v57, v43, v0
	v_add_nc_u32_e32 v58, v43, v40
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	buffer_store_b32 v30, v27, s[4:7], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v49, s2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s3
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s0, vcc_lo, s0
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v59, v43, v39
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v38, 38, v33
	v_or_b32_e32 v37, 40, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v27, v57, s68, 2
	v_add_lshl_u32 v28, v58, s68, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v36, 42, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v29, v59, s68, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v35, 44, v33
	v_or_b32_e32 v34, 46, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v60, v43, v38
	v_add_nc_u32_e32 v61, v43, v37
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	buffer_store_b32 v31, v26, s[4:7], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v28, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v62, v43, v36
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v28, 0x80000000, v29, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v63, v43, v35
	v_add_nc_u32_e32 v43, v43, v34
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v32, v25, s[4:7], 0 offen
	buffer_store_b32 v17, v27, s[4:7], 0 offen
	v_add_lshl_u32 v17, v60, s68, 2
	s_clause 0x1
	buffer_store_b32 v18, v26, s[4:7], 0 offen
	buffer_store_b32 v19, v28, s[4:7], 0 offen
	v_add_lshl_u32 v18, v61, s68, 2
	v_add_lshl_u32 v19, v62, s68, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v27, s55, v64
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v25, v63, s68, 2
	v_add_lshl_u32 v26, v43, s68, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	s_clause 0x4
	buffer_store_b32 v20, v17, s[4:7], 0 offen
	buffer_store_b32 v21, v18, s[4:7], 0 offen
	buffer_store_b32 v22, v19, s[4:7], 0 offen
	buffer_store_b32 v23, v25, s[4:7], 0 offen
	buffer_store_b32 v24, v26, s[4:7], 0 offen
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v17, v27, v33
	v_add_nc_u32_e32 v18, v27, v47
	v_add_nc_u32_e32 v19, v27, v48
	v_add_nc_u32_e32 v20, v27, v46
	v_add_nc_u32_e32 v21, v27, v45
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v17, v17, s35, 2
	v_add_lshl_u32 v18, v18, s35, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v22, v27, v44
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_mov_b32 s54, s6
	s_mov_b32 s55, s7
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v23, v27, v42
	v_add_nc_u32_e32 v24, v27, v41
	v_add_nc_u32_e32 v0, v27, v0
	v_add_nc_u32_e32 v25, v27, v40
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v1, v17, s[52:55], 0 offen
	v_add_lshl_u32 v1, v19, s35, 2
	v_cndmask_b32_e64 v17, 0x80000000, v18, s0
	v_add_lshl_u32 v18, v20, s35, 2
	v_add_lshl_u32 v19, v21, s35, 2
	v_add_lshl_u32 v20, v22, s35, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	buffer_store_b32 v2, v17, s[52:55], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v18, s0
	v_cndmask_b32_e64 v17, 0x80000000, v19, s0
	v_cndmask_b32_e64 v18, 0x80000000, v20, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v26, v27, v39
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v3, v1, s[52:55], 0 offen
	v_add_lshl_u32 v1, v23, s35, 2
	s_clause 0x2
	buffer_store_b32 v4, v2, s[52:55], 0 offen
	buffer_store_b32 v5, v17, s[52:55], 0 offen
	buffer_store_b32 v6, v18, s[52:55], 0 offen
	v_add_lshl_u32 v2, v24, s35, 2
	v_add_lshl_u32 v0, v0, s35, 2
	v_add_lshl_u32 v3, v25, s35, 2
	v_add_lshl_u32 v4, v26, s35, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v28, v27, v38
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v29, v27, v37
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v30, v27, v36
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_add_nc_u32 v31, v27, v35
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_add_nc_u32 v27, v27, v34
	s_clause 0x4
	buffer_store_b32 v7, v1, s[52:55], 0 offen
	buffer_store_b32 v8, v2, s[52:55], 0 offen
	buffer_store_b32 v9, v0, s[52:55], 0 offen
	buffer_store_b32 v10, v3, s[52:55], 0 offen
	buffer_store_b32 v11, v4, s[52:55], 0 offen
	v_add_lshl_u32 v0, v28, s35, 2
	v_add_lshl_u32 v1, v29, s35, 2
	v_add_lshl_u32 v2, v30, s35, 2
	v_add_lshl_u32 v3, v31, s35, 2
	v_add_lshl_u32 v4, v27, s35, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b32 v12, v0, s[52:55], 0 offen
	buffer_store_b32 v13, v1, s[52:55], 0 offen
	buffer_store_b32 v14, v2, s[52:55], 0 offen
	buffer_store_b32 v15, v3, s[52:55], 0 offen
	buffer_store_b32 v16, v4, s[52:55], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 524
		.amdhsa_kernarg_size 176
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
		.amdhsa_next_free_sgpr 74
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 74
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 524
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17260
; TotalNumSgprs: 76
; NumVgprs: 256
; ScratchSize: 524
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 76
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
	.byte	0                               ; DW_CHILDREN_no
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x1f DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention_backward.py"         ; string offset=7 ; attention_backward.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=29 ; <repo>/src/amd_strix_halo_kernels
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
      - .address_space:  global
        .offset:         80
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         88
        .size:           8
        .value_kind:     global_buffer
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
        .size:           4
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
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .offset:         140
        .size:           4
        .value_kind:     by_value
      - .offset:         144
        .size:           1
        .value_kind:     by_value
      - .offset:         145
        .size:           1
        .value_kind:     by_value
      - .offset:         148
        .size:           4
        .value_kind:     by_value
      - .offset:         152
        .size:           4
        .value_kind:     by_value
      - .offset:         156
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         160
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         168
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 176
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 524
    .sgpr_count:     76
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 130
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
