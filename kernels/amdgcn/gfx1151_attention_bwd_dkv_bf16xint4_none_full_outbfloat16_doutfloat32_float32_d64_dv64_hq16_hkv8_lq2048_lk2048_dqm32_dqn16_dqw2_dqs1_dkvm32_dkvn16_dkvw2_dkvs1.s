	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x74
.Ltmp0:
	.loc	1 536 23 prologue_end           ; attention_backward.py:536:23
	v_and_b32_e32 v26, 7, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v9, 3, v0
	s_clause 0x2
	s_load_b128 s[44:47], s[0:1], 0x0
	s_load_b32 s33, s[0:1], 0x7c
	s_load_b64 s[28:29], s[0:1], 0x58
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s34, s2, 4
	.loc	1 533 24                        ; attention_backward.py:533:24
	s_lshl_b32 s31, s3, 11
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_lshlrev_b32_e32 v61, 3, v26
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v11, s34, v9
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_add_i32 s31, s31, s34
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_lshlrev_b32_e32 v38, 4, v0
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s6, 0x800, v11
	.loc	1 541 32                        ; attention_backward.py:541:32
	s_ashr_i32 s7, s34, 1
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_mov_b16_e32 v64.l, 0
	.loc	1 541 32                        ; attention_backward.py:541:32
	v_or_b32_e32 v12, s7, v9
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v45, 15, v0
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_and_b32_e32 v30, 32, v0
	s_load_b64 s[8:9], s[0:1], 0x10
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v33.h, v64.l
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[201:202], null, s18, v9, v[61:62]
	s_mul_i32 s30, s18, s31
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e64 s5, s18, v61
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_and_b32 s49, s47, 0xffff
	s_mov_b32 s48, s46
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mul_lo_u32 v25, s19, v9
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v96.h, v64.l
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_lshl_add_u32 v2, s18, 3, v201
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_lshl_u32 v1, v201, s30, 1
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s6, s5
	.loc	1 543 26                        ; attention_backward.py:543:26
	s_lshl_b32 s4, s3, 10
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_bfe_i32 s2, s2, 0x1001b
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off
	scratch_store_b32 off, v38, off offset:8
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_lshl_u32 v2, v2, s30, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 545 17                        ; attention_backward.py:545:17
	s_add_i32 s7, s7, s4
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v10, 56, v0
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_lshr_b32 s2, s2, 28
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e32 v5, 0x80000000, v2, vcc_lo
	.loc	1 549 23                        ; attention_backward.py:549:23
	v_cmp_gt_i32_e32 vcc_lo, 0x400, v12
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_clause 0x1
	buffer_load_b128 v[1:4], v1, s[48:51], 0 offen
	buffer_load_b128 v[5:8], v5, s[48:51], 0 offen
	v_lshlrev_b32_e32 v26, 4, v26
	v_lshlrev_b32_e32 v27, 1, v10
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s4, s19, v61
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_mov_b32 s10, s50
	s_mov_b32 s11, s51
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshl_or_b32 v26, v45, 7, v26
	v_xor_b32_e32 v13, v38, v27
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_and_b32 s9, s9, 0xffff
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_bfe_i32 v31, v0, 3, 1
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_i32 v29, v0, 4, 1
	v_lshl_or_b32 v74, v30, 6, v26
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v95, v25, v61
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v190, 0, v13
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v32, v0, 4, 1
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v35.h, v64.l
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xad_u32 v71, v26, 16, 0
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[9:10], null, s19, s7, v[95:96]
	.loc	1 549 22                        ; attention_backward.py:549:22
	s_and_b32 s7, vcc_lo, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xad_u32 v73, v26, 32, 0
	v_xad_u32 v77, v26, 48, 0
	v_xad_u32 v81, v26, 64, 0
	v_xad_u32 v85, 0x50, v26, 0
	v_xad_u32 v89, 0x60, v26, 0
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v9, 0x80000000, v9, s7
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xad_u32 v93, 0x70, v26, 0
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v37.h, v64.l
	s_load_b256 s[36:43], s[0:1], 0x38
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v67.l, v64.l
	v_lshl_add_u32 v78, s19, 3, v25
	v_lshl_add_u32 v79, s19, 4, v25
	v_mov_b16_e32 v66.l, v64.l
	v_mov_b16_e32 v68.l, v64.l
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v36.h, v64.l
	v_mov_b16_e32 v34.h, v64.l
	s_lshl_b32 s35, s3, 12
	s_mov_b32 s20, 0
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_mul_f32 s56, s33, 0x3fb8aa3b
	s_mov_b32 s57, -1
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	s_mov_b32 s54, s50
	s_waitcnt lgkmcnt(0)
	s_and_b32 s39, s39, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s55, s51
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s46, s50
	s_mov_b32 s47, s51
	s_mov_b32 s52, s40
	s_mov_b32 s53, s41
	s_mov_b32 s48, s38
	s_mov_b32 s49, s39
	s_mov_b32 s38, s50
	s_mov_b32 s39, s51
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(1)
	ds_store_b128 v190, v[1:4]
	s_waitcnt vmcnt(0)
	ds_store_b128 v190, v[5:8] offset:1024
	.loc	1 570 20                        ; attention_backward.py:570:20
	v_add_nc_u32_e32 v1, s2, v11
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 544 28                        ; attention_backward.py:544:28
	buffer_load_b64 v[62:63], v9, s[8:11], 0 offen
	s_load_b64 s[8:9], s[0:1], 0x28
	.loc	1 570 20                        ; attention_backward.py:570:20
	v_ashrrev_i32_e32 v1, 4, v1
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s2, s6, s4
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_and_b32_e32 v31, 0x440, v31
	v_and_b32_e32 v29, 0x440, v29
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v70, 0, v26
	.loc	1 568 17                        ; attention_backward.py:568:17
	v_lshl_add_u32 v1, s3, 7, v1
	.loc	1 534 24                        ; attention_backward.py:534:24
	ds_load_b128 v[149:152], v70
	ds_load_b128 v[153:156], v71
	ds_load_b128 v[157:160], v73
	ds_load_b128 v[161:164], v77
	ds_load_b128 v[165:168], v81
	ds_load_b128 v[169:172], v85
	ds_load_b128 v[173:176], v89
	ds_load_b128 v[177:180], v93
	.loc	1 568 17                        ; attention_backward.py:568:17
	v_mul_lo_u32 v1, v1, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_add_lshl_u32 v1, v1, v61, 1
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	buffer_load_b128 v[57:60], v1, s[8:11], 0 offen
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v38, 0x370, v38
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v28, 16, v0
	v_lshlrev_b32_e32 v148, 5, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v11, v1 :: v_dual_lshlrev_b32 v0, 3, v0
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_dual_mov_b32 v10, v1 :: v_dual_lshlrev_b32 v39, 4, v45
	v_dual_mov_b32 v14, v1 :: v_dual_lshlrev_b32 v41, 8, v45
	v_dual_mov_b32 v17, v1 :: v_dual_lshlrev_b32 v42, 7, v30
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v13, v1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_xad_u32 v69, v31, v38, 0
	v_mov_b32_e32 v4, v1
	v_or3_b32 v188, v41, v42, v39
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v12, v1
	v_dual_mov_b32 v16, v1 :: v_dual_lshlrev_b32 v43, 1, v45
	v_xor_b32_e32 v38, 0x60, v188
	v_dual_mov_b32 v19, v1 :: v_dual_lshlrev_b32 v28, 2, v28
	v_dual_mov_b32 v21, v1 :: v_dual_and_b32 v0, 48, v0
	v_xor_b32_e32 v191, v148, v27
	v_dual_mov_b32 v15, v1 :: v_dual_lshlrev_b32 v40, 3, v30
	v_mov_b32_e32 v23, v1
	v_xor_b32_e32 v29, v29, v39
	v_or3_b32 v189, v43, v28, v30
	v_lshl_or_b32 v56, v45, 6, v0
	v_xor_b32_e32 v0, 16, v191
	v_xor_b32_e32 v26, 0x880, v191
	v_xor_b32_e32 v28, 16, v188
	v_xor_b32_e32 v31, 64, v188
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v18, v1 :: v_dual_add_nc_u32 v203, 0, v0
	v_add3_u32 v72, 0, v40, v29
	v_xor_b32_e32 v29, 32, v188
	v_add_nc_u32_e32 v0, 0, v28
	v_lshl_add_u32 v44, v30, 1, 0
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_lshrrev_b32_e32 v46, 1, v30
	v_add3_u32 v196, 0, v30, v43
	v_xor_b32_e32 v30, 48, v188
	v_xor_b32_e32 v39, 0x70, v188
	v_mov_b32_e32 v20, v1
	v_xor_b32_e32 v27, 0x890, v191
	v_xor_b32_e32 v40, 0x80, v188
	v_xor_b32_e32 v47, 0xf0, v188
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v193, 0, v39
	v_or_b32_e32 v99, 4, v61
	v_add_nc_u32_e32 v236, v61, v78
	v_lshl_add_u32 v197, v45, 2, v44
	v_xor_b32_e32 v44, 0xc0, v188
	v_xor_b32_e32 v50, 0x1b0, v189
	v_xor_b32_e32 v51, 16, v56
	v_xor_b32_e32 v48, 0x90, v189
	v_xor_b32_e32 v42, 0xa0, v188
	v_xor_b32_e32 v52, 32, v56
	v_xor_b32_e32 v49, 0x120, v189
	v_xor_b32_e32 v53, 48, v56
	v_mov_b32_e32 v3, v1
	v_xor_b32_e32 v41, 0x90, v188
	v_xor_b32_e32 v43, 0xb0, v188
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v24, v1
	v_add_nc_u32_e32 v238, v99, v79
	v_add_nc_u32_e32 v41, 0, v41
	v_add_nc_u32_e32 v43, 0, v43
	.loc	1 555 25                        ; attention_backward.py:555:25
	s_waitcnt vmcnt(1)
	v_bfe_u32 v39, v62, 16, 4
	v_bfe_u32 v82, v63, 24, 4
	v_bfe_u32 v83, v63, 16, 4
	v_bfe_u32 v84, v63, 8, 4
	v_and_b32_e32 v86, 15, v63
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v88, -16, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v91, -16, v83
	v_or_b32_e32 v92, -16, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v94, -16, v86
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v64.h, v57.l
	v_add_nc_u32_e32 v192, 0, v38
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v38, 24, v63
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v67.h, v59.l
	v_mov_b16_e32 v66.h, v58.l
	v_add_nc_u32_e32 v54, 0, v40
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v40, v62, 8, 4
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v35.l, 4, v38.l
	v_add_nc_u32_e32 v194, 0, v26
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v68.h, v60.l
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v80, 15, v62
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v90, -16, v40
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v35, 0, v35, vcc_lo
	v_add_nc_u32_e32 v28, 0, v31
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v32, off offset:200
	scratch_store_b32 off, v45, off offset:192
	scratch_store_b32 off, v0, off offset:16
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v32, s34, v32
	v_add_nc_u32_e32 v0, 0, v29
	scratch_store_b32 off, v28, off offset:4 ; 4-byte Folded Spill
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v29, 8, v62
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v87, -16, v80
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s0, 0x800, v32
	v_xor_b32_e32 v32, 0x50, v188
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_and_b32_e32 v58, 0xffff0000, v58
	v_and_b32_e32 v57, 0xffff0000, v57
	v_add_nc_u32_e32 v123, v61, v79
	v_xor_b32_e32 v45, 0xd0, v188
	v_add_nc_u32_e32 v28, 0, v32
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v46, off offset:196
	scratch_store_b32 off, v0, off offset:20
	v_add_nc_u32_e32 v0, 0, v30
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b64 v[30:31], 24, v[62:63]
	scratch_store_b32 off, v28, off offset:12 ; 4-byte Folded Spill
	v_lshrrev_b32_e32 v31, 8, v63
	v_alignbit_b32 v32, v63, v62, 24
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, v74
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v29.h, v30.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v30.l, 4, v30.l
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v32, 15, v32
	v_xor_b32_e32 v46, 0xe0, v188
	v_xor_b32_e32 v26, 16, v0
	v_xor_b32_e32 v28, 48, v0
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v96.l, v30.l, 15
	v_xor_b32_e32 v74, 64, v0
	v_xor_b32_e32 v75, 0x50, v0
	v_mad_u64_u32 v[97:98], null, s19, 24, v[25:26]
	v_add_nc_u32_e32 v230, 0, v26
	v_lshrrev_b16 v26.l, 4, v62.l
	v_add_nc_u32_e32 v232, 0, v28
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v25.l, v62.h, 15
	v_and_b16 v28.l, v29.l, 15
	v_and_b16 v25.h, v62.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v34.l, v26.l, 15
	v_lshrrev_b16 v26.l, 4, v29.l
	v_lshrrev_b16 v29.l, 4, v31.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_bfe_u32 v62, v62, 20, 4
	v_add_nc_u32_e32 v222, 0, v27
	v_xor_b32_e32 v27, 32, v0
	.loc	1 557 34 is_stmt 1              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v25.l
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v36.l, v29.l, 15
	v_add_nc_u32_e32 v229, 0, v47
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v28.h, v31.l, 15
	v_and_b16 v26.h, v63.h, 15
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v31, v39, v88, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v28.l
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_dual_cndmask_b32 v36, 0, v36 :: v_dual_add_nc_u32 v231, 0, v27
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v27.h, 4, v63.l
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v27.l, v63.l, 15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v39, v40, v90, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v25.h
	v_add_nc_u32_e32 v121, v61, v97
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_and_b16 v37.l, v27.h, 15
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v27.h, v38.l, 15
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v38, -16, v82
	.loc	1 557 25 is_stmt 0              ; attention_backward.py:557:25
	v_cndmask_b32_e64 v25, v80, v87, s1
	v_mov_b32_e32 v61, v1
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v40, -16, v32
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v27.h
	.loc	1 556 26 is_stmt 1              ; attention_backward.py:556:26
	v_bfe_u32 v63, v63, 20, 4
	.loc	1 556 28 is_stmt 0              ; attention_backward.py:556:28
	v_and_b16 v33.l, v26.l, 15
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_dual_cndmask_b32 v34, 0, v34 :: v_dual_add_nc_u32 v55, 0, v44
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v38, v82, v38, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v26.h
	v_add_nc_u32_e32 v45, 0, v45
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v26, v39
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v39, 0, v62, vcc_lo
	v_cndmask_b32_e32 v33, 0, v33, vcc_lo
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v80, v83, v91, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v28.h
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_dual_cndmask_b32 v62, 0, v63 :: v_dual_cndmask_b32 v37, 0, v37
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v63, -16, v39
	v_xor_b32_e32 v76, 0x60, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v28, v84, v92, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v27.l
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_xor_b32_e32 v100, 0x70, v0
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v0, -16, v33
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v30, v28
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v82, v86, v94, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v29.h
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v27, v31
	v_cvt_f32_i32_e32 v31, v80
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v80, -16, v34
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v29, v82
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v40, v32, v40, s1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v32, v38
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v38, 0, v96, vcc_lo
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v82, -16, v35
	v_or_b32_e32 v83, -16, v62
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v28, v40
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v84, -16, v36
	v_or_b32_e32 v40, -16, v38
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v38
	v_add_nc_u32_e32 v221, 0, v50
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v86, -16, v37
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v25, v25
	s_waitcnt lgkmcnt(0)
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v38, v38, v40, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v39
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	s_barrier
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_and_b32_e32 v60, 0xffff0000, v60
	v_add_nc_u32_e32 v234, 0, v75
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v39, v39, v63, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v33
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_dual_cndmask_b32 v40, v33, v0 :: v_dual_add_nc_u32 v65, 0, v51
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v34
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v33, v34, v80, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v34, v40
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v63, v35, v82, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v62
	v_add_nc_u32_e32 v219, 0, v48
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v35, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v40, v63
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v62, v62, v83, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v36
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v39, v62
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v0, v36, v84, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v37
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v36, v38
	ds_store_b128 v69, v[25:28]
	ds_store_b128 v69, v[33:36] offset:128
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v37, v37, v86, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v38, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v72
	ds_load_b128 v[33:36], v72 offset:512
	v_cvt_f32_i32_e32 v37, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v69, v[29:32]
	ds_store_b128 v69, v[37:40] offset:128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v72
	ds_load_b128 v[37:40], v72 offset:512
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_and_b32_e32 v59, 0xffff0000, v59
	v_add_nc_u32_e32 v42, 0, v42
	v_add_nc_u32_e32 v228, 0, v46
	v_add_nc_u32_e32 v235, 0, v76
	v_add_nc_u32_e32 v237, v99, v78
	v_add_nc_u32_e32 v220, 0, v49
	v_add_nc_u32_e32 v224, 0, v53
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_dual_mul_f32 v25, v25, v64 :: v_dual_mul_f32 v36, v36, v58
	v_dual_mul_f32 v34, v34, v57 :: v_dual_add_nc_u32 v223, 0, v52
	v_dual_mul_f32 v26, v26, v57 :: v_dual_mul_f32 v27, v27, v66
	v_dual_mul_f32 v28, v28, v58 :: v_dual_mul_f32 v33, v33, v64
	v_mul_f32_e32 v35, v35, v66
	v_mul_f32_e32 v29, v29, v67
	v_mul_f32_e32 v31, v31, v68
	v_mul_f32_e32 v32, v32, v60
	v_dual_mul_f32 v40, v40, v60 :: v_dual_add_nc_u32 v233, 0, v74
	v_mul_f32_e32 v30, v30, v59
	v_mul_f32_e32 v37, v37, v67
	v_dual_mul_f32 v38, v38, v59 :: v_dual_mul_f32 v39, v39, v68
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v67, v34, 16, 1
	v_bfe_u32 v57, v25, 16, 1
	v_bfe_u32 v58, v26, 16, 1
	v_bfe_u32 v59, v27, 16, 1
	v_bfe_u32 v60, v28, 16, 1
	v_bfe_u32 v62, v29, 16, 1
	v_bfe_u32 v63, v30, 16, 1
	v_bfe_u32 v64, v31, 16, 1
	v_bfe_u32 v0, v32, 16, 1
	v_bfe_u32 v66, v33, 16, 1
	v_cmp_o_f32_e64 s11, v34, v34
	v_bfe_u32 v68, v35, 16, 1
	v_bfe_u32 v69, v36, 16, 1
	v_bfe_u32 v72, v37, 16, 1
	v_bfe_u32 v75, v39, 16, 1
	v_bfe_u32 v76, v40, 16, 1
	v_add3_u32 v34, v34, v67, 0x7fff
	v_add_nc_u32_e32 v67, 0, v100
	v_bfe_u32 v74, v38, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_cmp_o_f32_e64 s1, v26, v26
	v_cmp_o_f32_e64 s2, v27, v27
	v_cmp_o_f32_e64 s3, v28, v28
	v_cmp_o_f32_e64 s6, v29, v29
	v_cmp_o_f32_e64 s7, v30, v30
	v_cmp_o_f32_e64 s8, v31, v31
	v_cmp_o_f32_e64 s9, v32, v32
	v_add3_u32 v25, v25, v57, 0x7fff
	v_add3_u32 v26, v26, v58, 0x7fff
	v_add3_u32 v27, v27, v59, 0x7fff
	v_add3_u32 v28, v28, v60, 0x7fff
	v_add3_u32 v29, v29, v62, 0x7fff
	v_add3_u32 v30, v30, v63, 0x7fff
	v_add3_u32 v31, v31, v64, 0x7fff
	v_add3_u32 v32, v32, v0, 0x7fff
	v_cmp_o_f32_e64 s10, v33, v33
	v_cmp_o_f32_e64 s12, v35, v35
	v_cmp_o_f32_e64 s13, v36, v36
	v_cmp_o_f32_e64 s14, v37, v37
	v_cmp_o_f32_e64 s15, v38, v38
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v40, v40
	v_add3_u32 v33, v33, v66, 0x7fff
	v_add3_u32 v35, v35, v68, 0x7fff
	v_add3_u32 v36, v36, v69, 0x7fff
	v_add3_u32 v37, v37, v72, 0x7fff
	v_add3_u32 v38, v38, v74, 0x7fff
	v_add3_u32 v39, v39, v75, 0x7fff
	v_add3_u32 v40, v40, v76, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v25.h, vcc_lo
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s1
	v_cndmask_b16 v26.l, 0x7fff, v27.h, s2
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s3
	v_cndmask_b16 v27.l, 0x7fff, v29.h, s6
	v_cndmask_b16 v27.h, 0x7fff, v30.h, s7
	v_cndmask_b16 v28.l, 0x7fff, v31.h, s8
	v_cndmask_b16 v28.h, 0x7fff, v32.h, s9
	v_cndmask_b16 v29.l, 0x7fff, v33.h, s10
	v_cndmask_b16 v29.h, 0x7fff, v34.h, s11
	v_cndmask_b16 v30.l, 0x7fff, v35.h, s12
	v_cndmask_b16 v30.h, 0x7fff, v36.h, s13
	v_cndmask_b16 v31.l, 0x7fff, v37.h, s14
	v_cndmask_b16 v31.h, 0x7fff, v38.h, s15
	v_cndmask_b16 v32.l, 0x7fff, v39.h, s16
	v_cndmask_b16 v32.h, 0x7fff, v40.h, s17
	.loc	1 717 21 is_stmt 1              ; attention_backward.py:717:21
	ds_store_b128 v190, v[25:28]
	ds_store_b128 v190, v[29:32] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v70
	ds_load_b128 v[29:32], v71
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[25:28], off offset:32 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[29:32], off offset:48 ; 16-byte Folded Spill
	ds_load_b128 v[25:28], v73
	ds_load_b128 v[29:32], v77
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[25:28], off offset:64 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[29:32], off offset:80 ; 16-byte Folded Spill
	ds_load_b128 v[25:28], v81
	ds_load_b128 v[29:32], v85
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[25:28], off offset:96 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[29:32], off offset:112 ; 16-byte Folded Spill
	ds_load_b128 v[25:28], v89
	ds_load_b128 v[29:32], v93
	v_mad_u64_u32 v[68:69], null, s18, 24, v[201:202]
	v_dual_mov_b32 v57, v1 :: v_dual_add_nc_u32 v66, v99, v97
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v64, v1
	s_mov_b32 s1, s20
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[25:28], off offset:128 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_clause 0x2                            ; 48-byte Folded Spill
	scratch_store_b128 off, v[29:32], off offset:144
	scratch_store_b128 off, v[149:152], off offset:160
	scratch_store_b128 off, v[153:156], off offset:176
.LBB0_1:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_2 Depth 2
	.loc	1 608 39                        ; attention_backward.py:608:39
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:192
	scratch_load_b32 v25, off, off offset:196
	.loc	1 662 34                        ; attention_backward.py:662:34
	s_or_b32 s41, s35, s1
	s_xor_b32 s40, s57, -1
	s_mov_b32 s57, 0
	.loc	1 608 39                        ; attention_backward.py:608:39
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, v25, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v69, s41, v25
.LBB0_2:                                ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 663 37                        ; attention_backward.py:663:37
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_or_b32 s1, s57, s41
	v_lshl_add_u32 v27, s18, 4, v201
	s_mul_i32 s2, s1, s18
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s1, s1, s19
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v25, s2, v201, 1
	v_add_lshl_u32 v28, s2, v68, 1
	v_add_lshl_u32 v27, s2, v27, 1
	v_dual_mov_b32 v202, v95 :: v_dual_mov_b32 v81, v165
	v_mov_b32_e32 v82, v166
	v_cndmask_b32_e64 v25, 0x80000000, v25, s5
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v27, 0x80000000, v27, s5
	v_cndmask_b32_e64 v28, 0x80000000, v28, s5
	v_dual_mov_b32 v83, v167 :: v_dual_mov_b32 v84, v168
	v_dual_mov_b32 v85, v169 :: v_dual_mov_b32 v86, v170
	v_dual_mov_b32 v87, v171 :: v_dual_mov_b32 v88, v172
	v_dual_mov_b32 v47, v56 :: v_dual_mov_b32 v48, v54
	v_dual_mov_b32 v49, v191 :: v_dual_mov_b32 v104, s27
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v103, s26 :: v_dual_mov_b32 v102, s25
	v_dual_mov_b32 v101, s24 :: v_dual_mov_b32 v100, s23
	v_dual_mov_b32 v99, s22 :: v_dual_mov_b32 v98, s21
	v_dual_mov_b32 v97, s20 :: v_dual_mov_b32 v44, v148
	v_dual_mov_b32 v73, v157 :: v_dual_mov_b32 v74, v158
	v_dual_mov_b32 v76, v160 :: v_dual_mov_b32 v79, v163
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v199, 0, v191
	v_dual_mov_b32 v77, v161 :: v_dual_mov_b32 v78, v162
	v_dual_mov_b32 v80, v164 :: v_dual_mov_b32 v75, v159
	v_mov_b32_e32 v122, v194
	v_mov_b32_e32 v50, v45
	v_dual_mov_b32 v46, v189 :: v_dual_mov_b32 v51, v42
	v_mov_b32_e32 v53, v55
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v26, s2, v0, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v26, 0x80000000, v26, s5
	s_clause 0x3
	buffer_load_b128 v[105:108], v25, s[44:47], 0 offen
	buffer_load_b128 v[109:112], v26, s[44:47], 0 offen
	buffer_load_b128 v[113:116], v27, s[44:47], 0 offen
	buffer_load_b128 v[117:120], v28, s[44:47], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b128 v190, v[105:108]
	s_waitcnt vmcnt(2)
	ds_store_b128 v190, v[109:112] offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b128 v190, v[113:116] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v190, v[117:120] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:28 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v27, 4, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v27, v27, s1, 2
	v_cndmask_b32_e64 v29, 0x80000000, v27, s4
	v_add_lshl_u32 v27, s1, v236, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v33, 0x80000000, v27, s4
	v_add_lshl_u32 v27, s1, v237, 2
	v_cndmask_b32_e64 v37, 0x80000000, v27, s4
	v_add_lshl_u32 v27, s1, v123, 2
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, 0, v0
	ds_load_b128 v[124:127], v25
	ds_load_b128 v[128:131], v230
	ds_load_b128 v[132:135], v231
	ds_load_b128 v[136:139], v232
	.loc	1 699 33                        ; attention_backward.py:699:33
	v_or_b32_e32 v25, s57, v69
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 699 25 is_stmt 0              ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v25, 2, v25
	buffer_load_b32 v26, v25, s[48:51], 0 offen
	.loc	1 671 30 is_stmt 1              ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[140:147], v[149:156], v[124:131], v[97:104]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[124:127], v233
	ds_load_b128 v[128:131], v234
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v152, 0x1800, v197
	v_add_nc_u32_e32 v153, 0x1c00, v197
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[140:147], v[157:164], v[132:139], v[140:147]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[140:147], v[165:172], v[124:131], v[140:147]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[124:127], v235
	ds_load_b128 v[128:131], v67
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[140:147], v[173:180], v[124:131], v[140:147]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v128, 0x1400, v197
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v124, 0x80000000, v27, s4
	v_add_lshl_u32 v27, s1, v238, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v125, 0x80000000, v27, s4
	v_add_lshl_u32 v27, s1, v121, 2
	v_cndmask_b32_e64 v126, 0x80000000, v27, s4
	v_add_lshl_u32 v27, s1, v66, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v127, 0x80000000, v27, s4
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v246, s56, v140, -v26
	v_fma_f32 v245, s56, v141, -v26
	v_fma_f32 v240, s56, v142, -v26
	v_fma_f32 v241, s56, v143, -v26
	v_fma_f32 v244, s56, v144, -v26
	v_fma_f32 v242, s56, v145, -v26
	v_fma_f32 v243, s56, v146, -v26
	v_fma_f32 v239, s56, v147, -v26
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v26, s1, v95, 2
	v_dual_mov_b32 v89, v173 :: v_dual_mov_b32 v96, v180
	v_dual_mov_b32 v90, v174 :: v_dual_mov_b32 v91, v175
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v26, 0x80000000, v26, s4
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v247, v25, s[52:55], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b128 v[25:28], v26, s[36:39], 0 offen
	buffer_load_b128 v[29:32], v29, s[36:39], 0 offen
	buffer_load_b128 v[33:36], v33, s[36:39], 0 offen
	buffer_load_b128 v[37:40], v37, s[36:39], 0 offen
	buffer_load_b128 v[204:207], v124, s[36:39], 0 offen
	buffer_load_b128 v[208:211], v125, s[36:39], 0 offen
	buffer_load_b128 v[248:251], v126, s[36:39], 0 offen
	buffer_load_b128 v[252:255], v127, s[36:39], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v124, 0, v148
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b128 v124, v[25:28]
	s_waitcnt vmcnt(6)
	ds_store_b128 v124, v[29:32] offset:16
	s_waitcnt vmcnt(5)
	ds_store_b128 v124, v[33:36] offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b128 v124, v[37:40] offset:2064
	s_waitcnt vmcnt(3)
	ds_store_b128 v124, v[204:207] offset:4096
	s_waitcnt vmcnt(2)
	ds_store_b128 v124, v[208:211] offset:4112
	s_waitcnt vmcnt(1)
	ds_store_b128 v124, v[248:251] offset:6144
	s_waitcnt vmcnt(0)
	ds_store_b128 v124, v[252:255] offset:6160
	v_add_nc_u32_e32 v124, 0x400, v197
	v_add_nc_u32_e32 v126, 0xc00, v197
	v_add_nc_u32_e32 v125, 0x800, v197
	v_add_nc_u32_e32 v127, 0x1000, v197
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[150:151], v124 offset1:32
	ds_load_2addr_b32 v[156:157], v124 offset0:64 offset1:96
	ds_load_2addr_b32 v[148:149], v124 offset0:128 offset1:160
	ds_load_2addr_b32 v[158:159], v124 offset0:192 offset1:224
	ds_load_2addr_b32 v[146:147], v125 offset1:32
	ds_load_2addr_b32 v[160:161], v125 offset0:64 offset1:96
	ds_load_2addr_b32 v[144:145], v125 offset0:128 offset1:160
	ds_load_2addr_b32 v[162:163], v125 offset0:192 offset1:224
	ds_load_2addr_b32 v[142:143], v126 offset1:32
	ds_load_2addr_b32 v[164:165], v126 offset0:64 offset1:96
	ds_load_2addr_b32 v[140:141], v126 offset0:128 offset1:160
	ds_load_2addr_b32 v[166:167], v126 offset0:192 offset1:224
	ds_load_2addr_b32 v[138:139], v127 offset1:32
	ds_load_2addr_b32 v[168:169], v127 offset0:64 offset1:96
	ds_load_2addr_b32 v[136:137], v127 offset0:128 offset1:160
	ds_load_2addr_b32 v[170:171], v127 offset0:192 offset1:224
	ds_load_2addr_b32 v[134:135], v128 offset1:32
	v_dual_mov_b32 v92, v176 :: v_dual_mov_b32 v93, v177
	v_dual_mov_b32 v94, v178 :: v_dual_mov_b32 v95, v179
	ds_load_2addr_b32 v[172:173], v128 offset0:64 offset1:96
	ds_load_2addr_b32 v[132:133], v128 offset0:128 offset1:160
	ds_load_2addr_b32 v[174:175], v128 offset0:192 offset1:224
	ds_load_2addr_b32 v[130:131], v152 offset1:32
	ds_load_2addr_b32 v[176:177], v152 offset0:64 offset1:96
	ds_load_2addr_b32 v[128:129], v152 offset0:128 offset1:160
	ds_load_2addr_b32 v[178:179], v152 offset0:192 offset1:224
	ds_load_2addr_b32 v[126:127], v153 offset1:32
	ds_load_2addr_b32 v[180:181], v153 offset0:64 offset1:96
	ds_load_2addr_b32 v[124:125], v153 offset0:128 offset1:160
	ds_load_2addr_b32 v[182:183], v153 offset0:192 offset1:224
	ds_load_2addr_b32 v[154:155], v197 offset1:32
	ds_load_2addr_b32 v[184:185], v197 offset0:64 offset1:96
	ds_load_2addr_b32 v[152:153], v197 offset0:128 offset1:160
	ds_load_2addr_b32 v[186:187], v197 offset0:192 offset1:224
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v199, v[25:28]
	ds_store_b128 v199, v[204:207] offset:4096
	ds_store_b128 v203, v[29:32]
	ds_store_b128 v203, v[208:211] offset:4096
	ds_store_b128 v194, v[33:36]
	ds_store_b128 v194, v[248:251] offset:4096
	ds_store_b128 v222, v[37:40]
	ds_store_b128 v222, v[252:255] offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	v_dual_mov_b32 v52, v43 :: v_dual_add_nc_u32 v25, 0, v188
	ds_load_b128 v[25:28], v25
	v_bfe_u32 v215, v127, 16, 1
	v_bfe_u32 v216, v125, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v215, v127, v215, 0x7fff
	v_add3_u32 v216, v125, v216, 0x7fff
	s_waitcnt vmcnt(0)
	ds_load_b128 v[29:32], v0
	scratch_load_b32 v0, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v33, v25, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_cmp_o_f32_e64 s1, v26, v26
	v_cmp_o_f32_e64 s2, v27, v27
	v_cmp_o_f32_e64 s3, v28, v28
	v_add3_u32 v33, v25, v33, 0x7fff
	v_bfe_u32 v25, v26, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v248.l, 0x7fff, v33.h, vcc_lo
	v_add3_u32 v34, v26, v25, 0x7fff
	v_bfe_u32 v25, v27, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v248.h, 0x7fff, v34.h, s1
	v_add3_u32 v35, v27, v25, 0x7fff
	v_bfe_u32 v25, v28, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v29, v29
	v_cmp_o_f32_e64 s7, v30, v30
	v_cmp_o_f32_e64 s8, v31, v31
	v_cmp_o_f32_e64 s9, v32, v32
	v_add3_u32 v36, v28, v25, 0x7fff
	v_bfe_u32 v25, v29, 16, 1
	v_cndmask_b16 v249.l, 0x7fff, v35.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v249.h, 0x7fff, v36.h, s3
	v_add3_u32 v37, v29, v25, 0x7fff
	v_bfe_u32 v25, v30, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v250.l, 0x7fff, v37.h, s6
	v_add3_u32 v38, v30, v25, 0x7fff
	v_bfe_u32 v25, v31, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v250.h, 0x7fff, v38.h, s7
	v_add3_u32 v39, v31, v25, 0x7fff
	v_bfe_u32 v25, v32, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v251.l, 0x7fff, v39.h, s8
	v_add3_u32 v40, v32, v25, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v251.h, 0x7fff, v40.h, s9
	s_waitcnt vmcnt(0)
	ds_load_b128 v[25:28], v0
	scratch_load_b32 v0, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v199, v25, 16, 1
	v_cmp_o_f32_e64 s10, v25, v25
	v_cmp_o_f32_e64 s11, v26, v26
	v_cmp_o_f32_e64 s12, v27, v27
	v_cmp_o_f32_e64 s13, v28, v28
	v_add3_u32 v25, v25, v199, 0x7fff
	v_bfe_u32 v199, v26, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v252.l, 0x7fff, v25.h, s10
	v_add3_u32 v26, v26, v199, 0x7fff
	v_bfe_u32 v199, v27, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v252.h, 0x7fff, v26.h, s11
	v_add3_u32 v27, v27, v199, 0x7fff
	v_bfe_u32 v199, v28, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v253.l, 0x7fff, v27.h, s12
	v_add3_u32 v28, v28, v199, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v253.h, 0x7fff, v28.h, s13
	s_waitcnt vmcnt(0)
	ds_load_b128 v[29:32], v0
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v199, v29, 16, 1
	v_cmp_o_f32_e64 s14, v29, v29
	v_cmp_o_f32_e64 s15, v30, v30
	v_cmp_o_f32_e64 s16, v31, v31
	v_cmp_o_f32_e64 s17, v32, v32
	v_add3_u32 v29, v29, v199, 0x7fff
	v_bfe_u32 v199, v30, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v254.l, 0x7fff, v29.h, s14
	v_add3_u32 v30, v30, v199, 0x7fff
	v_bfe_u32 v199, v31, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v254.h, 0x7fff, v30.h, s15
	v_add3_u32 v31, v31, v199, 0x7fff
	v_bfe_u32 v199, v32, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v255.l, 0x7fff, v31.h, s16
	v_add3_u32 v32, v32, v199, 0x7fff
	v_bfe_u32 v199, v140, 16, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v255.h, 0x7fff, v32.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[25:28], off, off offset:32
	scratch_load_b128 v[29:32], off, off offset:48
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v199, v140, v199, 0x7fff
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[204:211], v[25:32], v[248:255], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[25:28], v0
	scratch_load_b32 v0, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v33, v25, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_cmp_o_f32_e64 s1, v26, v26
	v_cmp_o_f32_e64 s2, v27, v27
	v_cmp_o_f32_e64 s3, v28, v28
	v_add3_u32 v33, v25, v33, 0x7fff
	v_bfe_u32 v25, v26, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v34, v26, v25, 0x7fff
	v_bfe_u32 v25, v27, 16, 1
	v_add3_u32 v35, v27, v25, 0x7fff
	v_bfe_u32 v25, v28, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v98.l, 0x7fff, v35.h, s2
	v_add3_u32 v36, v28, v25, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v98.h, 0x7fff, v36.h, s3
	s_waitcnt vmcnt(0)
	ds_load_b128 v[29:32], v0
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v25, v29, 16, 1
	v_cmp_o_f32_e64 s6, v29, v29
	v_cmp_o_f32_e64 s7, v30, v30
	v_cmp_o_f32_e64 s8, v31, v31
	v_cmp_o_f32_e64 s9, v32, v32
	v_add3_u32 v37, v29, v25, 0x7fff
	v_bfe_u32 v25, v30, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v99.l, 0x7fff, v37.h, s6
	v_add3_u32 v38, v30, v25, 0x7fff
	v_bfe_u32 v25, v31, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v99.h, 0x7fff, v38.h, s7
	v_add3_u32 v39, v31, v25, 0x7fff
	v_bfe_u32 v25, v32, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v100.l, 0x7fff, v39.h, s8
	v_add3_u32 v40, v32, v25, 0x7fff
	ds_load_b128 v[25:28], v192
	ds_load_b128 v[29:32], v193
	v_cndmask_b16 v100.h, 0x7fff, v40.h, s9
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v97, v25, 16, 1
	v_cmp_o_f32_e64 s10, v25, v25
	v_cmp_o_f32_e64 s11, v26, v26
	v_cmp_o_f32_e64 s12, v27, v27
	v_cmp_o_f32_e64 s13, v28, v28
	v_add3_u32 v25, v25, v97, 0x7fff
	v_bfe_u32 v97, v26, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s14, v29, v29
	v_cmp_o_f32_e64 s15, v30, v30
	v_cmp_o_f32_e64 s16, v31, v31
	v_cmp_o_f32_e64 s17, v32, v32
	v_add3_u32 v26, v26, v97, 0x7fff
	v_bfe_u32 v97, v27, 16, 1
	v_cndmask_b16 v101.l, 0x7fff, v25.h, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v101.h, 0x7fff, v26.h, s11
	v_add3_u32 v27, v27, v97, 0x7fff
	v_bfe_u32 v97, v28, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v102.l, 0x7fff, v27.h, s12
	v_add3_u32 v28, v28, v97, 0x7fff
	v_bfe_u32 v97, v29, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v102.h, 0x7fff, v28.h, s13
	v_add3_u32 v29, v29, v97, 0x7fff
	v_bfe_u32 v97, v30, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v103.l, 0x7fff, v29.h, s14
	v_add3_u32 v30, v30, v97, 0x7fff
	v_bfe_u32 v97, v31, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v103.h, 0x7fff, v30.h, s15
	v_add3_u32 v31, v31, v97, 0x7fff
	v_bfe_u32 v97, v32, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v104.l, 0x7fff, v31.h, s16
	v_add3_u32 v32, v32, v97, 0x7fff
	v_cndmask_b16 v97.l, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v97.h, 0x7fff, v34.h, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v104.h, 0x7fff, v32.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[25:28], off, off offset:64
	scratch_load_b128 v[29:32], off, off offset:80
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[204:211], v[25:32], v[97:104], v[204:211]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[25:28], v54
	ds_load_b128 v[29:32], v41
	v_mov_b32_e32 v54, v193
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v33, v25, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_cmp_o_f32_e64 s1, v26, v26
	v_cmp_o_f32_e64 s2, v27, v27
	v_cmp_o_f32_e64 s3, v28, v28
	v_add3_u32 v33, v25, v33, 0x7fff
	v_bfe_u32 v25, v26, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v29, v29
	v_cmp_o_f32_e64 s7, v30, v30
	v_cmp_o_f32_e64 s8, v31, v31
	v_cmp_o_f32_e64 s9, v32, v32
	v_add3_u32 v34, v26, v25, 0x7fff
	v_bfe_u32 v25, v27, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v35, v27, v25, 0x7fff
	v_bfe_u32 v25, v28, 16, 1
	v_cndmask_b16 v98.l, 0x7fff, v35.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v36, v28, v25, 0x7fff
	v_bfe_u32 v25, v29, 16, 1
	v_cndmask_b16 v98.h, 0x7fff, v36.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v37, v29, v25, 0x7fff
	v_bfe_u32 v25, v30, 16, 1
	v_cndmask_b16 v99.l, 0x7fff, v37.h, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v38, v30, v25, 0x7fff
	v_bfe_u32 v25, v31, 16, 1
	v_cndmask_b16 v99.h, 0x7fff, v38.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v39, v31, v25, 0x7fff
	v_bfe_u32 v25, v32, 16, 1
	v_cndmask_b16 v100.l, 0x7fff, v39.h, s8
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v40, v32, v25, 0x7fff
	ds_load_b128 v[25:28], v42
	ds_load_b128 v[29:32], v43
	v_cndmask_b16 v100.h, 0x7fff, v40.h, s9
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v97, v25, 16, 1
	v_cmp_o_f32_e64 s10, v25, v25
	v_cmp_o_f32_e64 s11, v26, v26
	v_cmp_o_f32_e64 s12, v27, v27
	v_cmp_o_f32_e64 s13, v28, v28
	v_add3_u32 v25, v25, v97, 0x7fff
	v_bfe_u32 v97, v26, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s14, v29, v29
	v_cmp_o_f32_e64 s15, v30, v30
	v_cmp_o_f32_e64 s16, v31, v31
	v_cmp_o_f32_e64 s17, v32, v32
	v_add3_u32 v26, v26, v97, 0x7fff
	v_bfe_u32 v97, v27, 16, 1
	v_cndmask_b16 v101.l, 0x7fff, v25.h, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v101.h, 0x7fff, v26.h, s11
	v_add3_u32 v27, v27, v97, 0x7fff
	v_bfe_u32 v97, v28, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v102.l, 0x7fff, v27.h, s12
	v_add3_u32 v28, v28, v97, 0x7fff
	v_bfe_u32 v97, v29, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v102.h, 0x7fff, v28.h, s13
	v_add3_u32 v29, v29, v97, 0x7fff
	v_bfe_u32 v97, v30, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v103.l, 0x7fff, v29.h, s14
	v_add3_u32 v30, v30, v97, 0x7fff
	v_bfe_u32 v97, v31, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v103.h, 0x7fff, v30.h, s15
	v_add3_u32 v31, v31, v97, 0x7fff
	v_bfe_u32 v97, v32, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v104.l, 0x7fff, v31.h, s16
	v_add3_u32 v32, v32, v97, 0x7fff
	v_cndmask_b16 v97.l, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v97.h, 0x7fff, v34.h, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v104.h, 0x7fff, v32.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[25:28], off, off offset:96
	scratch_load_b128 v[29:32], off, off offset:112
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[204:211], v[25:32], v[97:104], v[204:211]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[25:28], v55
	ds_load_b128 v[29:32], v45
	v_mov_b32_e32 v55, v41
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v33, v25, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_cmp_o_f32_e64 s1, v26, v26
	v_cmp_o_f32_e64 s2, v27, v27
	v_cmp_o_f32_e64 s3, v28, v28
	v_add3_u32 v33, v25, v33, 0x7fff
	v_bfe_u32 v25, v26, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v29, v29
	v_cmp_o_f32_e64 s7, v30, v30
	v_cmp_o_f32_e64 s8, v31, v31
	v_cmp_o_f32_e64 s9, v32, v32
	v_add3_u32 v34, v26, v25, 0x7fff
	v_bfe_u32 v25, v27, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v35, v27, v25, 0x7fff
	v_bfe_u32 v25, v28, 16, 1
	v_cndmask_b16 v98.l, 0x7fff, v35.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v36, v28, v25, 0x7fff
	v_bfe_u32 v25, v29, 16, 1
	v_cndmask_b16 v98.h, 0x7fff, v36.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v37, v29, v25, 0x7fff
	v_bfe_u32 v25, v30, 16, 1
	v_cndmask_b16 v99.l, 0x7fff, v37.h, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v38, v30, v25, 0x7fff
	v_bfe_u32 v25, v31, 16, 1
	v_cndmask_b16 v99.h, 0x7fff, v38.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v39, v31, v25, 0x7fff
	v_bfe_u32 v25, v32, 16, 1
	v_cndmask_b16 v100.l, 0x7fff, v39.h, s8
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v40, v32, v25, 0x7fff
	ds_load_b128 v[25:28], v228
	ds_load_b128 v[29:32], v229
	v_cndmask_b16 v100.h, 0x7fff, v40.h, s9
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v97, v25, 16, 1
	v_cmp_o_f32_e64 s10, v25, v25
	v_cmp_o_f32_e64 s11, v26, v26
	v_cmp_o_f32_e64 s12, v27, v27
	v_cmp_o_f32_e64 s13, v28, v28
	v_add3_u32 v25, v25, v97, 0x7fff
	v_bfe_u32 v97, v26, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s14, v29, v29
	v_cmp_o_f32_e64 s15, v30, v30
	v_cmp_o_f32_e64 s16, v31, v31
	v_cmp_o_f32_e64 s17, v32, v32
	v_add3_u32 v26, v26, v97, 0x7fff
	v_bfe_u32 v97, v27, 16, 1
	v_cndmask_b16 v101.l, 0x7fff, v25.h, s10
	v_cmp_o_f32_e64 s10, v138, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v101.h, 0x7fff, v26.h, s11
	v_add3_u32 v27, v27, v97, 0x7fff
	v_bfe_u32 v97, v28, 16, 1
	v_cmp_o_f32_e64 s11, v136, v136
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v102.l, 0x7fff, v27.h, s12
	v_add3_u32 v28, v28, v97, 0x7fff
	v_bfe_u32 v97, v29, 16, 1
	v_cmp_o_f32_e64 s12, v134, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v102.h, 0x7fff, v28.h, s13
	v_add3_u32 v29, v29, v97, 0x7fff
	v_bfe_u32 v97, v30, 16, 1
	v_cmp_o_f32_e64 s13, v132, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v103.l, 0x7fff, v29.h, s14
	v_add3_u32 v30, v30, v97, 0x7fff
	v_bfe_u32 v97, v31, 16, 1
	v_cmp_o_f32_e64 s14, v130, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v103.h, 0x7fff, v30.h, s15
	v_add3_u32 v31, v31, v97, 0x7fff
	v_bfe_u32 v97, v32, 16, 1
	v_cmp_o_f32_e64 s15, v128, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v104.l, 0x7fff, v31.h, s16
	v_add3_u32 v32, v32, v97, 0x7fff
	v_cndmask_b16 v97.l, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v97.h, 0x7fff, v34.h, s1
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v33, v246
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s16, v126, v126
	v_cndmask_b16 v104.h, 0x7fff, v32.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[25:28], off, off offset:128
	scratch_load_b128 v[29:32], off, off offset:144
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s17, v124, v124
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[204:211], v[25:32], v[97:104], v[204:211]
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v98, 0, v33, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v26, v205, v247
	v_sub_f32_e32 v25, v204, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_sub_f32 v28, v207, v247 :: v_dual_mul_f32 v25, v98, v25
	v_dual_sub_f32 v30, v209, v247 :: v_dual_mul_f32 v25, s33, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v33, v25, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_add3_u32 v25, v25, v33, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v33, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v25.l, 0x7fff, v25.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v97, 0, v33, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_dual_mul_f32 v26, v97, v26 :: v_dual_sub_f32 v27, v206, v247
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v26, s33, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v33, v26, 16, 1
	v_cmp_o_f32_e64 s1, v26, v26
	v_add3_u32 v26, v26, v33, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v33, v240
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v240, 0, v33, s0
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v27, v240, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v27, s33, v27
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v33, v27, 16, 1
	v_cmp_o_f32_e64 s2, v27, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v27, v27, v33, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v33, v241
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v241, 0, v33, s0
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v29, v208, v247
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30 is_stmt 0              ; attention_backward.py:720:30
	v_dual_mul_f32 v28, v241, v28 :: v_dual_add_nc_u32 v245, 0, v189
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_dual_sub_f32 v31, v210, v247 :: v_dual_mul_f32 v28, s33, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 1              ; attention_backward.py:721:37
	v_bfe_u32 v33, v28, 16, 1
	v_cmp_o_f32_e64 s3, v28, v28
	v_add3_u32 v28, v28, v33, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v33, v244
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v99, 0, v33, s0
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v29, v99, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 47 is_stmt 0              ; attention_backward.py:720:47
	v_dual_sub_f32 v32, v211, v247 :: v_dual_mul_f32 v29, s33, v29
	.loc	1 721 37 is_stmt 1              ; attention_backward.py:721:37
	v_bfe_u32 v33, v29, 16, 1
	v_cmp_o_f32_e64 s6, v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v29, v29, v33, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v33, v242
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v25.h, 0x7fff, v29.h, s6
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v245, v25
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s1, v99, v99
	v_cmp_o_f32_e64 s6, v241, v241
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v245, v25 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v242, 0, v33, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v30, v242, v30
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v30, s33, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v33, v30, 16, 1
	v_cmp_o_f32_e64 s7, v30, v30
	v_add3_u32 v30, v30, v33, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v33, v243
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v25.h, 0x7fff, v30.h, s7
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v219, v25
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v25.l, 0x7fff, v27.h, s2
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s2, v97, v97
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v219, v25 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v243, 0, v33, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v31, v243, v31
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s7, v243, v243
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v31, s33, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v33, v31, 16, 1
	v_cmp_o_f32_e64 s8, v31, v31
	v_add3_u32 v31, v31, v33, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v33, v239
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v239, 0, v56
	v_mov_b32_e32 v56, v192
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v25.h, 0x7fff, v31.h, s8
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v220, v25
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v25.l, 0x7fff, v28.h, s3
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v242, v242
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v220, v25 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v244, 0, v33, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v32, v244, v32
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v244, v244
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v32, s33, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v33, v32, 16, 1
	v_cmp_o_f32_e64 s9, v32, v32
	v_add3_u32 v32, v32, v33, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v25.h, 0x7fff, v32.h, s9
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	ds_store_b16 v221, v25
	ds_store_b16_d16_hi v221, v25 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[204:207], v239
	ds_load_b128 v[208:211], v65
	ds_load_b128 v[246:249], v223
	ds_load_b128 v[250:253], v224
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:8  ; 4-byte Folded Reload
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s9, v140, v140
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v199.h, 0x7fff, v199.h, s9
	v_cmp_o_f32_e64 s9, v141, v141
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, 0, v0
	ds_store_b128 v25, v[105:108]
	ds_store_b128 v25, v[109:112] offset:1024
	ds_store_b128 v25, v[113:116] offset:2048
	ds_store_b128 v25, v[117:120] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v101, v196 offset:256
	ds_load_u16_d16 v100, v196
	ds_load_u16_d16 v102, v196 offset:512
	ds_load_u16_d16 v103, v196 offset:768
	ds_load_u16_d16 v104, v196 offset:1024
	ds_load_u16_d16 v106, v196 offset:1536
	ds_load_u16_d16 v105, v196 offset:1280
	ds_load_u16_d16 v112, v196 offset:1088
	ds_load_u16_d16 v111, v196 offset:832
	ds_load_u16_d16 v107, v196 offset:1792
	ds_load_u16_d16 v25, v196 offset:2048
	ds_load_u16_d16 v26, v196 offset:2304
	ds_load_u16_d16 v27, v196 offset:2560
	ds_load_u16_d16 v29, v196 offset:3072
	ds_load_u16_d16 v35, v196 offset:2624
	ds_load_u16_d16 v34, v196 offset:2368
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v112, v196 offset:1216
	ds_load_u16_d16_hi v102, v196 offset:640
	ds_load_u16_d16_hi v103, v196 offset:896
	ds_load_u16_d16_hi v104, v196 offset:1152
	ds_load_u16_d16 v113, v196 offset:1344
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v35, v196 offset:2752
	ds_load_u16_d16_hi v106, v196 offset:1664
	ds_load_u16_d16_hi v105, v196 offset:1408
	ds_load_u16_d16 v108, v196 offset:64
	ds_load_u16_d16_hi v101, v196 offset:384
	ds_load_u16_d16_hi v100, v196 offset:128
	ds_load_u16_d16 v110, v196 offset:576
	ds_load_u16_d16 v109, v196 offset:320
	ds_load_u16_d16_hi v107, v196 offset:1920
	ds_load_u16_d16 v114, v196 offset:1600
	ds_load_u16_d16 v33, v196 offset:2112
	ds_load_u16_d16 v115, v196 offset:1856
	ds_load_u16_d16_hi v111, v196 offset:960
	ds_load_u16_d16 v32, v196 offset:3840
	ds_load_u16_d16 v30, v196 offset:3328
	ds_load_u16_d16 v28, v196 offset:2816
	ds_load_u16_d16 v31, v196 offset:3584
	ds_load_u16_d16 v40, v196 offset:3904
	ds_load_u16_d16 v37, v196 offset:3136
	ds_load_u16_d16 v39, v196 offset:3648
	ds_load_u16_d16 v38, v196 offset:3392
	ds_load_u16_d16_hi v29, v196 offset:3200
	ds_load_u16_d16 v36, v196 offset:2880
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v34, v196 offset:2496
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v113, v196 offset:1472
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v114, v196 offset:1728
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v115, v196 offset:1984
	ds_load_u16_d16_hi v25, v196 offset:2176
	ds_load_u16_d16_hi v33, v196 offset:2240
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v30, v196 offset:3456
	ds_load_u16_d16_hi v26, v196 offset:2432
	ds_load_u16_d16_hi v27, v196 offset:2688
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v28, v196 offset:2944
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v31, v196 offset:3712
	ds_load_u16_d16_hi v32, v196 offset:3968
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v40, v196 offset:4032
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v36, v196 offset:3008
	ds_load_u16_d16_hi v37, v196 offset:3264
	ds_load_u16_d16_hi v39, v196 offset:3776
	ds_load_u16_d16_hi v38, v196 offset:3520
	ds_load_u16_d16_hi v108, v196 offset:192
	ds_load_u16_d16_hi v110, v196 offset:704
	ds_load_u16_d16_hi v109, v196 offset:448
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[17:24], v[100:107], v[204:211], v[17:24]
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v120, v142, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v120, v142, v120, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[17:24], v[25:32], v[246:253], v[17:24]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v25, v98, 16, 1
	v_bfe_u32 v28, v243, 16, 1
	v_bfe_u32 v29, v244, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v30, v162, 16, 1
	v_bfe_u32 v31, v164, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v25, v98, v25, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[57:64], v[108:115], v[204:211], v[57:64]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_mov_b16_e32 v113.l, 0
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v28, v243, v28, 0x7fff
	v_add3_u32 v29, v244, v29, 0x7fff
	v_cndmask_b16 v113.h, 0x7fff, v25.h, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v30, v162, v30, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v100.l, v113.l
	v_mov_b16_e32 v116.l, v113.l
	v_mov_b16_e32 v114.l, v113.l
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v25, v98, v113
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_cndmask_b16 v117.h, 0x7fff, v28.h, s7
	v_cndmask_b16 v118.h, 0x7fff, v29.h, s8
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v28, v158, 16, 1
	v_bfe_u32 v29, v160, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v26, v25, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v31, v164, v31, 0x7fff
	v_add3_u32 v28, v158, v28, 0x7fff
	v_add3_u32 v29, v160, v29, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v98, v25, v26, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v25, v99, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v32, v166, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[57:64], v[33:40], v[246:253], v[57:64]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v33, v168, 16, 1
	v_bfe_u32 v35, v172, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v25, v99, v25, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v32, v166, v32, 0x7fff
	v_bfe_u32 v36, v174, 16, 1
	v_add3_u32 v33, v168, v33, 0x7fff
	v_add3_u32 v35, v172, v35, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v100.h, 0x7fff, v25.h, s1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v37, v176, 16, 1
	v_add3_u32 v36, v174, v36, 0x7fff
	v_bfe_u32 v38, v178, 16, 1
	v_bfe_u32 v39, v180, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v25, v99, v100
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v37, v176, v37, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v115.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v38, v178, v38, 0x7fff
	v_add3_u32 v39, v180, v39, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v26, v25, 16, 1
	v_cmp_o_f32_e64 s1, v25, v25
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v40, v182, 16, 1
	v_bfe_u32 v34, v170, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v117.l, v113.l
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_add3_u32 v99, v25, v26, 0x7fff
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_bfe_u32 v25, v97, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v40, v182, v40, 0x7fff
	v_add3_u32 v34, v170, v34, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v118.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v204, v138, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v25, v97, v25, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v25.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v205, v136, 16, 1
	v_bfe_u32 v206, v134, 16, 1
	v_bfe_u32 v207, v132, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s2
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v245, v100 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v208, v130, 16, 1
	v_bfe_u32 v209, v128, 16, 1
	v_bfe_u32 v210, v126, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v26, v97, v25
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v219, v25
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v25, v240, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v211, v124, 16, 1
	v_cmp_o_f32_e64 s7, v144, v144
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v27, v26, 16, 1
	v_cmp_o_f32_e64 s2, v26, v26
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v25, v240, v25, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v25.l, 0x7fff, v98.h, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v184, v184
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v26, v26, v27, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v27, v242, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s8, v142, v142
	v_add3_u32 v204, v138, v204, 0x7fff
	v_add3_u32 v205, v136, v205, 0x7fff
	v_add3_u32 v206, v134, v206, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v27, v242, v27, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v207, v132, v207, 0x7fff
	v_add3_u32 v208, v130, v208, 0x7fff
	v_add3_u32 v209, v128, v209, 0x7fff
	v_add3_u32 v210, v126, v210, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v114.h, 0x7fff, v27.h, s3
	v_bfe_u32 v27, v241, 16, 1
	v_cmp_o_f32_e64 s3, v240, v240
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v211, v124, v211, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v28.l, v113.l
	v_mov_b16_e32 v29.l, v113.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v27, v241, v27, 0x7fff
	v_cndmask_b16 v115.h, 0x7fff, v25.h, s3
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v25.h, 0x7fff, v99.h, s1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s1, v186, v186
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v30.l, v113.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v116.h, 0x7fff, v27.h, s6
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v245, v113
	ds_store_b16_d16_hi v219, v114 offset:512
	ds_store_b16_d16_hi v220, v115
	ds_store_b16_d16_hi v220, v117 offset:512
	ds_store_b16_d16_hi v221, v116
	ds_store_b16_d16_hi v221, v118 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v27, v186, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v116, v241, v116
	v_sub_f32_e32 v114, v242, v114
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_load_b128 v[105:108], v239
	ds_load_b128 v[109:112], v65
	ds_load_b128 v[97:100], v223
	ds_load_b128 v[101:104], v224
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v245, v25
	ds_store_b16_d16_hi v245, v25 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s2
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v26, v184, 16, 1
	v_add3_u32 v27, v186, v27, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v115, v240, v115
	v_dual_sub_f32 v117, v243, v117 :: v_dual_sub_f32 v118, v244, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v26, v184, v26, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s2, v114, v114
	v_bfe_u32 v119, v115, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v117, v117
	v_cmp_o_f32_e64 s6, v118, v118
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v25.h, 0x7fff, v26.h, vcc_lo
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s1
	v_bfe_u32 v27, v156, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v156, v156
	v_cmp_o_f32_e64 s1, v170, v170
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v31.l, v113.l
	v_mov_b16_e32 v32.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v27, v156, v27, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v27.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s1, v116, v116
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v189.h, 0x7fff, v120.h, s8
	v_cndmask_b16 v27.h, 0x7fff, v27.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v158, v158
	v_cndmask_b16 v247.h, 0x7fff, v204.h, s10
	v_cndmask_b16 v246.h, 0x7fff, v205.h, s11
	v_cndmask_b16 v245.h, 0x7fff, v206.h, s12
	v_cndmask_b16 v244.h, 0x7fff, v207.h, s13
	v_cndmask_b16 v28.h, 0x7fff, v28.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v160, v160
	v_cndmask_b16 v243.h, 0x7fff, v208.h, s14
	v_cndmask_b16 v242.h, 0x7fff, v209.h, s15
	v_cndmask_b16 v241.h, 0x7fff, v210.h, s16
	v_cndmask_b16 v240.h, 0x7fff, v211.h, s17
	v_cndmask_b16 v29.h, 0x7fff, v29.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v162, v162
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v33.l, v113.l
	v_mov_b16_e32 v34.l, v113.l
	v_mov_b16_e32 v35.l, v113.l
	v_mov_b16_e32 v36.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v30.h, 0x7fff, v30.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v164, v164
	v_mov_b32_e32 v45, v188
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v37.l, v113.l
	v_mov_b16_e32 v38.l, v113.l
	v_mov_b16_e32 v39.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v31.h, 0x7fff, v31.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v166, v166
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v40.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v198, v162, v30
	v_dual_sub_f32 v212, v160, v29 :: v_dual_sub_f32 v213, v158, v28
	v_sub_f32_e32 v214, v156, v27
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v32.h, 0x7fff, v32.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v168, v168
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v170, v170, v34
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v34.l, v246.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v250.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v193, v166, v32
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v33.h, 0x7fff, v33.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v172, v172
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v32.l, v199.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v252.l, v113.l
	v_mov_b16_e64 v254.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v168, v168, v33
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v35.h, 0x7fff, v35.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v174, v174
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v33.l, v247.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v249.l, v113.l
	v_mov_b16_e64 v248.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v172, v172, v35
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v36.h, 0x7fff, v36.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v176, v176
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v35.l, v245.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v200.l, v113.l
	v_mov_b16_e64 v218.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v166, v174, v36
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v37.h, 0x7fff, v37.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v178, v178
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v36.l, v244.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v251.l, v113.l
	v_mov_b16_e64 v253.l, v113.l
	v_mov_b16_e64 v255.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v38.h, 0x7fff, v38.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v180, v180
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v194.l, v113.l
	v_mov_b16_e64 v192.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s8, v143, v143
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v162, v178, v38
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v39.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v182, v182
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v38.l, v242.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v226.l, v113.l
	v_mov_b16_e32 v41.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v160, v180, v39
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v40.h, 0x7fff, v40.h, vcc_lo
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e32 vcc_lo, v115, v115
	v_add3_u32 v115, v115, v119, 0x7fff
	v_bfe_u32 v119, v116, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v39.l, v241.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v158, v182, v40
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v40.l, v240.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v43.l, v113.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v116, v116, v119, 0x7fff
	v_bfe_u32 v119, v114, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s10, v139, v139
	v_cmp_o_f32_e64 s11, v137, v137
	v_cmp_o_f32_e64 s12, v135, v135
	v_cmp_o_f32_e64 s13, v133, v133
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v114, v114, v119, 0x7fff
	v_bfe_u32 v119, v117, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s14, v131, v131
	v_cmp_o_f32_e64 s15, v129, v129
	v_cmp_o_f32_e64 s16, v127, v127
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v26.l, 0x7fff, v114.h, s2
	v_add3_u32 v117, v117, v119, 0x7fff
	v_bfe_u32 v119, v118, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v219, v25
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v25.l, 0x7fff, v115.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v219, v26 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v26.l, 0x7fff, v117.h, s3
	v_add3_u32 v118, v118, v119, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v114, v154, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v220, v25
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v25.l, 0x7fff, v116.h, s1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v220, v26 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v26.l, 0x7fff, v118.h, s6
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v115, v152, 16, 1
	v_bfe_u32 v116, v150, 16, 1
	v_bfe_u32 v117, v148, 16, 1
	v_bfe_u32 v118, v146, 16, 1
	v_bfe_u32 v119, v144, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v154, v154
	v_cmp_o_f32_e64 s1, v152, v152
	v_cmp_o_f32_e64 s2, v150, v150
	v_cmp_o_f32_e64 s3, v148, v148
	v_cmp_o_f32_e64 s6, v146, v146
	v_add3_u32 v114, v154, v114, 0x7fff
	v_add3_u32 v115, v152, v115, 0x7fff
	v_add3_u32 v116, v150, v116, 0x7fff
	v_add3_u32 v117, v148, v117, 0x7fff
	v_add3_u32 v118, v146, v118, 0x7fff
	v_add3_u32 v119, v144, v119, 0x7fff
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v221, v25
	ds_store_b16 v221, v26 offset:512
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v25.l, v113.l
	v_mov_b16_e32 v26.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v200.h, 0x7fff, v114.h, vcc_lo
	v_cndmask_b16 v194.h, 0x7fff, v115.h, s1
	v_cndmask_b16 v192.h, 0x7fff, v116.h, s2
	v_cndmask_b16 v0.h, 0x7fff, v117.h, s3
	v_cndmask_b16 v191.h, 0x7fff, v118.h, s6
	v_cndmask_b16 v188.h, 0x7fff, v119.h, s7
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[204:207], v239
	ds_load_b128 v[208:211], v65
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v195, v164, v31 :: v_dual_sub_f32 v186, v186, v26
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v31.l, v189.h
	v_mov_b16_e64 v30.l, v188.h
	v_mov_b16_e64 v29.l, v191.h
	v_mov_b16_e32 v28.l, v0.h
	v_mov_b16_e64 v27.l, v192.h
	v_mov_b16_e64 v26.l, v194.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v184, v184, v25
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v25.l, v200.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v164, v176, v37
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v37.l, v243.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v185, v185
	v_bfe_u32 v114, v169, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[25:32], v[105:112], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s1, v187, v187
	v_bfe_u32 v115, v171, 16, 1
	v_cmp_o_f32_e64 s3, v149, v149
	v_add3_u32 v114, v169, v114, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[97:104], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s7, v145, v145
	v_add3_u32 v115, v171, v115, 0x7fff
	v_cmp_o_f32_e64 s2, v151, v151
	v_cmp_o_f32_e64 s6, v147, v147
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[25:32], v[204:211], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v25, v185, 16, 1
	v_bfe_u32 v27, v157, 16, 1
	v_bfe_u32 v28, v159, 16, 1
	v_bfe_u32 v29, v161, 16, 1
	v_bfe_u32 v30, v163, 16, 1
	v_add3_u32 v25, v185, v25, 0x7fff
	v_add3_u32 v27, v157, v27, 0x7fff
	v_add3_u32 v28, v159, v28, 0x7fff
	v_add3_u32 v29, v161, v29, 0x7fff
	v_add3_u32 v30, v163, v30, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v25.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v157, v157
	v_bfe_u32 v31, v165, 16, 1
	v_bfe_u32 v32, v167, 16, 1
	v_bfe_u32 v26, v187, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v28.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v27.h, 0x7fff, v27.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v159, v159
	v_add3_u32 v31, v165, v31, 0x7fff
	v_add3_u32 v32, v167, v32, 0x7fff
	v_add3_u32 v26, v187, v26, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v25.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v28.h, 0x7fff, v28.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v161, v161
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v30.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s1
	v_cmp_o_f32_e64 s1, v171, v171
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v180, v159, v28
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v29.h, 0x7fff, v29.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v163, v163
	v_bfe_u32 v159, v153, 16, 1
	v_cndmask_b16 v249.h, 0x7fff, v115.h, s1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v32.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s1, v153, v153
	v_cndmask_b16 v30.h, 0x7fff, v30.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v165, v165
	v_add3_u32 v159, v153, v159, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v174, v185, v25
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e32 v26.l, v113.l
	v_mov_b16_e32 v27.l, v113.l
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v31.h, 0x7fff, v31.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v167, v167
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v29.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v185, v163, v30
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v31.l, v113.l
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_bfe_u32 v163, v149, 16, 1
	v_cndmask_b16 v32.h, 0x7fff, v32.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v169, v169
	v_cndmask_b16 v218.h, 0x7fff, v159.h, s1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v120, v171, v249
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v171, v141, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v239, v167, v32
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v248.h, 0x7fff, v114.h, vcc_lo
	v_bfe_u32 v114, v173, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v173, v173
	v_bfe_u32 v167, v145, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v176, v187, v26
	v_sub_f32_e32 v178, v157, v27
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v114, v173, v114, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v182, v161, v29
	v_sub_f32_e32 v187, v165, v31
	v_sub_f32_e32 v156, v169, v248
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v157, v155, 16, 1
	v_cndmask_b16 v250.h, 0x7fff, v114.h, vcc_lo
	v_bfe_u32 v114, v175, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v175, v175
	v_bfe_u32 v161, v151, 16, 1
	v_add3_u32 v163, v149, v163, 0x7fff
	v_bfe_u32 v165, v147, 16, 1
	v_add3_u32 v114, v175, v114, 0x7fff
	v_add3_u32 v167, v145, v167, 0x7fff
	v_bfe_u32 v169, v143, 16, 1
	v_add3_u32 v171, v141, v171, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v119, v173, v250
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v251.h, 0x7fff, v114.h, vcc_lo
	v_bfe_u32 v114, v177, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v177, v177
	v_add3_u32 v157, v155, v157, 0x7fff
	v_add3_u32 v161, v151, v161, 0x7fff
	v_add3_u32 v165, v147, v165, 0x7fff
	v_add3_u32 v114, v177, v114, 0x7fff
	v_add3_u32 v169, v143, v169, 0x7fff
	v_bfe_u32 v173, v139, 16, 1
	v_cndmask_b16 v226.h, 0x7fff, v163.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v118, v175, v251
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v252.h, 0x7fff, v114.h, vcc_lo
	v_bfe_u32 v114, v179, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v179, v179
	v_bfe_u32 v175, v137, 16, 1
	v_cndmask_b16 v41.h, 0x7fff, v167.h, s7
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v117, v177, v252
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v114, v179, v114, 0x7fff
	v_bfe_u32 v177, v135, 16, 1
	v_cndmask_b16 v43.h, 0x7fff, v171.h, s9
	v_cmp_o_f32_e64 s17, v125, v125
	v_add3_u32 v173, v139, v173, 0x7fff
	v_cndmask_b16 v253.h, 0x7fff, v114.h, vcc_lo
	v_bfe_u32 v114, v181, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v181, v181
	v_add3_u32 v175, v137, v175, 0x7fff
	v_add3_u32 v177, v135, v177, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v116, v179, v253
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v114, v181, v114, 0x7fff
	v_bfe_u32 v179, v133, 16, 1
	v_cndmask_b16 v225.h, 0x7fff, v161.h, s2
	v_cndmask_b16 v227.h, 0x7fff, v165.h, s6
	v_cndmask_b16 v42.h, 0x7fff, v169.h, s8
	v_cndmask_b16 v254.h, 0x7fff, v114.h, vcc_lo
	v_bfe_u32 v114, v183, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v183, v183
	v_add3_u32 v179, v133, v179, 0x7fff
	v_cndmask_b16 v169.h, 0x7fff, v173.h, s10
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v115, v181, v254
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v114, v183, v114, 0x7fff
	v_bfe_u32 v181, v131, 16, 1
	v_cndmask_b16 v167.h, 0x7fff, v175.h, s11
	v_cndmask_b16 v165.h, 0x7fff, v177.h, s12
	v_cndmask_b16 v163.h, 0x7fff, v179.h, s13
	v_cndmask_b16 v255.h, 0x7fff, v114.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v155, v155
	v_add3_u32 v181, v131, v181, 0x7fff
	v_cndmask_b16 v113.h, 0x7fff, v216.h, s17
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v32.l, v43.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v114, v183, v255
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v183, v129, 16, 1
	v_cndmask_b16 v217.h, 0x7fff, v157.h, vcc_lo
	v_cndmask_b16 v161.h, 0x7fff, v181.h, s14
	v_cndmask_b16 v157.h, 0x7fff, v215.h, s16
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v31.l, v42.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v183, v129, v183, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v30.l, v41.h
	v_mov_b16_e64 v29.l, v227.h
	v_mov_b16_e64 v28.l, v226.h
	v_mov_b16_e64 v27.l, v225.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v159.h, 0x7fff, v183.h, s15
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v26.l, v218.h
	v_mov_b16_e64 v25.l, v217.h
	v_mov_b16_e64 v255.l, v113.h
	v_mov_b16_e64 v254.l, v157.h
	v_mov_b16_e64 v253.l, v159.h
	v_mov_b16_e64 v252.l, v161.h
	v_mov_b16_e64 v251.l, v163.h
	v_mov_b16_e64 v250.l, v165.h
	v_mov_b16_e64 v249.l, v167.h
	v_mov_b16_e64 v248.l, v169.h
	v_wmma_f32_16x16x16_bf16 v[9:16], v[25:32], v[105:112], v[9:16]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v0.l, v113.l
	v_mov_b16_e64 v191.l, v113.l
	v_mov_b16_e64 v188.l, v113.l
	v_mov_b16_e64 v189.l, v113.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[248:255], v[97:104], v[9:16]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v199.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v148, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v184, v184
	v_cmp_o_f32_e64 s3, v186, v186
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[25:32], v[204:211], v[9:16]
	ds_load_b128 v[25:28], v223
	ds_load_b128 v[29:32], v224
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v0, v0
	v_cmp_o_f32_e64 s7, v214, v214
	v_cmp_o_f32_e64 s9, v213, v213
	v_cmp_o_f32_e64 s11, v212, v212
	v_cmp_o_f32_e64 s13, v198, v198
	v_cmp_o_f32_e64 s15, v195, v195
	v_cmp_o_f32_e64 s17, v193, v193
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v225.l, v113.l
	v_mov_b16_e64 v227.l, v113.l
	v_mov_b16_e32 v42.l, v113.l
	v_mov_b16_e64 v217.l, v113.l
	v_mov_b16_e64 v159.l, v113.l
	v_mov_b16_e64 v167.l, v113.l
	v_mov_b32_e32 v148, v44
	v_mov_b16_e64 v247.l, v113.l
	v_mov_b16_e64 v246.l, v113.l
	v_mov_b16_e64 v245.l, v113.l
	v_mov_b16_e64 v244.l, v113.l
	v_mov_b16_e64 v243.l, v113.l
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[25:32], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[248:255], v[25:32], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v25, v154, v200
	v_sub_f32_e32 v27, v152, v194
	v_sub_f32_e32 v29, v150, v192
	v_sub_f32_e32 v32, v146, v191
	v_sub_f32_e32 v34, v144, v188
	v_sub_f32_e32 v36, v142, v189
	v_sub_f32_e32 v38, v140, v199
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v26, v25, 16, 1
	v_bfe_u32 v28, v27, 16, 1
	v_bfe_u32 v30, v29, 16, 1
	v_bfe_u32 v31, v0, 16, 1
	v_bfe_u32 v33, v32, 16, 1
	v_bfe_u32 v35, v34, 16, 1
	v_bfe_u32 v37, v36, 16, 1
	v_bfe_u32 v39, v38, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_add3_u32 v25, v25, v26, 0x7fff
	v_bfe_u32 v26, v184, 16, 1
	v_cmp_o_f32_e64 s2, v27, v27
	v_add3_u32 v27, v27, v28, 0x7fff
	v_bfe_u32 v28, v186, 16, 1
	v_cmp_o_f32_e64 s6, v29, v29
	v_add3_u32 v29, v29, v30, 0x7fff
	v_bfe_u32 v30, v214, 16, 1
	v_add3_u32 v0, v0, v31, 0x7fff
	v_bfe_u32 v31, v213, 16, 1
	v_cmp_o_f32_e64 s10, v32, v32
	v_add3_u32 v32, v32, v33, 0x7fff
	v_bfe_u32 v33, v212, 16, 1
	v_cmp_o_f32_e64 s12, v34, v34
	v_add3_u32 v34, v34, v35, 0x7fff
	v_bfe_u32 v35, v198, 16, 1
	v_cmp_o_f32_e64 s14, v36, v36
	v_add3_u32 v36, v36, v37, 0x7fff
	v_bfe_u32 v37, v195, 16, 1
	v_cmp_o_f32_e64 s16, v38, v38
	v_add3_u32 v38, v38, v39, 0x7fff
	v_bfe_u32 v39, v193, 16, 1
	v_add3_u32 v26, v184, v26, 0x7fff
	v_add3_u32 v28, v186, v28, 0x7fff
	v_add3_u32 v30, v214, v30, 0x7fff
	v_add3_u32 v31, v213, v31, 0x7fff
	v_add3_u32 v33, v212, v33, 0x7fff
	v_add3_u32 v35, v198, v35, 0x7fff
	v_add3_u32 v37, v195, v37, 0x7fff
	v_add3_u32 v39, v193, v39, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v25.h, vcc_lo
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s1
	v_cndmask_b16 v26.l, 0x7fff, v27.h, s2
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s3
	v_cndmask_b16 v27.l, 0x7fff, v29.h, s6
	v_cndmask_b16 v27.h, 0x7fff, v30.h, s7
	v_cndmask_b16 v28.l, 0x7fff, v0.h, s8
	v_cndmask_b16 v28.h, 0x7fff, v31.h, s9
	v_cndmask_b16 v29.l, 0x7fff, v32.h, s10
	v_cndmask_b16 v29.h, 0x7fff, v33.h, s11
	v_cndmask_b16 v30.l, 0x7fff, v34.h, s12
	v_cndmask_b16 v30.h, 0x7fff, v35.h, s13
	v_cndmask_b16 v31.l, 0x7fff, v36.h, s14
	v_cndmask_b16 v31.h, 0x7fff, v37.h, s15
	v_cndmask_b16 v32.l, 0x7fff, v38.h, s16
	v_cndmask_b16 v32.h, 0x7fff, v39.h, s17
	v_mov_b32_e32 v191, v49
	v_dual_mov_b32 v189, v46 :: v_dual_sub_f32 v0, v155, v217
	v_mov_b32_e32 v188, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[25:32], v[105:112], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v25, v153, v218 :: v_dual_sub_f32 v26, v151, v225
	v_dual_sub_f32 v27, v149, v226 :: v_dual_sub_f32 v28, v147, v227
	v_sub_f32_e32 v29, v145, v41
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v33, v25, 16, 1
	v_cmp_o_f32_e64 s2, v25, v25
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v30, v143, v42 :: v_dual_sub_f32 v31, v141, v43
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v32, v0, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v33, v25, v33, 0x7fff
	v_bfe_u32 v25, v176, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cmp_o_f32_e64 s1, v174, v174
	v_add3_u32 v0, v0, v32, 0x7fff
	v_bfe_u32 v32, v174, 16, 1
	v_add3_u32 v34, v176, v25, 0x7fff
	v_bfe_u32 v25, v26, 16, 1
	v_cmp_o_f32_e64 s3, v176, v176
	v_cmp_o_f32_e64 s6, v26, v26
	v_add3_u32 v32, v174, v32, 0x7fff
	v_cmp_o_f32_e64 s7, v178, v178
	v_add3_u32 v35, v26, v25, 0x7fff
	v_bfe_u32 v25, v178, 16, 1
	v_cmp_o_f32_e64 s8, v27, v27
	v_cmp_o_f32_e64 s9, v180, v180
	v_cmp_o_f32_e64 s10, v28, v28
	v_cmp_o_f32_e64 s11, v182, v182
	v_add3_u32 v36, v178, v25, 0x7fff
	v_bfe_u32 v25, v27, 16, 1
	v_cmp_o_f32_e64 s12, v29, v29
	v_cmp_o_f32_e64 s13, v185, v185
	v_cmp_o_f32_e64 s14, v30, v30
	v_cmp_o_f32_e64 s15, v187, v187
	v_add3_u32 v37, v27, v25, 0x7fff
	v_bfe_u32 v25, v180, 16, 1
	v_cmp_o_f32_e64 s16, v31, v31
	v_cmp_o_f32_e64 s17, v239, v239
	v_cndmask_b16 v26.l, 0x7fff, v33.h, s2
	v_cndmask_b16 v26.h, 0x7fff, v34.h, s3
	v_add3_u32 v38, v180, v25, 0x7fff
	v_bfe_u32 v25, v28, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v35.h, s6
	v_cndmask_b16 v27.h, 0x7fff, v36.h, s7
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v242.l, v113.l
	v_mov_b16_e64 v241.l, v113.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v39, v28, v25, 0x7fff
	v_bfe_u32 v25, v182, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v37.h, s8
	v_cndmask_b16 v28.h, 0x7fff, v38.h, s9
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v240.l, v113.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v128, v242
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v40, v182, v25, 0x7fff
	v_bfe_u32 v25, v29, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v36, v126, v241
	v_sub_f32_e32 v38, v124, v240
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v35, v34, 16, 1
	v_cmp_o_f32_e64 s3, v170, v170
	v_add3_u32 v41, v29, v25, 0x7fff
	v_bfe_u32 v25, v185, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v39.h, s10
	v_cndmask_b16 v29.h, 0x7fff, v40.h, s11
	v_bfe_u32 v37, v36, 16, 1
	v_bfe_u32 v39, v38, 16, 1
	v_add3_u32 v42, v185, v25, 0x7fff
	v_bfe_u32 v25, v30, 16, 1
	v_cmp_o_f32_e64 s7, v172, v172
	v_cmp_o_f32_e64 s9, v166, v166
	v_cmp_o_f32_e64 s11, v164, v164
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v169.l, v113.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v43, v30, v25, 0x7fff
	v_bfe_u32 v25, v187, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v41.h, s12
	v_cndmask_b16 v30.h, 0x7fff, v42.h, s13
	v_cmp_o_f32_e64 s12, v34, v34
	v_add3_u32 v34, v34, v35, 0x7fff
	v_add3_u32 v44, v187, v25, 0x7fff
	v_bfe_u32 v25, v31, 16, 1
	v_bfe_u32 v35, v162, 16, 1
	v_cmp_o_f32_e64 s13, v162, v162
	v_mov_b32_e32 v193, v54
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v165.l, v113.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v45, v31, v25, 0x7fff
	v_bfe_u32 v25, v239, 16, 1
	v_cndmask_b16 v31.l, 0x7fff, v43.h, s14
	v_cndmask_b16 v31.h, 0x7fff, v44.h, s15
	v_cmp_o_f32_e64 s14, v36, v36
	v_cndmask_b16 v32.l, 0x7fff, v45.h, s16
	v_add3_u32 v46, v239, v25, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v25.h, 0x7fff, v32.h, s1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v138, v247
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v36, v36, v37, 0x7fff
	v_cndmask_b16 v32.h, 0x7fff, v46.h, s17
	v_bfe_u32 v37, v160, 16, 1
	v_cmp_o_f32_e64 s16, v38, v38
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_add3_u32 v38, v38, v39, 0x7fff
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[25:32], v[105:112], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v26, v136, v246
	v_sub_f32_e32 v28, v134, v245
	v_sub_f32_e32 v30, v132, v244
	v_sub_f32_e32 v32, v130, v243
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v25, v0, 16, 1
	v_bfe_u32 v27, v26, 16, 1
	v_bfe_u32 v29, v28, 16, 1
	v_bfe_u32 v31, v30, 16, 1
	v_bfe_u32 v33, v32, 16, 1
	v_add3_u32 v0, v0, v25, 0x7fff
	v_bfe_u32 v25, v168, 16, 1
	v_cmp_o_f32_e64 s2, v26, v26
	v_add3_u32 v26, v26, v27, 0x7fff
	v_bfe_u32 v27, v170, 16, 1
	v_cmp_o_f32_e64 s6, v28, v28
	v_add3_u32 v28, v28, v29, 0x7fff
	v_bfe_u32 v29, v172, 16, 1
	v_cmp_o_f32_e64 s8, v30, v30
	v_add3_u32 v30, v30, v31, 0x7fff
	v_bfe_u32 v31, v166, 16, 1
	v_cmp_o_f32_e64 s10, v32, v32
	v_add3_u32 v32, v32, v33, 0x7fff
	v_bfe_u32 v33, v164, 16, 1
	v_bfe_u32 v39, v158, 16, 1
	v_cmp_o_f32_e64 s1, v168, v168
	v_add3_u32 v25, v168, v25, 0x7fff
	v_add3_u32 v27, v170, v27, 0x7fff
	v_add3_u32 v29, v172, v29, 0x7fff
	v_add3_u32 v31, v166, v31, 0x7fff
	v_add3_u32 v33, v164, v33, 0x7fff
	v_add3_u32 v35, v162, v35, 0x7fff
	v_cmp_o_f32_e64 s15, v160, v160
	v_add3_u32 v37, v160, v37, 0x7fff
	v_cmp_o_f32_e64 s17, v158, v158
	v_add3_u32 v39, v158, v39, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s1
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s2
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s3
	v_cndmask_b16 v27.l, 0x7fff, v28.h, s6
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s7
	v_cndmask_b16 v28.l, 0x7fff, v30.h, s8
	v_cndmask_b16 v28.h, 0x7fff, v31.h, s9
	v_cndmask_b16 v29.l, 0x7fff, v32.h, s10
	v_cndmask_b16 v29.h, 0x7fff, v33.h, s11
	v_cndmask_b16 v30.l, 0x7fff, v34.h, s12
	v_cndmask_b16 v30.h, 0x7fff, v35.h, s13
	v_cndmask_b16 v31.l, 0x7fff, v36.h, s14
	v_cndmask_b16 v31.h, 0x7fff, v37.h, s15
	v_cndmask_b16 v32.l, 0x7fff, v38.h, s16
	v_cndmask_b16 v32.h, 0x7fff, v39.h, s17
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v139, v169
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v156, v156
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v163.l, v113.l
	v_mov_b32_e32 v54, v48
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[25:32], v[97:104], v[1:8]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v32, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v25, v137, v167 :: v_dual_sub_f32 v26, v135, v165
	v_sub_f32_e32 v27, v133, v163
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v0, v0, v32, 0x7fff
	v_bfe_u32 v32, v156, 16, 1
	v_bfe_u32 v33, v25, 16, 1
	v_cmp_o_f32_e64 s2, v25, v25
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v161.l, v113.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v29, v129, v159
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v32, v156, v32, 0x7fff
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[149:152], off, off offset:160
	scratch_load_b128 v[153:156], off, off offset:176
	v_add3_u32 v33, v25, v33, 0x7fff
	v_bfe_u32 v25, v120, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v28, v131, v161
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v157.l, v113.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v31, v125, v113
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v120, v120
	v_add3_u32 v34, v120, v25, 0x7fff
	v_bfe_u32 v25, v26, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v30, v127, v157
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v26, v26
	v_cmp_o_f32_e64 s7, v119, v119
	v_cmp_o_f32_e64 s8, v27, v27
	v_add3_u32 v35, v26, v25, 0x7fff
	v_bfe_u32 v25, v119, 16, 1
	v_cmp_o_f32_e64 s9, v118, v118
	v_cmp_o_f32_e64 s10, v28, v28
	v_cmp_o_f32_e64 s11, v117, v117
	v_cmp_o_f32_e64 s12, v29, v29
	v_add3_u32 v36, v119, v25, 0x7fff
	v_bfe_u32 v25, v27, 16, 1
	v_cmp_o_f32_e64 s13, v116, v116
	v_cmp_o_f32_e64 s14, v30, v30
	v_cmp_o_f32_e64 s15, v115, v115
	v_cmp_o_f32_e64 s16, v31, v31
	v_add3_u32 v37, v27, v25, 0x7fff
	v_bfe_u32 v25, v118, 16, 1
	v_cmp_o_f32_e64 s17, v114, v114
	v_cndmask_b16 v26.l, 0x7fff, v33.h, s2
	v_cndmask_b16 v26.h, 0x7fff, v34.h, s3
	v_cndmask_b16 v27.l, 0x7fff, v35.h, s6
	v_add3_u32 v38, v118, v25, 0x7fff
	v_bfe_u32 v25, v28, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v36.h, s7
	v_mov_b32_e32 v180, v96
	v_mov_b32_e32 v172, v88
	v_mov_b32_e32 v164, v80
	v_add3_u32 v39, v28, v25, 0x7fff
	v_bfe_u32 v25, v117, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v37.h, s8
	v_cndmask_b16 v28.h, 0x7fff, v38.h, s9
	v_dual_mov_b32 v194, v122 :: v_dual_mov_b32 v179, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v117, v25, 0x7fff
	v_bfe_u32 v25, v29, 16, 1
	v_dual_mov_b32 v192, v56 :: v_dual_mov_b32 v175, v91
	v_dual_mov_b32 v56, v47 :: v_dual_mov_b32 v173, v89
	v_add3_u32 v41, v29, v25, 0x7fff
	v_bfe_u32 v25, v116, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v39.h, s10
	v_cndmask_b16 v29.h, 0x7fff, v40.h, s11
	v_dual_mov_b32 v178, v94 :: v_dual_mov_b32 v177, v93
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v42, v116, v25, 0x7fff
	v_bfe_u32 v25, v30, 16, 1
	v_mov_b32_e32 v176, v92
	v_mov_b32_e32 v174, v90
	v_mov_b32_e32 v95, v202
	v_mov_b32_e32 v171, v87
	v_add3_u32 v43, v30, v25, 0x7fff
	v_bfe_u32 v25, v115, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v41.h, s12
	v_cndmask_b16 v30.h, 0x7fff, v42.h, s13
	v_dual_mov_b32 v170, v86 :: v_dual_mov_b32 v169, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v44, v115, v25, 0x7fff
	v_bfe_u32 v25, v31, 16, 1
	v_dual_mov_b32 v168, v84 :: v_dual_mov_b32 v167, v83
	v_dual_mov_b32 v166, v82 :: v_dual_mov_b32 v165, v81
	v_add3_u32 v45, v31, v25, 0x7fff
	v_bfe_u32 v25, v114, 16, 1
	v_cndmask_b16 v31.l, 0x7fff, v43.h, s14
	v_cndmask_b16 v31.h, 0x7fff, v44.h, s15
	v_mov_b32_e32 v163, v79
	v_cndmask_b16 v32.l, 0x7fff, v45.h, s16
	v_add3_u32 v46, v114, v25, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v25.h, 0x7fff, v32.h, s1
	v_dual_mov_b32 v162, v78 :: v_dual_mov_b32 v161, v77
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v32.h, 0x7fff, v46.h, s17
	v_dual_mov_b32 v160, v76 :: v_dual_mov_b32 v159, v75
	v_dual_mov_b32 v158, v74 :: v_dual_mov_b32 v157, v73
	v_mov_b32_e32 v41, v55
	v_dual_mov_b32 v55, v53 :: v_dual_mov_b32 v42, v51
	v_mov_b32_e32 v43, v52
	v_mov_b32_e32 v45, v50
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[25:32], v[97:104], v[9:16]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s1, s57, 32
	s_cmpk_lt_u32 s57, 0x7e0
	s_mov_b32 s57, s1
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ;   in Loop: Header=BB0_1 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_movk_i32 s1, 0x800
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_and_not1_b32 vcc_lo, exec_lo, s40
	s_mov_b32 s57, 0
	s_cbranch_vccnz .LBB0_1
; %bb.4:
	.loc	1 550 20                        ; attention_backward.py:550:20
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v56, off, off offset:192
	scratch_load_b32 v25, off, off offset:200
	scratch_load_b32 v26, off, off offset:196
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s5, s43, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s42
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s29, s29, 0xffff
	.loc	1 753 13                        ; attention_backward.py:753:13
	s_waitcnt vmcnt(2)
	v_mul_lo_u32 v35, s18, v56
	.loc	1 550 20                        ; attention_backward.py:550:20
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, v25, v26
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s34, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v39, 2, v25
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v41, v35, v25
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s2, s18, v25
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v38, 6, v25
	v_or_b32_e32 v40, 4, v25
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v42, v35, v39
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v41, v41, s30, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v37, 8, v25
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v43, v35, v40
	v_add_nc_u32_e32 v44, v35, v38
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	v_add_lshl_u32 v42, v42, s30, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v45, v35, v37
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v33, 14, v25
	v_or_b32_e32 v34, 12, v25
	v_or_b32_e32 v36, 10, v25
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v43, v43, s30, 2
	buffer_store_b32 v17, v41, s[4:7], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v42, s2
	v_add_lshl_u32 v41, v44, s30, 2
	v_add_lshl_u32 v42, v45, s30, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v0, 32, v25
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v46, v35, v36
	v_add_nc_u32_e32 v47, v35, v34
	v_add_nc_u32_e32 v48, v35, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	buffer_store_b32 v18, v17, s[4:7], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v41, s2
	v_cndmask_b32_e64 v18, 0x80000000, v42, s2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s0, s19, v25
	v_cmp_gt_i32_e64 s1, s19, v0
	v_or_b32_e32 v31, 36, v25
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s3, s18, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v44, v46, s30, 2
	buffer_store_b32 v19, v43, s[4:7], 0 offen
	v_add_lshl_u32 v41, v47, s30, 2
	s_clause 0x1
	buffer_store_b32 v20, v17, s[4:7], 0 offen
	buffer_store_b32 v21, v18, s[4:7], 0 offen
	v_add_lshl_u32 v17, v48, s30, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v32, 34, v25
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v44, s2
	v_cndmask_b32_e64 v18, 0x80000000, v41, s2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s0, vcc_lo, s0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s3
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v51, v35, v31
	v_add_nc_u32_e32 v49, v35, v0
	v_add_nc_u32_e32 v50, v35, v32
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v22, v19, s[4:7], 0 offen
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v30, 38, v25
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v21, v51, s30, 2
	v_add_lshl_u32 v19, v49, s30, 2
	v_add_lshl_u32 v20, v50, s30, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v29, 40, v25
	v_or_b32_e32 v28, 42, v25
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v23, v18, s[4:7], 0 offen
	v_cndmask_b32_e64 v18, 0x80000000, v21, s2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v27, 44, v25
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v52, v35, v30
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v53, v35, v29
	v_add_nc_u32_e32 v54, v35, v28
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x3
	buffer_store_b32 v24, v17, s[4:7], 0 offen
	buffer_store_b32 v57, v19, s[4:7], 0 offen
	buffer_store_b32 v58, v20, s[4:7], 0 offen
	buffer_store_b32 v59, v18, s[4:7], 0 offen
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_or_b32_e32 v18, s31, v56
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v26, 46, v25
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v55, v35, v27
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v17, v52, s30, 2
	v_add_lshl_u32 v19, v53, s30, 2
	v_add_lshl_u32 v20, v54, s30, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v18, s19, v18
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v35, v35, v26
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_add_lshl_u32 v21, v55, s30, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_mov_b32 s31, s7
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v60, v17, s[4:7], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v21, s2
	v_add_lshl_u32 v21, v35, s30, 2
	s_clause 0x1
	buffer_store_b32 v61, v19, s[4:7], 0 offen
	buffer_store_b32 v62, v20, s[4:7], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v19, v18, v25, 2
	v_add_lshl_u32 v20, v18, v39, 2
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v63, v17, s[4:7], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v21, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_mov_b32 s30, s6
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v64, v17, s[4:7], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v1, v19, s[28:31], 0 offen
	v_add_lshl_u32 v1, v18, v40, 2
	v_cndmask_b32_e64 v17, 0x80000000, v20, s0
	v_add_lshl_u32 v19, v18, v38, 2
	v_add_lshl_u32 v20, v18, v37, 2
	v_add_lshl_u32 v21, v18, v36, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	buffer_store_b32 v2, v17, s[28:31], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v19, s0
	v_cndmask_b32_e64 v17, 0x80000000, v20, s0
	v_cndmask_b32_e64 v19, 0x80000000, v21, s0
	buffer_store_b32 v3, v1, s[28:31], 0 offen
	v_add_lshl_u32 v1, v18, v34, 2
	s_clause 0x2
	buffer_store_b32 v4, v2, s[28:31], 0 offen
	buffer_store_b32 v5, v17, s[28:31], 0 offen
	buffer_store_b32 v6, v19, s[28:31], 0 offen
	v_add_lshl_u32 v2, v18, v33, 2
	v_add_lshl_u32 v0, v18, v0, 2
	v_add_lshl_u32 v3, v18, v32, 2
	v_add_lshl_u32 v4, v18, v31, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b32 v7, v1, s[28:31], 0 offen
	buffer_store_b32 v8, v2, s[28:31], 0 offen
	buffer_store_b32 v9, v0, s[28:31], 0 offen
	buffer_store_b32 v10, v3, s[28:31], 0 offen
	buffer_store_b32 v11, v4, s[28:31], 0 offen
	v_add_lshl_u32 v0, v18, v30, 2
	v_add_lshl_u32 v1, v18, v29, 2
	v_add_lshl_u32 v2, v18, v28, 2
	v_add_lshl_u32 v3, v18, v27, 2
	v_add_lshl_u32 v4, v18, v26, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b32 v12, v0, s[28:31], 0 offen
	buffer_store_b32 v13, v1, s[28:31], 0 offen
	buffer_store_b32 v14, v2, s[28:31], 0 offen
	buffer_store_b32 v15, v3, s[28:31], 0 offen
	buffer_store_b32 v16, v4, s[28:31], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 208
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
		.amdhsa_next_free_sgpr 58
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 58
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 208
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17560
; TotalNumSgprs: 60
; NumVgprs: 256
; ScratchSize: 208
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 60
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 208
    .sgpr_count:     60
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 51
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
